/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.res.AssetManager
 */
package com.bumptech.glide.load.data;

import android.content.res.AssetManager;
import com.bumptech.glide.load.data.AssetPathFetcher;
import java.io.IOException;
import java.io.InputStream;

public class StreamAssetPathFetcher
extends AssetPathFetcher<InputStream> {
    public StreamAssetPathFetcher(AssetManager assetManager, String string2) {
        super(assetManager, string2);
    }

    @Override
    protected void close(InputStream inputStream) throws IOException {
        inputStream.close();
    }

    @Override
    protected InputStream loadResource(AssetManager assetManager, String string2) throws IOException {
        return assetManager.open(string2);
    }
}

