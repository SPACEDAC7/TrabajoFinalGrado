/*
 * Decompiled with CFR 0_115.
 */
package com.crashlytics.android.core.internal.models;

public class BinaryImageData {
    public final long baseAddress;
    public final String id;
    public final String path;
    public final long size;

    public BinaryImageData(long l2, long l3, String string2, String string3) {
        this.baseAddress = l2;
        this.size = l3;
        this.path = string2;
        this.id = string3;
    }
}

