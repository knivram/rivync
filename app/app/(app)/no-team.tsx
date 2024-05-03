import React from 'react';
import {SafeAreaView, Text} from "react-native";
import {useTeam} from "@/provider/TeamProvider";
import {Redirect} from "expo-router";
import {Button} from "react-native-elements";
import {supabase} from "@/lib/supabase";

const page = () => {
    const {team} = useTeam()

    if (team) {
        return <Redirect href={'/'} />
    }

    return (
        <SafeAreaView>
            <Text>No Team</Text>
            <Button onPress={() => supabase.auth.signOut()} title='Sign Out' />
        </SafeAreaView>
    );
};

export default page;