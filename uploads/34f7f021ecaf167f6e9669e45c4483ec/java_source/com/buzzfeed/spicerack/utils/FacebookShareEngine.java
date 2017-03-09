/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.app.Activity
 *  android.net.Uri
 */
package com.buzzfeed.spicerack.utils;

import android.app.Activity;
import android.net.Uri;
import android.support.annotation.NonNull;
import com.facebook.share.model.ShareContent;
import com.facebook.share.model.ShareLinkContent;
import com.facebook.share.widget.ShareDialog;

public class FacebookShareEngine {
    public void show(@NonNull Activity activity, @NonNull String string2, @NonNull String string3, @NonNull String string4, @NonNull String string5) {
        ShareDialog.show(activity, (ShareContent)((ShareLinkContent.Builder)new ShareLinkContent.Builder().setContentUrl(Uri.parse((String)string4))).setImageUrl(Uri.parse((String)string5)).setContentDescription(string3).setContentTitle(string2).build());
    }
}

