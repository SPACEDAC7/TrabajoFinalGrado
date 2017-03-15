/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.app.Activity
 *  android.app.AlertDialog
 *  android.app.AlertDialog$Builder
 *  android.content.ComponentName
 *  android.content.Context
 *  android.content.DialogInterface
 *  android.content.DialogInterface$OnClickListener
 *  android.content.Intent
 *  android.net.Uri
 *  android.text.TextUtils
 *  android.webkit.WebView
 */
package com.google.ads;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.ComponentName;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import android.webkit.WebView;
import com.google.ads.AdActivity;
import com.google.ads.ag;
import com.google.ads.ah;
import com.google.ads.internal.d;
import com.google.ads.internal.e;
import com.google.ads.m;
import com.google.ads.n;
import com.google.ads.util.i;
import java.util.HashMap;

public class ai
implements n {
    /*
     * Enabled aggressive block sorting
     */
    @Override
    public void a(d d2, HashMap<String, String> hashMap, WebView webView) {
        Context context = d2.h().f.a();
        String string2 = (String)hashMap.get("a");
        if (string2 != null) {
            if (string2.equals("resize")) {
                ag.a(webView, (String)hashMap.get("u"));
                return;
            }
            if (string2.equals("state")) {
                ag.a(d2.h().e.a(), webView, (String)hashMap.get("u"));
                return;
            }
        }
        webView = new Intent();
        webView.setComponent(new ComponentName("com.google.android.apps.plus", "com.google.android.apps.circles.platform.PlusOneActivity"));
        if (ah.a((Intent)webView, context)) {
            AdActivity.launchAdActivity(d2, new e("plusone", hashMap));
            return;
        }
        if (!ah.a(new Intent("android.intent.action.VIEW", Uri.parse((String)"market://details?id=com.google.android.apps.plus")), context)) return;
        {
            if (!(TextUtils.isEmpty((CharSequence)((CharSequence)hashMap.get("d"))) || TextUtils.isEmpty((CharSequence)((CharSequence)hashMap.get("o"))) || TextUtils.isEmpty((CharSequence)((CharSequence)hashMap.get("c"))))) {
                webView = new AlertDialog.Builder(context);
                webView.setMessage((CharSequence)hashMap.get("d")).setPositiveButton((CharSequence)hashMap.get("o"), (DialogInterface.OnClickListener)new c(d2)).setNegativeButton((CharSequence)hashMap.get("c"), (DialogInterface.OnClickListener)new a());
                webView.create().show();
                return;
            }
        }
        hashMap = new HashMap();
        hashMap.put("u", "market://details?id=com.google.android.apps.plus");
        AdActivity.launchAdActivity(d2, new e("intent", hashMap));
    }

    private static class a
    implements DialogInterface.OnClickListener {
        public void onClick(DialogInterface dialogInterface, int n2) {
        }
    }

    public static enum b {
        a("ad"),
        b("app");
        
        public String c;

        private b(String string3) {
            this.c = string3;
        }
    }

    private static class c
    implements DialogInterface.OnClickListener {
        private d a;

        public c(d d2) {
            this.a = d2;
        }

        public void onClick(DialogInterface object, int n2) {
            object = new HashMap();
            object.put("u", "market://details?id=com.google.android.apps.plus");
            AdActivity.launchAdActivity(this.a, new e("intent", (HashMap<String, String>)object));
        }
    }

}

