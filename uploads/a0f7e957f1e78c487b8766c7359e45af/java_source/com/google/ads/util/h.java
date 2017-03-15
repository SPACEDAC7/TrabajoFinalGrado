/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.annotation.TargetApi
 *  android.view.View
 *  android.webkit.WebChromeClient
 *  android.webkit.WebChromeClient$CustomViewCallback
 */
package com.google.ads.util;

import android.annotation.TargetApi;
import android.view.View;
import android.webkit.WebChromeClient;
import com.google.ads.m;
import com.google.ads.util.g;

@TargetApi(value=14)
public class h {

    public static class a
    extends g.a {
        public a(m m2) {
            super(m2);
        }

        public void onShowCustomView(View view, int n2, WebChromeClient.CustomViewCallback customViewCallback) {
            customViewCallback.onCustomViewHidden();
        }
    }

}

