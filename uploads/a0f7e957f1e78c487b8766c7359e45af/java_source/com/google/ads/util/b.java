/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.util.Log
 */
package com.google.ads.util;

import android.util.Log;

public final class b {
    public static b a = null;
    private static int b = 5;

    private static void a(a a2, String string2) {
        b.a(a2, string2, null);
    }

    private static void a(a a2, String string2, Throwable throwable) {
        if (a != null) {
            a.a(a2, string2, throwable);
        }
    }

    public static void a(String string2) {
        if (b.a("Ads", 3)) {
            Log.d((String)"Ads", (String)string2);
        }
        b.a(a.b, string2);
    }

    public static void a(String string2, Throwable throwable) {
        if (b.a("Ads", 3)) {
            Log.d((String)"Ads", (String)string2, (Throwable)throwable);
        }
        b.a(a.b, string2, throwable);
    }

    private static boolean a(int n2) {
        if (n2 >= b) {
            return true;
        }
        return false;
    }

    public static boolean a(String string2, int n2) {
        if (b.a(n2) || Log.isLoggable((String)string2, (int)n2)) {
            return true;
        }
        return false;
    }

    public static void b(String string2) {
        if (b.a("Ads", 6)) {
            Log.e((String)"Ads", (String)string2);
        }
        b.a(a.e, string2);
    }

    public static void b(String string2, Throwable throwable) {
        if (b.a("Ads", 6)) {
            Log.e((String)"Ads", (String)string2, (Throwable)throwable);
        }
        b.a(a.e, string2, throwable);
    }

    public static void c(String string2) {
        if (b.a("Ads", 4)) {
            Log.i((String)"Ads", (String)string2);
        }
        b.a(a.c, string2);
    }

    public static void c(String string2, Throwable throwable) {
        if (b.a("Ads", 4)) {
            Log.i((String)"Ads", (String)string2, (Throwable)throwable);
        }
        b.a(a.c, string2, throwable);
    }

    public static void d(String string2) {
        if (b.a("Ads", 2)) {
            Log.v((String)"Ads", (String)string2);
        }
        b.a(a.a, string2);
    }

    public static void d(String string2, Throwable throwable) {
        if (b.a("Ads", 5)) {
            Log.w((String)"Ads", (String)string2, (Throwable)throwable);
        }
        b.a(a.d, string2, throwable);
    }

    public static void e(String string2) {
        if (b.a("Ads", 5)) {
            Log.w((String)"Ads", (String)string2);
        }
        b.a(a.d, string2);
    }

    public static enum a {
        a(2),
        b(3),
        c(4),
        d(5),
        e(6);
        
        public final int f;

        private a(int n3) {
            this.f = n3;
        }
    }

    public static interface b {
        public void a(a var1, String var2, Throwable var3);
    }

}

