/*
 * Decompiled with CFR 0_115.
 */
package com.bumptech.glide.request;

import com.bumptech.glide.request.Request;

public interface RequestCoordinator {
    public boolean canNotifyStatusChanged(Request var1);

    public boolean canSetImage(Request var1);

    public boolean isAnyResourceSet();

    public void onRequestSuccess(Request var1);
}

