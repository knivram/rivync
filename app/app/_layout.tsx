import 'react-native-gesture-handler';
import '@/lib/i18next'
import FontAwesome from '@expo/vector-icons/FontAwesome';
import {useFonts} from 'expo-font';
import {Slot} from 'expo-router';
import * as SplashScreen from 'expo-splash-screen';
import {useEffect} from 'react';
import {AuthProvider} from "@/provider/AuthProvider";
import ImageProvider from "@/provider/ImageProvider";

export {
    // Catch any errors thrown by the Layout component.
    ErrorBoundary,
} from 'expo-router';

SplashScreen.preventAutoHideAsync();

export default function RootLayout() {
    const [loaded, error] = useFonts({
        SpaceMono: require('../assets/fonts/SpaceMono-Regular.ttf'),
        ...FontAwesome.font,
    });

    // Expo Router uses Error Boundaries to catch errors in the navigation tree.
    useEffect(() => {
        if (error) throw error;
    }, [error]);

    useEffect(() => {
        if (loaded) {
            SplashScreen.hideAsync();
        }
    }, [loaded]);

    if (!loaded) {
        return null;
    }

    return (
        <AuthProvider>
            <ImageProvider>
                <Slot />
            </ImageProvider>
        </AuthProvider>
    );
}
