/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 */
package com.google.ads;

import android.content.Context;
import com.google.ads.util.AdUtil;
import com.google.ads.util.b;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;

public class ac
implements Runnable {
    private final Context a;
    private final String b;

    public ac(String string2, Context context) {
        this.b = string2;
        this.a = context;
    }

    protected HttpURLConnection a(URL uRL) throws IOException {
        return (HttpURLConnection)uRL.openConnection();
    }

    /*
     * Loose catch block
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     * Lifted jumps to return sites
     */
    @Override
    public void run() {
        HttpURLConnection httpURLConnection;
        block6 : {
            try {
                b.a("Pinging URL: " + this.b);
                httpURLConnection = this.a(new URL(this.b));
            }
            catch (Throwable throwable) {
                b.d("Unable to ping the URL: " + this.b, throwable);
                return;
            }
            AdUtil.a(httpURLConnection, this.a);
            httpURLConnection.setInstanceFollowRedirects(true);
            httpURLConnection.connect();
            int n2 = httpURLConnection.getResponseCode();
            if (n2 >= 200 && n2 < 300) break block6;
            b.e("Did not receive 2XX (got " + n2 + ") from pinging URL: " + this.b);
            {
                catch (Throwable throwable) {
                    httpURLConnection.disconnect();
                    throw throwable;
                }
            }
        }
        httpURLConnection.disconnect();
    }
}

