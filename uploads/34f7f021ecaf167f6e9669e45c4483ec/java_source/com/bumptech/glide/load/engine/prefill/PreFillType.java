/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.graphics.Bitmap
 *  android.graphics.Bitmap$Config
 */
package com.bumptech.glide.load.engine.prefill;

import android.graphics.Bitmap;

public final class PreFillType {
    static final Bitmap.Config DEFAULT_CONFIG = Bitmap.Config.RGB_565;
    private final Bitmap.Config config;
    private final int height;
    private final int weight;
    private final int width;

    PreFillType(int n2, int n3, Bitmap.Config config, int n4) {
        if (config == null) {
            throw new NullPointerException("Config must not be null");
        }
        this.width = n2;
        this.height = n3;
        this.config = config;
        this.weight = n4;
    }

    public boolean equals(Object object) {
        boolean bl;
        boolean bl2 = bl = false;
        if (object instanceof PreFillType) {
            object = (PreFillType)object;
            bl2 = bl;
            if (this.height == object.height) {
                bl2 = bl;
                if (this.width == object.width) {
                    bl2 = bl;
                    if (this.weight == object.weight) {
                        bl2 = bl;
                        if (this.config == object.config) {
                            bl2 = true;
                        }
                    }
                }
            }
        }
        return bl2;
    }

    Bitmap.Config getConfig() {
        return this.config;
    }

    int getHeight() {
        return this.height;
    }

    int getWeight() {
        return this.weight;
    }

    int getWidth() {
        return this.width;
    }

    public int hashCode() {
        return ((this.width * 31 + this.height) * 31 + this.config.hashCode()) * 31 + this.weight;
    }

    public String toString() {
        return "PreFillSize{width=" + this.width + ", height=" + this.height + ", config=" + (Object)this.config + ", weight=" + this.weight + '}';
    }

    public static class Builder {
        private Bitmap.Config config;
        private final int height;
        private int weight = 1;
        private final int width;

        public Builder(int n2) {
            this(n2, n2);
        }

        public Builder(int n2, int n3) {
            if (n2 <= 0) {
                throw new IllegalArgumentException("Width must be > 0");
            }
            if (n3 <= 0) {
                throw new IllegalArgumentException("Height must be > 0");
            }
            this.width = n2;
            this.height = n3;
        }

        PreFillType build() {
            return new PreFillType(this.width, this.height, this.config, this.weight);
        }

        Bitmap.Config getConfig() {
            return this.config;
        }

        public Builder setConfig(Bitmap.Config config) {
            this.config = config;
            return this;
        }

        public Builder setWeight(int n2) {
            if (n2 <= 0) {
                throw new IllegalArgumentException("Weight must be > 0");
            }
            this.weight = n2;
            return this;
        }
    }

}

