/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.annotation.TargetApi
 *  android.content.Context
 *  android.content.Intent
 *  android.graphics.Bitmap
 *  android.os.Bundle
 *  android.text.TextUtils
 *  android.widget.RemoteViews
 *  android.widget.RemoteViewsService
 *  android.widget.RemoteViewsService$RemoteViewsFactory
 */
package com.buzzfeed.android.widget;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import android.widget.RemoteViews;
import android.widget.RemoteViewsService;
import com.bumptech.glide.BitmapTypeRequest;
import com.bumptech.glide.DrawableTypeRequest;
import com.bumptech.glide.GenericRequestBuilder;
import com.bumptech.glide.Glide;
import com.bumptech.glide.load.engine.DiskCacheStrategy;
import com.bumptech.glide.request.FutureTarget;
import com.buzzfeed.android.widget.WidgetService;
import com.buzzfeed.toolkit.content.PostContent;
import com.buzzfeed.toolkit.util.LogUtil;
import java.util.Stack;

@TargetApi(value=11)
class StackRemoteViewsFactory
implements RemoteViewsService.RemoteViewsFactory {
    private static final String TAG = StackRemoteViewsFactory.class.getSimpleName();
    private int appWidgetId;
    private String badgeUrl;
    private Context context;
    private String feedName;
    private String feedType;
    private String feedUrl;
    private String lang;
    private PostContent[] widgetItems;

    public StackRemoteViewsFactory(Context context, Intent intent) {
        this.context = context;
        this.appWidgetId = intent.getIntExtra("appWidgetId", 0);
        this.feedName = intent.getStringExtra("viewFeedName");
        this.feedUrl = intent.getStringExtra("viewFeedUrl");
        this.badgeUrl = intent.getStringExtra("widgetBadgeImageUrl");
        this.feedType = intent.getStringExtra("widgetFeedType");
        this.lang = intent.getStringExtra(context.getString(2131296982));
        LogUtil.d(TAG, "Calling WidgetService.getRegularBuzzList()");
        this.widgetItems = WidgetService.getRegularBuzzList(context, this.appWidgetId);
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    @Nullable
    private String getPreferredImageFromPostContent(@NonNull PostContent object) {
        Stack<String> stack = object.getWideStack();
        Object var2_3 = null;
        if (stack != null && !stack.isEmpty()) {
            return stack.pop();
        }
        stack = object.getThumbnailStack();
        object = var2_3;
        if (stack == null) return object;
        object = var2_3;
        if (stack.isEmpty()) return object;
        return stack.pop();
    }

    public int getCount() {
        if (this.widgetItems != null) {
            return this.widgetItems.length;
        }
        return 0;
    }

    public long getItemId(int n2) {
        return n2;
    }

    public RemoteViews getLoadingView() {
        return null;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public RemoteViews getViewAt(int n2) {
        PostContent postContent;
        RemoteViews remoteViews = new RemoteViews(this.context.getPackageName(), 2130903212);
        if (this.widgetItems != null && n2 < this.widgetItems.length && (postContent = this.widgetItems[n2]) != null) {
            remoteViews.setTextViewText(2131821011, (CharSequence)postContent.getTitle());
            FutureTarget futureTarget = this.getPreferredImageFromPostContent(postContent);
            if (!TextUtils.isEmpty((CharSequence)((Object)futureTarget))) {
                try {
                    futureTarget = Glide.with(this.context).load((String)((Object)futureTarget)).asBitmap().diskCacheStrategy(DiskCacheStrategy.ALL).into(Integer.MIN_VALUE, Integer.MIN_VALUE);
                    remoteViews.setImageViewBitmap(2131821009, (Bitmap)futureTarget.get());
                    Glide.clear(futureTarget);
                    if (this.badgeUrl != null && this.badgeUrl.length() > 0) {
                        futureTarget = Glide.with(this.context).load(this.badgeUrl).asBitmap().diskCacheStrategy(DiskCacheStrategy.ALL).into(Integer.MIN_VALUE, Integer.MIN_VALUE);
                        remoteViews.setImageViewBitmap(2131821012, (Bitmap)futureTarget.get());
                        Glide.clear(futureTarget);
                    }
                }
                catch (Exception var4_5) {
                    LogUtil.e(TAG, "Exception while reading widget image for buzz id: " + postContent.getId(), var4_5);
                }
            }
            futureTarget = new Bundle();
            futureTarget.putInt("appWidgetId", this.appWidgetId);
            futureTarget.putString("viewBuzzId", postContent.getId());
            futureTarget.putString("viewBuzzUri", postContent.getUri());
            futureTarget.putString("viewFeedName", this.feedName);
            futureTarget.putString("viewFeedUrl", this.feedUrl);
            futureTarget.putString(this.context.getString(2131296982), this.lang);
            postContent = new Intent();
            postContent.putExtras(futureTarget);
            remoteViews.setOnClickFillInIntent(2131821008, (Intent)postContent);
        }
        return remoteViews;
    }

    public int getViewTypeCount() {
        return 1;
    }

    public boolean hasStableIds() {
        return true;
    }

    public void onCreate() {
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public void onDataSetChanged() {
        String string2 = TAG + ".onDataSetChanged";
        LogUtil.d(string2, "Calling WidgetService.getRegularBuzzList()");
        this.widgetItems = WidgetService.getRegularBuzzList(this.context, this.appWidgetId, true);
        long l2 = System.currentTimeMillis();
        int n2 = 0;
        while (this.widgetItems.length == 0 && 15000 + l2 > System.currentTimeMillis()) {
            if (++n2 % 20 == 0) {
                LogUtil.d(string2, "Waiting for buzz feed to load");
            }
            try {
                Thread.sleep(100);
            }
            catch (InterruptedException var2_4) {
                LogUtil.e(string2, "Timeout occurred while loading buzz feed");
            }
            this.widgetItems = WidgetService.getRegularBuzzList(this.context, this.appWidgetId, false);
        }
        if (this.widgetItems.length == 0) {
            LogUtil.e(string2, "Timeout occurred while loading buzz feed");
        }
    }

    public void onDestroy() {
    }
}

