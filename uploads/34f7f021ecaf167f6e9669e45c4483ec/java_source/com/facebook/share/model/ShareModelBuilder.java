/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.os.Parcel
 */
package com.facebook.share.model;

import android.os.Parcel;
import com.facebook.share.ShareBuilder;
import com.facebook.share.model.ShareModel;

public interface ShareModelBuilder<P extends ShareModel, E extends ShareModelBuilder>
extends ShareBuilder<P, E> {
    public E readFrom(Parcel var1);

    public E readFrom(P var1);
}

