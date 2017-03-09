/*
 * Decompiled with CFR 0_115.
 */
package com.bumptech.glide.load;

import java.io.OutputStream;

public interface Encoder<T> {
    public boolean encode(T var1, OutputStream var2);

    public String getId();
}

