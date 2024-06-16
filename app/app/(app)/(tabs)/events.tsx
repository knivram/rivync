import React, {useState, useEffect} from 'react';
import {View, FlatList, Text, ActivityIndicator} from "react-native";
import {useTeam} from "@/provider/TeamProvider";
import {PersonEvent, EventType} from "@/lib/types/event";
import EventCard from "@/components/EventCard";
import moment from '@/lib/moments';
import {supabase} from "@/lib/supabase";
import {useTranslation} from "react-i18next";

const PAGE_SIZE = 10;

const EventPage = () => {
    const currentDate = moment().startOf('day');
    const {team} = useTeam();
    const [events, setEvents] = useState<PersonEvent[]>([]);
    const [futureEventPage, setFutureEventPage] = useState(1);
    const [hasMoreFutureEvents, setHasMoreFutureEvents] = useState(true);
    const [initialLoaded, setInitialLoaded] = useState(false);
    const {t} = useTranslation('event');

    const fetchFutureEvents = async () => {
        if (!hasMoreFutureEvents) {
            return;
        }
        const offset = (futureEventPage - 1) * PAGE_SIZE;
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
            setEvents((prevEvents) => [...prevEvents, ...formattedData]);
            setFutureEventPage((prevPage) => prevPage + 1);
            if (formattedData.length !== PAGE_SIZE) {
                setHasMoreFutureEvents(false);
            }
        }
    }

    useEffect(() => {
        fetchFutureEvents().then(() =>
            setInitialLoaded(true)
        )
    }, []);

    return (
        <View style={{flex: 1, paddingHorizontal: 8}}>
            {initialLoaded && events.length > 0 ?
                <FlatList
                    data={events}
                    keyExtractor={(item) => item.id.toString()}
                    renderItem={({item}: { item: PersonEvent }) => <EventCard event={item}/>}
                    onEndReached={fetchFutureEvents}
                    ListHeaderComponent={<View style={{height: 8}}/>}
                    ListFooterComponent={hasMoreFutureEvents ? <ActivityIndicator /> : null}
                />:
                <View style={{flex: 1, justifyContent: 'center', alignItems: 'center'}}>
                    <Text style={{fontSize: 20, fontWeight: 'semibold', marginBottom: 8}}>{t('noEvents.title')}</Text>
                    <Text>{t('noEvents.description')}</Text>
                </View>
            }
        </View>
    );
};

export default EventPage;
