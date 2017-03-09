/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.content.SharedPreferences
 *  android.content.SharedPreferences$Editor
 */
package com.buzzfeed.showx.showpage.data;

import android.content.Context;
import android.content.SharedPreferences;
import com.buzzfeed.analytics.client.DustbusterClient;
import com.buzzfeed.toolkit.util.LogUtil;
import com.urbanairship.UAirship;
import com.urbanairship.push.PushManager;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

public class ShowSubscriptionStorage {
    private static final String BUCKET_PREFIX = "show:";
    private static final String TAG = LogUtil.makeLogTag(ShowSubscriptionStorage.class);
    private SharedPreferences mSharedPreferences;

    public ShowSubscriptionStorage(Context context) {
        this.mSharedPreferences = context.getSharedPreferences("show_subscriptions", 0);
    }

    public void clearShowSubscriptions() {
        for (Map.Entry entry : this.mSharedPreferences.getAll().entrySet()) {
            UAirship.shared().getPushManager().getTags().remove(entry.getKey());
            DustbusterClient.getInstance().trackNotificationStatusChanged("opt_out", "show:" + (String)entry.getKey());
        }
        this.mSharedPreferences.edit().clear().apply();
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public String[] getShowSubscriptions() {
        int n2 = this.mSharedPreferences.getAll().size();
        if (n2 == 0) {
            return null;
        }
        String[] arrstring = new String[n2];
        n2 = 0;
        Iterator iterator = this.mSharedPreferences.getAll().entrySet().iterator();
        do {
            String[] arrstring2 = arrstring;
            if (!iterator.hasNext()) return arrstring2;
            arrstring[n2] = (String)iterator.next().getKey();
            ++n2;
        } while (true);
    }

    public boolean isSubscribedToShow(String string2) {
        return this.mSharedPreferences.getBoolean(string2, false);
    }

    public void subscribeToShow(String string2) {
        String string3 = TAG + ".subscribeToShow";
        if (string2 != null) {
            this.mSharedPreferences.edit().putBoolean(string2, true).apply();
            Object object = UAirship.shared().getPushManager().getTags();
            object.add((String)string2);
            UAirship.shared().getPushManager().setTags((Set<String>)object);
            object = object.iterator();
            while (object.hasNext()) {
                String string4 = (String)object.next();
                LogUtil.d(string3, "Tag Bucket contains: " + string4);
            }
            DustbusterClient.getInstance().trackNotificationStatusChanged("opt_in", "show:" + string2);
        }
    }

    public void unsubscribeFromShow(String string2) {
        String string3 = TAG + ".unsubscribeFromShow";
        if (string2 != null) {
            this.mSharedPreferences.edit().remove(string2).apply();
            Object object = UAirship.shared().getPushManager().getTags();
            object.remove(string2);
            UAirship.shared().getPushManager().setTags((Set<String>)object);
            object = object.iterator();
            while (object.hasNext()) {
                String string4 = (String)object.next();
                LogUtil.d(string3, "Tag Bucket contains: " + string4);
            }
            DustbusterClient.getInstance().trackNotificationStatusChanged("opt_out", "show:" + string2);
        }
    }
}

