import {useAuth} from "@/provider/AuthProvider";
import {StyleSheet, Text, TouchableOpacity, View} from "react-native";
import React from "react";
import {supabase} from "@/lib/supabase";

const page =() => {
    const session = useAuth()

    return (
        <View>
            {session && session.user ? <Text>{session.user.email}</Text> : null}
            <Text>Profile</Text>
            <TouchableOpacity onPress={() => supabase.auth.signOut()} >
                <Text>Signout</Text>
            </TouchableOpacity>
        </View>
    )
}

export default page;

const styles = StyleSheet.create({
    container: {
        flex: 1,
        alignItems: 'center',
        justifyContent: 'center',
    },
    title: {
        fontSize: 20,
        fontWeight: 'bold',
    },
});
