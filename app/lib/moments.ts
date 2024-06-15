import moment from "moment/min/moment-with-locales";
import i18next from "@/lib/i18next";

moment.locale(i18next.resolvedLanguage)

export default moment