/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.webkit.WebView
 */
package com.google.ads;

import android.webkit.WebView;
import com.google.ads.AdRequest;
import com.google.ads.internal.c;
import com.google.ads.internal.d;
import com.google.ads.n;
import com.google.ads.util.b;
import java.util.HashMap;

public class v
implements n {
    @Override
    public void a(d object, HashMap<String, String> object2, WebView object3) {
        object3 = object2.get("type");
        object2 = object2.get("errors");
        b.e("Invalid " + (String)object3 + " request error: " + (String)object2);
        object = object.j();
        if (object != null) {
            object.a(AdRequest.ErrorCode.INVALID_REQUEST);
        }
    }
}

