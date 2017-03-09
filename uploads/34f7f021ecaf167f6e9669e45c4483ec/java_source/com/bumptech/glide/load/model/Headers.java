/*
 * Decompiled with CFR 0_115.
 */
package com.bumptech.glide.load.model;

import com.bumptech.glide.load.model.LazyHeaders;
import java.util.Collections;
import java.util.Map;

public interface Headers {
    public static final Headers DEFAULT;
    @Deprecated
    public static final Headers NONE;

    default static {
        NONE = new Headers(){

            @Override
            public Map<String, String> getHeaders() {
                return Collections.emptyMap();
            }
        };
        DEFAULT = new LazyHeaders.Builder().build();
    }

    public Map<String, String> getHeaders();

}

