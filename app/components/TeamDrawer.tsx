import React, {useEffect, useState} from 'react';
import {Image, SafeAreaView, StyleSheet, Text, TouchableOpacity, View} from "react-native";
import {supabase} from "@/lib/supabase";
import {Team} from "@/lib/types/team";
import {MaterialIcons} from "@expo/vector-icons";

const TeamDrawer = () => {
    const [teams, setTeams] = useState<Team[]>([])

    useEffect(() => {
        supabase
            .from('team')
            .select('*')
            .then(({data}) => {
                setTeams(data as Team[])
            })
    }, []);

    return (
        <SafeAreaView >
            <View style={styles.teamSelect}>
                {teams.map((team) => (
                    <TouchableOpacity key={team.id} style={styles.team}>
                        <Image
                            style={styles.imageStyle}
                            source={require('@/assets/images/it-logo.jpeg')}
                        />
                        <View style={styles.textBox}>
                            <Text>{team.name}</Text>
                        </View>
                        <View style={styles.iconWrapper}>
                            <MaterialIcons name="keyboard-arrow-right" size={24} color="black" />
                        </View>
                    </TouchableOpacity>
                ))}
            </View>
        </SafeAreaView>
    );
};

export default TeamDrawer;

const styles = StyleSheet.create({
    teamSelect: {
        display: 'flex',
        flexDirection: 'column',
        gap: 8,
        padding: 16,
    },
    imageStyle: {
        width: 44,
        height: 44,
        borderRadius: 22,
        borderColor: 'lightgrey',
        borderWidth: 0.1,
    },
    team: {
        display: 'flex',
        flexDirection: 'row',
        gap: 8,
        borderColor: 'lightgrey',
        borderWidth: 1,
        borderRadius: 4,
        padding: 8,
        backgroundColor: '#f6f6f6',
    },
    textBox: {
        flex: 1,
    },
    iconWrapper: {
        display: "flex",
        justifyContent: "center",
    },
});
