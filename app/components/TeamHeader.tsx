import {BottomTabHeaderProps} from "@react-navigation/bottom-tabs";
import {Image, SafeAreaView, StyleSheet, Text, TouchableOpacity, View} from "react-native";
import React from "react";

const TeamHeader = ({options}: BottomTabHeaderProps) => {
    return (
        <SafeAreaView style={{ backgroundColor: 'white' }}>
            <View style={styles.headerContainer}>
                <TouchableOpacity>
                    <Image
                        style={styles.imageStyle}
                        source={require('@/assets/images/it-logo.jpeg')}
                    />
                </TouchableOpacity>
                <Text style={styles.titleStyle}>{options.title}</Text>
            </View>
        </SafeAreaView>
    )
}

export default TeamHeader;

const styles = StyleSheet.create({
    headerContainer: {
        flexDirection: 'row',
        alignItems: 'center',
        paddingHorizontal: 16,
        paddingBottom: 8,
    },
    imageStyle: {
        width: 44,
        height: 44,
        borderRadius: 22,
        borderColor: 'lightgrey',
        borderWidth: 0.1,
    },
    titleStyle: {
        marginLeft: 16,
        fontSize: 18,
        fontWeight: '600',
    }
});
