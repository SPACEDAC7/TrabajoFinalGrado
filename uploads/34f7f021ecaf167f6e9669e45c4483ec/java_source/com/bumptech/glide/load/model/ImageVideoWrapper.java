/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.os.ParcelFileDescriptor
 */
package com.bumptech.glide.load.model;

import android.os.ParcelFileDescriptor;
import java.io.InputStream;

public class ImageVideoWrapper {
    private final ParcelFileDescriptor fileDescriptor;
    private final InputStream streamData;

    public ImageVideoWrapper(InputStream inputStream, ParcelFileDescriptor parcelFileDescriptor) {
        this.streamData = inputStream;
        this.fileDescriptor = parcelFileDescriptor;
    }

    public ParcelFileDescriptor getFileDescriptor() {
        return this.fileDescriptor;
    }

    public InputStream getStream() {
        return this.streamData;
    }
}

