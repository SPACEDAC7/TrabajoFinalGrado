/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.content.res.Resources
 *  android.text.TextUtils
 *  org.json.JSONObject
 */
package com.buzzfeed.android.data.tracking;

import android.content.Context;
import android.content.res.Resources;
import android.support.annotation.NonNull;
import android.text.TextUtils;
import com.buzzfeed.analytics.client.BuzzFeedTracker;
import com.buzzfeed.analytics.client.DustbusterClient;
import com.buzzfeed.analytics.model.GAEvent;
import com.buzzfeed.analytics.util.IntentStringConverter;
import com.buzzfeed.android.data.BuzzUser;
import com.buzzfeed.android.data.Feed;
import com.buzzfeed.android.data.tracking.LotameEventTracker;
import com.buzzfeed.android.util.AnalyticsUtils;
import com.buzzfeed.android.util.BuzzUtils;
import com.buzzfeed.spicerack.data.constant.SpicyViewState;
import com.buzzfeed.spicerack.data.sharebar.SpicyShareBarLocation;
import com.buzzfeed.toolkit.content.Buzz;
import com.buzzfeed.toolkit.content.PostContent;
import com.buzzfeed.toolkit.tenderizer.Tenderizer;
import com.buzzfeed.toolkit.util.LogUtil;
import com.buzzfeed.toolkit.util.ShareItemType;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;

public class SpicyTracker {
    public static final String ANDROID_TYPE = "android";
    public static final String QUANTCAST_GENERAL_EVENT_NAME = "view-page";
    public static final String QUANTCAST_LABEL_BUZZ = "Buzz";
    private static final String TAG = LogUtil.makeLogTag(SpicyTracker.class);
    private Context mAppContext;
    private DustbusterClient mDustbusterClient;
    private String mEdition;
    private LotameEventTracker mLotameTracker;
    private Tenderizer mTenderizer;
    private BuzzFeedTracker mTracker;

    public SpicyTracker(@NonNull Context context, @NonNull BuzzFeedTracker buzzFeedTracker, @NonNull LotameEventTracker lotameEventTracker, @NonNull Tenderizer tenderizer, @NonNull DustbusterClient dustbusterClient, @NonNull String string2) {
        this.mAppContext = context.getApplicationContext();
        this.mTracker = buzzFeedTracker;
        this.mLotameTracker = lotameEventTracker;
        this.mTenderizer = tenderizer;
        this.mDustbusterClient = dustbusterClient;
        this.mEdition = string2;
    }

    public static String getQuantcastUrl(String string2, String string3) {
        if (string3.startsWith("/")) {
            return string2 + string3.replace('/', '.');
        }
        LogUtil.e(TAG, "Wrong partial url was passed: " + string3);
        return string2;
    }

    private String getString(int n2) {
        return this.mAppContext.getString(n2);
    }

    public void trackBack() {
        this.mTracker.trackEvent(this.getString(2131296757), this.getString(2131296687), null, 0);
        this.mDustbusterClient.trackUiTapEvent("/list/bpage", "back", "bpage", "header");
        LogUtil.d(TAG, "trackBack");
    }

    /*
     * Enabled aggressive block sorting
     */
    public void trackBookmarkClick(PostContent postContent, boolean bl) {
        int n2 = bl ? 2131296683 : 2131296739;
        this.mTracker.trackEvent(this.getString(2131296757), this.getString(n2), null, 0);
        this.mDustbusterClient.trackBookmarkBuzzPage(postContent, bl);
        LogUtil.d(TAG, "trackBookmarkClicked - isBookmarked: " + bl);
    }

    public void trackFabShare(PostContent postContent) {
        if (postContent != null) {
            this.mTracker.trackEvent(this.getString(2131296749), this.getString(2131296732), BuzzUtils.removeCacheBuster(postContent.getUri()), 0);
            this.mTracker.trackEvent(this.getString(2131296756), this.getString(2131296694), null, 0);
            this.mLotameTracker.trackShare(this.mAppContext, "android", postContent);
            this.mTracker.trackAdjustEvent(this.getString(2131296629));
            LogUtil.d(TAG, "TrackFabShare - Uri:" + postContent.getUri());
        }
    }

    public void trackFabShareActivity(PostContent postContent, String string2) {
        this.trackGenericShareActivity(postContent, this.getString(2131296711), null, string2);
    }

    public void trackFixedShareBarGenericShare(PostContent postContent) {
        if (postContent != null) {
            this.mTracker.trackEvent(this.getString(2131296749), this.getString(2131296732), BuzzUtils.removeCacheBuster(postContent.getUri()), 0);
            this.mTracker.trackEvent(this.getString(2131296755), this.getString(2131296694), null, 0);
            this.mLotameTracker.trackShare(this.mAppContext, "android", postContent);
            this.mTracker.trackAdjustEvent(this.getString(2131296629));
            LogUtil.d(TAG, "TrackFixedShareBarGenericShare - Uri:" + postContent.getUri());
        }
    }

    public void trackFixedShareBarGenericShareActivity(PostContent postContent, String string2) {
        this.trackGenericShareActivity(postContent, this.getString(2131296710), "persistent_bar", string2);
    }

