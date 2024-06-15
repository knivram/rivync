import moment from "@/lib/moments"

export type Event = {
    id: string
    team_id: string
    type: EventType
    start: moment.Moment
    end: moment.Moment
    location: string
    ground: string
}

export type EventResponse = {
    id: string
    team_id: string
    type: string
    start: string
    end: string
    location: string
    ground: string
}

export enum EventType {
    TRAINING = 'TRAINING',
    TURNIER = 'TURNIER',
    MATCH = 'MATCH',
}