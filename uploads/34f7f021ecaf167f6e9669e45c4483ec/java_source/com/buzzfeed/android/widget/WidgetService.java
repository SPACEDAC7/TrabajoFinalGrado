/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.app.PendingIntent
 *  android.app.Service
 *  android.appwidget.AppWidgetManager
 *  android.content.Context
 *  android.content.Intent
 *  android.net.Uri
 *  android.os.Build
 *  android.os.Build$VERSION
 *  android.os.Bundle
 *  android.os.IBinder
 *  android.text.TextUtils
 *  android.widget.RemoteViews
 *  org.json.JSONException
 *  org.json.JSONObject
 */
package com.buzzfeed.android.widget;

import android.app.PendingIntent;
import android.app.Service;
import android.appwidget.AppWidgetManager;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.IBinder;
import android.text.TextUtils;
import android.widget.RemoteViews;
import com.buzzfeed.analytics.client.BuzzFeedTracker;
import com.buzzfeed.android.data.EnvironmentConfig;
import com.buzzfeed.android.data.Feed;
import com.buzzfeed.android.data.loader.WidgetLoader;
import com.buzzfeed.android.database.Preference;
import com.buzzfeed.android.database.PreferenceData;
import com.buzzfeed.android.database.PreferenceDatabaseManager;
import com.buzzfeed.android.navigation.FeedListProvider;
import com.buzzfeed.android.widget.StackWidgetService;
import com.buzzfeed.android.widget.Widget4x2Stacked;
import com.buzzfeed.android.widget.WidgetConfigure;
import com.buzzfeed.android.widget.WidgetUtil;
import com.buzzfeed.toolkit.content.BaseLoader;
import com.buzzfeed.toolkit.content.BuffetType;
import com.buzzfeed.toolkit.content.Content;
import com.buzzfeed.toolkit.content.FlowItem;
import com.buzzfeed.toolkit.content.FlowList;
import com.buzzfeed.toolkit.content.PostContent;
import com.buzzfeed.toolkit.util.LogUtil;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicInteger;
import org.json.JSONException;
import org.json.JSONObject;

