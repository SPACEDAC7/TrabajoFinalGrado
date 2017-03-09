/*
 * Decompiled with CFR 0_115.
 */
package com.bumptech.glide.load.resource;

import com.bumptech.glide.load.Transformation;
import com.bumptech.glide.load.engine.Resource;

public class UnitTransformation<T>
implements Transformation<T> {
    private static final Transformation<?> TRANSFORMATION = new UnitTransformation();

    public static <T> UnitTransformation<T> get() {
        return (UnitTransformation)TRANSFORMATION;
    }

    @Override
    public String getId() {
        return "";
    }

    @Override
    public Resource<T> transform(Resource<T> resource, int n2, int n3) {
        return resource;
    }
}

