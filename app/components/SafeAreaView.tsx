import React from 'react';
import {SafeAreaView as OriginSafeAreaView, StatusBar, ViewProps} from "react-native";
import {Platform} from "expo-modules-core";

const SafeAreaView = (props: ViewProps) => (
    <OriginSafeAreaView
        {...props}
        style={[
            {
                paddingTop: Platform.OS === "android" ? StatusBar.currentHeight! + 8 : 0,
            },
            props.style,
        ]}
    />
)

export default SafeAreaView;