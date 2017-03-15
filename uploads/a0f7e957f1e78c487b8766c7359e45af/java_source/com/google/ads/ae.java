/*
 * Decompiled with CFR 0_115.
 */
package com.google.ads;

import com.google.ads.internal.d;
import com.google.ads.util.b;
import java.lang.ref.WeakReference;

public class ae
implements Runnable {
    private WeakReference<d> a;

    public ae(d d2) {
        this.a = new WeakReference<d>(d2);
    }

    @Override
    public void run() {
        d d2 = this.a.get();
        if (d2 == null) {
            b.a("The ad must be gone, so cancelling the refresh timer.");
            return;
        }
        d2.y();
    }
}

