/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.os.SystemClock
 */
package com.google.ads;

import android.os.SystemClock;
import com.google.ads.c;
import java.util.concurrent.TimeUnit;

public class d {
    private c a = null;
    private long b = -1;

    public void a(c c2, int n2) {
        this.a = c2;
        this.b = TimeUnit.MILLISECONDS.convert(n2, TimeUnit.SECONDS) + SystemClock.elapsedRealtime();
    }

    public boolean a() {
        if (this.a != null && SystemClock.elapsedRealtime() < this.b) {
            return true;
        }
        return false;
    }

    public c b() {
        return this.a;
    }
}

