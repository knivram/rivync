import React, { useEffect, useState, useRef } from 'react';
import { View, FlatList, ActivityIndicator } from "react-native";
import { supabase } from "@/lib/supabase";
import { useTeam } from "@/provider/TeamProvider";
import moment from '@/lib/moments';
import { Event, EventType } from "@/lib/types/event";
import EventCard from "@/components/EventCard";

const PAGE_SIZE = 10;

const EventPage = () => {
    const { team } = useTeam();
    const [events, setEvents] = useState<Event[]>([]);
    const [loading, setLoading] = useState(false);
    const [initialIndex, setInitialIndex] = useState<number | null>(null);
    const flatListRef = useRef<FlatList>(null);

    useEffect(() => {
        if (team?.id) {
            fetchInitialEvents();
        }
    }, [team]);

    const fetchInitialEvents = async () => {
        setLoading(true);
        const currentDate = moment().toISOString();

        const { data: upcomingData, error: upcomingError } = await supabase
            .from('event')
            .select()
            .eq('team_id', team?.id)
            .gte('start', currentDate)
            .order('start', { ascending: true })
            .limit(PAGE_SIZE);

        const { data: pastData, error: pastError } = await supabase
            .from('event')
            .select()
            .eq('team_id', team?.id)
            .lt('start', currentDate)
            .order('start', { ascending: false }) // Fetch in descending order to reverse later
            .limit(PAGE_SIZE);

        if (upcomingError || pastError) {
            console.error(upcomingError || pastError);
        } else {
            const formattedUpcomingData = upcomingData.map((item) => ({
                ...item,
                type: item.type as EventType,
                start: moment(item.start),
                end: moment(item.end),
            }));
            const formattedPastData = pastData.map((item) => ({
                ...item,
                type: item.type as EventType,
                start: moment(item.start),
                end: moment(item.end),
            }));
            setEvents([...formattedPastData.reverse(), ...formattedUpcomingData]);
            setInitialIndex(formattedPastData.length + 6);
        }

        setLoading(false);
    };

    const fetchMoreEvents = async (direction: 'newer' | 'older') => {
        setLoading(true);
        const lastEvent = direction === 'newer' ? events[events.length - 1] : events[0];
        const { start } = lastEvent;

        const { data, error } = await supabase
            .from('event')
            .select()
            .eq('team_id', team?.id)
            .filter('start', direction === 'newer' ? 'gt' : 'lt', start.toISOString())
            .order('start', { ascending: direction === 'newer' })
            .limit(PAGE_SIZE);

        if (error) {
            console.error(error);
        } else {
            const formattedData = data.map((item) => ({
                ...item,
                type: item.type as EventType,
                start: moment(item.start),
                end: moment(item.end),
            }));

            setEvents(prevEvents => direction === 'newer'
                ? [...prevEvents, ...formattedData]
                : [...formattedData.reverse(), ...prevEvents]);
        }

        setLoading(false);
    };

    const loadMoreEvents = () => {
        if (!loading) {
            fetchMoreEvents('newer');
        }
    };

    const loadOlderEvents = () => {
        if (!loading) {
            fetchMoreEvents('older');
        }
    };

    const renderFooter = () => {
        if (!loading) return null;
        return <ActivityIndicator style={{ margin: 20 }} />;
    };

    const getItemLayout = (_: unknown, index: number) => (
        { length: 70, offset: 70 * index, index }
    );

    const onScrollToIndexFailed = ({ index }: { index: number }) => {
        const wait = new Promise(resolve => setTimeout(resolve, 500));
        wait.then(() => {
            flatListRef.current?.scrollToIndex({ index: index, animated: true });
        });
    };

    return (
        <View style={{ flex: 1, paddingHorizontal: 8 }}>
            <FlatList
                ref={flatListRef}
                data={events}
                keyExtractor={(item) => item.id.toString()}
                renderItem={({ item }: { item: Event }) => <EventCard event={item} />}
                onEndReached={loadMoreEvents}
                onEndReachedThreshold={0.1}
                ListFooterComponent={renderFooter}
                ListHeaderComponent={renderFooter}
                initialScrollIndex={initialIndex}
                getItemLayout={getItemLayout}
                onScrollToIndexFailed={onScrollToIndexFailed}
                onRefresh={loadOlderEvents}
                refreshing={loading}
                contentContainerStyle={{gap: 8}}
            />
        </View>
    );
};

export default EventPage;
