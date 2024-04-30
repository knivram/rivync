import React from 'react';
import {Redirect, Stack} from "expo-router";
import {useAuth} from "@/provider/AuthProvider";

const AuthLayout = () => {
    const session = useAuth()

    if (session) {
        return <Redirect href={'/(app)/(tabs)/activity'}/>
    }

    return (
        <Stack>
            <Stack.Screen name="login" />
        </Stack>
    );
};

export default AuthLayout;