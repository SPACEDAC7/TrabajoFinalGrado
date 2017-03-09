/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.app.Activity
 *  android.app.Fragment
 *  android.content.Context
 *  android.content.Intent
 *  android.content.res.Resources
 *  android.graphics.PorterDuff
 *  android.graphics.PorterDuff$Mode
 *  android.graphics.drawable.Drawable
 *  android.os.Build
 *  android.os.Build$VERSION
 *  android.os.Bundle
 *  android.os.Parcelable
 *  android.text.TextUtils
 *  android.util.Log
 *  android.view.LayoutInflater
 *  android.view.View
 *  android.view.View$OnClickListener
 *  android.view.ViewGroup
 *  android.view.Window
 *  android.widget.Button
 *  android.widget.ImageButton
 *  android.widget.ImageView
 *  android.widget.MediaController
 *  android.widget.MediaController$MediaPlayerControl
 *  android.widget.ProgressBar
 *  android.widget.SeekBar
 *  android.widget.Toast
 */
package com.buzzfeed.mediaviewer;

import android.app.Activity;
import android.app.Fragment;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcelable;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.Button;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.MediaController;
import android.widget.ProgressBar;
import android.widget.SeekBar;
import android.widget.Toast;
import com.bumptech.glide.DrawableTypeRequest;
import com.bumptech.glide.GenericRequestBuilder;
import com.bumptech.glide.Glide;
import com.bumptech.glide.load.engine.DiskCacheStrategy;
import com.bumptech.glide.load.resource.drawable.GlideDrawable;
import com.bumptech.glide.request.target.Target;
import com.buzzfeed.analytics.client.VideoTracker;
import com.buzzfeed.android.vcr.model.VideoType;
import com.buzzfeed.android.vcr.player.KeepScreenOnHelper;
import com.buzzfeed.android.vcr.player.VCRDefaultVideoPlayerPresenter;
import com.buzzfeed.android.vcr.player.VCRPlayerControl;
import com.buzzfeed.android.vcr.player.VideoSurfacePresenter;
import com.buzzfeed.android.vcr.player.listener.VideoSurfacePresenterListenerImpl;
import com.buzzfeed.android.vcr.util.SystemUiHelper;
import com.buzzfeed.mediaviewer.R;
import com.buzzfeed.mediaviewer.ui.view.PlayerControlFooterView;
import com.buzzfeed.mediaviewer.ui.view.VideoContainerAnimationHelper;
import com.buzzfeed.mediaviewer.ui.view.VideoContainerView;
import com.buzzfeed.mediaviewer.ui.view.VideoFooterView;
import com.buzzfeed.mediaviewer.ui.view.VideoHeaderView;
import com.buzzfeed.toolkit.sharmo.ShareManager;
import com.buzzfeed.toolkit.ui.view.ForceAspectImageView;
import com.buzzfeed.toolkit.util.ImageUtil;
import com.buzzfeed.toolkit.util.LogUtil;
import com.buzzfeed.toolkit.util.NetworkUtil;
import com.buzzfeed.toolkit.util.UIUtil;
import java.io.Serializable;
import java.util.List;

