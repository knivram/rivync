import {BottomTabHeaderProps} from "@react-navigation/bottom-tabs";
import {SafeAreaView, StyleSheet, Text, TouchableOpacity, View} from "react-native";
import React from "react";
import {useTeam} from "@/provider/TeamProvider";
import TeamLogo from "@/components/TeamLogo";

const TeamHeader = ({headerProps, onOpenDrawer}: {
    headerProps: BottomTabHeaderProps,
    onOpenDrawer: () => void
}) => {
    const {team} = useTeam()

    return (
        <SafeAreaView style={{backgroundColor: 'white'}}>
            <View style={styles.headerContainer}>
                <TouchableOpacity
                    onPress={onOpenDrawer}
                >
                   <TeamLogo team={team!}/>
                </TouchableOpacity>
                <Text style={styles.titleStyle}>{headerProps.options.title}</Text>
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
