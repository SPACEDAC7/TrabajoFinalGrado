/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.app.Activity
 *  android.content.Context
 *  android.util.AttributeSet
 *  android.view.View
 *  android.view.View$OnClickListener
 */
package com.facebook.share.widget;

import android.app.Activity;
import android.content.Context;
import android.support.v4.app.Fragment;
import android.util.AttributeSet;
import android.view.View;
import com.facebook.R;
import com.facebook.internal.CallbackManagerImpl;
import com.facebook.share.model.ShareContent;
import com.facebook.share.widget.ShareButtonBase;
import com.facebook.share.widget.ShareDialog;

public final class ShareButton
extends ShareButtonBase {
    private static final int DEFAULT_REQUEST_CODE = CallbackManagerImpl.RequestCodeOffset.Share.toRequestCode();

    public ShareButton(Context context) {
        super(context, null, 0, "fb_share_button_create", DEFAULT_REQUEST_CODE);
    }

    public ShareButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0, "fb_share_button_create", DEFAULT_REQUEST_CODE);
    }

    public ShareButton(Context context, AttributeSet attributeSet, int n2) {
        super(context, attributeSet, n2, "fb_share_button_create", DEFAULT_REQUEST_CODE);
    }

    @Override
    protected int getDefaultStyleResource() {
        return R.style.com_facebook_button_share;
    }

    @Override
    protected View.OnClickListener getShareOnClickListener() {
        return new View.OnClickListener(){

            /*
             * Enabled aggressive block sorting
             */
            public void onClick(View view) {
                ShareDialog shareDialog = ShareButton.this.getFragment() != null ? new ShareDialog(ShareButton.this.getFragment(), ShareButton.this.getRequestCode()) : new ShareDialog(ShareButton.this.getActivity(), ShareButton.this.getRequestCode());
                shareDialog.show(ShareButton.this.getShareContent());
                ShareButton.this.callExternalOnClickListener(view);
            }
        };
    }

}

