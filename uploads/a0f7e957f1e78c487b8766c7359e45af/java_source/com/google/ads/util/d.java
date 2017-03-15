/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.os.Build
 */
package com.google.ads.util;

import android.os.Build;

class d {
    static final d d = new d();
    static final d e = new d("unknown", "generic", "generic");
    public final String a;
    public final String b;
    public final String c;

    d() {
        this.a = Build.BOARD;
        this.b = Build.DEVICE;
        this.c = Build.BRAND;
    }

    d(String string2, String string3, String string4) {
        this.a = string2;
        this.b = string3;
        this.c = string4;
    }

    private static boolean a(String string2, String string3) {
        if (string2 != null) {
            return string2.equals(string3);
        }
        if (string2 == string3) {
            return true;
        }
        return false;
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    public boolean equals(Object object) {
        if (!(object instanceof d)) {
            return false;
        }
        object = (d)object;
        if (!d.a(this.a, object.a)) return false;
        if (!d.a(this.b, object.b)) return false;
        if (!d.a(this.c, object.c)) return false;
        return true;
    }

    public int hashCode() {
        int n2 = 0;
        if (this.a != null) {
            n2 = 0 + this.a.hashCode();
        }
        int n3 = n2;
        if (this.b != null) {
            n3 = n2 + this.b.hashCode();
        }
        n2 = n3;
        if (this.c != null) {
            n2 = n3 + this.c.hashCode();
        }
        return n2;
    }
}

