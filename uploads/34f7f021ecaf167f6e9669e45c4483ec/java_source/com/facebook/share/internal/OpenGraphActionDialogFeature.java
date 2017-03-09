/*
 * Decompiled with CFR 0_115.
 */
package com.facebook.share.internal;

import com.facebook.internal.DialogFeature;

public enum OpenGraphActionDialogFeature implements DialogFeature
{
    OG_ACTION_DIALOG(20130618);
    
    private int minVersion;

    private OpenGraphActionDialogFeature(int n3) {
        this.minVersion = n3;
    }

    @Override
    public String getAction() {
        return "com.facebook.platform.action.request.OGACTIONPUBLISH_DIALOG";
    }

    @Override
    public int getMinVersion() {
        return this.minVersion;
    }
}

