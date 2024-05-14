import React, {createContext, ReactNode} from 'react';
import {supabase} from "@/lib/supabase";

class ImageStore {
    _images: Map<string, string> = new Map

    setImage(key: string, url: string) {
        this._images.set(key, url)
    }

    public async getImageUrl(bucket: string, path: string): Promise<string | null> {
        let imageUrl = this._images.get(path) ?? null
        if (imageUrl) {
            return imageUrl
        }

        const {data} = await supabase
            .storage
            .from(bucket)
            .createSignedUrl(path, 3600)

        imageUrl = data?.signedUrl ?? null
        if (imageUrl) {
            this.setImage(path, imageUrl)
        }
        return imageUrl
    }
}

export const ImageContext = createContext<ImageStore>(null!)

const ImageProvider = ({children}: { children: ReactNode }) => (
    <ImageContext.Provider value={new ImageStore()}>
        {children}
    </ImageContext.Provider>
)

export default ImageProvider;