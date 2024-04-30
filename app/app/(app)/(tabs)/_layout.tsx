import React from 'react';
import {Tabs} from "expo-router";

const page = () => {
    return (
        <Tabs >
            <Tabs.Screen name="activity" options={{title: 'Activity'}} />
            <Tabs.Screen name="profile" options={{title: 'Profile'}} />
        </Tabs>
    );
};

export default page;