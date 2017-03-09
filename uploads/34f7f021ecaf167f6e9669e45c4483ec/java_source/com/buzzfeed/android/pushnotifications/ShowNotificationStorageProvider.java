/*
 * Decompiled with CFR 0_115.
 */
package com.buzzfeed.android.pushnotifications;

import com.buzzfeed.android.pushnotifications.ShowSubscriptionNotificationStorage;
import java.util.HashMap;

public class ShowNotificationStorageProvider {
    private static ShowNotificationStorageProvider ourInstance;
    private HashMap<String, ShowSubscriptionNotificationStorage> mShowSubscriptionNotifications = new HashMap();

    private ShowNotificationStorageProvider() {
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public static ShowNotificationStorageProvider getInstance() {
        if (ourInstance == null) {
            synchronized (ShowNotificationStorageProvider.class) {
                if (ourInstance == null) {
                    ourInstance = new ShowNotificationStorageProvider();
                }
            }
        }
        return ourInstance;
    }

    public HashMap<String, ShowSubscriptionNotificationStorage> getShowSubscriptionNotificationStorage() {
        return this.mShowSubscriptionNotifications;
    }

    public int handleShowPageOpened(String string2) {
        ShowSubscriptionNotificationStorage showSubscriptionNotificationStorage = this.mShowSubscriptionNotifications.get(string2);
        if (showSubscriptionNotificationStorage == null) {
            return 0;
        }
        int n2 = showSubscriptionNotificationStorage.getNotificationId();
        this.mShowSubscriptionNotifications.remove(string2);
        return n2;
    }
}

