/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.app.NotificationManager
 */
package android.support.v4.app;

import android.app.NotificationManager;

class NotificationManagerCompatApi24 {
    NotificationManagerCompatApi24() {
    }

    public static boolean areNotificationsEnabled(NotificationManager notificationManager) {
        return notificationManager.areNotificationsEnabled();
    }

    public static int getImportance(NotificationManager notificationManager) {
        return notificationManager.getImportance();
    }
}

