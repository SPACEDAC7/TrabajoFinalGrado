/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.app.Notification
 *  android.app.NotificationManager
 *  android.content.Context
 *  android.graphics.Bitmap
 *  android.widget.RemoteViews
 */
package com.bumptech.glide.request.target;

import android.app.Notification;
import android.app.NotificationManager;
import android.content.Context;
import android.graphics.Bitmap;
import android.widget.RemoteViews;
import com.bumptech.glide.request.animation.GlideAnimation;
import com.bumptech.glide.request.target.SimpleTarget;

public class NotificationTarget
extends SimpleTarget<Bitmap> {
    private final Context context;
    private final Notification notification;
    private final int notificationId;
    private final RemoteViews remoteViews;
    private final int viewId;

    public NotificationTarget(Context context, RemoteViews remoteViews, int n2, int n3, int n4, Notification notification, int n5) {
        super(n3, n4);
        if (context == null) {
            throw new NullPointerException("Context must not be null!");
        }
        if (notification == null) {
            throw new NullPointerException("Notification object can not be null!");
        }
        if (remoteViews == null) {
            throw new NullPointerException("RemoteViews object can not be null!");
        }
        this.context = context;
        this.viewId = n2;
        this.notification = notification;
        this.notificationId = n5;
        this.remoteViews = remoteViews;
    }

    public NotificationTarget(Context context, RemoteViews remoteViews, int n2, Notification notification, int n3) {
        this(context, remoteViews, n2, Integer.MIN_VALUE, Integer.MIN_VALUE, notification, n3);
    }

    private void update() {
        ((NotificationManager)this.context.getSystemService("notification")).notify(this.notificationId, this.notification);
    }

    @Override
    public void onResourceReady(Bitmap bitmap, GlideAnimation<? super Bitmap> glideAnimation) {
        this.remoteViews.setImageViewBitmap(this.viewId, bitmap);
        this.update();
    }
}

