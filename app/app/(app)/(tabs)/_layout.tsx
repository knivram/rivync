import React from 'react';
import {Tabs} from "expo-router";
import {Ionicons} from "@expo/vector-icons";

const page = () => {
    return (
        <Tabs >
            <Tabs.Screen name="activity" options={{
                title: 'Activity',
                tabBarIcon: ({size, color}) => <Ionicons name='home-outline' size={size} color={color}/>
            }} />
            <Tabs.Screen name="events" options={{
                title: 'Events',
                tabBarIcon: ({size, color}) => <Ionicons name='list' size={size} color={color}/>
            }} />
            <Tabs.Screen name="chat" options={{
                title: 'Chat',
                tabBarIcon: ({size, color}) => <Ionicons name='chatbubble-ellipses-outline' size={size} color={color}/>
            }} />
            <Tabs.Screen name="profile" options={{
                title: 'Profile',
                tabBarIcon: ({size, color}) => <Ionicons name='person-circle-outline' size={size} color={color}/>
            }} />
        </Tabs>
    );
};

export default page;