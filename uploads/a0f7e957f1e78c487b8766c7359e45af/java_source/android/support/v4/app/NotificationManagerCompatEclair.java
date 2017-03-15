/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.app.Notification
 *  android.app.NotificationManager
 */
package android.support.v4.app;

import android.app.Notification;
import android.app.NotificationManager;

class NotificationManagerCompatEclair {
    NotificationManagerCompatEclair() {
    }

    static void cancelNotification(NotificationManager notificationManager, String string2, int n2) {
        notificationManager.cancel(string2, n2);
    }

    public static void postNotification(NotificationManager notificationManager, String string2, int n2, Notification notification) {
        notificationManager.notify(string2, n2, notification);
    }
}

