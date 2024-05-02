import {UserRole} from "@/lib/types/user";

export type Team = {
    id: string,
    name: string,
    icon: string,
}

export type TeamWithUserRole = Team & {
    role: UserRole
}