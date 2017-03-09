/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.content.res.Resources
 *  android.text.TextUtils
 */
package com.buzzfeed.android.data.tracking;

import android.content.Context;
import android.content.res.Resources;
import android.support.annotation.NonNull;
import android.support.v4.util.ArrayMap;
import android.text.TextUtils;
import com.buzzfeed.analytics.client.BuzzFeedTracker;
import com.buzzfeed.analytics.client.DustbusterClient;
import com.buzzfeed.analytics.model.UnitImpression;
import com.buzzfeed.analytics.util.IntentStringConverter;
import com.buzzfeed.android.data.Feed;
import com.buzzfeed.android.util.AnalyticsUtils;
import com.buzzfeed.android.util.BuzzUtils;
import com.buzzfeed.toolkit.content.BuffetType;
import com.buzzfeed.toolkit.content.FlowItem;
import com.buzzfeed.toolkit.content.PackageContent;
import com.buzzfeed.toolkit.content.PostContent;
import com.buzzfeed.toolkit.content.VideoContent;
import com.buzzfeed.toolkit.content.WeaverEmbed;
import com.buzzfeed.toolkit.content.WeaverItem;
import com.buzzfeed.toolkit.util.LogUtil;
import com.google.android.gms.analytics.HitBuilders;
import com.google.android.gms.analytics.Tracker;
import java.util.Collection;
import java.util.List;
import java.util.Map;

public class BuffetTracker {
    public static final String QUANTCAST_GENERAL_EVENT_NAME = "view-page";
    private static final String TAG = LogUtil.makeLogTag(BuffetTracker.class);
    private Context mAppContext;
    private DustbusterClient mDustbusterClient;
    private String mEdition;
    private BuzzFeedTracker mTracker;

    public BuffetTracker(@NonNull Context context, @NonNull BuzzFeedTracker buzzFeedTracker, @NonNull DustbusterClient dustbusterClient, @NonNull String string2) {
        this.mAppContext = context.getApplicationContext();
        this.mTracker = buzzFeedTracker;
        this.mDustbusterClient = dustbusterClient;
        this.mEdition = string2;
    }

    private String buildContentTypeFromFlowId(FlowItem object) {
        object = BuffetType.valueOf(object.getType());
        switch (.$SwitchMap$com$buzzfeed$toolkit$content$BuffetType[object.ordinal()]) {
            default: {
                LogUtil.e(TAG + ".buildContentTypeFromFlowId", "No case found for type " + object);
                return "";
            }
            case 1: 
            case 2: {
                return "video";
            }
            case 3: 
            case 4: 
            case 5: 
            case 6: 
            case 7: 
            case 8: 
            case 9: 
        }
        return "buzz";
    }

    private String getString(int n2) {
        return this.mAppContext.getString(n2);
    }

    public void trackBackSearchFeed() {
        this.mDustbusterClient.trackUiTapEvent("/list/search", "back", "search_back", "search_screen");
    }

    public void trackBookmarksClicked(String string2) {
        this.mTracker.trackEvent(this.getString(2131296761), this.getString(2131296716), this.getString(2131296799));
        this.mDustbusterClient.trackUiTapEvent(string2, "bookmarks", null, "overflow");
    }

    public void trackBreakingNewsLinkClicked(String string2, String string3) {
        if (!BuzzUtils.isBuzzFeedUrl(string2)) {
            this.mTracker.trackEvent(this.getString(2131296758), this.getString(2131296689), string2, 0);
        }
        this.mDustbusterClient.trackBreakingNewsUnitTap(1, string3);
    }

    public void trackBuffetOpenShareSheet() {
        this.mTracker.trackEvent(this.getString(2131296752), this.getString(2131296714), null);
    }

    public void trackBuffetShareActivity(FlowItem flowItem, String string2, int n2, String string3) {
        this.trackBuffetShareActivity(flowItem, string2, n2, string3, this.buildContentTypeFromFlowId(flowItem));
    }

    public void trackBuffetShareActivity(FlowItem flowItem, String string2, int n2, String string3, String string4) {
        string3 = IntentStringConverter.convertIntentToApp(string3);
        this.mDustbusterClient.trackTrendingShare(flowItem, string2, n2, string3, string4);
        this.mTracker.trackEvent(this.getString(2131296732), this.getString(2131296707), string3);
    }

    public void trackFeedbackClicked(String string2) {
        this.mTracker.trackEvent(this.getString(2131296761), this.getString(2131296715), this.getString(2131296800));
        this.mDustbusterClient.trackUiTapEvent(string2, "feedback", null, "overflow");
    }

    public void trackNewsPackageClick(String string2, PackageContent packageContent, PostContent postContent, int n2, int n3) {
        String string3 = this.mAppContext.getResources().getString(2131296752);
        String string4 = this.mAppContext.getResources().getString(2131296693);
        String string5 = "" + n2 + "." + n3;
        ArrayMap<Integer, String> arrayMap = new ArrayMap<Integer, String>();
        arrayMap.put(this.mAppContext.getResources().getInteger(2131689489), postContent.getId());
        arrayMap.put(this.mAppContext.getResources().getInteger(2131689493), packageContent.getId());
        arrayMap.put(this.mAppContext.getResources().getInteger(2131689494), packageContent.getName());
        this.mTracker.trackEvent(string3, string4, string5, arrayMap);
        this.mDustbusterClient.trackNewsPackageUnitTap(postContent, n2, string2, n3, packageContent.getName(), packageContent.getPackageItems().size(), packageContent.getId());
    }

    public void trackOverflowMenuOpened(String string2) {
        this.mTracker.trackEvent(this.getString(2131296761), this.getString(2131296715), null);
        this.mDustbusterClient.trackUiTapEvent(string2, "overflow_menu", null, "overflow");
    }

