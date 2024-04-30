import React from 'react';
import {Redirect, Slot, Stack} from "expo-router";
import {useAuth} from "@/provider/AuthProvider";

const AppLayout = () => {
    const session = useAuth()

    if (!session) {
        return <Redirect href={'/(auth)/login'}/>
    }

    return (
        <Stack>
            <Stack.Screen name="(tabs)" options={{headerShown: false}}/>
        </Stack>
    );
};

export default AppLayout;