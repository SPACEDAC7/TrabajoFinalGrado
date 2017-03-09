/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.text.TextUtils
 *  android.view.View
 *  android.view.ViewGroup
 *  android.webkit.WebView
 *  android.widget.FrameLayout
 */
package com.buzzfeed.ads.video;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebView;
import android.widget.FrameLayout;
import com.buzzfeed.ads.data.VideoApiClient;
import com.buzzfeed.ads.data.VideoResponse;
import com.buzzfeed.ads.model.VideoAd;
import com.buzzfeed.ads.video.AdPlayer;
import com.buzzfeed.ads.video.TraffickingParameters;
import com.buzzfeed.ads.video.VideoAdListener;
import com.buzzfeed.ads.video.VideoAdLoader;
import com.buzzfeed.ads.video.VideoAdTagBuilder;
import com.buzzfeed.android.vcr.player.VideoSurfacePresenter;
import com.buzzfeed.toolkit.util.DeviceUtil;
import com.buzzfeed.toolkit.util.LogUtil;
import com.google.ads.interactivemedia.v3.api.Ad;
import com.google.ads.interactivemedia.v3.api.AdDisplayContainer;
import com.google.ads.interactivemedia.v3.api.AdError;
import com.google.ads.interactivemedia.v3.api.AdErrorEvent;
import com.google.ads.interactivemedia.v3.api.AdEvent;
import com.google.ads.interactivemedia.v3.api.AdsManager;
import com.google.ads.interactivemedia.v3.api.AdsRenderingSettings;
import com.google.ads.interactivemedia.v3.api.AdsRequest;
import com.google.ads.interactivemedia.v3.api.ImaSdkFactory;
import com.google.ads.interactivemedia.v3.api.player.VideoAdPlayer;
import com.google.ads.interactivemedia.v3.api.player.VideoProgressUpdate;
import java.util.ArrayList;
import java.util.List;

