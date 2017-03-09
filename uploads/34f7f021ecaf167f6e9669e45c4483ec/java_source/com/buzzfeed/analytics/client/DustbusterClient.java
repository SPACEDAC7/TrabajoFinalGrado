/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.os.SystemClock
 *  android.text.TextUtils
 *  org.json.JSONArray
 *  org.json.JSONException
 *  org.json.JSONObject
 */
package com.buzzfeed.analytics.client;

import android.content.Context;
import android.os.SystemClock;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v4.util.ArrayMap;
import android.text.TextUtils;
import com.buzzfeed.analytics.Analytics;
import com.buzzfeed.analytics.client.SubscriptionProvider;
import com.buzzfeed.analytics.model.UnitImpression;
import com.buzzfeed.analytics.provider.LoginStatusProvider;
import com.buzzfeed.toolkit.content.FlowItem;
import com.buzzfeed.toolkit.content.PostContent;
import com.buzzfeed.toolkit.doorbell.Doorbell;
import com.buzzfeed.toolkit.dustbuster.BaseDustbusterLauncher;
import com.buzzfeed.toolkit.dustbuster.Dustbuster;
import com.buzzfeed.toolkit.dustbuster.DustbusterEvent;
import com.buzzfeed.toolkit.dustbuster.json.DustbusterJsonObject;
import com.buzzfeed.toolkit.util.EZUtil;
import com.buzzfeed.toolkit.util.LogUtil;
import com.buzzfeed.toolkit.util.ShareItemType;
import com.buzzfeed.toolkit.util.StringUtils;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class DustbusterClient {
    private static final int AUTHOR_ID = 0;
    private static final int AUTHOR_NAME = 1;
    private static final int NO_POSITION = -1;
    private static final long SESSION_TIMEOUT = 120000;
    private static final String TAG = DustbusterClient.class.getSimpleName();
    private static DustbusterClient sInstance;
    private Analytics.Configuration mConfig;
    private Doorbell mDoorbell;
    private Dustbuster mDustbuster;
    private long mLastActiveTime;
    private SubscriptionProvider mSubscriptionProvider;

    DustbusterClient(Dustbuster dustbuster, Doorbell doorbell, Analytics.Configuration configuration, SubscriptionProvider subscriptionProvider) {
        this.mDustbuster = dustbuster;
        this.mDoorbell = doorbell;
        this.mConfig = configuration;
        this.mSubscriptionProvider = subscriptionProvider;
    }

    private static void appendUnitImpressionLog(StringBuilder stringBuilder, JSONObject jSONObject) throws JSONException {
        stringBuilder.append("{ type : ").append("unit_impression").append("\n\t\t");
        Iterator iterator = jSONObject.keys();
        while (iterator.hasNext()) {
            String string2 = (String)iterator.next();
            stringBuilder.append(string2).append(" : ").append(jSONObject.get(string2)).append("\n\t\t");
        }
        stringBuilder.append("}\n");
    }

    private static JSONObject convertImpressionToJsonObject(UnitImpression unitImpression) throws JSONException {
        DustbusterJsonObject dustbusterJsonObject = new DustbusterJsonObject();
        dustbusterJsonObject.put("content_id", (Object)unitImpression.contentId);
        dustbusterJsonObject.put("content_type", (Object)unitImpression.contentType);
        dustbusterJsonObject.put("position", (Object)unitImpression.position);
        unitImpression.getClass();
        dustbusterJsonObject.put("unit", (Object)"feed");
        dustbusterJsonObject.put("unit_client_id", (Object)unitImpression.unitClientId);
        dustbusterJsonObject.put("post_category", (Object)unitImpression.postCategory);
        dustbusterJsonObject.put("variation_id", (Object)unitImpression.variationId);
        dustbusterJsonObject.put("package_name", (Object)unitImpression.packageName);
        dustbusterJsonObject.put("package_id", (Object)unitImpression.packageId);
        dustbusterJsonObject.put("package_size", (Object)unitImpression.packageSize);
        dustbusterJsonObject.put("sub_position", (Object)unitImpression.subPosition);
        dustbusterJsonObject.put("data_source", (Object)unitImpression.dataSource);
        return dustbusterJsonObject;
    }

    private Integer convertStringToInt(String string2) {
        if (string2 == null) {
            return null;
        }
        return EZUtil.stringToInt(string2);
    }

    private String formatLogMessage(String string2, Map<String, Object> object) {
        string2 = "{ type : " + string2 + "\n";
        for (Map.Entry entry : object.entrySet()) {
            string2 = string2 + "\t\t";
            string2 = string2 + (String)entry.getKey() + " : ";
            string2 = string2 + this.formatLogValue(entry.getValue()) + "\n";
        }
        return string2 + "}";
    }

    private String formatLogValue(Object arrstring) {
        if (arrstring == null) {
            return null;
        }
        if (arrstring instanceof String[]) {
            StringBuilder stringBuilder = new StringBuilder();
            arrstring = arrstring;
            stringBuilder.append("[");
            for (String string2 : arrstring) {
                if (stringBuilder.length() > 1) {
                    stringBuilder.append(",");
                }
                stringBuilder.append("\"").append(string2).append("\"");
            }
            stringBuilder.append("]");
            return stringBuilder.toString();
        }
        return arrstring.toString();
    }

    private ArrayList<String> getAuthorInfo(PostContent postContent) {
        ArrayList<String> arrayList = new ArrayList<String>(2){};
        arrayList.set(0, postContent.getAuthorId());
        arrayList.set(1, StringUtils.stripBeginningSlash(postContent.getAuthorUserPage()));
        return arrayList;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public static DustbusterClient getInstance() {
        synchronized (DustbusterClient.class) {
            if (sInstance != null) return sInstance;
            throw new RuntimeException("You must call initialize on DustbusterClient in the application");
        }
    }

    public static void initialize(@NonNull Context context, @NonNull Doorbell doorbell, @NonNull Analytics.Configuration configuration, @NonNull BaseDustbusterLauncher baseDustbusterLauncher, @NonNull SubscriptionProvider subscriptionProvider) {
        synchronized (DustbusterClient.class) {
            LogUtil.i(TAG + ".getDustbusterInstance", "Initializing Dustbuster singleton for build environment: " + configuration.getBuildEnvironment());
            sInstance = new DustbusterClient(new Dustbuster(context.getApplicationContext(), configuration.getAppName(), configuration.getBuildEnvironment(), doorbell, baseDustbusterLauncher), doorbell, configuration, subscriptionProvider);
            return;
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    private void trackBookmarkCommon(HashMap<String, Object> hashMap, PostContent object, String string2, String string3, boolean bl) {
        hashMap.put("buzz_id", object.getId());
        hashMap.put("author", string2);
        hashMap.put("author_id", string3);
        hashMap.put("post_category", object.getCategory());
        object = bl ? "bookmarked" : "unbookmarked";
        hashMap.put("bookmark_state", object);
        this.trackEvent("bookmark", hashMap);
    }

    private void trackComment(String string2, String string3, String string4, String string5, String string6, String string7) {
        HashMap<String, Object> hashMap = new HashMap<String, Object>();
        hashMap.put("screen", string2);
        hashMap.put("buzz_id", string3);
        hashMap.put("author", string4);
        hashMap.put("author_id", string5);
        hashMap.put("post_category", string6);
        hashMap.put("comment_type", string7);
        this.trackEvent("comment", hashMap);
    }

    private void trackNotificationInteraction(String string2, String string3, String string4, String[] arrstring) {
        LinkedHashMap<String, Object> linkedHashMap = new LinkedHashMap<String, Object>();
        linkedHashMap.put("message", string2);
        linkedHashMap.put("destination", string3);
        linkedHashMap.put("type_of_interaction", string4);
        linkedHashMap.put("bucket", arrstring);
        this.trackEvent("notification_interaction", linkedHashMap);
    }

    private void trackShare(String string2, String string3, String string4, String string5, String string6, String string7, String string8, String string9, String string10, String string11) {
        HashMap<String, Object> hashMap = new HashMap<String, Object>();
        hashMap.put("screen", string2);
        hashMap.put("buzz_id", string3);
        hashMap.put("author", string4);
        hashMap.put("author_id", string5);
        hashMap.put("post_category", string6);
        hashMap.put("share_type", string7);
        hashMap.put("share_button_location", string8);
        hashMap.put("share_activity_source", string9);
        hashMap.put("share_tap_outcome", string10);
        hashMap.put("result_id", string11);
        this.trackEvent("share", hashMap);
    }

    private void trackShareEventInFeed(String string2, String string3, String string4, int n2, String string5, String string6, String string7, String string8) {
        LinkedHashMap<String, Object> linkedHashMap = new LinkedHashMap<String, Object>();
        linkedHashMap.put("screen", string2);
        linkedHashMap.put("content_id", string3);
        linkedHashMap.put("content_type", string4);
        if (n2 != -1) {
            linkedHashMap.put("position", n2);
        }
        linkedHashMap.put("share_type", string5);
        linkedHashMap.put("share_button_location", string6);
        linkedHashMap.put("share_activity_source", string7);
        linkedHashMap.put("share_tap_outcome", string8);
        this.trackEvent("share", linkedHashMap);
    }

    private void updateLastActiveTime() {
        this.mLastActiveTime = SystemClock.elapsedRealtime();
    }

    public void forceProcessEvents() {
        this.mDustbuster.forceProcessEvents();
    }

    public Dustbuster getDustbuster() {
        return this.mDustbuster;
    }

    public long getUserPoundIdentifier() {
        return this.mDoorbell.getUserPoundIdentifier();
    }

    public void pauseSession() {
        synchronized (this) {
            String string2 = TAG + ".pauseSession";
            this.updateLastActiveTime();
            LogUtil.i(string2, "Setting mLastActiveTime: " + this.mLastActiveTime);
            this.forceProcessEvents();
            return;
        }
    }

    public void resumeSession(Context context) {
        String string2 = TAG + ".resumeSession";
        long l2 = SystemClock.elapsedRealtime() - this.mLastActiveTime;
        LogUtil.i(string2, "Checking if we need to resume session, elapsedTime: " + l2 + " mLastActiveTime: " + this.mLastActiveTime);
        if (l2 >= 120000) {
            LogUtil.i(string2, "We need to start a new session because elapsedTime >= 120000");
            this.startSessionWithMetaData(context);
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    void startSessionWithMetaData(Context object) {
        String string2 = TAG + ".startSessionWithMetaData";
        this.updateLastActiveTime();
        LinkedHashMap<String, Object> linkedHashMap = new LinkedHashMap<String, Object>();
        linkedHashMap.put("app_edition", this.mConfig.getEdition());
        if (this.mConfig.getLoginStatusProvider() != null) {
            linkedHashMap.put("login_status", this.mConfig.getLoginStatusProvider().getLoginStatus((Context)object));
        } else {
            LogUtil.w(string2, "No LoginStatusProvider registered. Unable to track login status.");
        }
        object = this.mConfig.isPushEnabled() ? "opt_in" : "opt_out";
        linkedHashMap.put("notification_status", object);
        object = this.mSubscriptionProvider == null ? null : this.mSubscriptionProvider.getSubscriptions();
        linkedHashMap.put("subscriptions", (String[])object);
        this.mDustbuster.startNewSessionWithMetadata(linkedHashMap);
        linkedHashMap.put("source", this.mConfig.getAppName());
        linkedHashMap.put("device_id", this.mDoorbell.getUserIdentifier());
        linkedHashMap.put("session_id", this.mDustbuster.getSessionId());
        LogUtil.i(string2, this.formatLogMessage("session", linkedHashMap));
    }

    public void trackABeagleExperimentRequest(long l2) {
        LinkedHashMap<String, Object> linkedHashMap = new LinkedHashMap<String, Object>();
        linkedHashMap.put("response_time_ms", l2);
        this.trackEvent("experiment_request", linkedHashMap);
    }

    public void trackABeagleExperimentStatus(Integer n2, String string2, Integer n3, Integer n4, String string3) {
        LinkedHashMap<String, Object> linkedHashMap = new LinkedHashMap<String, Object>();
        linkedHashMap.put("experiment_id", n2);
        linkedHashMap.put("experiment_name", string2);
        linkedHashMap.put("experiment_version", n3);
        linkedHashMap.put("variant_id", n4);
        linkedHashMap.put("variant_name", string3);
        this.trackEvent("experiment_status", linkedHashMap);
    }

    public void trackBookmarkBuzzPage(PostContent postContent, boolean bl) {
        if (postContent != null) {
            ArrayList<String> arrayList = this.getAuthorInfo(postContent);
            HashMap<String, Object> hashMap = new HashMap<String, Object>();
            hashMap.put("screen", "/post/" + StringUtils.stripBeginningSlash(postContent.getUri()));
            this.trackBookmarkCommon(hashMap, postContent, arrayList.get(1), arrayList.get(0), bl);
        }
    }

    public void trackBreakingNewsUnitTap(int n2, String string2) {
        LinkedHashMap<String, Object> linkedHashMap = new LinkedHashMap<String, Object>();
        linkedHashMap.put("screen", string2);
        linkedHashMap.put("screen_type", "feed");
        linkedHashMap.put("content_id", null);
        linkedHashMap.put("content_type", "breaking_news");
        linkedHashMap.put("position", String.valueOf(n2));
        linkedHashMap.put("unit", "feed");
        linkedHashMap.put("unit_client_id", null);
        linkedHashMap.put("post_category", null);
        linkedHashMap.put("variation_id", null);
        linkedHashMap.put("sub_position", null);
        linkedHashMap.put("package_name", null);
        linkedHashMap.put("package_size", null);
        linkedHashMap.put("package_id", null);
        this.trackEvent("unit_tap", linkedHashMap);
    }

    public void trackBuzzFeedComment(PostContent postContent) {
        ArrayList<String> arrayList = this.getAuthorInfo(postContent);
        this.trackComment("/post/" + StringUtils.stripBeginningSlash(postContent.getUri()), postContent.getId(), arrayList.get(1), arrayList.get(0), postContent.getCategory(), "buzzfeed");
    }

    public void trackBuzzPageView(PostContent postContent, String string2, String string3, List<String> list, String string4) {
        if (postContent != null) {
            ArrayList<String> arrayList = this.getAuthorInfo(postContent);
            this.trackScreenView("/post/" + StringUtils.stripBeginningSlash(postContent.getUri()), "bpage", postContent.getId(), arrayList.get(1), arrayList.get(0), postContent.getCategory(), string2, string3, list, string4);
        }
    }

    public void trackBuzzUnitTap(PostContent postContent, int n2, String string2) {
        LinkedHashMap<String, Object> linkedHashMap = new LinkedHashMap<String, Object>();
        linkedHashMap.put("screen", string2);
        linkedHashMap.put("screen_type", "feed");
        linkedHashMap.put("content_id", postContent.getId());
        linkedHashMap.put("content_type", "buzz");
        linkedHashMap.put("position", String.valueOf(n2));
        linkedHashMap.put("unit", "feed");
        linkedHashMap.put("unit_client_id", null);
        linkedHashMap.put("post_category", postContent.getCategory());
        linkedHashMap.put("variation_id", null);
        linkedHashMap.put("sub_position", null);
        linkedHashMap.put("package_name", null);
        linkedHashMap.put("package_size", null);
        linkedHashMap.put("package_id", null);
        linkedHashMap.put("data_source", postContent.getDataSource());
        this.trackEvent("unit_tap", linkedHashMap);
    }

    public void trackEvent(String string2, Map<String, Object> map) {
        String string3 = TAG + ".trackEvent";
        String string4 = (String)map.get("buzz_id");
        Integer n2 = this.convertStringToInt(string4);
        if (map.containsKey("buzz_id")) {
            map.put("buzz_id", n2);
        }
        if (map.containsKey("author_id")) {
            map.put("author_id", this.convertStringToInt((String)map.get("author_id")));
        }
        if (n2 == null || n2 > 0) {
            this.mDustbuster.trackEvent(string2, map);
            LogUtil.d(string3, this.formatLogMessage(string2, map));
            return;
        }
        LogUtil.w(string3, "Invalid buzzId " + string4 + ", not sending event for key: " + string2);
    }

    public void trackFeedPageView(String string2) {
        this.trackScreenView(string2, "feed", null, null, null, null, null, null, null, null);
    }

    public void trackGenericShare(PostContent postContent, @Nullable String string2, @Nullable String string3) {
        if (postContent != null) {
            ArrayList<String> arrayList = this.getAuthorInfo(postContent);
            this.trackShare("/post/" + StringUtils.stripBeginningSlash(postContent.getUri()), postContent.getId(), arrayList.get(1), arrayList.get(0), postContent.getCategory(), string3, string2, "share_sheet", null, null);
        }
    }

    public void trackLinkTap(PostContent postContent, String string2) {
        ArrayList<String> arrayList = this.getAuthorInfo(postContent);
        LinkedHashMap<String, Object> linkedHashMap = new LinkedHashMap<String, Object>();
        linkedHashMap.put("screen", "/post/" + StringUtils.stripBeginningSlash(postContent.getUri()));
        linkedHashMap.put("buzz_id", postContent.getId());
        linkedHashMap.put("author", arrayList.get(1));
        linkedHashMap.put("author_id", arrayList.get(0));
        linkedHashMap.put("post_category", postContent.getCategory());
        linkedHashMap.put("link_url", string2);
        this.trackEvent("link_tap", linkedHashMap);
    }

    /*
     * Enabled aggressive block sorting
     */
    public void trackNativeShare(ShareItemType object, PostContent postContent, String string2) {
        if (postContent != null) {
            ArrayList<String> arrayList = this.getAuthorInfo(postContent);
            object = object != null ? object.toString().toLowerCase() : null;
            this.trackShare("/post/" + StringUtils.stripBeginningSlash(postContent.getUri()), postContent.getId(), arrayList.get(1), arrayList.get(0), postContent.getCategory(), (String)object, string2, "on_screen", null, null);
        }
    }

    public void trackNewsPackageUnitTap(PostContent postContent, int n2, String string2, int n3, String string3, int n4, String string4) {
        LinkedHashMap<String, Object> linkedHashMap = new LinkedHashMap<String, Object>();
        linkedHashMap.put("screen", string2);
        linkedHashMap.put("screen_type", "feed");
        linkedHashMap.put("content_id", postContent.getId());
        linkedHashMap.put("content_type", "buzz");
        linkedHashMap.put("position", String.valueOf(n2));
        linkedHashMap.put("unit", "feed");
        linkedHashMap.put("unit_client_id", null);
        linkedHashMap.put("post_category", postContent.getCategory());
        linkedHashMap.put("variation_id", null);
        linkedHashMap.put("sub_position", n3);
        linkedHashMap.put("package_name", string3);
        linkedHashMap.put("package_size", n4);
        linkedHashMap.put("package_id", string4);
        linkedHashMap.put("data_source", postContent.getDataSource());
        this.trackEvent("unit_tap", linkedHashMap);
    }

    public void trackNotificationDismissed(String string2, String string3) {
        this.trackNotificationInteraction(string2, string3, "dismiss", null);
    }

    public void trackNotificationOpened(String string2, String string3) {
        this.trackNotificationInteraction(string2, string3, "open", null);
    }

    public void trackNotificationReceived(String string2, String string3, String[] arrstring) {
        LinkedHashMap<String, Object> linkedHashMap = new LinkedHashMap<String, Object>();
        linkedHashMap.put("message", string2);
        linkedHashMap.put("destination", string3);
        linkedHashMap.put("bucket", arrstring);
        this.trackEvent("notification", linkedHashMap);
    }

    public void trackNotificationStatusChanged(String string2, String string3) {
        LinkedHashMap<String, Object> linkedHashMap = new LinkedHashMap<String, Object>();
        linkedHashMap.put("bucket", string3);
        linkedHashMap.put("new_status", string2);
        this.trackEvent("notification_status_change", linkedHashMap);
    }

    public void trackReaction(PostContent postContent, String string2) {
        if (postContent != null) {
            ArrayList<String> arrayList = this.getAuthorInfo(postContent);
            HashMap<String, Object> hashMap = new HashMap<String, Object>();
            hashMap.put("screen", "/post/" + StringUtils.stripBeginningSlash(postContent.getUri()));
            hashMap.put("buzz_id", postContent.getId());
            hashMap.put("author", arrayList.get(1));
            hashMap.put("author_id", arrayList.get(0));
            hashMap.put("post_category", postContent.getCategory());
            hashMap.put("reaction_type", string2);
            this.trackEvent("react", hashMap);
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    public void trackScreenView(String string2, String string3, String string4, String string5, String string6, String string7, String string8, String string9, List<String> list, String string10) {
        HashMap<String, Object> hashMap = new HashMap<String, Object>();
        hashMap.put("screen", string2);
        hashMap.put("screen_type", string3);
        hashMap.put("buzz_id", string4);
        hashMap.put("author", string5);
        hashMap.put("author_id", string6);
        hashMap.put("post_category", string7);
        hashMap.put("view_state", string8);
        string2 = list == null || list.size() == 0 ? null : new JSONArray(list);
        hashMap.put("unsupported_modules", string2);
        if (TextUtils.equals((CharSequence)string3, (CharSequence)"bpage")) {
            hashMap.put("previous_screen", string9);
        }
        hashMap.put("open_url", string10);
        this.trackEvent("screenview", hashMap);
    }

    public void trackSubbuzzShare(PostContent postContent, String string2) {
        if (postContent != null) {
            ArrayList<String> arrayList = this.getAuthorInfo(postContent);
            this.trackShare("/post/" + StringUtils.stripBeginningSlash(postContent.getUri()), postContent.getId(), arrayList.get(1), arrayList.get(0), postContent.getCategory(), string2, "subbuzz", "share_sheet", null, null);
        }
    }

    public void trackTrendingShare(FlowItem flowItem, String string2, int n2, String string3, String string4) {
        if (flowItem != null) {
            this.trackShareEventInFeed(string2, flowItem.getId(), string4, n2, string3, "feed_module", "share_sheet", null);
        }
    }

    public void trackUiTapEvent(String string2, String string3, String string4, String string5) {
        ArrayMap<String, Object> arrayMap = new ArrayMap<String, Object>();
        arrayMap.put("screen", string2);
        arrayMap.put("ui_item", string3);
        arrayMap.put("ui_item_id", string4);
        arrayMap.put("ui_item_location", string5);
        this.trackEvent("ui_tap", arrayMap);
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public void trackUnitImpressions(String string2, Collection<UnitImpression> object) {
        synchronized (this) {
            if (object != null && object.size() > 0) {
                LinkedHashMap<String, Object> linkedHashMap = new LinkedHashMap<String, Object>();
                linkedHashMap.put("screen", string2);
                linkedHashMap.put("screen_type", "feed");
                string2 = TAG + ".trackUnitImpressions";
                try {
                    JSONArray jSONArray = new JSONArray();
                    StringBuilder stringBuilder = new StringBuilder();
                    object = object.iterator();
                    while (object.hasNext()) {
                        JSONObject jSONObject = DustbusterClient.convertImpressionToJsonObject((UnitImpression)object.next());
                        jSONArray.put((Object)jSONObject);
                        DustbusterClient.appendUnitImpressionLog(stringBuilder, jSONObject);
                    }
                    linkedHashMap.put("item", (Object)jSONArray);
                    LogUtil.d(string2, stringBuilder);
                    this.trackEvent("unit_impression", linkedHashMap);
                }
                catch (JSONException var2_3) {
                    LogUtil.e(string2, "Cannot convert to json array", (Throwable)var2_3);
                }
            }
            return;
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    public void trackUserEdge(PostContent postContent, String hashMap, long l2) {
        if (TextUtils.isEmpty((CharSequence)((Object)hashMap)) || l2 <= 0) {
            return;
        }
        hashMap = new HashMap();
        hashMap.put("screen", "/post/" + StringUtils.stripBeginningSlash(postContent.getUri()));
        hashMap.put("buzz_id", postContent.getId());
        hashMap.put("post_category", postContent.getCategory());
        hashMap.put("from_client_id", l2);
        this.trackEvent("user_edge", hashMap);
    }

    public void trackWebShare(String string2, PostContent postContent) {
        if (postContent != null) {
            ArrayList<String> arrayList = this.getAuthorInfo(postContent);
            this.trackShare("/post/" + StringUtils.stripBeginningSlash(postContent.getUri()), postContent.getId(), arrayList.get(1), arrayList.get(0), postContent.getCategory(), string2, null, "on_screen", null, null);
        }
    }

}

