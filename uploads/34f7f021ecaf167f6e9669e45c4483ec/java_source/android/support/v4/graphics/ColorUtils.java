/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.graphics.Color
 */
package android.support.v4.graphics;

import android.graphics.Color;
import android.support.annotation.ColorInt;
import android.support.annotation.FloatRange;
import android.support.annotation.IntRange;
import android.support.annotation.NonNull;
import android.support.annotation.VisibleForTesting;

public final class ColorUtils {
    private static final int MIN_ALPHA_SEARCH_MAX_ITERATIONS = 10;
    private static final int MIN_ALPHA_SEARCH_PRECISION = 1;
    private static final ThreadLocal<double[]> TEMP_ARRAY = new ThreadLocal();
    private static final double XYZ_EPSILON = 0.008856;
    private static final double XYZ_KAPPA = 903.3;
    private static final double XYZ_WHITE_REFERENCE_X = 95.047;
    private static final double XYZ_WHITE_REFERENCE_Y = 100.0;
    private static final double XYZ_WHITE_REFERENCE_Z = 108.883;

    private ColorUtils() {
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    @ColorInt
    public static int HSLToColor(@NonNull float[] var0) {
        var1_1 = var0[0];
        var2_2 = var0[1];
        var3_3 = var0[2];
        var2_2 = (1.0f - Math.abs(2.0f * var3_3 - 1.0f)) * var2_2;
        var3_3 -= 0.5f * var2_2;
        var4_4 = var2_2 * (1.0f - Math.abs(var1_1 / 60.0f % 2.0f - 1.0f));
        var8_5 = (int)var1_1 / 60;
        var7_6 = 0;
        var6_7 = 0;
        var5_8 = 0;
        switch (var8_5) {
            case 0: {
                var7_6 = Math.round(255.0f * (var2_2 + var3_3));
                var6_7 = Math.round(255.0f * (var4_4 + var3_3));
                var5_8 = Math.round(255.0f * var3_3);
                ** break;
            }
            case 1: {
                var7_6 = Math.round(255.0f * (var4_4 + var3_3));
                var6_7 = Math.round(255.0f * (var2_2 + var3_3));
                var5_8 = Math.round(255.0f * var3_3);
                ** break;
            }
            case 2: {
                var7_6 = Math.round(255.0f * var3_3);
                var6_7 = Math.round(255.0f * (var2_2 + var3_3));
                var5_8 = Math.round(255.0f * (var4_4 + var3_3));
                ** break;
            }
            case 3: {
                var7_6 = Math.round(255.0f * var3_3);
                var6_7 = Math.round(255.0f * (var4_4 + var3_3));
                var5_8 = Math.round(255.0f * (var2_2 + var3_3));
                ** break;
            }
            case 4: {
                var7_6 = Math.round(255.0f * (var4_4 + var3_3));
                var6_7 = Math.round(255.0f * var3_3);
                var5_8 = Math.round(255.0f * (var2_2 + var3_3));
            }
lbl36: // 6 sources:
            default: {
                return Color.rgb((int)ColorUtils.constrain(var7_6, 0, 255), (int)ColorUtils.constrain(var6_7, 0, 255), (int)ColorUtils.constrain(var5_8, 0, 255));
            }
            case 5: 
            case 6: 
        }
        var7_6 = Math.round(255.0f * (var2_2 + var3_3));
        var6_7 = Math.round(255.0f * var3_3);
        var5_8 = Math.round(255.0f * (var4_4 + var3_3));
        return Color.rgb((int)ColorUtils.constrain(var7_6, 0, 255), (int)ColorUtils.constrain(var6_7, 0, 255), (int)ColorUtils.constrain(var5_8, 0, 255));
    }

    @ColorInt
    public static int LABToColor(@FloatRange(from=0.0, to=100.0) double d2, @FloatRange(from=-128.0, to=127.0) double d3, @FloatRange(from=-128.0, to=127.0) double d4) {
        double[] arrd = ColorUtils.getTempDouble3Array();
        ColorUtils.LABToXYZ(d2, d3, d4, arrd);
        return ColorUtils.XYZToColor(arrd[0], arrd[1], arrd[2]);
    }

    /*
     * Enabled aggressive block sorting
     */
    public static void LABToXYZ(@FloatRange(from=0.0, to=100.0) double d2, @FloatRange(from=-128.0, to=127.0) double d3, @FloatRange(from=-128.0, to=127.0) double d4, @NonNull double[] arrd) {
        double d5 = (16.0 + d2) / 116.0;
        double d6 = d3 / 500.0 + d5;
        double d7 = d5 - d4 / 200.0;
        d3 = Math.pow(d6, 3.0);
        if (d3 <= 0.008856) {
            d3 = (116.0 * d6 - 16.0) / 903.3;
        }
        d2 = d2 > 7.9996247999999985 ? Math.pow(d5, 3.0) : (d2 /= 903.3);
        d4 = Math.pow(d7, 3.0);
        if (d4 <= 0.008856) {
            d4 = (116.0 * d7 - 16.0) / 903.3;
        }
        arrd[0] = 95.047 * d3;
        arrd[1] = 100.0 * d2;
        arrd[2] = 108.883 * d4;
    }

    /*
     * Enabled aggressive block sorting
     */
    public static void RGBToHSL(@IntRange(from=0, to=255) int n2, @IntRange(from=0, to=255) int n3, @IntRange(from=0, to=255) int n4, @NonNull float[] arrf) {
        float f2 = (float)n2 / 255.0f;
        float f3 = (float)n3 / 255.0f;
        float f4 = (float)n4 / 255.0f;
        float f5 = Math.max(f2, Math.max(f3, f4));
        float f6 = Math.min(f2, Math.min(f3, f4));
        float f7 = f5 - f6;
        float f8 = (f5 + f6) / 2.0f;
        if (f5 == f6) {
            f2 = 0.0f;
            f7 = 0.0f;
        } else {
            f2 = f5 == f2 ? (f3 - f4) / f7 % 6.0f : (f5 == f3 ? (f4 - f2) / f7 + 2.0f : (f2 - f3) / f7 + 4.0f);
            f3 = f7 / (1.0f - Math.abs(2.0f * f8 - 1.0f));
            f7 = f2;
            f2 = f3;
        }
        f7 = f3 = 60.0f * f7 % 360.0f;
        if (f3 < 0.0f) {
            f7 = f3 + 360.0f;
        }
        arrf[0] = ColorUtils.constrain(f7, 0.0f, 360.0f);
        arrf[1] = ColorUtils.constrain(f2, 0.0f, 1.0f);
        arrf[2] = ColorUtils.constrain(f8, 0.0f, 1.0f);
    }

    public static void RGBToLAB(@IntRange(from=0, to=255) int n2, @IntRange(from=0, to=255) int n3, @IntRange(from=0, to=255) int n4, @NonNull double[] arrd) {
        ColorUtils.RGBToXYZ(n2, n3, n4, arrd);
        ColorUtils.XYZToLAB(arrd[0], arrd[1], arrd[2], arrd);
    }

    /*
     * Enabled aggressive block sorting
     */
    public static void RGBToXYZ(@IntRange(from=0, to=255) int n2, @IntRange(from=0, to=255) int n3, @IntRange(from=0, to=255) int n4, @NonNull double[] arrd) {
        if (arrd.length != 3) {
            throw new IllegalArgumentException("outXyz must have a length of 3.");
        }
        double d2 = (double)n2 / 255.0;
        d2 = d2 < 0.04045 ? (d2 /= 12.92) : Math.pow((0.055 + d2) / 1.055, 2.4);
        double d3 = (double)n3 / 255.0;
        d3 = d3 < 0.04045 ? (d3 /= 12.92) : Math.pow((0.055 + d3) / 1.055, 2.4);
        double d4 = (double)n4 / 255.0;
        d4 = d4 < 0.04045 ? (d4 /= 12.92) : Math.pow((0.055 + d4) / 1.055, 2.4);
        arrd[0] = 100.0 * (0.4124 * d2 + 0.3576 * d3 + 0.1805 * d4);
        arrd[1] = 100.0 * (0.2126 * d2 + 0.7152 * d3 + 0.0722 * d4);
        arrd[2] = 100.0 * (0.0193 * d2 + 0.1192 * d3 + 0.9505 * d4);
    }

    /*
     * Enabled aggressive block sorting
     */
    @ColorInt
    public static int XYZToColor(@FloatRange(from=0.0, to=95.047) double d2, @FloatRange(from=0.0, to=100.0) double d3, @FloatRange(from=0.0, to=108.883) double d4) {
        double d5 = (3.2406 * d2 + -1.5372 * d3 + -0.4986 * d4) / 100.0;
        double d6 = (-0.9689 * d2 + 1.8758 * d3 + 0.0415 * d4) / 100.0;
        d4 = (0.0557 * d2 + -0.204 * d3 + 1.057 * d4) / 100.0;
        d2 = d5 > 0.0031308 ? 1.055 * Math.pow(d5, 0.4166666666666667) - 0.055 : d5 * 12.92;
        d3 = d6 > 0.0031308 ? 1.055 * Math.pow(d6, 0.4166666666666667) - 0.055 : d6 * 12.92;
        if (d4 > 0.0031308) {
            d4 = 1.055 * Math.pow(d4, 0.4166666666666667) - 0.055;
            return Color.rgb((int)ColorUtils.constrain((int)Math.round(255.0 * d2), 0, 255), (int)ColorUtils.constrain((int)Math.round(255.0 * d3), 0, 255), (int)ColorUtils.constrain((int)Math.round(255.0 * d4), 0, 255));
        }
        return Color.rgb((int)ColorUtils.constrain((int)Math.round(255.0 * d2), 0, 255), (int)ColorUtils.constrain((int)Math.round(255.0 * d3), 0, 255), (int)ColorUtils.constrain((int)Math.round(255.0 * (d4 *= 12.92)), 0, 255));
    }

    public static void XYZToLAB(@FloatRange(from=0.0, to=95.047) double d2, @FloatRange(from=0.0, to=100.0) double d3, @FloatRange(from=0.0, to=108.883) double d4, @NonNull double[] arrd) {
        if (arrd.length != 3) {
            throw new IllegalArgumentException("outLab must have a length of 3.");
        }
        d2 = ColorUtils.pivotXyzComponent(d2 / 95.047);
        d3 = ColorUtils.pivotXyzComponent(d3 / 100.0);
        d4 = ColorUtils.pivotXyzComponent(d4 / 108.883);
        arrd[0] = Math.max(0.0, 116.0 * d3 - 16.0);
        arrd[1] = 500.0 * (d2 - d3);
        arrd[2] = 200.0 * (d3 - d4);
    }

    @ColorInt
    public static int blendARGB(@ColorInt int n2, @ColorInt int n3, @FloatRange(from=0.0, to=1.0) float f2) {
        float f3 = 1.0f - f2;
        float f4 = Color.alpha((int)n2);
        float f5 = Color.alpha((int)n3);
        float f6 = Color.red((int)n2);
        float f7 = Color.red((int)n3);
        float f8 = Color.green((int)n2);
        float f9 = Color.green((int)n3);
        float f10 = Color.blue((int)n2);
        float f11 = Color.blue((int)n3);
        return Color.argb((int)((int)(f4 * f3 + f5 * f2)), (int)((int)(f6 * f3 + f7 * f2)), (int)((int)(f8 * f3 + f9 * f2)), (int)((int)(f10 * f3 + f11 * f2)));
    }

    public static void blendHSL(@NonNull float[] arrf, @NonNull float[] arrf2, @FloatRange(from=0.0, to=1.0) float f2, @NonNull float[] arrf3) {
        if (arrf3.length != 3) {
            throw new IllegalArgumentException("result must have a length of 3.");
        }
        float f3 = 1.0f - f2;
        arrf3[0] = ColorUtils.circularInterpolate(arrf[0], arrf2[0], f2);
        arrf3[1] = arrf[1] * f3 + arrf2[1] * f2;
        arrf3[2] = arrf[2] * f3 + arrf2[2] * f2;
    }

    public static void blendLAB(@NonNull double[] arrd, @NonNull double[] arrd2, @FloatRange(from=0.0, to=1.0) double d2, @NonNull double[] arrd3) {
        if (arrd3.length != 3) {
            throw new IllegalArgumentException("outResult must have a length of 3.");
        }
        double d3 = 1.0 - d2;
        arrd3[0] = arrd[0] * d3 + arrd2[0] * d2;
        arrd3[1] = arrd[1] * d3 + arrd2[1] * d2;
        arrd3[2] = arrd[2] * d3 + arrd2[2] * d2;
    }

    public static double calculateContrast(@ColorInt int n2, @ColorInt int n3) {
        if (Color.alpha((int)n3) != 255) {
            throw new IllegalArgumentException("background can not be translucent: #" + Integer.toHexString(n3));
        }
        int n4 = n2;
        if (Color.alpha((int)n2) < 255) {
            n4 = ColorUtils.compositeColors(n2, n3);
        }
        double d2 = ColorUtils.calculateLuminance(n4) + 0.05;
        double d3 = ColorUtils.calculateLuminance(n3) + 0.05;
        return Math.max(d2, d3) / Math.min(d2, d3);
    }

    @FloatRange(from=0.0, to=1.0)
    public static double calculateLuminance(@ColorInt int n2) {
        double[] arrd = ColorUtils.getTempDouble3Array();
        ColorUtils.colorToXYZ(n2, arrd);
        return arrd[1] / 100.0;
    }

    /*
     * Enabled aggressive block sorting
     */
    public static int calculateMinimumAlpha(@ColorInt int n2, @ColorInt int n3, float f2) {
        if (Color.alpha((int)n3) != 255) {
            throw new IllegalArgumentException("background can not be translucent: #" + Integer.toHexString(n3));
        }
        if (ColorUtils.calculateContrast(ColorUtils.setAlphaComponent(n2, 255), n3) < (double)f2) {
            return -1;
        }
        int n4 = 0;
        int n5 = 0;
        int n6 = 255;
        do {
            int n7 = n6;
            if (n4 > 10) return n7;
            n7 = n6;
            if (n6 - n5 <= 1) return n7;
            n7 = (n5 + n6) / 2;
            if (ColorUtils.calculateContrast(ColorUtils.setAlphaComponent(n2, n7), n3) < (double)f2) {
                n5 = n7;
            } else {
                n6 = n7;
            }
            ++n4;
        } while (true);
    }

    /*
     * Enabled aggressive block sorting
     */
    @VisibleForTesting
    static float circularInterpolate(float f2, float f3, float f4) {
        float f5 = f2;
        float f6 = f3;
        if (Math.abs(f3 - f2) <= 180.0f) return ((f6 - f5) * f4 + f5) % 360.0f;
        if (f3 > f2) {
            f5 = f2 + 360.0f;
            f6 = f3;
            return ((f6 - f5) * f4 + f5) % 360.0f;
        }
        f6 = f3 + 360.0f;
        f5 = f2;
        return ((f6 - f5) * f4 + f5) % 360.0f;
    }

    public static void colorToHSL(@ColorInt int n2, @NonNull float[] arrf) {
        ColorUtils.RGBToHSL(Color.red((int)n2), Color.green((int)n2), Color.blue((int)n2), arrf);
    }

    public static void colorToLAB(@ColorInt int n2, @NonNull double[] arrd) {
        ColorUtils.RGBToLAB(Color.red((int)n2), Color.green((int)n2), Color.blue((int)n2), arrd);
    }

    public static void colorToXYZ(@ColorInt int n2, @NonNull double[] arrd) {
        ColorUtils.RGBToXYZ(Color.red((int)n2), Color.green((int)n2), Color.blue((int)n2), arrd);
    }

    private static int compositeAlpha(int n2, int n3) {
        return 255 - (255 - n3) * (255 - n2) / 255;
    }

    public static int compositeColors(@ColorInt int n2, @ColorInt int n3) {
        int n4 = Color.alpha((int)n3);
        int n5 = Color.alpha((int)n2);
        int n6 = ColorUtils.compositeAlpha(n5, n4);
        return Color.argb((int)n6, (int)ColorUtils.compositeComponent(Color.red((int)n2), n5, Color.red((int)n3), n4, n6), (int)ColorUtils.compositeComponent(Color.green((int)n2), n5, Color.green((int)n3), n4, n6), (int)ColorUtils.compositeComponent(Color.blue((int)n2), n5, Color.blue((int)n3), n4, n6));
    }

    private static int compositeComponent(int n2, int n3, int n4, int n5, int n6) {
        if (n6 == 0) {
            return 0;
        }
        return (n2 * 255 * n3 + n4 * n5 * (255 - n3)) / (n6 * 255);
    }

    private static float constrain(float f2, float f3, float f4) {
        if (f2 < f3) {
            return f3;
        }
        if (f2 > f4) {
            return f4;
        }
        return f2;
    }

    private static int constrain(int n2, int n3, int n4) {
        if (n2 < n3) {
            return n3;
        }
        if (n2 > n4) {
            return n4;
        }
        return n2;
    }

    public static double distanceEuclidean(@NonNull double[] arrd, @NonNull double[] arrd2) {
        return Math.sqrt(Math.pow(arrd[0] - arrd2[0], 2.0) + Math.pow(arrd[1] - arrd2[1], 2.0) + Math.pow(arrd[2] - arrd2[2], 2.0));
    }

    private static double[] getTempDouble3Array() {
        double[] arrd;
        double[] arrd2 = arrd = TEMP_ARRAY.get();
        if (arrd == null) {
            arrd2 = new double[3];
            TEMP_ARRAY.set(arrd2);
        }
        return arrd2;
    }

    private static double pivotXyzComponent(double d2) {
        if (d2 > 0.008856) {
            return Math.pow(d2, 0.3333333333333333);
        }
        return (903.3 * d2 + 16.0) / 116.0;
    }

    @ColorInt
    public static int setAlphaComponent(@ColorInt int n2, @IntRange(from=0, to=255) int n3) {
        if (n3 < 0 || n3 > 255) {
            throw new IllegalArgumentException("alpha must be between 0 and 255.");
        }
        return 16777215 & n2 | n3 << 24;
    }
}

