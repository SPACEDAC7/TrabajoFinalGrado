/*
 * Decompiled with CFR 0_115.
 */
package com.facebook;

import com.facebook.CallbackManager;
import com.facebook.FacebookCallback;

public interface FacebookDialog<CONTENT, RESULT> {
    public boolean canShow(CONTENT var1);

    public void registerCallback(CallbackManager var1, FacebookCallback<RESULT> var2);

    public void registerCallback(CallbackManager var1, FacebookCallback<RESULT> var2, int var3);

    public void show(CONTENT var1);
}