    /*
     * Enabled aggressive block sorting
     */
    public void trackFixedShareBarShare(ShareItemType shareItemType, PostContent postContent) {
        Context context = this.mAppContext;
        this.mDustbusterClient.trackNativeShare(shareItemType, postContent, "persistent_bar");
        if (shareItemType == ShareItemType.Generic) {
            BuzzFeedTracker.getInstance().trackEvent(context.getString(2131296768), context.getString(2131296709), shareItemType.toString().toLowerCase());
        } else {
            BuzzFeedTracker.getInstance().trackEvent(context.getString(2131296768), context.getString(2131296709), shareItemType.toString().toLowerCase());
        }
        this.mLotameTracker.trackShare(this.mAppContext, shareItemType.toString(), postContent);
    }

    public void trackGenericShareActivity(PostContent postContent, String string2, String string3, String string4) {
        string4 = IntentStringConverter.convertIntentToApp(string4);
        this.mDustbusterClient.trackGenericShare(postContent, string3, string4);
        this.mTracker.trackEvent(this.getString(2131296768), string2, string4, 0);
    }

    /*
     * Enabled aggressive block sorting
     */
    public void trackPageView(PostContent postContent, Feed object, SpicyViewState spicyViewState, List<String> list, String string2) {
        if (postContent != null && postContent.getUri() != null) {
            this.mTracker.trackQuantcastEvent("view-page", new String[]{SpicyTracker.getQuantcastUrl("Buzz", postContent.getUri()), postContent.getCategory()});
            HashMap<Integer, String> hashMap = new HashMap<Integer, String>();
            Object object2 = BuzzUser.getInstance(this.mAppContext);
            Context context = this.mAppContext;
            if (object2 != null) {
                int n2 = context.getResources().getInteger(2131689492);
                object2 = object2.isLogin() ? "android:true" : "android:false";
                hashMap.put(n2, (String)object2);
            }
            if (postContent.getCategory() != null) {
                hashMap.put(context.getResources().getInteger(2131689490), postContent.getCategory());
            }
            if (postContent instanceof Buzz) {
                object2 = (Buzz)postContent;
                if (object2.getBadges() != null) {
                    hashMap.put(context.getResources().getInteger(2131689488), object2.getBadges());
                }
                if (object2.getFlags() != null) {
                    hashMap.put(context.getResources().getInteger(2131689491), object2.getFlags());
                }
            }
            this.mTracker.trackPageView("/post" + BuzzUtils.removeCacheBuster(postContent.getUri()), hashMap);
            this.mLotameTracker.trackBuzzPageView(this.mAppContext, postContent);
            this.mTracker.trackAdjustEvent(this.getString(2131296630));
            object2 = null;
            if (spicyViewState == SpicyViewState.Fallback) {
                object2 = "fallback";
            } else if (spicyViewState == SpicyViewState.Native) {
                object2 = "fully_native";
            } else if (spicyViewState == SpicyViewState.PartiallyNative) {
                object2 = "partially_native";
            }
            object = AnalyticsUtils.buildScreenNameFromFeed((Feed)object, this.mEdition);
            this.mDustbusterClient.trackBuzzPageView(postContent, (String)object2, (String)object, list, string2);
            if (!TextUtils.isEmpty((CharSequence)string2)) {
                long l2 = this.mTenderizer.getFromClientId(string2);
                this.mDustbusterClient.trackUserEdge(postContent, string2, l2);
            }
            LogUtil.d(TAG, "trackPageView- Uri:" + postContent.getUri());
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    public void trackShareBarShare(ShareItemType shareItemType, PostContent postContent, SpicyShareBarLocation spicyShareBarLocation) {
        Context context = this.mAppContext;
        String string2 = spicyShareBarLocation == SpicyShareBarLocation.Top ? "top_share_bar" : "bottom_share_bar";
        this.mDustbusterClient.trackNativeShare(shareItemType, postContent, string2);
        BuzzFeedTracker.getInstance().trackEvent(context.getString(2131296768), String.format(context.getResources().getString(2131296805), spicyShareBarLocation.toString().toLowerCase()), shareItemType.toString().toLowerCase());
        this.mLotameTracker.trackShare(this.mAppContext, shareItemType.toString(), postContent);
    }

    public void trackSubBuzzOpenShareSheet() {
        this.mTracker.trackEvent(this.getString(2131296773), this.getString(2131296714), "");
    }

    public void trackSubBuzzShareActivityClicked(PostContent postContent, String string2) {
        string2 = IntentStringConverter.convertIntentToApp(string2);
        this.mDustbusterClient.trackSubbuzzShare(postContent, string2);
        this.mTracker.trackEvent(this.getString(2131296768), this.getString(2131296736), string2, 0);
    }

    /*
     * Enabled aggressive block sorting
     */
    public void trackUrlClicked(PostContent postContent, String string2, boolean bl) {
        if (!TextUtils.isEmpty((CharSequence)string2)) {
            int n2 = bl ? 2131296758 : 2131296773;
            this.mTracker.trackEvent(this.getString(n2), this.getString(2131296692), string2);
            this.mDustbusterClient.trackLinkTap(postContent, string2);
            LogUtil.d(TAG, "trackUrlClicked - Uri:" + string2);
        }
    }

    public void trackWebShare(String object, PostContent postContent, JSONObject jSONObject) {
        this.mDustbusterClient.trackWebShare((String)object, postContent);
        this.mLotameTracker.trackShare(this.mAppContext, (String)object, postContent);
        if (jSONObject != null) {
            object = new GAEvent(jSONObject);
            this.mTracker.trackEvent((GAEvent)object);
        }
    }
}

