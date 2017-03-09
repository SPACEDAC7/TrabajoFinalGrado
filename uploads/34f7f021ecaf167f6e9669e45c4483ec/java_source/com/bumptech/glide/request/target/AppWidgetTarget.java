/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.appwidget.AppWidgetManager
 *  android.content.ComponentName
 *  android.content.Context
 *  android.graphics.Bitmap
 *  android.widget.RemoteViews
 */
package com.bumptech.glide.request.target;

import android.appwidget.AppWidgetManager;
import android.content.ComponentName;
import android.content.Context;
import android.graphics.Bitmap;
import android.widget.RemoteViews;
import com.bumptech.glide.request.animation.GlideAnimation;
import com.bumptech.glide.request.target.SimpleTarget;

public class AppWidgetTarget
extends SimpleTarget<Bitmap> {
    private final ComponentName componentName;
    private final Context context;
    private final RemoteViews remoteViews;
    private final int viewId;
    private final int[] widgetIds;

    public AppWidgetTarget(Context context, RemoteViews remoteViews, int n2, int n3, int n4, ComponentName componentName) {
        super(n3, n4);
        if (context == null) {
            throw new NullPointerException("Context can not be null!");
        }
        if (componentName == null) {
            throw new NullPointerException("ComponentName can not be null!");
        }
        if (remoteViews == null) {
            throw new NullPointerException("RemoteViews object can not be null!");
        }
        this.context = context;
        this.remoteViews = remoteViews;
        this.viewId = n2;
        this.componentName = componentName;
        this.widgetIds = null;
    }

    public /* varargs */ AppWidgetTarget(Context context, RemoteViews remoteViews, int n2, int n3, int n4, int ... arrn) {
        super(n3, n4);
        if (context == null) {
            throw new NullPointerException("Context can not be null!");
        }
        if (arrn == null) {
            throw new NullPointerException("WidgetIds can not be null!");
        }
        if (arrn.length == 0) {
            throw new IllegalArgumentException("WidgetIds must have length > 0");
        }
        if (remoteViews == null) {
            throw new NullPointerException("RemoteViews object can not be null!");
        }
        this.context = context;
        this.remoteViews = remoteViews;
        this.viewId = n2;
        this.widgetIds = arrn;
        this.componentName = null;
    }

    public AppWidgetTarget(Context context, RemoteViews remoteViews, int n2, ComponentName componentName) {
        this(context, remoteViews, n2, Integer.MIN_VALUE, Integer.MIN_VALUE, componentName);
    }

    public /* varargs */ AppWidgetTarget(Context context, RemoteViews remoteViews, int n2, int ... arrn) {
        this(context, remoteViews, n2, Integer.MIN_VALUE, Integer.MIN_VALUE, arrn);
    }

    private void update() {
        AppWidgetManager appWidgetManager = AppWidgetManager.getInstance((Context)this.context);
        if (this.componentName != null) {
            appWidgetManager.updateAppWidget(this.componentName, this.remoteViews);
            return;
        }
        appWidgetManager.updateAppWidget(this.widgetIds, this.remoteViews);
    }

    @Override
    public void onResourceReady(Bitmap bitmap, GlideAnimation<? super Bitmap> glideAnimation) {
        this.remoteViews.setImageViewBitmap(this.viewId, bitmap);
        this.update();
    }
}

