/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.content.res.Resources
 *  android.util.DisplayMetrics
 *  android.util.TypedValue
 */
package com.google.ads;

import android.content.Context;
import android.content.res.Resources;
import android.util.DisplayMetrics;
import android.util.TypedValue;

public class AdSize {
    public static final int AUTO_HEIGHT = -2;
    public static final AdSize BANNER;
    public static final int FULL_WIDTH = -1;
    public static final AdSize IAB_BANNER;
    public static final AdSize IAB_LEADERBOARD;
    public static final AdSize IAB_MRECT;
    public static final AdSize IAB_WIDE_SKYSCRAPER;
    public static final int LANDSCAPE_AD_HEIGHT = 32;
    public static final int LARGE_AD_HEIGHT = 90;
    public static final int PORTRAIT_AD_HEIGHT = 50;
    public static final AdSize SMART_BANNER;
    private final int a;
    private final int b;
    private boolean c;
    private boolean d;
    private boolean e;
    private String f;

    static {
        SMART_BANNER = new AdSize(-1, -2, "mb");
        BANNER = new AdSize(320, 50, "mb");
        IAB_MRECT = new AdSize(300, 250, "as");
        IAB_BANNER = new AdSize(468, 60, "as");
        IAB_LEADERBOARD = new AdSize(728, 90, "as");
        IAB_WIDE_SKYSCRAPER = new AdSize(160, 600, "as");
    }

    public AdSize(int n2, int n3) {
        this(n2, n3, null);
        if (this.a()) {
            this.e = false;
            this.f = "mb";
            return;
        }
        this.e = true;
    }

    /*
     * Enabled aggressive block sorting
     */
    private AdSize(int n2, int n3, String string2) {
        boolean bl = true;
        this.a = n2;
        this.b = n3;
        this.f = string2;
        boolean bl2 = n2 == -1;
        this.c = bl2;
        bl2 = n3 == -2 ? bl : false;
        this.d = bl2;
        this.e = false;
    }

    private static int a(Context context) {
        context = context.getResources().getDisplayMetrics();
        return (int)((float)context.widthPixels / context.density);
    }

    private boolean a() {
        if (this.a < 0 || this.b < 0) {
            return true;
        }
        return false;
    }

    private static int b(Context context) {
        context = context.getResources().getDisplayMetrics();
        int n2 = (int)((float)context.heightPixels / context.density);
        if (n2 <= 400) {
            return 32;
        }
        if (n2 <= 720) {
            return 50;
        }
        return 90;
    }

    /*
     * Enabled aggressive block sorting
     */
    public static AdSize createAdSize(AdSize adSize, Context object) {
        if (object == null || !adSize.a()) {
            object = adSize;
            if (!adSize.a()) return object;
            return BANNER;
        }
        int n2 = adSize.c ? AdSize.a((Context)object) : adSize.getWidth();
        int n3 = adSize.d ? AdSize.b((Context)object) : adSize.getHeight();
        object = new AdSize(n2, n3, adSize.f);
        object.d = adSize.d;
        object.c = adSize.c;
        object.e = adSize.e;
        return object;
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    public boolean equals(Object object) {
        if (!(object instanceof AdSize)) {
            return false;
        }
        object = (AdSize)object;
        if (this.a != object.a) return false;
        if (this.b != object.b) return false;
        return true;
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    public /* varargs */ AdSize findBestSize(AdSize ... var1_1) {
        var11_2 = null;
        var10_3 = null;
        var2_4 = 0.0;
        if (var1_1 == null) return var11_2;
        var9_5 = var1_1.length;
        var8_6 = 0;
        do {
            var11_2 = var10_3;
            if (var8_6 >= var9_5) return var11_2;
            var11_2 = var1_1[var8_6];
            if (!this.isSizeAppropriate(var11_2.a, var11_2.b)) ** GOTO lbl-1000
            var4_7 = var6_8 = (double)var11_2.a * (double)var11_2.b / ((double)this.a * (double)this.b);
            if (var6_8 > 1.0) {
                var4_7 = 1.0 / var6_8;
            }
            if (var4_7 > var2_4) {
                var10_3 = var11_2;
            } else lbl-1000: // 2 sources:
            {
                var4_7 = var2_4;
            }
            ++var8_6;
            var2_4 = var4_7;
        } while (true);
    }

    public int getHeight() {
        if (this.b < 0) {
            throw new UnsupportedOperationException("Ad size was not set before getHeight() was called.");
        }
        return this.b;
    }

    public int getHeightInPixels(Context context) {
        return (int)TypedValue.applyDimension((int)1, (float)this.b, (DisplayMetrics)context.getResources().getDisplayMetrics());
    }

    public int getWidth() {
        if (this.a < 0) {
            throw new UnsupportedOperationException("Ad size was not set before getWidth() was called.");
        }
        return this.a;
    }

    public int getWidthInPixels(Context context) {
        return (int)TypedValue.applyDimension((int)1, (float)this.a, (DisplayMetrics)context.getResources().getDisplayMetrics());
    }

    public int hashCode() {
        return Integer.valueOf(this.a).hashCode() << 16 | Integer.valueOf(this.b).hashCode() & 65535;
    }

    public boolean isAutoHeight() {
        return this.d;
    }

    public boolean isCustomAdSize() {
        return this.e;
    }

    public boolean isFullWidth() {
        return this.c;
    }

    public boolean isSizeAppropriate(int n2, int n3) {
        if ((double)n2 <= (double)this.a * 1.25 && (double)n2 >= (double)this.a * 0.8 && (double)n3 <= (double)this.b * 1.25 && (double)n3 >= (double)this.b * 0.8) {
            return true;
        }
        return false;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public String toString() {
        String string2;
        StringBuilder stringBuilder = new StringBuilder().append(this.getWidth()).append("x").append(this.getHeight());
        if (this.f == null) {
            string2 = "";
            do {
                return stringBuilder.append(string2).toString();
                break;
            } while (true);
        }
        string2 = "_" + this.f;
        return stringBuilder.append(string2).toString();
    }
}

