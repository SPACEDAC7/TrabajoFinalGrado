/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.app.Notification
 *  android.app.Notification$Builder
 */
package android.support.v4.app;

import android.app.Notification;
import android.support.annotation.RestrictTo;

@RestrictTo(value={RestrictTo.Scope.GROUP_ID})
public interface NotificationBuilderWithBuilderAccessor {
    public Notification build();

    public Notification.Builder getBuilder();
}

