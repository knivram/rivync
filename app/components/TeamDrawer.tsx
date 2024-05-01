import React, {useEffect, useState} from 'react';
import {Image, SafeAreaView, StyleSheet, Text, TouchableOpacity, View} from "react-native";
import {supabase} from "@/lib/supabase";
import {Team, TeamWithUserRole} from "@/lib/types/team";
import {Ionicons} from "@expo/vector-icons";
import {useTeam} from "@/provider/TeamProvider";
import {DrawerActions} from "@react-navigation/native";
import {useNavigation} from "expo-router";
import {useAuth} from "@/provider/AuthProvider";

const TeamDrawer = () => {
    const navigation = useNavigation()
    const [teams, setTeams] = useState<TeamWithUserRole[]>([])
    const {team: selectedTeam, setTeam} = useTeam()
    const session = useAuth()

    useEffect(() => {
        supabase
            .rpc('fetch_team_with_role', {
                profile_uuid: session!.user.id
            })
            .then(({data, error}) => {
                if (data) {
                    setTeams(data as TeamWithUserRole[])
                }
            })
    }, []);

    const handleTeamSelection = (team: Team) => {
        navigation.dispatch(DrawerActions.closeDrawer());
        setTeam(team);
    };

    return (
        <SafeAreaView>
            <View style={styles.currentTeam}>
                <Image
                    style={styles.currentTeamPicture}
                    source={require('@/assets/images/it-logo.jpeg')}
                />
                <Text style={{fontWeight: '600', fontSize: 16}}>{selectedTeam?.name}</Text>
            </View>
            <View style={styles.teamSelect}>
                {teams.map((team) => (
                    <TouchableOpacity
                        key={team.id}
                        style={styles.team}
                        onPress={() => handleTeamSelection(team)}
                    >
                        <Image
                            style={styles.imageStyle}
                            source={require('@/assets/images/it-logo.jpeg')}
                        />
                        <View style={styles.textBox}>
                            <Text style={{fontWeight: '600', fontSize: 15}}>{team.name}</Text>
                            <Text style={{color: 'grey', fontSize: 12}}>{team.role}</Text>
                        </View>
                        <View style={styles.iconWrapper}>
                            {team.id === selectedTeam?.id
                                ? <Ionicons name="checkmark" size={24} color="black"/>
                                : null
                            }
                        </View>
                    </TouchableOpacity>
                ))}
            </View>
        </SafeAreaView>
    );
};

export default TeamDrawer;

const styles = StyleSheet.create({
    currentTeam: {
        display: 'flex',
        flexDirection: 'column',
        alignItems: 'center',
        gap: 8,
        paddingVertical: 16,
    },
    currentTeamPicture: {
        width: 128,
        height: 128,
        borderRadius: 64,
        borderColor: 'lightgrey',
        borderWidth: 0.1,
    },
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
        display: 'flex',
        justifyContent: 'center',
    },
    iconWrapper: {
        display: "flex",
        justifyContent: "center",
    },

});
