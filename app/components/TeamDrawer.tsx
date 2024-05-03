import React, {useEffect, useState} from 'react';
import {SafeAreaView, StyleSheet, Text, TouchableOpacity, View} from "react-native";
import {supabase} from "@/lib/supabase";
import {Team, TeamWithUserRole} from "@/lib/types/team";
import {Ionicons} from "@expo/vector-icons";
import {useTeam} from "@/provider/TeamProvider";
import {DrawerActions} from "@react-navigation/native";
import {useNavigation} from "expo-router";
import {useAuth} from "@/provider/AuthProvider";
import {useTranslation} from "react-i18next";
import TeamLogo from "@/components/TeamLogo";

const TeamDrawer = () => {
    const navigation = useNavigation()
    const {t} = useTranslation()
    const [teams, setTeams] = useState<TeamWithUserRole[]>([])
    const {team: selectedTeam, setTeam} = useTeam()
    const session = useAuth()

    useEffect(() => {
        supabase
            .from('profile_team')
            .select('role, team(*)')
            .eq('profile_id', session!.user.id)
            .then(({data, error}) => {
                if (data) {
                    setTeams(data.map((item) => ({
                            ...item.team as unknown as Team,
                            role: item.role,
                        }))
                    )
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
                <TeamLogo team={selectedTeam!} size={128}/>
                <Text style={{fontWeight: '600', fontSize: 16}}>{selectedTeam?.name}</Text>
            </View>
            <View style={styles.teamSelect}>
                {teams.map((team) => (
                    <TouchableOpacity
                        key={team.id}
                        style={styles.team}
                        onPress={() => handleTeamSelection(team)}
                    >
                        <TeamLogo team={team}/>
                        <View style={styles.textBox}>
                            <Text style={{fontWeight: '600', fontSize: 15}}>{team.name}</Text>
                            <Text style={{color: 'grey', fontSize: 12}}>{
                                team.role === 'TRAINER' ? t('common:user.role.trainer')
                                    : team.role === 'PLAYER' ? t('common:user.role.player')
                                        : team.role === 'CONTACT_PERSON' ? t('common:user.role.contactPerson')
                                            : team.role
                            }</Text>
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
    teamSelect: {
        display: 'flex',
        flexDirection: 'column',
        gap: 8,
        padding: 16,
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
