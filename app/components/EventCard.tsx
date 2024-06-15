import React from 'react';
import { Text, View, StyleSheet } from 'react-native';
import { Event } from "@/lib/types/event";
import moment from "@/lib/moments";

const EventCard = ({ event }: { event: Event }) => {
    return (
        <View style={styles.card}>
            <View style={styles.header}>
                <Text style={styles.title}>{event.type}</Text>
                <Text style={styles.date}><FormattedDate date={event.start}/></Text>
            </View>
            <View style={styles.buttonsContainer}>
                <View style={styles.button}>
                    <Text style={styles.buttonText}>Aufgeboten</Text>
                </View>
                <View style={styles.button}>
                    <Text style={styles.buttonText}>Angenommen</Text>
                </View>
            </View>
        </View>
    );
};

const FormattedDate = ({ date }: { date: moment.Moment }) => {
    return (
        <>{date.format('dd DD.MM.YYYY HH:mm')}</>
    )
}

const styles = StyleSheet.create({
    card: {
        padding: 20,
        backgroundColor: 'white',
        borderRadius: 10,
        shadowColor: '#000',
        shadowOffset: { width: 0, height: 2 },
        shadowOpacity: 0.1,
        shadowRadius: 8,
        elevation: 2,
        marginBottom: 8,
    },
    header: {
        flexDirection: 'row',
        justifyContent: 'space-between',
        marginBottom: 10,
    },
    title: {
        fontSize: 18,
        fontWeight: 'bold',
    },
    date: {
        fontSize: 14,
        color: 'gray',
    },
    buttonsContainer: {
        flexDirection: 'row',
        justifyContent: 'space-between',
    },
    button: {
        paddingVertical: 10,
        paddingHorizontal: 20,
        backgroundColor: '#f0f0f0',
        borderRadius: 5,
    },
    buttonText: {
        fontSize: 14,
        color: '#333',
    },
});

export default EventCard;
