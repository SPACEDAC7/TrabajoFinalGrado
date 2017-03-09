/*
 * Decompiled with CFR 0_115.
 */
package com.facebook;

import com.facebook.FacebookException;

public interface FacebookCallback<RESULT> {
    public void onCancel();

    public void onError(FacebookException var1);

    public void onSuccess(RESULT var1);
}