    /*
     * Enabled aggressive block sorting
     */
    public void trackPostClicked(String string2, PostContent postContent, int n2, boolean bl, boolean bl2) {
        String string3 = this.getString(2131296752);
        this.mTracker.trackAdjustEvent(this.getString(2131296630));
        this.mTracker.getTracker().send(((HitBuilders.AppViewBuilder)new HitBuilders.AppViewBuilder().setCustomDimension(this.mAppContext.getResources().getInteger(2131689489), postContent.getId())).build());
        ArrayMap<Integer, String> arrayMap = new ArrayMap<Integer, String>();
        arrayMap.put(this.mAppContext.getResources().getInteger(2131689489), postContent.getId());
        String string4 = bl2 ? this.getString(2131296688) : this.getString(2131296695);
        this.mTracker.trackEvent(string3, string4, Integer.toString(n2), arrayMap);
        if (bl) {
            this.mTracker.trackEvent(this.getString(2131296772), this.getString(2131296695), this.getString(2131296789), arrayMap);
        }
        this.mDustbusterClient.trackBuzzUnitTap(postContent, n2, string2);
    }

    public void trackPullToRefresh() {
        this.mTracker.trackEvent(this.getString(2131296752), this.getString(2131296719), null, 0);
    }

    public void trackRateUsClicked(String string2) {
        this.mTracker.trackEvent(this.getString(2131296761), this.getString(2131296715), this.getString(2131296801));
        this.mDustbusterClient.trackUiTapEvent(string2, "rate_us", null, "overflow");
    }

    /*
     * Enabled aggressive block sorting
     */
    public void trackScreenView(Feed object, int n2) {
        String string2;
        if (n2 == 1) {
            string2 = AnalyticsUtils.formatFeedNameForQuantcast((Feed)object, this.mEdition);
            this.mTracker.trackQuantcastEvent("view-page", string2);
        }
        string2 = AnalyticsUtils.buildScreenNameFromFeed((Feed)object, this.mEdition);
        BuzzFeedTracker buzzFeedTracker = this.mTracker;
        StringBuilder stringBuilder = new StringBuilder().append(string2);
        object = n2 > 1 ? "/" + n2 : "";
        buzzFeedTracker.trackPageView(stringBuilder.append((String)object).toString(), null);
        this.mDustbusterClient.trackFeedPageView(string2);
    }

    public void trackSearchClicked(String string2) {
        this.mTracker.trackEvent(this.getString(2131296760), this.getString(2131296701), "", 0);
        this.mDustbusterClient.trackUiTapEvent(string2, "search", "header_search", "header");
    }

    public void trackSearchQuery(String string2, String string3) {
        this.mTracker.trackEvent(this.getString(2131296757), this.getString(2131296701), string3, 0);
        this.mTracker.trackAdjustEvent(this.getString(2131296631));
        this.mDustbusterClient.trackFeedPageView(string2 + "/" + string3);
        this.mTracker.trackPageView(string2 + "/" + string3, null);
    }

    public void trackSettingsClicked(String string2) {
        this.mTracker.trackEvent(this.getString(2131296761), this.getString(2131296715), this.getString(2131296802));
        this.mDustbusterClient.trackUiTapEvent(string2, "settings", null, "overflow");
    }

    public void trackShowIconClicked(VideoContent object, @NonNull String string2) {
        Object object2 = TAG + ".trackShowIconClicked";
        if (object == null || object.getShow() == null) {
            LogUtil.e((String)object2, "Unable to track event. Required content not available.");
            return;
        }
        object2 = new ArrayMap();
        object2.put(this.mAppContext.getResources().getInteger(2131689486), object.getId());
        object2.put(this.mAppContext.getResources().getInteger(2131689487), object.getTitle());
        object = object.getShow().getId();
        this.mTracker.trackEvent(this.getString(2131296752), this.getString(2131296702), (String)object, (Map<Integer, String>)object2);
        object = "show:" + (String)object;
        this.mDustbusterClient.trackUiTapEvent(string2, "show_icon", (String)object, "feed_module");
    }

    public void trackShowIconClickedFromShowsPage(String string2, String string3) {
        this.mTracker.trackEvent(this.getString(2131296770), this.getString(2131296702), string3);
        this.mDustbusterClient.trackUiTapEvent(string2, null, "show:" + string3, "shows_list");
    }

    public void trackSignInClicked(String string2) {
        this.mTracker.trackEvent(this.getString(2131296761), this.getString(2131296715), this.getString(2131296803));
        this.mDustbusterClient.trackUiTapEvent(string2, "sign_in", null, "overflow");
    }

    public void trackSignOut() {
        this.mTracker.trackEvent(this.getString(2131296759), this.getString(2131296734), "", 0);
    }

    public void trackSignOutCancel() {
        this.mTracker.trackEvent(this.getString(2131296759), this.getString(2131296685), "", 0);
    }

    public void trackSignOutClicked(String string2) {
        this.mTracker.trackEvent(this.getString(2131296761), this.getString(2131296715), this.getString(2131296804));
        this.mDustbusterClient.trackUiTapEvent(string2, "sign_out", null, "overflow");
    }

    public void trackTabClicked(String string2, String string3) {
        this.mTracker.trackEvent(this.getString(2131296760), this.getString(2131296703), string2);
        this.mDustbusterClient.trackUiTapEvent(string3, string2, null, "tab_nav");
    }

    public void trackUnitImpressions(String string2, Collection<UnitImpression> collection) {
        if (!TextUtils.isEmpty((CharSequence)string2) && collection != null && !collection.isEmpty()) {
            this.mDustbusterClient.trackUnitImpressions(string2, collection);
        }
    }

}

