import i18next, {InitOptions} from "i18next";
import {initReactI18next} from "react-i18next";
import * as Localization from 'expo-localization';

i18next
    .use(initReactI18next)
    .init({
        resources: {
            de: {
                common: require('@/locale/de/common.json'),
                activity: require('@/locale/de/activity.json'),
                chat: require('@/locale/de/chat.json'),
                event: require('@/locale/de/event.json'),
                profile: require('@/locale/de/profile.json'),
            },
            en: {
                common: require('@/locale/en/common.json'),
                activity: require('@/locale/en/activity.json'),
                chat: require('@/locale/en/chat.json'),
                event: require('@/locale/en/event.json'),
                profile: require('@/locale/en/profile.json'),
            },
        },
        fallbackLng: 'en',
        lng: Localization.getLocales().map((locale) => locale.languageTag)[0],
        interpolation: {
            escapeValue: false,
        },
        react: {
            useSuspense: false,
        },
        compatibilityJSON: "v3",
    } as InitOptions)

export default i18next;
