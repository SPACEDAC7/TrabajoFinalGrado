/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.content.pm.PackageInfo
 *  android.content.pm.PackageManager
 *  android.content.pm.PackageManager$NameNotFoundException
 *  android.net.http.AndroidHttpClient
 *  android.os.Build
 *  android.os.Build$VERSION
 *  org.apache.http.client.HttpClient
 */
package com.android.volley.toolbox;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.net.http.AndroidHttpClient;
import android.os.Build;
import com.android.volley.Cache;
import com.android.volley.Network;
import com.android.volley.RequestQueue;
import com.android.volley.toolbox.BasicNetwork;
import com.android.volley.toolbox.DiskBasedCache;
import com.android.volley.toolbox.HttpClientStack;
import com.android.volley.toolbox.HttpStack;
import com.android.volley.toolbox.HurlStack;
import java.io.File;
import org.apache.http.client.HttpClient;

public class Volley {
    private static final String DEFAULT_CACHE_DIR = "volley";

    public static RequestQueue newRequestQueue(Context context) {
        return Volley.newRequestQueue(context, null);
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public static RequestQueue newRequestQueue(Context object, HttpStack httpStack) {
        File file;
        Object object2;
        file = new File(object.getCacheDir(), "volley");
        object2 = "volley/0";
        try {
            String string2 = object.getPackageName();
            object = object.getPackageManager().getPackageInfo(string2, 0);
            string2 = String.valueOf(String.valueOf(string2));
            int n2 = object.versionCode;
            object2 = object = new StringBuilder(string2.length() + 12).append(string2).append("/").append(n2).toString();
        }
        catch (PackageManager.NameNotFoundException var0_1) {}
        object = httpStack;
        if (httpStack == null) {
            object = Build.VERSION.SDK_INT >= 9 ? new HurlStack() : new HttpClientStack((HttpClient)AndroidHttpClient.newInstance((String)object2));
        }
        object = new BasicNetwork((HttpStack)object);
        object = new RequestQueue(new DiskBasedCache(file), (Network)object);
        object.start();
        return object;
    }
}

