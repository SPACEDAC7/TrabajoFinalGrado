/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.app.PendingIntent
 *  android.os.Bundle
 */
package android.support.v4.app;

import android.app.PendingIntent;
import android.os.Bundle;
import android.support.v4.app.RemoteInputCompatBase;

class NotificationCompatBase {
    NotificationCompatBase() {
    }

    public static abstract class Action {
        protected abstract PendingIntent getActionIntent();

        protected abstract Bundle getExtras();

        protected abstract int getIcon();

        protected abstract RemoteInputCompatBase.RemoteInput[] getRemoteInputs();

        protected abstract CharSequence getTitle();

        public static interface Factory {
            public Action build(int var1, CharSequence var2, PendingIntent var3, Bundle var4, RemoteInputCompatBase.RemoteInput[] var5);

            public Action[] newArray(int var1);
        }

    }

}

