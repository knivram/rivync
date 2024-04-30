import React from "react";
import {StyleSheet, Text, View} from 'react-native';
import {useAuth} from "@/provider/AuthProvider";


const page = () => {
    const session = useAuth()

    return (
        <View>
            {session && session.user ? <Text>{session.user.email}</Text> : null}
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
