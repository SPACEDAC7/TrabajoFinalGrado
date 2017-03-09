/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 */
package com.comscore.analytics;

import android.content.Context;
import com.comscore.analytics.Core;
import com.comscore.analytics.comScore;
import com.comscore.applications.EventType;
import java.util.HashMap;

public class Census {
    private static Census a = null;
    private static Object c = new Object();
    private String b;

    private Census() {
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public static Census getInstance() {
        if (a == null) {
            Object object = c;
            synchronized (object) {
                if (a == null) {
                    a = new Census();
                }
            }
        }
        return a;
    }

    /*
     * Enabled aggressive block sorting
     */
    public void notifyStart(Context object, String hashMap, String string2) {
        Core core = comScore.getCore();
        core.setAppContext((Context)object);
        if (hashMap != null && hashMap.length() > 0) {
            this.b = hashMap;
        }
        if (string2 != null && string2.length() > 0) {
            core.setPublisherSecret(string2, true);
        }
        hashMap = new HashMap();
        hashMap.put("c2", this.b);
        hashMap.put("name", "start");
        object = core.isSecure() ? "https://sb.scorecardresearch.com/p2?" : "http://b.scorecardresearch.com/p2?";
        core.setPixelURL((String)object, false);
        core.notify(EventType.START, hashMap, true);
    }
}

