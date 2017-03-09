/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.app.Fragment
 *  android.app.FragmentManager
 *  android.app.FragmentTransaction
 *  android.content.Context
 *  android.content.Intent
 *  android.os.Bundle
 *  android.os.Handler
 */
package com.buzzfeed.android.activity;

import android.app.Fragment;
import android.app.FragmentManager;
import android.app.FragmentTransaction;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.support.annotation.Nullable;
import android.support.v7.app.AppCompatActivity;
import com.buzzfeed.ads.model.VideoAd;
import com.buzzfeed.analytics.client.VideoTracker;
import com.buzzfeed.analytics.util.ScreenshotDetector;
import com.buzzfeed.android.ui.ads.VideoAdViewerFragment;
import com.buzzfeed.mediaviewer.MediaViewerArgumentBuilder;
import com.buzzfeed.toolkit.util.IntentUtils;
import java.io.Serializable;

public class VideoAdViewerActivity
extends AppCompatActivity {
    private static final String FRAGMENT_TAG = "FRAGMENT_TAG";
    private static final String SPONSORED = "sponsored";
    private ScreenshotDetector mScreenshotDetector;
    private VideoAdViewerFragment mVideoAdViewerFragment;

    public VideoAdViewerActivity() {
        this.mScreenshotDetector = new ScreenshotDetector((Context)this, new Handler());
    }

    @Override
    public void onBackPressed() {
        super.onBackPressed();
        this.mVideoAdViewerFragment.onBackPressed();
    }

    @Override
    protected void onCreate(@Nullable Bundle object) {
        VideoAdViewerFragment videoAdViewerFragment;
        super.onCreate((Bundle)object);
        this.setContentView(2130903082);
        object = videoAdViewerFragment = (VideoAdViewerFragment)this.getFragmentManager().findFragmentByTag("FRAGMENT_TAG");
        if (videoAdViewerFragment == null) {
            object = new VideoAdViewerFragment();
            object.setArguments(IntentUtils.createBundleFromIntent(this.getIntent()));
            this.getFragmentManager().beginTransaction().add(2131820715, (Fragment)object, "FRAGMENT_TAG").commit();
        }
        this.mVideoAdViewerFragment = object;
        this.mVideoAdViewerFragment.setVideoTracker(VideoTracker.getInstance());
    }

    @Override
    protected void onPause() {
        super.onPause();
        this.mScreenshotDetector.endDetection();
    }

    @Override
    protected void onResume() {
        super.onResume();
        this.mScreenshotDetector.beginDetection();
    }

    public static class IntentBuilder
    extends MediaViewerArgumentBuilder<IntentBuilder> {
        public static final String KEY_SPONSORED_AVATAR_URL = "KEY_SPONSOR_AVATAR_URL";
        public static final String KEY_SPONSOR_NAME = "KEY_SPONSOR_NAME";

        public Intent build(Context context) {
            context = new Intent(context, (Class)VideoAdViewerActivity.class);
            context.putExtras(this.mExtras);
            return context;
        }

        public IntentBuilder sponsorAvatar(String string2) {
            this.mExtras.putString("KEY_SPONSOR_AVATAR_URL", string2);
            return this;
        }

        public IntentBuilder sponsorName(String string2) {
            this.mExtras.putString("KEY_SPONSOR_NAME", string2);
            return this;
        }

        public IntentBuilder videoAd(VideoAd videoAd) {
            ((IntentBuilder)((IntentBuilder)((IntentBuilder)((IntentBuilder)((IntentBuilder)this.contentId(videoAd.getId())).duration(videoAd.getDuration())).aspectRatio(videoAd.getAspectRatio())).videoTitle(videoAd.getTitle())).coverImageUrl((Serializable)((Object)videoAd.getCoverImage()))).sponsorName(videoAd.getSponsorDisplayName()).sourceUri(videoAd.getShareUrl());
            if (videoAd.promotionType().equals("sponsored")) {
                ((IntentBuilder)this.avatarUrl(videoAd.getShowAvatar())).sponsorAvatar(videoAd.getSponsorUserImageUrl());
                return this;
            }
            this.avatarUrl(videoAd.getSponsorUserImageUrl());
            return this;
        }
    }

}

