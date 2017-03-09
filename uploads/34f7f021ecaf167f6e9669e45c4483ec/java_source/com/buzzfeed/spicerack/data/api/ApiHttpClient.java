/*
 * Decompiled with CFR 0_115.
 */
package com.buzzfeed.spicerack.data.api;

import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;

public class ApiHttpClient {
    /*
     * Enabled aggressive block sorting
     */
    public String getBuzzJson(String object) throws Exception {
        object = (HttpURLConnection)new URL((String)object).openConnection();
        object.setRequestMethod("GET");
        object = object.getResponseCode() == 200 ? new BufferedReader(new InputStreamReader(object.getInputStream())) : new BufferedReader(new InputStreamReader(object.getErrorStream()));
        StringBuilder stringBuilder = new StringBuilder();
        do {
            String string2;
            if ((string2 = object.readLine()) == null) {
                object.close();
                return stringBuilder.toString();
            }
            stringBuilder.append(string2);
        } while (true);
    }
}

