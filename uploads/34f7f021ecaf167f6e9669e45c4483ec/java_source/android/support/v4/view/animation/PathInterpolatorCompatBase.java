/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.graphics.Path
 *  android.view.animation.Interpolator
 */
package android.support.v4.view.animation;

import android.graphics.Path;
import android.support.v4.view.animation.PathInterpolatorGingerbread;
import android.view.animation.Interpolator;

class PathInterpolatorCompatBase {
    private PathInterpolatorCompatBase() {
    }

    public static Interpolator create(float f2, float f3) {
        return new PathInterpolatorGingerbread(f2, f3);
    }

    public static Interpolator create(float f2, float f3, float f4, float f5) {
        return new PathInterpolatorGingerbread(f2, f3, f4, f5);
    }

    public static Interpolator create(Path path) {
        return new PathInterpolatorGingerbread(path);
    }
}

