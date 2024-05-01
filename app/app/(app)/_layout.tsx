import React from 'react';
import {Redirect} from "expo-router";
import {useAuth} from "@/provider/AuthProvider";
import {Drawer} from "expo-router/drawer";
import {GestureHandlerRootView} from "react-native-gesture-handler";
import TeamDrawer from "@/components/TeamDrawer";

const AppLayout = () => {
    const session = useAuth()

    if (!session) {
        return <Redirect href={'/(auth)/login'}/>
    }

    return (
        <GestureHandlerRootView style={{flex: 1}}>
            <Drawer
                screenOptions={{headerShown: false}}
                drawerContent={TeamDrawer}
            />
        </GestureHandlerRootView>
    );
};

export default AppLayout;
