/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.res.AssetFileDescriptor
 *  android.content.res.AssetManager
 *  android.os.ParcelFileDescriptor
 */
package com.bumptech.glide.load.data;

import android.content.res.AssetFileDescriptor;
import android.content.res.AssetManager;
import android.os.ParcelFileDescriptor;
import com.bumptech.glide.load.data.AssetPathFetcher;
import java.io.IOException;

public class FileDescriptorAssetPathFetcher
extends AssetPathFetcher<ParcelFileDescriptor> {
    public FileDescriptorAssetPathFetcher(AssetManager assetManager, String string2) {
        super(assetManager, string2);
    }

    @Override
    protected void close(ParcelFileDescriptor parcelFileDescriptor) throws IOException {
        parcelFileDescriptor.close();
    }

    @Override
    protected ParcelFileDescriptor loadResource(AssetManager assetManager, String string2) throws IOException {
        return assetManager.openFd(string2).getParcelFileDescriptor();
    }
}

