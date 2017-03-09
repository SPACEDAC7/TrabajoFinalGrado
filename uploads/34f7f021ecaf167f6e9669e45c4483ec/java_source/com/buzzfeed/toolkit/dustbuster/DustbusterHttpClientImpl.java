/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  org.json.JSONArray
 */
package com.buzzfeed.toolkit.dustbuster;

import com.buzzfeed.toolkit.dustbuster.DustbusterHttpClient;
import com.buzzfeed.toolkit.dustbuster.DustbusterResponse;
import com.buzzfeed.toolkit.util.LogUtil;
import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.Reader;
import java.net.URL;
import java.net.URLConnection;
import javax.net.ssl.HttpsURLConnection;
import org.json.JSONArray;

class DustbusterHttpClientImpl
implements DustbusterHttpClient {
    private static final String TAG = DustbusterHttpClientImpl.class.getSimpleName();

    DustbusterHttpClientImpl() {
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public DustbusterResponse post(String object, JSONArray object2) throws Exception {
        LogUtil.v(TAG + ".post", "about to post the following events/keys: " + object2.toString());
        object = (HttpsURLConnection)new URL((String)object).openConnection();
        object.setRequestMethod("POST");
        object.setRequestProperty("Content-Type", "application/json; charset=UTF-8");
        Object object3 = object.getOutputStream();
        object3.write(object2.toString().getBytes("UTF-8"));
        object3.close();
        int n2 = object.getResponseCode();
        boolean bl = false;
        if (n2 == 200 || n2 == 202) {
            object = new BufferedReader(new InputStreamReader(object.getInputStream()));
            bl = true;
        } else {
            object = new BufferedReader(new InputStreamReader(object.getErrorStream()));
        }
        object2 = new StringBuilder();
        do {
            if ((object3 = object.readLine()) == null) {
                object.close();
                return new DustbusterResponse(bl, object2.toString());
            }
            object2.append((String)object3);
        } while (true);
    }
}

