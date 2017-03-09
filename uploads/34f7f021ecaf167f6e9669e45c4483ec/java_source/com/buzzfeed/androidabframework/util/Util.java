/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.content.res.AssetManager
 *  android.net.ConnectivityManager
 *  android.net.NetworkInfo
 *  org.json.JSONException
 *  org.json.JSONObject
 */
package com.buzzfeed.androidabframework.util;

import android.content.Context;
import android.content.res.AssetManager;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
import org.json.JSONException;
import org.json.JSONObject;

public class Util {
    private static final int NETWORK_CONNECT_TIMEOUT = 15000;
    private static final int NETWORK_READ_TIMEOUT = 10000;
    private static final String UTF_8 = "UTF-8";

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     * Lifted jumps to return sites
     */
    @Nullable
    public static String downloadUrl(String var0) throws IOException {
        var2_1 = null;
        var4_2 = null;
        var3_4 = null;
        var1_5 = var2_1;
        var0 = (HttpURLConnection)new URL((String)var0).openConnection();
        var1_5 = var2_1;
        var0.setReadTimeout(10000);
        var1_5 = var2_1;
        var0.setConnectTimeout(15000);
        var1_5 = var2_1;
        var0.setRequestMethod("GET");
        var1_5 = var2_1;
        var0.setDoInput(true);
        var1_5 = var2_1;
        var0.connect();
        var1_5 = var2_1;
        var1_5 = var2_1 = var0.getInputStream();
        var0 = new InputStreamReader((InputStream)var2_1, "UTF-8");
        var1_5 = new BufferedReader((Reader)var0);
        try {
            var3_4 = new StringBuilder();
            while ((var4_2 = var1_5.readLine()) != null) {
                var3_4.append(var4_2);
            }
            var3_4 = var3_4.toString();
            if (var1_5 == null) ** GOTO lbl35
            ** GOTO lbl34
        }
        catch (Throwable var4_3) {
            block11 : {
                var3_4 = var1_5;
                var1_5 = var4_3;
                ** GOTO lbl46
lbl34: // 1 sources:
                var1_5.close();
lbl35: // 2 sources:
                if (var0 != null) {
                    var0.close();
                }
                if (var2_1 == null) return var3_4;
                var2_1.close();
                return var3_4;
                catch (Throwable var5_7) {
                    var2_1 = var1_5;
                    var0 = var4_2;
                    var1_5 = var5_7;
                    break block11;
                }
                catch (Throwable var1_6) {}
            }
            if (var3_4 != null) {
                var3_4.close();
            }
            if (var0 != null) {
                var0.close();
            }
            if (var2_1 == null) throw var1_5;
            var2_1.close();
            throw var1_5;
        }
    }

    @Nullable
    public static JSONObject getJsonFromAsset(Context object, String object2) throws IOException, JSONException {
        char[] arrc = null;
        object2 = object.getAssets().open((String)object2);
        object = arrc;
        if (object2 != null) {
            int n2;
            object = new StringBuilder();
            arrc = new char[1024];
            object2 = new InputStreamReader((InputStream)object2, "UTF-8");
            while ((n2 = object2.read(arrc, 0, arrc.length)) != -1) {
                object.append(arrc, 0, n2);
            }
            object = new JSONObject(object.toString());
        }
        return object;
    }

    public static boolean isNetworkConnectionUp(@NonNull Context context) {
        if (context == null) {
            throw new IllegalArgumentException("context parameter cannot be null");
        }
        if ((context = ((ConnectivityManager)context.getApplicationContext().getSystemService("connectivity")).getActiveNetworkInfo()) != null && context.isConnected()) {
            return true;
        }
        return false;
    }
}

