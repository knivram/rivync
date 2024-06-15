import React, {useState, useRef, useEffect} from 'react';
import {View, FlatList as NativeFlatList} from "react-native";
import {useTeam} from "@/provider/TeamProvider";
import {Event, EventType} from "@/lib/types/event";
import EventCard from "@/components/EventCard";
import {FlatList} from 'react-native-bidirectional-infinite-scroll';
import moment from '@/lib/moments';
import {supabase} from "@/lib/supabase";

const PAGE_SIZE = 10;

const EventPage = () => {
    const currentDate = moment()
    const {team} = useTeam();
    const [events, setEvents] = useState<Event[]>([]);
    const [futureEventPage, setFutureEventPage] = useState(1);
    const [hasMoreFutureEvents, setHasMoreFutureEvents] = useState(true);
    const [pastEventPage, setPastEventPage] = useState(1);
    const [hasMorePastEvents, setHasMorePastEvents] = useState(true);

    const fetchFutureEvents = async () => {
        console.log('old future event page', futureEventPage)
        if (!hasMoreFutureEvents) {
            return;
        }
        const offset = (futureEventPage - 1) * PAGE_SIZE;
        console.log('future offset', offset)
        const {data, error} = await supabase
            .from('event')
            .select()
            .eq('team_id', team?.id)
            .gte('start', currentDate.toISOString())
            .order('start', {ascending: true})
            .range(offset, offset + PAGE_SIZE - 1);

        if (error) {
            console.error(error);
        } else {
            const formattedData = data.map((item) => ({
                ...item,
                type: item.type as EventType,
                start: moment(item.start),
                end: moment(item.end),
            }));
            console.log('future data', data)
            setEvents((prevEvents) => [...prevEvents, ...formattedData]);
            setFutureEventPage((prevPage) => prevPage + 1);
            if (formattedData.length !== PAGE_SIZE) {
                setHasMoreFutureEvents(false);
            }
        }
    }

    const fetchPastEvents = async () => {
        console.log('old past event page', pastEventPage)
        if (!hasMorePastEvents) {
            return;
        }
        const offset = (pastEventPage - 1) * PAGE_SIZE;
        console.log('past offset', offset)
        const {data, error} = await supabase
            .from('event')
            .select()
            .eq('team_id', team?.id)
            .lt('start', currentDate.toISOString())
            .order('start', {ascending: false}) // Fetch in descending order to reverse later
            .range(offset, offset + PAGE_SIZE - 1);

        if (error) {
            console.error(error);
        } else {
            const formattedData = data.map((item) => ({
                ...item,
                type: item.type as EventType,
                start: moment(item.start),
                end: moment(item.end),
            })).reverse();
            console.log('past data', data)
            setEvents((prevEvents) => [...formattedData, ...prevEvents]);
            setPastEventPage((prevPage) => prevPage + 1);
            if (formattedData.length !== PAGE_SIZE) {
                setHasMorePastEvents(false);
            }
        }
    }

    useEffect(() => {
        fetchFutureEvents()
    }, []);

    return (
        <View style={{flex: 1, paddingHorizontal: 8}}>
            <FlatList
                data={events}
                keyExtractor={(item) => item.id.toString()}
                renderItem={({item}: { item: Event }) => <EventCard event={item}/>}
                onStartReached={fetchPastEvents}
                onStartReachedThreshold={0.1}
                onEndReached={fetchFutureEvents}
                onEndReachedThreshold={0.1}
            />
        </View>
    );
};

export default EventPage;
