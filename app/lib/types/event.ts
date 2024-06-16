import moment from "@/lib/moments"

export type PersonEvent = {
    id: string
    team_id: string
    type: EventType
    start: moment.Moment
    end: moment.Moment
    location: string
    ground: string
    isSelected: boolean
    participationStatus?: ParticipationStatus
}

export type EventResponse = {
    id: string
    team_id: string
    type: string
    start: string
    end: string
    location: string
    ground: string
    isSelected: boolean
    participationStatus: string
}

export enum ParticipationStatus {
    ACCEPTED = 'ACCEPTED',
    DECLINED = 'DECLINED',
    PENDING = 'PENDING',
}

export enum EventType {
    TRAINING = 'TRAINING',
    TURNIER = 'TURNIER',
    MATCH = 'MATCH',
}