public class VideoAdManager
implements AdErrorEvent.AdErrorListener,
AdEvent.AdEventListener {
    public static final String TAG = VideoAdManager.class.getSimpleName();
    private final AdDisplayContainer mAdDisplayContainer;
    private AdPlayer mAdPlayer;
    private AdsManager mAdsManager;
    private VideoAdListener mBuffetVideoAdListener;
    private final Context mContext;
    private boolean mStarted;
    private VideoAd mVideoAd;

    public VideoAdManager(Context context, VideoSurfacePresenter videoSurfacePresenter) {
        this.mContext = context;
        this.mAdDisplayContainer = ImaSdkFactory.getInstance().createAdDisplayContainer();
        this.mAdDisplayContainer.setAdContainer((ViewGroup)new FrameLayout(this.mContext));
        this.mAdPlayer = new AdPlayer(videoSurfacePresenter);
        this.mAdDisplayContainer.setPlayer(this.mAdPlayer);
    }

    private TraffickingParameters buildTraffickingParams(String string2) {
        LogUtil.d(VideoAdLoader.TAG + ".buildTraffickingParams", "Trafficking Params: " + string2);
        return new TraffickingParameters(string2);
    }

    private void populateAd(Ad object) {
        if (!TextUtils.isEmpty((CharSequence)(object = object.getTraffickingParameters()))) {
            final VideoAd videoAd = new VideoAd();
            videoAd.setTraffickingParameters(this.buildTraffickingParams((String)object));
            if (videoAd != null) {
                this.mVideoAd = videoAd;
                if (videoAd.getVideoId() != 0) {
                    new VideoApiClient();
                    VideoApiClient.getVideo(new VideoApiClient.ResponseListener(){

                        @Override
                        public void onErrorResponse(String string2) {
                            VideoAdManager.this.notifyAdError();
                        }

                        @Override
                        public void onResponse(VideoResponse videoResponse) {
                            videoAd.setVideo(videoResponse);
                            if (VideoAdManager.this.mBuffetVideoAdListener != null && videoAd.isValid()) {
                                VideoAdManager.this.mBuffetVideoAdListener.onReady(videoAd);
                                return;
                            }
                            VideoAdManager.this.notifyAdError();
                        }
                    }, this.mContext, videoAd.getVideoId());
                }
            }
            return;
        }
        this.notifyAdError();
    }

    private void removeWebViewOverlay() {
        int n2 = this.mAdDisplayContainer.getAdContainer().getChildCount();
        for (int i2 = 0; i2 < n2; ++i2) {
            View view = this.mAdDisplayContainer.getAdContainer().getChildAt(i2);
            if (!(view instanceof WebView)) continue;
            view.setVisibility(8);
        }
    }

    public AdsRequest buildRequest(int n2, String string2, String object) {
        String string3 = TAG + ".buildRequest";
        string2 = VideoAdTagBuilder.build(n2, DeviceUtil.getVersionCode(this.mContext), string2, (String)object);
        LogUtil.d(string3, "Ad Tag URl: " + string2);
        object = ImaSdkFactory.getInstance().createAdsRequest();
        object.setAdTagUrl(string2);
        object.setAdDisplayContainer(this.mAdDisplayContainer);
        return object;
    }

    public void destroy() {
        if (this.mAdsManager != null) {
            this.mAdsManager.destroy();
            this.mAdsManager = null;
        }
        if (this.mAdPlayer != null) {
            this.mAdPlayer.removeCallbacks();
            this.mAdPlayer = null;
        }
    }

    public int getAdProgress() {
        if (this.mAdsManager != null) {
            return (int)this.mAdsManager.getAdProgress().getCurrentTime();
        }
        return 0;
    }

    public String getContentUri() {
        if (this.mVideoAd != null) {
            return this.mVideoAd.getContentUri();
        }
        return null;
    }

    public void initManager(AdsManager object) {
        this.mAdsManager = object;
        object = new ArrayList();
        object.add("application/x-mpegURL");
        object.add("video/mp4");
        AdsRenderingSettings adsRenderingSettings = ImaSdkFactory.getInstance().createAdsRenderingSettings();
        adsRenderingSettings.setMimeTypes((List<String>)object);
        this.mAdsManager.addAdErrorListener(this);
        this.mAdsManager.addAdEventListener(this);
        this.mAdsManager.init(adsRenderingSettings);
    }

    public void notifyAdError() {
        if (this.mBuffetVideoAdListener != null) {
            this.mBuffetVideoAdListener.onError();
        }
    }

    @Override
    public void onAdError(AdErrorEvent adErrorEvent) {
        LogUtil.e(TAG + ".onAdError", "Ad Error: " + adErrorEvent.getError().getMessage());
        this.notifyAdError();
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public void onAdEvent(AdEvent object) {
        String string2 = TAG + "onAdEvent";
        LogUtil.d(string2, "Event: " + (Object)((Object)object.getType()));
        switch (.$SwitchMap$com$google$ads$interactivemedia$v3$api$AdEvent$AdEventType[object.getType().ordinal()]) {
            case 1: {
                this.removeWebViewOverlay();
                return;
            }
            case 2: {
                object = this.mAdsManager.getCurrentAd();
                if (object != null) {
                    LogUtil.d(string2, "Video Ad Content Type: " + object.getContentType());
                    this.populateAd((Ad)object);
                    return;
                }
            }
            default: {
                return;
            }
            case 3: 
        }
        this.destroy();
    }

    public void setBuffetVideoAdListener(VideoAdListener videoAdListener) {
        this.mBuffetVideoAdListener = videoAdListener;
    }

    public void startAd() {
        if (this.mAdsManager != null && !this.mStarted) {
            this.mAdsManager.start();
            this.mStarted = true;
        }
    }

    public void updatePresenter(VideoSurfacePresenter videoSurfacePresenter) {
        if (this.mAdPlayer != null) {
            this.mAdPlayer.updatePresenter(videoSurfacePresenter);
        }
    }

}

