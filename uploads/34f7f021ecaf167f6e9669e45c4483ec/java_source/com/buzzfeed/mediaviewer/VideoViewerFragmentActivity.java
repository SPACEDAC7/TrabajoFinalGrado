/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.annotation.TargetApi
 *  android.app.Fragment
 *  android.app.FragmentManager
 *  android.app.FragmentTransaction
 *  android.content.Context
 *  android.content.Intent
 *  android.os.Bundle
 *  android.os.Handler
 *  android.view.View
 */
package com.buzzfeed.mediaviewer;

import android.annotation.TargetApi;
import android.app.Fragment;
import android.app.FragmentManager;
import android.app.FragmentTransaction;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.support.annotation.Nullable;
import android.support.v7.app.AppCompatActivity;
import android.view.View;
import com.buzzfeed.analytics.client.VideoTracker;
import com.buzzfeed.analytics.util.ScreenshotDetector;
import com.buzzfeed.mediaviewer.MediaViewerArgumentBuilder;
import com.buzzfeed.mediaviewer.R;
import com.buzzfeed.mediaviewer.VideoViewerFragment;
import com.buzzfeed.toolkit.content.VideoContent;
import com.buzzfeed.toolkit.content.WeaverEmbed;
import com.buzzfeed.toolkit.content.WeaverItem;
import com.buzzfeed.toolkit.util.IntentUtils;
import com.buzzfeed.toolkit.util.WeaverVideoUtils;
import java.io.Serializable;
import java.util.Stack;

public class VideoViewerFragmentActivity
extends AppCompatActivity {
    private static final String FRAGMENT_TAG = "FRAGMENT_TAG";
    private ScreenshotDetector mScreenshotDetector;

    public VideoViewerFragmentActivity() {
        this.mScreenshotDetector = new ScreenshotDetector((Context)this, new Handler());
    }

    @Override
    protected void onCreate(@Nullable Bundle object) {
        VideoViewerFragment videoViewerFragment;
        super.onCreate((Bundle)object);
        this.setContentView(R.layout.activity_video_viewer_fragment);
        object = videoViewerFragment = (VideoViewerFragment)this.getFragmentManager().findFragmentByTag("FRAGMENT_TAG");
        if (videoViewerFragment == null) {
            object = new VideoViewerFragment();
            object.setArguments(IntentUtils.createBundleFromIntent(this.getIntent()));
            this.getFragmentManager().beginTransaction().add(R.id.fragmentContainer, (Fragment)object, "FRAGMENT_TAG").commit();
            this.getFragmentManager().executePendingTransactions();
        }
        object.setVideoTracker(VideoTracker.getInstance());
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

    public static class IntentBuilder<T extends IntentBuilder>
    extends MediaViewerArgumentBuilder<T> {
        public static final String KEY_SHARED_ELEMENT_TRANSITION = "KEY_SHARED_ELEMENT_TRANSITION";

        public Intent build(Context context) {
            context = new Intent(context, (Class)VideoViewerFragmentActivity.class);
            context.putExtras(this.mExtras);
            return context;
        }

        public T videoContent(VideoContent videoContent) {
            ((IntentBuilder)this.contentId(videoContent.getId())).sourceUri(videoContent.getSourceUri()).videoTitle(videoContent.getTitle()).coverImageUrl(videoContent.getThumbnailStack());
            WeaverItem.Video video = WeaverVideoUtils.getFirstVideoFromVideoContent(videoContent);
            if (video != null) {
                String string2 = WeaverVideoUtils.getHlsVideoContentUri(video);
                float f2 = WeaverVideoUtils.getAspectRatioFromVideo(video);
                ((IntentBuilder)this.duration(video.getDuration())).contentUri(string2).aspectRatio(f2);
            }
            if (videoContent.getShow() != null) {
                this.showId(videoContent.getShow().getId());
            }
            return (T)this;
        }

        @TargetApi(value=21)
        public T withSharedElementCoverImage(View view) {
            this.mExtras.putBoolean("KEY_SHARED_ELEMENT_TRANSITION", true);
            this.mExtras.putString("KEY_SHARED_ELEMENT_NAME", "TRANSITION_NAME_COVER_IMAGE");
            view.setTransitionName("TRANSITION_NAME_COVER_IMAGE");
            return (T)this;
        }
    }

}

