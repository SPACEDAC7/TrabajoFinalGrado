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
import com.facebook.share.widget.MessageDialog;
import com.facebook.share.widget.ShareButtonBase;

public final class SendButton
extends ShareButtonBase {
    private static final int DEFAULT_REQUEST_CODE = CallbackManagerImpl.RequestCodeOffset.Message.toRequestCode();

    public SendButton(Context context) {
        super(context, null, 0, "fb_send_button_create", DEFAULT_REQUEST_CODE);
    }

    public SendButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0, "fb_send_button_create", DEFAULT_REQUEST_CODE);
    }

    public SendButton(Context context, AttributeSet attributeSet, int n2) {
        super(context, attributeSet, n2, "fb_send_button_create", DEFAULT_REQUEST_CODE);
    }

    @Override
    protected int getDefaultStyleResource() {
        return R.style.com_facebook_button_send;
    }

    @Override
    protected View.OnClickListener getShareOnClickListener() {
        return new View.OnClickListener(){

            /*
             * Enabled aggressive block sorting
             */
            public void onClick(View view) {
                MessageDialog messageDialog = SendButton.this.getFragment() != null ? new MessageDialog(SendButton.this.getFragment(), SendButton.this.getRequestCode()) : new MessageDialog(SendButton.this.getActivity(), SendButton.this.getRequestCode());
                messageDialog.show(SendButton.this.getShareContent());
                SendButton.this.callExternalOnClickListener(view);
            }
        };
    }

}

