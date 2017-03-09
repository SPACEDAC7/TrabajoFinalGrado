/*
 * Decompiled with CFR 0_115.
 */
package com.facebook.share.internal;

import com.facebook.internal.DialogFeature;

public enum ShareDialogFeature implements DialogFeature
{
    SHARE_DIALOG(20130618),
    PHOTOS(20140204),
    VIDEO(20141028);
    
    private int minVersion;

    private ShareDialogFeature(int n3) {
        this.minVersion = n3;
    }

    @Override
    public String getAction() {
        return "com.facebook.platform.action.request.FEED_DIALOG";
    }

    @Override
    public int getMinVersion() {
        return this.minVersion;
    }
}

