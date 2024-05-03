import React from 'react';
import {Tabs, useNavigation} from "expo-router";
import {Ionicons} from "@expo/vector-icons";
import TeamHeader from "@/components/TeamHeader";
import {useTranslation} from "react-i18next";
import {DrawerActions} from "@react-navigation/native";

const page = () => {
    const navigation = useNavigation()
    const {t} = useTranslation()

    return (
        <Tabs screenOptions={{
            header: (props) => (
                <TeamHeader
                    headerProps={props}
                    onOpenDrawer={() => navigation.dispatch(DrawerActions.openDrawer())}
                />
            ),
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
