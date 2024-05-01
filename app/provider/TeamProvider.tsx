import React, {useEffect, useState} from 'react';
import {Team} from "@/lib/types/team";
import {supabase} from "@/lib/supabase";

export type TeamContext = {
    team: Team | null,
    setTeam: (team: Team) => void
}

const TeamContext = React.createContext<TeamContext>({team: null, setTeam: () => {console.warn('not jet initialized')}})

export const TeamProvider = ({children}: { children: React.ReactNode }) => {
    const [team, setTeam] = useState<Team | null>(null)

    useEffect(() => {
        supabase.from('team').select('*').limit(1)
            .then(({data}: {data: Team[] | null}) => {
                if (data && data[0]) {
                    setTeam(data[0])
                }
            })
    }, []);

    return (
        <TeamContext.Provider value={{team, setTeam}}>
            {children}
        </TeamContext.Provider>
    );
};

export const useTeam = () => React.useContext(TeamContext)