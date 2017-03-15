/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.text.TextUtils
 *  android.util.Log
 */
package com.google.ads.util;

import android.text.TextUtils;
import android.util.Log;

public class a {
    private static boolean a = Log.isLoggable((String)"GoogleAdsAssertion", (int)3);

    /*
     * Enabled aggressive block sorting
     */
    public static void a(Object object) {
        boolean bl = object == null;
        a.c(bl, "Assertion that an object is null failed.");
    }

    /*
     * Enabled aggressive block sorting
     */
    public static void a(Object object, Object object2) {
        boolean bl = object == object2;
        a.c(bl, "Assertion that 'a' and 'b' refer to the same object failed.a: " + object + ", b: " + object2);
    }

    /*
     * Enabled aggressive block sorting
     */
    public static void a(String string2) {
        boolean bl = !TextUtils.isEmpty((CharSequence)string2);
        a.c(bl, "Expected a non empty string, got: " + string2);
    }

    public static void a(boolean bl) {
        a.c(bl, "Assertion failed.");
    }

    public static void a(boolean bl, String string2) {
        a.c(bl, string2);
    }

    /*
     * Enabled aggressive block sorting
     */
    public static void b(Object object) {
        boolean bl = object != null;
        a.c(bl, "Assertion that an object is not null failed.");
    }

    /*
     * Enabled aggressive block sorting
     */
    public static void b(boolean bl) {
        bl = !bl;
        a.c(bl, "Assertion failed.");
    }

    /*
     * Enabled aggressive block sorting
     */
    public static void b(boolean bl, String string2) {
        bl = !bl;
        a.c(bl, string2);
    }

    /*
     * Enabled aggressive block sorting
     */
    private static void c(boolean bl, String string2) {
        if (!Log.isLoggable((String)"GoogleAdsAssertion", (int)3) && !a || bl) {
            return;
        }
        a a2 = new a(string2);
        Log.d((String)"GoogleAdsAssertion", (String)string2, (Throwable)a2);
        throw a2;
    }

    public static class a
    extends Error {
        public a(String string2) {
            super(string2);
        }
    }

}

