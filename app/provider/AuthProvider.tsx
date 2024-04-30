import React, {useEffect, useState} from 'react';
import {supabase} from "@/lib/supabase";
import {Session} from "@supabase/auth-js";

const AuthContext = React.createContext<Session | null>(null)

export const AuthProvider = ({children}: { children: React.ReactNode }) => {
    const [session, setSession] = useState<Session | null>(null);
    const [isLoading, setIsLoading] = useState(true)

    useEffect(() => {
        supabase.auth.getSession().then(({ data: { session } }) => {
            setIsLoading(false)
            setSession(session)
        })

        supabase.auth.onAuthStateChange((_event, session) => {
            setSession(session)
        })
    }, [])


    if(isLoading) {
        return null
    }

    return (
        <AuthContext.Provider value={session}>
            {children}
        </AuthContext.Provider>
    );
};

export const useAuth = () => React.useContext(AuthContext)