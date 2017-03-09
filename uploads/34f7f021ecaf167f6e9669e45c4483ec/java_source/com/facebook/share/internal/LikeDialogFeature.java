/*
 * Decompiled with CFR 0_115.
 */
package com.facebook.share.internal;

import com.facebook.internal.DialogFeature;

public enum LikeDialogFeature implements DialogFeature
{
    LIKE_DIALOG(20140701);
    
    private int minVersion;

    private LikeDialogFeature(int n3) {
        this.minVersion = n3;
    }

    @Override
    public String getAction() {
        return "com.facebook.platform.action.request.LIKE_DIALOG";
    }

    @Override
    public int getMinVersion() {
        return this.minVersion;
    }
}

