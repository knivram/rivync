import React from 'react';
import {Redirect, usePathname} from "expo-router";
import {useAuth} from "@/provider/AuthProvider";
import {Drawer} from "expo-router/drawer";
import {GestureHandlerRootView} from "react-native-gesture-handler";
import TeamDrawer from "@/components/TeamDrawer";
import {TeamProvider, useTeam} from "@/provider/TeamProvider";

const TeamGate = () => {
    const {team} = useTeam()
    const pathname = usePathname();
    
    if (!team && pathname !== '/no-team') {
        return <Redirect href={'/(app)/no-team'} />
    }
    
    return (
        <GestureHandlerRootView style={{flex: 1}}>
            <Drawer
                screenOptions={{headerShown: false}}
                drawerContent={TeamDrawer}
            >
                <Drawer.Screen name='no-team' />
            </Drawer>
        </GestureHandlerRootView>
    );
}

const AppLayout = () => {
    const session = useAuth()

    if (!session) {
        return <Redirect href={'/(auth)/login'}/>
    }

    return (
        <TeamProvider>
            <TeamGate/>
        </TeamProvider>
    );
};

export default AppLayout;
