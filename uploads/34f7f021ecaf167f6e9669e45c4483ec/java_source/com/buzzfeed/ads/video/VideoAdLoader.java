/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 */
package com.buzzfeed.ads.video;

import android.content.Context;
import com.buzzfeed.ads.model.VideoAd;
import com.buzzfeed.ads.utils.AdUtils;
import com.buzzfeed.ads.video.VideoAdListener;
import com.buzzfeed.ads.video.VideoAdManager;
import com.buzzfeed.android.vcr.player.VCRDefaultVideoPlayerPresenter;
import com.buzzfeed.android.vcr.player.VideoSurfacePresenter;
import com.buzzfeed.toolkit.content.BuffetType;
import com.buzzfeed.toolkit.content.Content;
import com.buzzfeed.toolkit.content.FlowItem;
import com.buzzfeed.toolkit.content.FlowList;
import com.buzzfeed.toolkit.util.LogUtil;
import com.google.ads.interactivemedia.v3.api.AdError;
import com.google.ads.interactivemedia.v3.api.AdErrorEvent;
import com.google.ads.interactivemedia.v3.api.AdsLoader;
import com.google.ads.interactivemedia.v3.api.AdsManager;
import com.google.ads.interactivemedia.v3.api.AdsManagerLoadedEvent;
import com.google.ads.interactivemedia.v3.api.AdsRequest;
import com.google.ads.interactivemedia.v3.api.ImaSdkFactory;
import com.google.ads.interactivemedia.v3.api.ImaSdkSettings;

public class VideoAdLoader
implements AdsLoader.AdsLoadedListener,
AdErrorEvent.AdErrorListener {
    private static String PLAYER_TYPE;
    private static String PLAYER_VERSION;
    public static final String TAG;
    private static VideoAdLoader sSingleton;
    private AdsLoader mAdsLoader;
    private ImaSdkFactory mSdkFactory = ImaSdkFactory.getInstance();
    private boolean mShouldRefreshAds = true;
    private VideoAdManager mVideoAdManager;

    static {
        TAG = VideoAdLoader.class.getSimpleName();
        PLAYER_TYPE = "google/gmf-android";
        PLAYER_VERSION = "1.5.11";
    }

    VideoAdLoader(Context context) {
        ImaSdkSettings imaSdkSettings = this.mSdkFactory.createImaSdkSettings();
        imaSdkSettings.setPlayerType(PLAYER_TYPE);
        imaSdkSettings.setPlayerVersion(PLAYER_VERSION);
        this.mAdsLoader = this.mSdkFactory.createAdsLoader(context.getApplicationContext());
        this.mAdsLoader.addAdErrorListener(this);
        this.mAdsLoader.addAdsLoadedListener(this);
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public static VideoAdLoader getInstance(Context context) {
        if (sSingleton == null) {
            synchronized (VideoAdLoader.class) {
                if (sSingleton == null) {
                    sSingleton = new VideoAdLoader(context);
                }
            }
        }
        return sSingleton;
    }

    public String getContentUri() {
        if (this.mVideoAdManager != null) {
            return this.mVideoAdManager.getContentUri();
        }
        return null;
    }

    public int getCurrentAdPosition() {
        return this.mVideoAdManager.getAdProgress();
    }

    public void insertBlankAds(FlowList flowList) {
        int n2 = 3;
        if (AdUtils.hasBreakingBar(flowList)) {
            n2 = 3 + 1;
        }
        int n3 = n2;
        if (AdUtils.hasFeatured(flowList)) {
            n3 = n2 + 1;
        }
        flowList.add(n3, new FlowItem(BuffetType.VIDEO_AD.name(), new VideoAd()));
    }

    public void loadAdSlot(VideoAdListener videoAdListener, VideoSurfacePresenter videoSurfacePresenter, Context context, int n2, String string2, String string3) {
        if (this.mVideoAdManager != null) {
            this.mVideoAdManager.destroy();
        }
        this.mVideoAdManager = new VideoAdManager(context, videoSurfacePresenter);
        this.mVideoAdManager.setBuffetVideoAdListener(videoAdListener);
        this.mAdsLoader.contentComplete();
        this.mAdsLoader.requestAds(this.mVideoAdManager.buildRequest(n2, string2, string3));
    }

    @Override
    public void onAdError(AdErrorEvent adErrorEvent) {
        LogUtil.e(TAG, "Ad Error: " + adErrorEvent.getError().getMessage());
        if (this.mVideoAdManager != null) {
            this.mVideoAdManager.notifyAdError();
            this.mVideoAdManager.destroy();
        }
    }

    @Override
    public void onAdsManagerLoaded(AdsManagerLoadedEvent adsManagerLoadedEvent) {
        if (this.mVideoAdManager != null) {
            this.mVideoAdManager.initManager(adsManagerLoadedEvent.getAdsManager());
        }
    }

    public void setShouldRefreshAds(boolean bl) {
        this.mShouldRefreshAds = bl;
    }

    public boolean shouldRefreshAds() {
        return this.mShouldRefreshAds;
    }

    public void startAd() {
        if (this.mVideoAdManager != null) {
            this.mVideoAdManager.startAd();
        }
    }

    public void updatePresenter(VCRDefaultVideoPlayerPresenter vCRDefaultVideoPlayerPresenter) {
        if (this.mVideoAdManager != null) {
            this.mVideoAdManager.updatePresenter(vCRDefaultVideoPlayerPresenter);
        }
    }
}

