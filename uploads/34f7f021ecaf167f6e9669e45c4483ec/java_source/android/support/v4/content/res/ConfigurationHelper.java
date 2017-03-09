/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.res.Resources
 *  android.os.Build
 *  android.os.Build$VERSION
 */
package android.support.v4.content.res;

import android.content.res.Resources;
import android.os.Build;
import android.support.annotation.NonNull;
import android.support.v4.content.res.ConfigurationHelperGingerbread;
import android.support.v4.content.res.ConfigurationHelperHoneycombMr2;
import android.support.v4.content.res.ConfigurationHelperJellybeanMr1;

public final class ConfigurationHelper {
    private static final ConfigurationHelperImpl IMPL;

    static {
        int n2 = Build.VERSION.SDK_INT;
        IMPL = n2 >= 17 ? new JellybeanMr1Impl() : (n2 >= 13 ? new HoneycombMr2Impl() : new GingerbreadImpl());
    }

    private ConfigurationHelper() {
    }

    public static int getDensityDpi(@NonNull Resources resources) {
        return IMPL.getDensityDpi(resources);
    }

    public static int getScreenHeightDp(@NonNull Resources resources) {
        return IMPL.getScreenHeightDp(resources);
    }

    public static int getScreenWidthDp(@NonNull Resources resources) {
        return IMPL.getScreenWidthDp(resources);
    }

    public static int getSmallestScreenWidthDp(@NonNull Resources resources) {
        return IMPL.getSmallestScreenWidthDp(resources);
    }

    private static interface ConfigurationHelperImpl {
        public int getDensityDpi(@NonNull Resources var1);

        public int getScreenHeightDp(@NonNull Resources var1);

        public int getScreenWidthDp(@NonNull Resources var1);

        public int getSmallestScreenWidthDp(@NonNull Resources var1);
    }

    private static class GingerbreadImpl
    implements ConfigurationHelperImpl {
        GingerbreadImpl() {
        }

        @Override
        public int getDensityDpi(@NonNull Resources resources) {
            return ConfigurationHelperGingerbread.getDensityDpi(resources);
        }

        @Override
        public int getScreenHeightDp(@NonNull Resources resources) {
            return ConfigurationHelperGingerbread.getScreenHeightDp(resources);
        }

        @Override
        public int getScreenWidthDp(@NonNull Resources resources) {
            return ConfigurationHelperGingerbread.getScreenWidthDp(resources);
        }

        @Override
        public int getSmallestScreenWidthDp(@NonNull Resources resources) {
            return ConfigurationHelperGingerbread.getSmallestScreenWidthDp(resources);
        }
    }

    private static class HoneycombMr2Impl
    extends GingerbreadImpl {
        HoneycombMr2Impl() {
        }

        @Override
        public int getScreenHeightDp(@NonNull Resources resources) {
            return ConfigurationHelperHoneycombMr2.getScreenHeightDp(resources);
        }

        @Override
        public int getScreenWidthDp(@NonNull Resources resources) {
            return ConfigurationHelperHoneycombMr2.getScreenWidthDp(resources);
        }

        @Override
        public int getSmallestScreenWidthDp(@NonNull Resources resources) {
            return ConfigurationHelperHoneycombMr2.getSmallestScreenWidthDp(resources);
        }
    }

    private static class JellybeanMr1Impl
    extends HoneycombMr2Impl {
        JellybeanMr1Impl() {
        }

        @Override
        public int getDensityDpi(@NonNull Resources resources) {
            return ConfigurationHelperJellybeanMr1.getDensityDpi(resources);
        }
    }

}

