/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.os.AsyncTask
 */
package com.buzzfeed.toolkit.util;

import android.os.AsyncTask;
import java.io.IOException;
import java.io.PrintStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;

public class GetRedirectTask
extends AsyncTask<Void, Void, Void> {
    RedirectListener listener;
    String redirectedUri;
    String uri;

    public GetRedirectTask(String string2, RedirectListener redirectListener) {
        this.uri = string2;
        this.listener = redirectListener;
    }

    private String getRedirectedUrl(String object) throws IOException {
        object = (HttpURLConnection)new URL((String)object).openConnection();
        object.setInstanceFollowRedirects(false);
        object.connect();
        int n2 = object.getResponseCode();
        if (n2 == 301 || n2 == 302 || n2 == 303) {
            object = object.getHeaderField("Location");
            System.out.println((String)object);
            return object;
        }
        return null;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    protected /* varargs */ Void doInBackground(Void ... arrvoid) {
        try {
            this.redirectedUri = this.getRedirectedUrl(this.uri);
            do {
                return null;
                break;
            } while (true);
        }
        catch (IOException var1_2) {
            return null;
        }
    }

    protected void onPostExecute(Void void_) {
        if (this.redirectedUri != null) {
            this.listener.onRedirect(this.redirectedUri);
            return;
        }
        this.listener.onRedirectNotFound();
    }

    public static interface RedirectListener {
        public void onRedirect(String var1);

        public void onRedirectNotFound();
    }

}

