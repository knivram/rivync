import {Team} from "@/lib/types/team";
import {supabase} from "@/lib/supabase";

export const getSignedTeamLogoUrl = async (team: Team) => supabase
    .storage
    .from('teams')
    .createSignedUrl(`${team.id}/${team.icon}`, 3600)