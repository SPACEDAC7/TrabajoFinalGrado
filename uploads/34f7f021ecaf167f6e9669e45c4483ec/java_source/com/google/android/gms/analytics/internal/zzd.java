/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  com.google.android.gms.analytics.internal.zzf
 */
package com.google.android.gms.analytics.internal;

import com.google.android.gms.analytics.internal.zzc;
import com.google.android.gms.analytics.internal.zzf;

public abstract class zzd
extends zzc {
    private boolean cR;

    protected zzd(zzf zzf2) {
        super(zzf2);
    }

    public void initialize() {
        this.zzzy();
        this.cR = true;
    }

    public boolean isInitialized() {
        if (this.cR) {
            return true;
        }
        return false;
    }

    protected void zzacj() {
        if (!this.isInitialized()) {
            throw new IllegalStateException("Not initialized");
        }
    }

    protected abstract void zzzy();
}

