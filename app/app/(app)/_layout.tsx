import React from 'react';
import {Redirect} from "expo-router";
import {useAuth} from "@/provider/AuthProvider";
import {Drawer} from "expo-router/drawer";
import {GestureHandlerRootView} from "react-native-gesture-handler";
import {SafeAreaView, Text} from "react-native";

const AppLayout = () => {
    const session = useAuth()

    if (!session) {
        return <Redirect href={'/(auth)/login'}/>
    }

    return (
        <GestureHandlerRootView style={{flex: 1}}>
            <Drawer
                screenOptions={{headerShown: false}}
            />
        </GestureHandlerRootView>
    );
};

export default AppLayout;
