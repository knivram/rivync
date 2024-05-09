import React from 'react';
import {Tabs, useNavigation} from "expo-router";
import {Ionicons} from "@expo/vector-icons";
import {useTranslation} from "react-i18next";
import {DrawerActions} from "@react-navigation/native";
import TeamLogo from "@/components/TeamLogo";
import {useTeam} from "@/provider/TeamProvider";
import {TouchableOpacity} from "react-native";

const page = () => {
    const navigation = useNavigation()
    const {t} = useTranslation()
    const {team} = useTeam()

    return (
        <Tabs screenOptions={{
            headerLeft: () => (
                <TouchableOpacity
                    style={{
                        paddingLeft: 16,
                        paddingBottom: 16,
                    }}
                    onPress={() => navigation.dispatch(DrawerActions.openDrawer())}
                >
                    <TeamLogo team={team!}/>
                </TouchableOpacity>
            ),
            headerTitleAlign: "left",
            headerTitleStyle: {
                marginBottom: 16
            },
        }}>
            <Tabs.Screen name="activity" options={{
                title: t('activity:title'),
                tabBarIcon: ({size, color}) => <Ionicons name='home-outline' size={size} color={color}/>
            }}/>
            <Tabs.Screen name="events" options={{
                title: t('event:title'),
                tabBarIcon: ({size, color}) => <Ionicons name='list' size={size} color={color}/>
            }}/>
            <Tabs.Screen name="chat" options={{
                title: t('chat:title'),
                tabBarIcon: ({size, color}) => <Ionicons name='chatbubble-ellipses-outline' size={size} color={color}/>
            }}/>
            <Tabs.Screen name="profile" options={{
                title: t('profile:title'),
                tabBarIcon: ({size, color}) => <Ionicons name='person-circle-outline' size={size} color={color}/>
            }}/>
        </Tabs>
    );
};

export default page;
