import React, {useEffect, useState} from 'react';
import {Image} from "react-native";
import {Team} from "@/lib/types/team";
import {getSignedTeamLogoUrl} from "@/lib/api/team";

const TeamLogo = ({team, ...props}: {team: Team, size?: number}) => {
    const size = props.size ?? 44

    const [imageUrl, setImageUrl] = useState<string>()

    useEffect(() => {
        getSignedTeamLogoUrl(team!)
            .then(({data}) => setImageUrl(data?.signedUrl))
    }, [team]);

    return (
        <Image
            style={{
                height: size,
                width: size,
                borderRadius: size / 2,
                borderColor: 'lightgrey',
                borderWidth: 0.1,
            }}
            source={{uri: imageUrl}}
        />
    );
};

export default TeamLogo;