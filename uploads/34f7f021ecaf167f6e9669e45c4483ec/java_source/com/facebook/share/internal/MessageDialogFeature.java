/*
 * Decompiled with CFR 0_115.
 */
package com.facebook.share.internal;

import com.facebook.internal.DialogFeature;

public enum MessageDialogFeature implements DialogFeature
{
    MESSAGE_DIALOG(20140204),
    PHOTOS(20140324),
    VIDEO(20141218);
    
    private int minVersion;

    private MessageDialogFeature(int n3) {
        this.minVersion = n3;
    }

    @Override
    public String getAction() {
        return "com.facebook.platform.action.request.MESSAGE_DIALOG";
    }

    @Override
    public int getMinVersion() {
        return this.minVersion;
    }
}

