/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.util.AttributeSet
 *  android.view.View
 *  android.view.View$OnClickListener
 */
package com.facebook.share.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import com.facebook.CallbackManager;
import com.facebook.FacebookButtonBase;
import com.facebook.FacebookCallback;
import com.facebook.share.Sharer;
import com.facebook.share.internal.ShareInternalUtility;
import com.facebook.share.model.ShareContent;

public abstract class ShareButtonBase
extends FacebookButtonBase {
    private ShareContent shareContent;

    protected ShareButtonBase(Context context, AttributeSet attributeSet, int n2, String string2, int n3) {
        super(context, attributeSet, n2, 0, string2, n3);
    }

    @Override
    protected void configureButton(Context context, AttributeSet attributeSet, int n2, int n3) {
        super.configureButton(context, attributeSet, n2, n3);
        this.setInternalOnClickListener(this.getShareOnClickListener());
    }

    public ShareContent getShareContent() {
        return this.shareContent;
    }

    protected abstract View.OnClickListener getShareOnClickListener();

    public void registerCallback(CallbackManager callbackManager, FacebookCallback<Sharer.Result> facebookCallback) {
        ShareInternalUtility.registerSharerCallback(this.getRequestCode(), callbackManager, facebookCallback);
    }

    public void registerCallback(CallbackManager callbackManager, FacebookCallback<Sharer.Result> facebookCallback, int n2) {
        this.setRequestCode(n2);
        this.registerCallback(callbackManager, facebookCallback);
    }

    public void setShareContent(ShareContent shareContent) {
        this.shareContent = shareContent;
    }
}