public abstract class BaseVideoViewerFragment
extends Fragment
implements SystemUiHelper.OnVisibilityChangeListener {
    private static final long HIDE_DELAY = 2000;
    private static final String KEY_ERROR_STATE = "KEY_ERROR_STATE";
    private static final String KEY_LAST_PROGRESS = "KEY_LAST_PROGRESS";
    private static final String TAG = LogUtil.makeLogTag(BaseVideoViewerFragment.class);
    public static final String TRANSITION_NAME_COVER_IMAGE = "TRANSITION_NAME_COVER_IMAGE";
    private float mAspectRatio;
    protected VideoContainerView.PlaybackErrorState mErrorState = VideoContainerView.PlaybackErrorState.NONE;
    private KeepScreenOnHelper mKeepScreenOnHelper;
    private double mLastProgressPercentage;
    private SeekBarListener mSeekBarListener;
    private InternalPresenterListener mSurfaceTexturePresenterListener;
    private SystemUiHelper mSystemUiHelper;
    protected VideoContainerView mVideoContainerView;
    protected VCRDefaultVideoPlayerPresenter mVideoPlayerPresenter;
    protected VideoTracker mVideoTracker;
    protected VideoContainerAnimationHelper mViewHelper;

    private void attachKeepOnScreenHelperIfNeeded() {
        if (this.mKeepScreenOnHelper == null || this.mVideoPlayerPresenter == null) {
            return;
        }
        if (this.mKeepScreenOnHelper.isAttached()) {
            this.mKeepScreenOnHelper.detachFromPresenter();
        }
        this.mKeepScreenOnHelper.attachTo(this.mVideoPlayerPresenter);
    }

    private static int getColor(Context context, int n2) {
        if (Build.VERSION.SDK_INT >= 23) {
            return context.getColor(n2);
        }
        return context.getResources().getColor(n2);
    }

    private void removePlayerCallbacks() {
        if (this.mVideoPlayerPresenter != null) {
            this.mVideoPlayerPresenter.removeListener(this.mSurfaceTexturePresenterListener);
            this.mKeepScreenOnHelper.detachFromPresenter();
        }
    }

    private void setupAnalytics() {
        Object object = this.getArguments();
        int n2 = object.getInt("KEY_REFERRER_FEED_POSITION", 0);
        object = object.getString("KEY_REFERRER_SCREEN");
        this.mVideoTracker.setPositionInFeed(n2).setScreenName((String)object).setVideoDuration(this.getVideoDuration()).setVideoId(this.getContentId()).setVideoTitle(this.getVideoTitle()).setVideoUrl(this.getContentUri()).setPlayerLocation("media_viewer");
    }

    private float setupAspectRatio() {
        if (this.mVideoPlayerPresenter.isPlaying() && this.mVideoPlayerPresenter.getAspectRatio() > 0.0f) {
            return this.mVideoPlayerPresenter.getAspectRatio();
        }
        return this.getArguments().getFloat("KEY_ASPECT_RATIO", 0.0f);
    }

    private void setupErrorState(Bundle object) {
        if (object != null && !TextUtils.isEmpty((CharSequence)(object = object.getString("KEY_ERROR_STATE", null)))) {
            this.setErrorState(VideoContainerView.PlaybackErrorState.toEnum((String)object));
        }
    }

    private void updateOverlay(boolean bl) {
        if (this.mViewHelper == null) {
            return;
        }
        if (bl) {
            this.mViewHelper.showOverlay();
            return;
        }
        this.mViewHelper.hideOverlay();
    }

    protected void cancelHideSystemUi() {
        this.mSystemUiHelper.cancelHide();
        this.mViewHelper.cancelHide();
    }

    protected void delayHideSystemUi(long l2) {
        this.mSystemUiHelper.delayHide(l2);
        this.mViewHelper.cancelHide();
    }

    protected String getContentId() {
        return this.getArguments().getString("KEY_CONTENT_ID");
    }

    protected String getContentUri() {
        return this.getArguments().getString("KEY_CONTENT_URI");
    }

    protected String getCoverImageUrl(int n2) {
        List list = (List)((Object)this.getArguments().getSerializable("KEY_COVER_IMAGE"));
        if (!list.isEmpty()) {
            return ImageUtil.getDownsizeWidthUrl((String)list.get(list.size() - 1), n2);
        }
        return null;
    }

    protected long getVideoDuration() {
        return this.getArguments().getLong("KEY_DURATION");
    }

    protected String getVideoTitle() {
        return this.getArguments().getString("KEY_VIDEO_TITLE");
    }

    protected void hideSystemUi() {
        this.mSystemUiHelper.hide();
        this.mViewHelper.cancelHide();
    }

    public boolean isSystemUiVisible() {
        return this.mSystemUiHelper.isShowing();
    }

    public void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
        this.mVideoTracker.setDeviceOrientation(UIUtil.isLandscape((Context)this.getActivity()));
        this.mKeepScreenOnHelper = new KeepScreenOnHelper(this.getActivity().getWindow());
        this.attachKeepOnScreenHelperIfNeeded();
        this.mSystemUiHelper = new SystemUiHelper(this.getActivity(), 3, 0, this);
        this.mSystemUiHelper.show();
    }

    protected abstract VCRDefaultVideoPlayerPresenter onCreatePlayer(Context var1);

    @Nullable
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        layoutInflater = layoutInflater.inflate(R.layout.fragment_video_viewer, viewGroup, false);
        this.mVideoContainerView = (VideoContainerView)layoutInflater.findViewById(R.id.rootContainer);
        this.mViewHelper = new VideoContainerAnimationHelper(this.mVideoContainerView);
        long l2 = this.setUpStartPosition(bundle, this.getArguments());
        this.mSurfaceTexturePresenterListener = new InternalPresenterListener();
        if (this.mVideoPlayerPresenter == null) {
            this.mVideoPlayerPresenter = this.onCreatePlayer(layoutInflater.getContext());
            this.mVideoPlayerPresenter.seekTo(l2);
        }
        this.onSetupVideoPlayer(this.mVideoPlayerPresenter);
        this.onSetupHeader(this.mVideoContainerView.getHeaderView());
        this.onSetupFooter(this.mVideoContainerView.getVideoFooterView());
        this.onSetupControllerView(this.mVideoContainerView.getControllerView(), l2);
        this.onSetupButtons((View)this.mVideoContainerView.getCloseButton(), (View)this.mVideoContainerView.getErrorButton());
        this.mVideoContainerView.setClickable(true);
        this.mVideoContainerView.setOnClickListener((View.OnClickListener)new OnSurfaceTextureClickListener());
        this.mVideoContainerView.getProgressBar().getIndeterminateDrawable().setColorFilter(BaseVideoViewerFragment.getColor(this.mVideoContainerView.getContext(), R.color.buzzfeed_blue), PorterDuff.Mode.SRC_IN);
        float f2 = this.setupAspectRatio();
        this.setAspectRatio(f2);
        this.onSetUpCoverImage(this.mVideoContainerView.getCoverImageView(), f2);
        this.setupErrorState(bundle);
        return layoutInflater;
    }

    public void onDestroyView() {
        this.removePlayerCallbacks();
        this.mKeepScreenOnHelper = null;
        this.mVideoContainerView = null;
        this.mViewHelper = null;
        this.mSystemUiHelper.detachView();
        this.mSystemUiHelper = null;
        this.mAspectRatio = 0.0f;
        super.onDestroyView();
    }

    public void onPause() {
        super.onPause();
        this.mSeekBarListener.trackProgressIfNeeded();
        if (this.isRemoving()) {
            this.showSystemUi();
        }
    }

    public void onResume() {
        super.onResume();
        this.setupAnalytics();
    }

    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putString("KEY_ERROR_STATE", this.mErrorState.toString());
        bundle.putDouble("KEY_LAST_PROGRESS", this.mLastProgressPercentage);
    }

    /*
     * Enabled aggressive block sorting
     */
    protected void onSetUpCoverImage(ImageView imageView, float f2) {
        int n2 = UIUtil.getScreenWidth();
        Object object = this.getCoverImageUrl(n2);
        if (!TextUtils.isEmpty((CharSequence)object)) {
            int n3 = f2 > 0.0f ? (int)((float)n2 / f2) : 0;
            object = Glide.with(this).load((String)object).diskCacheStrategy(DiskCacheStrategy.ALL);
            if (n2 > 0 && n3 > 0) {
                object.override(n2, n3);
            }
            object.into(imageView);
        }
    }

    protected void onSetupButtons(View view, View view2) {
        view.setOnClickListener(new View.OnClickListener(){

            public void onClick(View view) {
                BaseVideoViewerFragment.this.getActivity().onBackPressed();
            }
        });
    }

    protected void onSetupControllerView(PlayerControlFooterView playerControlFooterView, long l2) {
        playerControlFooterView.setPlayerControl(new VCRPlayerControl(this.mVideoPlayerPresenter));
        long l3 = this.getVideoDuration();
        playerControlFooterView.updateProgressPosition((int)l2, (int)l3);
        this.mSeekBarListener = new SeekBarListener(l3, l2);
        playerControlFooterView.setOnSeekBarChangeListener(this.mSeekBarListener);
    }

    protected void onSetupFooter(VideoFooterView videoFooterView) {
        Bundle bundle = this.getArguments();
        final Intent intent = (Intent)bundle.getParcelable("KEY_RECIPE_CLICK_INTENT");
        if (intent != null) {
            videoFooterView.setRecipeButtonVisible(true);
            videoFooterView.setRecipeButtonClickListener(new View.OnClickListener(){

                public void onClick(View view) {
                    BaseVideoViewerFragment.this.startActivity(intent);
                }
            });
        }
        videoFooterView.setShareButtonClickListener(new ShareClickListener(bundle.getString("KEY_VIDEO_TITLE"), bundle.getString("KEY_SOURCE_URL")));
    }

    protected void onSetupHeader(VideoHeaderView videoHeaderView) {
        Bundle bundle = this.getArguments();
        String string2 = bundle.getString("KEY_AVATAR_URL");
        if (!TextUtils.isEmpty((CharSequence)string2)) {
            videoHeaderView.setAvatarImageUrl(string2);
        }
        if (!TextUtils.isEmpty((CharSequence)(string2 = bundle.getString("KEY_VIDEO_TITLE")))) {
            videoHeaderView.setTitle(string2);
        }
        if ((string2 = (Intent)bundle.getParcelable("KEY_SHOW_CLICK_INTENT")) != null) {
            videoHeaderView.setShowAvatarClickListener(new View.OnClickListener((Intent)string2, bundle.getString("KEY_SHOW_ID")){
                final /* synthetic */ Intent val$showClickIntent;
                final /* synthetic */ String val$showId;

                public void onClick(View view) {
                    BaseVideoViewerFragment.this.startActivity(this.val$showClickIntent);
                    BaseVideoViewerFragment.this.mVideoTracker.sendShowIconTapEvent(this.val$showId);
                }
            });
        }
    }

    protected void onSetupVideoPlayer(VCRDefaultVideoPlayerPresenter vCRDefaultVideoPlayerPresenter) {
        vCRDefaultVideoPlayerPresenter.addListener(this.mSurfaceTexturePresenterListener);
        vCRDefaultVideoPlayerPresenter.setContent(this.getContentUri(), VideoType.inferContentType(this.getContentUri()));
    }

    @Override
    public void onSystemUiVisibilityChange(boolean bl) {
        this.updateOverlay(bl);
    }

    protected void setAspectRatio(float f2) {
        if (this.mAspectRatio != f2) {
            this.mAspectRatio = f2;
            this.mVideoContainerView.setAspectRatio(f2);
            this.mViewHelper.setAspectRatio(f2);
        }
    }

    protected void setErrorState(VideoContainerView.PlaybackErrorState playbackErrorState) {
        if (this.mErrorState != playbackErrorState) {
            this.mErrorState = playbackErrorState;
            this.mVideoContainerView.setErrorState(this.mErrorState);
        }
    }

    protected long setUpStartPosition(@Nullable Bundle bundle, Bundle bundle2) {
        if (this.mVideoPlayerPresenter != null && this.mVideoPlayerPresenter.isReady()) {
            return this.mVideoPlayerPresenter.getCurrentPosition();
        }
        if (bundle == null) {
            long l2 = bundle2.getLong("KEY_START_POSITION", 0);
            bundle2.remove("KEY_START_POSITION");
            bundle2.putLong("KEY_START_POSITION", 0);
            return l2;
        }
        this.mLastProgressPercentage = bundle.getDouble("KEY_LAST_PROGRESS", 0.0);
        return (long)(this.mLastProgressPercentage * (double)this.getVideoDuration());
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    public void setVideoPlayer(VCRDefaultVideoPlayerPresenter vCRDefaultVideoPlayerPresenter) {
        if (vCRDefaultVideoPlayerPresenter != null && vCRDefaultVideoPlayerPresenter == this.mVideoPlayerPresenter) {
            return;
        }
        this.removePlayerCallbacks();
        this.mVideoPlayerPresenter = vCRDefaultVideoPlayerPresenter;
        if (this.mVideoPlayerPresenter == null) return;
        this.mVideoPlayerPresenter.setAudioMuted(false);
        this.attachKeepOnScreenHelperIfNeeded();
    }

    public void setVideoTracker(VideoTracker videoTracker) {
        this.mVideoTracker = videoTracker;
    }

    protected void showSystemUi() {
        this.mSystemUiHelper.show();
        this.mViewHelper.cancelHide();
    }

    protected void showWithDelayedHide() {
        this.showSystemUi();
        this.delayHideSystemUi(2000);
    }

    /*
     * Enabled aggressive block sorting
     */
    protected void updateViewPlaybackState(boolean bl, int n2) {
        long l2 = this.mVideoPlayerPresenter.getCurrentPosition();
        switch (n2) {
            default: {
                LogUtil.d(TAG, "Unknown playback state: " + n2);
                return;
            }
            case 1: {
                this.showSystemUi();
                this.mVideoContainerView.getCoverImageView().setVisibility(8);
                this.mVideoContainerView.getProgressBar().setVisibility(8);
                return;
            }
            case 4: {
                if (bl) {
                    this.showWithDelayedHide();
                } else {
                    this.showSystemUi();
                }
                this.mVideoContainerView.getCoverImageView().setVisibility(8);
                this.mVideoContainerView.getProgressBar().setVisibility(8);
                return;
            }
            case 2: 
            case 3: {
                this.showSystemUi();
                this.mVideoContainerView.getProgressBar().setVisibility(0);
                this.setErrorState(VideoContainerView.PlaybackErrorState.NONE);
                return;
            }
            case 5: {
                this.showSystemUi();
                this.mVideoPlayerPresenter.pause();
                this.mVideoPlayerPresenter.seekTo(0);
                this.mVideoContainerView.getCoverImageView().setVisibility(8);
                this.mVideoContainerView.getProgressBar().setVisibility(8);
                this.mVideoContainerView.getControllerView().stopProgressUpdates();
                if (!bl) return;
                this.mVideoTracker.sendVideoCompleteEvent(l2);
                this.mVideoTracker.sendPlaybackProgress("MediaViewer", 100);
                if (this.mSeekBarListener == null) return;
                this.mSeekBarListener.resetProgress();
                return;
            }
        }
    }

    private class InternalPresenterListener
    extends VideoSurfacePresenterListenerImpl {
        private InternalPresenterListener() {
        }

        @Override
        public void onError(Exception exception) {
            LogUtil.w(TAG + ".onError", "Player Error: " + Log.getStackTraceString((Throwable)exception));
            if (!NetworkUtil.isConnectedToNetwork((Context)BaseVideoViewerFragment.this.getActivity())) {
                BaseVideoViewerFragment.this.setErrorState(VideoContainerView.PlaybackErrorState.OFFLINE);
                return;
            }
            BaseVideoViewerFragment.this.setErrorState(VideoContainerView.PlaybackErrorState.VIDEO_PLAYBACK);
        }

        @Override
        public void onPlayerReleased(VideoSurfacePresenter videoSurfacePresenter, long l2) {
            BaseVideoViewerFragment.this.showSystemUi();
            BaseVideoViewerFragment.this.mVideoContainerView.getCoverImageView().setVisibility(0);
            BaseVideoViewerFragment.this.mVideoContainerView.getProgressBar().setVisibility(8);
        }

        @Override
        public void onStateChanged(boolean bl, int n2) {
            BaseVideoViewerFragment.this.updateViewPlaybackState(bl, n2);
        }

        @Override
        public void onVideoSizeChanged(int n2, int n3, int n4, float f2) {
            BaseVideoViewerFragment.this.setAspectRatio(BaseVideoViewerFragment.this.mVideoPlayerPresenter.getAspectRatio());
        }
    }

    private class OnSurfaceTextureClickListener
    implements View.OnClickListener {
        private OnSurfaceTextureClickListener() {
        }

        public void onClick(View view) {
            if (BaseVideoViewerFragment.this.isSystemUiVisible()) {
                BaseVideoViewerFragment.this.hideSystemUi();
                return;
            }
            if (BaseVideoViewerFragment.this.mVideoPlayerPresenter.isPlaying()) {
                BaseVideoViewerFragment.this.showWithDelayedHide();
                return;
            }
            BaseVideoViewerFragment.this.showSystemUi();
        }
    }

    private class SeekBarListener
    implements PlayerControlFooterView.OnSeekBarChangeListener {
        int mLastTrackedProgress;

        public SeekBarListener(long l2, long l3) {
            this.setupProgress(l2, l3);
        }

        /*
         * Enabled force condition propagation
         * Lifted jumps to return sites
         */
        private int getQuartile(double d2) {
            int n2 = 0;
            if (this.mLastTrackedProgress != 75 && BaseVideoViewerFragment.this.mLastProgressPercentage <= 0.75 && 0.75 <= d2) {
                return 75;
            }
            if (this.mLastTrackedProgress != 50 && BaseVideoViewerFragment.this.mLastProgressPercentage <= 0.5 && 0.5 <= d2) {
                return 50;
            }
            int n3 = n2;
            if (this.mLastTrackedProgress == 25) return n3;
            n3 = n2;
            if (BaseVideoViewerFragment.this.mLastProgressPercentage > 0.25) return n3;
            n3 = n2;
            if (0.25 > d2) return n3;
            return 25;
        }

        private void setupProgress(long l2, long l3) {
            if (l2 != 0) {
                double d2 = (double)l3 / (double)l2;
                int n2 = this.getQuartile(d2);
                if (n2 != 0) {
                    this.mLastTrackedProgress = n2;
                }
                BaseVideoViewerFragment.this.mLastProgressPercentage = d2;
            }
        }

        private void trackProgressIfNeeded() {
            if (BaseVideoViewerFragment.this.mVideoPlayerPresenter != null && BaseVideoViewerFragment.this.mVideoPlayerPresenter.isPlaying()) {
                long l2;
                long l3 = BaseVideoViewerFragment.this.mVideoPlayerPresenter.getCurrentPosition();
                double d2 = (double)l3 / (double)(l2 = BaseVideoViewerFragment.this.mVideoPlayerPresenter.getDuration());
                int n2 = this.getQuartile(d2);
                if (n2 != 0) {
                    this.mLastTrackedProgress = n2;
                    BaseVideoViewerFragment.this.mVideoTracker.sendPlaybackProgress("MediaViewer", this.mLastTrackedProgress);
                }
                BaseVideoViewerFragment.this.mLastProgressPercentage = d2;
            }
        }

        @Override
        public void onProgressChanged(SeekBar seekBar, int n2, boolean bl) {
            if (!bl) {
                this.trackProgressIfNeeded();
            }
        }

        @Override
        public void onStartTrackingTouch(SeekBar seekBar, boolean bl) {
            long l2 = BaseVideoViewerFragment.this.mVideoPlayerPresenter.getCurrentPosition();
            BaseVideoViewerFragment.this.mVideoTracker.setPlayerLocation("media_viewer").sendStartScrubPosition(l2, bl);
            BaseVideoViewerFragment.this.showSystemUi();
        }

        @Override
        public void onStopTrackingTouch(SeekBar seekBar, boolean bl) {
            long l2 = BaseVideoViewerFragment.this.mVideoPlayerPresenter.getCurrentPosition();
            BaseVideoViewerFragment.this.mVideoTracker.setPlayerLocation("media_viewer").sendEndScrubPosition(l2, bl);
            BaseVideoViewerFragment.this.delayHideSystemUi(2000);
        }

        public void resetProgress() {
            BaseVideoViewerFragment.this.mLastProgressPercentage = 0.0;
            this.mLastTrackedProgress = 0;
        }
    }

    private class ShareClickListener
    implements View.OnClickListener {
        private ShareManager.ShareActionListener mShareActionListener;
        private String mSourceUri;
        private String mVideoTitle;

        public ShareClickListener(String string2, String string3) {
            this.mVideoTitle = string2;
            this.mSourceUri = string3;
        }

        public void onClick(View object) {
            if (TextUtils.isEmpty((CharSequence)this.mSourceUri)) {
                object = BaseVideoViewerFragment.this.getString(R.string.video_viewer_no_share_link_available);
                Toast.makeText((Context)BaseVideoViewerFragment.this.getActivity(), (CharSequence)object, (int)0).show();
                return;
            }
            this.mShareActionListener = new ShareManager.ShareActionListener(BaseVideoViewerFragment.this.mVideoPlayerPresenter.getCurrentPosition()){
                final /* synthetic */ long val$positionInVideo;

                @Override
                public void onShareAction(@Nullable String string2) {
                    BaseVideoViewerFragment.this.mVideoTracker.sendShareVideoEvent(this.val$positionInVideo, string2, "media_viewer", "share_sheet", "click:media-viewer/share-sheet");
                    ShareClickListener.this.mShareActionListener = null;
                }
            };
            ShareManager.shareWithListener(BaseVideoViewerFragment.this.getActivity(), this.mVideoTitle, this.mSourceUri, this.mShareActionListener);
            BaseVideoViewerFragment.this.mVideoTracker.sendOpenShareSheetFromViewer();
        }

    }

}