public class WidgetService
extends Service {
    public static final String PREFERENCE_WIDGET_BADGE_IMAGE_URL = "widgetBadgeImageUrl";
    public static final String PREFERENCE_WIDGET_FEED_TYPE = "widgetFeedType";
    private static final String TAG = WidgetService.class.getSimpleName();
    public static final int WIDGET_REFRESH_DELAY = 60000;
    private static HashMap<String, String> feedConversionMap;
    private static final AtomicInteger uniqueCounter;
    private static ConcurrentHashMap<Integer, WidgetServiceFeed> widgetServiceFeedMap;
    private FeedListProvider feedListProvider;
    private ArrayList<Integer> widgetIdsToUpdate = new ArrayList();

    static {
        uniqueCounter = new AtomicInteger(0);
        feedConversionMap = new HashMap();
        widgetServiceFeedMap = new ConcurrentHashMap();
        feedConversionMap.put("viral", "trending");
        feedConversionMap.put("quiz", "quizzes");
    }

    static /* synthetic */ String access$100() {
        return TAG;
    }

    protected static void delWidgetServiceFeed(Context context, int n2) {
        if (widgetServiceFeedMap != null) {
            widgetServiceFeedMap.remove(n2);
        }
    }

    public static PostContent[] getRegularBuzzList(Context context, int n2) {
        return WidgetService.getRegularBuzzList(context, n2, false);
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public static PostContent[] getRegularBuzzList(Context arrpostContent, int n2, boolean bl) {
        Object object3;
        String string2 = TAG + ".getRegularBuzzList";
        PostContent[] arrpostContent2 = new PostContent[]{};
        Object object2 = object3 = widgetServiceFeedMap.get(n2);
        if (bl) {
            if (object3 == null) {
                WidgetService.updateWidget((Context)arrpostContent, n2);
            }
            object2 = widgetServiceFeedMap.get(n2);
        }
        arrpostContent = arrpostContent2;
        if (object2 != null) {
            arrpostContent = arrpostContent2;
            if (object2.widgetLoader != null) {
                arrpostContent = arrpostContent2;
                if (object2.widgetLoader.getFlowList() != null) {
                    arrpostContent = object2.widgetLoader.getFlowList().getList();
                    object2 = new ArrayList();
                    synchronized (arrpostContent) {
                        for (Object object3 : arrpostContent) {
                            String string3 = object3.getType();
                            if (!BuffetType.POST.name().equals(string3) && !BuffetType.TRENDING.name().equals(string3) && !BuffetType.TRENDING_SMALL.name().equals(string3)) continue;
                            object2.add((PostContent)object3.getContent());
                        }
                    }
                    arrpostContent = object2.toArray(new PostContent[object2.size()]);
                }
            }
        }
        LogUtil.d(string2, "Widget FeedList count: appWidgetId=" + n2 + ", count=" + arrpostContent.length);
        return arrpostContent;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     * Lifted jumps to return sites
     */
    protected static WidgetServiceFeed getWidgetServiceFeed(Context object, int n2) {
        Object object2;
        String string2;
        void var4_21;
        WidgetServiceFeed widgetServiceFeed;
        String string3 = TAG + ".getWidgetServiceFeed";
        Object object3 = widgetServiceFeed = widgetServiceFeedMap.get(n2);
        if (widgetServiceFeed != null) return object3;
        object3 = PreferenceDatabaseManager.getInstance((Context)object).preferenceData.getPreference(Widget4x2Stacked.getAppWidgetIdPreferenceKey(n2, null));
        if (object3 == null) {
            LogUtil.w(string3, "Preferences not initialized for appWidgetId: " + n2 + " (this is normal when adding a new Widget)");
            return widgetServiceFeed;
        }
        JSONObject jSONObject = object3.getValue();
        Object object4 = null;
        Object var7_7 = null;
        String string4 = null;
        String string5 = null;
        boolean bl = false;
        Object var4_15 = var7_7;
        String string6 = string4;
        object3 = string5;
        try {
            boolean bl2;
            object4 = object2 = jSONObject.getString(object.getString(2131296983));
            Object var4_16 = var7_7;
            String string7 = string4;
            object3 = string5;
            String string8 = jSONObject.getString(object.getString(2131296984));
            object4 = object2;
            String string9 = string8;
            String string10 = string4;
            object3 = string5;
            string4 = jSONObject.optString(object.getString(2131296980), null);
            object4 = object2;
            String string11 = string8;
            String string12 = string4;
            object3 = string5;
            string5 = jSONObject.getString(object.getString(2131296982));
            object4 = object2;
            String string13 = string8;
            String string14 = string4;
            object3 = string5;
            bl = bl2 = jSONObject.optBoolean(object.getString(2131296981), false);
            object3 = string5;
            String string15 = string4;
            String string16 = string8;
            object4 = object2;
        }
        catch (JSONException var6_32) {
            LogUtil.e(string3, "Error converting preference JSONObject into value parts: prefsObject=" + jSONObject.toString(), (Throwable)var6_32);
        }
        if (!TextUtils.isEmpty((CharSequence)object4) && !TextUtils.isEmpty((CharSequence)var4_21)) {
            StringBuilder stringBuilder = new StringBuilder().append("Loaded preferences: appWidgetId: ").append(n2).append(", feedName=").append((String)object4).append(", feedUrl=").append((String)var4_21).append(", badgeImageUrl=");
            object2 = string2 == null ? "null" : string2;
            StringBuilder stringBuilder2 = stringBuilder.append((String)object2).append(", lang=");
            object2 = object3 == null ? "null" : object3;
            LogUtil.d(string3, stringBuilder2.append((String)object2).append(", isBadge=").append(bl).toString());
            object3 = WidgetServiceFeed.newInstance((Context)object, (String)object4, (String)var4_21, string2, (String)object3, bl);
            widgetServiceFeedMap.put(n2, (WidgetServiceFeed)object3);
            return object3;
        }
        object2 = new StringBuilder().append("Error loading preferences:  appWidgetId=").append(n2).append(", prefsObject=").append(jSONObject.toString()).append(" => feedName=");
        object = object4;
        if (object4 == null) {
            object = "null";
        }
        object4 = object2.append((String)object).append(", feedUrl=");
        object = var4_21;
        if (var4_21 == null) {
            object = "null";
        }
        StringBuilder stringBuilder = object4.append((String)object).append(", badgeImageUrl=");
        object = string2;
        if (string2 == null) {
            object = "null";
        }
        StringBuilder stringBuilder3 = stringBuilder.append((String)object).append(", lang=");
        object = object3;
        if (object3 == null) {
            object = "null";
        }
        LogUtil.e(string3, stringBuilder3.append((String)object).append(", isBadge=").append(bl).toString());
        return widgetServiceFeed;
    }

    private static void updateWidget(Context context, int n2) {
        LogUtil.d(TAG + ".updateWidget", "appWidgetId: " + n2);
        WidgetServiceFeed widgetServiceFeed = WidgetService.getWidgetServiceFeed(context, n2);
        if (widgetServiceFeed != null) {
            widgetServiceFeed.loadBuzz(context, n2, 1, -1);
        }
    }

    private static void updateWidgetInternal(final Context context, final int n2, int n3, int n4) {
        final String string2 = TAG + ".updateWidgetInternal";
        final WidgetServiceFeed widgetServiceFeed = widgetServiceFeedMap.get(n2);
        if (widgetServiceFeed != null) {
            FlowList flowList = widgetServiceFeed.widgetLoader.getFlowList();
            if (flowList != null && flowList.size() > 0) {
                LogUtil.d(string2, "Calling WidgetService.getRegularBuzzList()");
                WidgetService.viewBuzz(context, n2, WidgetService.getRegularBuzzList(context, n2));
                return;
            }
            if (flowList == null) {
                LogUtil.d(string2, "error fetching buzzlist, will try to refresh after a delay...");
                new Thread(new Runnable(){

                    /*
                     * Enabled aggressive block sorting
                     * Enabled unnecessary exception pruning
                     * Enabled aggressive exception aggregation
                     */
                    @Override
                    public void run() {
                        try {
                            Thread.sleep(60000);
                        }
                        catch (InterruptedException var1_1) {}
                        LogUtil.d(string2, "Refreshing widget...");
                        widgetServiceFeed.widgetLoader.loadPage(true, 1, new BaseLoader.LoaderCallback(){

                            @Override
                            public void onError(Exception exception) {
                            }

                            @Override
                            public void onLoadComplete() {
                                WidgetService.updateWidget(context, n2);
                            }
                        });
                    }

                }).start();
                return;
            }
            LogUtil.d(string2, "Error: buzzList was empty");
            return;
        }
        LogUtil.d(string2, "widgetServiceFeed does not exist, creating...");
        WidgetService.updateWidget(context, n2);
    }

    public static void updateWidgetOnPostExecute(Context context, int n2, int n3) {
        int n4 = 0;
        if (n3 == -1) {
            n4 = 1;
        }
        WidgetService.updateWidgetInternal(context, n2, n3, n4);
    }

    protected static void viewBuzz(Context context, int n2, PostContent[] remoteViews) {
        LogUtil.d(TAG + ".viewBuzz", "appWidgetId=" + n2 + ", buzzArray=" + remoteViews.toString());
        WidgetServiceFeed widgetServiceFeed = widgetServiceFeedMap.get(n2);
        remoteViews = WidgetConfigure.getRemoteView(context, n2);
        if (Build.VERSION.SDK_INT >= 11) {
            Intent intent = new Intent(context, (Class)StackWidgetService.class);
            intent.putExtra("appWidgetId", n2);
            intent.putExtra("viewFeedName", widgetServiceFeed.widgetLoader.getFeedTag());
            intent.putExtra("viewFeedUrl", widgetServiceFeed.widgetLoader.getFeedUrl());
            intent.putExtra("widgetFeedType", widgetServiceFeed.feedType);
            intent.putExtra("widgetBadgeImageUrl", widgetServiceFeed.badgeImageUrl);
            intent.putExtra(context.getString(2131296982), widgetServiceFeed.lang);
            intent.putExtra("unique", uniqueCounter.incrementAndGet());
            intent.setData(Uri.parse((String)intent.toUri(1)));
            remoteViews.setRemoteAdapter(n2, 2131821097, intent);
            remoteViews.setEmptyView(2131821097, 2131821098);
            remoteViews.setViewVisibility(2131821098, 8);
            remoteViews.setViewVisibility(2131821097, 0);
            widgetServiceFeed = new Intent(context, (Class)Widget4x2Stacked.class);
            widgetServiceFeed.setAction("com.buzzfeed.android.widget.WIDGET_BUZZ_SELECT");
            widgetServiceFeed.putExtra("appWidgetId", n2);
            intent.setData(Uri.parse((String)intent.toUri(1)));
            remoteViews.setPendingIntentTemplate(2131821097, PendingIntent.getBroadcast((Context)context, (int)0, (Intent)widgetServiceFeed, (int)134217728));
            AppWidgetManager.getInstance((Context)context).updateAppWidget(n2, remoteViews);
        }
    }

    protected static void viewNextBuzz(Context context, int n2, String string2) {
        WidgetService.viewNextPrevBuzz(context, n2, string2, 1);
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private static void viewNextPrevBuzz(Context context, int n2, String string2, int n3) {
        WidgetServiceFeed widgetServiceFeed = WidgetService.getWidgetServiceFeed(context, n2);
        if (widgetServiceFeed == null) return;
        int n4 = widgetServiceFeed.widgetLoader.getPositionFromId(string2);
        if (n4 == -1) {
            n3 = 1;
        }
        WidgetService.updateWidgetInternal(context, n2, n4, n3);
        if (n3 < 0) {
            BuzzFeedTracker.getInstance().trackEvent(context.getString(2131296774), context.getString(2131296717), widgetServiceFeed.feedName, 0);
            return;
        }
        BuzzFeedTracker.getInstance().trackEvent(context.getString(2131296774), context.getString(2131296713), widgetServiceFeed.feedName, 0);
    }

    protected static void viewPrevBuzz(Context context, int n2, String string2) {
        WidgetService.viewNextPrevBuzz(context, n2, string2, -1);
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public void handleIntent(Intent arrn) {
        synchronized (this) {
            LogUtil.d(TAG + ".handleIntent", "Called");
            arrn = arrn.getExtras();
            if (arrn != null) {
                if (arrn.getIntArray("appWidgetIds") != null) {
                    for (int n2 : arrn.getIntArray("appWidgetIds")) {
                        this.widgetIdsToUpdate.add(n2);
                    }
                } else if (arrn.getInt("appWidgetId", 0) != 0) {
                    this.widgetIdsToUpdate.add(arrn.getInt("appWidgetId"));
                }
                if (this.widgetIdsToUpdate.size() > 0) {
                    this.updateWidgetFeeds();
                }
            }
            this.stopSelf();
            return;
        }
    }

    public IBinder onBind(Intent intent) {
        return null;
    }

    public void onCreate() {
        this.feedListProvider = FeedListProvider.getInstance(EnvironmentConfig.getEdition(this.getApplicationContext()));
    }

    public int onStartCommand(Intent intent, int n2, int n3) {
        this.handleIntent(intent);
        return 2;
    }

    /*
     * Enabled aggressive block sorting
     */
    public void updateWidgetFeed(WidgetServiceFeed widgetServiceFeed) {
        Object object;
        Object object2;
        String[] arrstring = widgetServiceFeed.getFeedTag().toLowerCase();
        if (!feedConversionMap.containsKey(arrstring)) {
            object2 = arrstring;
            if (arrstring.contains("_")) {
                object2 = arrstring.split("_");
                object = arrstring;
                if (object2 != null) {
                    object = arrstring;
                    if (object2.length > 1) {
                        object = object2[1];
                    }
                }
                object2 = object;
                if (feedConversionMap.containsKey(object)) {
                    object2 = feedConversionMap.get(object);
                }
            }
        } else {
            object2 = feedConversionMap.get(arrstring);
        }
        object2 = object = this.feedListProvider.getFeedFromTag((String)object2);
        if (object == null) {
            object2 = Feed.createDefault();
        }
        if (object2 != null) {
            widgetServiceFeed.updateWithFeed((Feed)object2);
        }
    }

    public void updateWidgetFeeds() {
        Iterator<Integer> iterator = this.widgetIdsToUpdate.iterator();
        while (iterator.hasNext()) {
            int n2 = iterator.next();
            WidgetServiceFeed widgetServiceFeed = WidgetService.getWidgetServiceFeed((Context)this, n2);
            if (widgetServiceFeed == null) continue;
            this.updateWidgetFeed(widgetServiceFeed);
            widgetServiceFeed.loadBuzz((Context)this, n2, 1, -1);
        }
        this.widgetIdsToUpdate.clear();
    }

    public static class WidgetServiceFeed {
        private static final String TAG = WidgetService.access$100() + ".WidgetServiceFeed";
        private static Feed mfeed;
        private int appWidgetId;
        protected String badgeImageUrl;
        protected Context context;
        protected String feedName;
        protected String feedType;
        protected String feedUrl;
        protected String lang;
        private int position;
        protected WidgetLoader widgetLoader;

        /*
         * Enabled aggressive block sorting
         */
        public static WidgetServiceFeed newInstance(Context context, String string2, String string3, String string4, String string5, boolean bl) {
            String string6 = TAG + ".WidgetServiceFeed";
            WidgetServiceFeed widgetServiceFeed = new WidgetServiceFeed();
            StringBuilder stringBuilder = new StringBuilder().append("feedName: ");
            String string7 = string2 == null ? "null" : string2;
            stringBuilder = stringBuilder.append(string7).append(", feedUrl: ");
            string7 = string3 == null ? "null" : string3;
            stringBuilder = stringBuilder.append(string7).append(", badgeImageUrl: ");
            string7 = string4 == null ? "null" : string4;
            LogUtil.d(string6, stringBuilder.append(string7).append(", isBadge: ").append(bl).toString());
            widgetServiceFeed.context = context;
            mfeed = new Feed.Builder(string2).withUri(string3).build();
            widgetServiceFeed.widgetLoader = new WidgetLoader(context, mfeed);
            widgetServiceFeed.feedName = string2;
            widgetServiceFeed.feedType = WidgetUtil.getWidgetFeedType(bl);
            widgetServiceFeed.feedUrl = string3;
            widgetServiceFeed.badgeImageUrl = string4;
            widgetServiceFeed.lang = string5;
            return widgetServiceFeed;
        }

        private void updateWidget() {
            WidgetService.updateWidgetOnPostExecute(this.context, this.appWidgetId, this.position);
        }

        public String getFeedTag() {
            return this.feedName;
        }

        public void loadBuzz(Context context, int n2, int n3, int n4) {
            LogUtil.d(TAG + ".WidgetServiceFeed.loadBuzz", "Loading buzz feed: " + mfeed.getTag() + ", feedUrl: " + mfeed.getUri() + ", page: " + n3 + ", position: " + n4);
            this.context = context;
            this.appWidgetId = n2;
            this.position = n4;
            if (n3 > 1) {
                this.widgetLoader.loadPage(false, n3, new BaseLoader.LoaderCallback(){

                    @Override
                    public void onError(Exception exception) {
                    }

                    @Override
                    public void onLoadComplete() {
                        WidgetServiceFeed.this.updateWidget();
                    }
                });
                return;
            }
            this.widgetLoader.loadPage(true, n3, new BaseLoader.LoaderCallback(){

                @Override
                public void onError(Exception exception) {
                }

                @Override
                public void onLoadComplete() {
                    WidgetServiceFeed.this.updateWidget();
                }
            });
        }

        public void updateWithFeed(Feed feed) {
            this.feedName = feed.getTag();
            this.feedType = WidgetUtil.getWidgetFeedType(feed.isBadge());
            this.badgeImageUrl = feed.getWidgetImage();
            this.widgetLoader = new WidgetLoader(this.context, feed);
            this.widgetLoader.loadPage(true, 0, new BaseLoader.LoaderCallback(){

                @Override
                public void onError(Exception exception) {
                }

                @Override
                public void onLoadComplete() {
                    WidgetServiceFeed.this.updateWidget();
                }
            });
        }

    }

}

