import React, {useContext, useEffect, useState} from 'react';
import {Image} from "react-native";
import {Team} from "@/lib/types/team";
import {ImageContext} from "@/provider/ImageProvider";

const TeamLogo = ({team, ...props}: { team: Team, size?: number }) => {
    const imageStore = useContext(ImageContext)
    const size = props.size ?? 44

    const [imageUrl, setImageUrl] = useState<string | null>(null)

    useEffect(() => {
        imageStore
            .getImageUrl('teams', `${team.id}/${team.icon}`)
            .then((url) => setImageUrl(url))
    }, [team]);

    return (
        <>
            {imageUrl &&
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
            }
        </>
    )
};

export default TeamLogo;