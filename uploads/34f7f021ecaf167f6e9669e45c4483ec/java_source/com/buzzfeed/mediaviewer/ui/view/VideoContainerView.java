/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.annotation.TargetApi
 *  android.content.Context
 *  android.content.res.Resources
 *  android.content.res.Resources$Theme
 *  android.graphics.Rect
 *  android.graphics.drawable.Drawable
 *  android.util.AttributeSet
 *  android.util.DisplayMetrics
 *  android.util.TypedValue
 *  android.view.TextureView
 *  android.view.View
 *  android.view.ViewGroup
 *  android.view.ViewGroup$LayoutParams
 *  android.widget.Button
 *  android.widget.FrameLayout
 *  android.widget.FrameLayout$LayoutParams
 *  android.widget.ImageButton
 *  android.widget.ProgressBar
 *  android.widget.RelativeLayout
 *  android.widget.RelativeLayout$LayoutParams
 *  android.widget.TextView
 */
package com.buzzfeed.mediaviewer.ui.view;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.support.v4.content.res.ResourcesCompat;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.TextureView;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.buzzfeed.mediaviewer.R;
import com.buzzfeed.mediaviewer.ui.view.PlayerControlFooterView;
import com.buzzfeed.mediaviewer.ui.view.VideoFooterView;
import com.buzzfeed.mediaviewer.ui.view.VideoHeaderView;
import com.buzzfeed.toolkit.ui.view.ForceAspectImageView;
import com.buzzfeed.toolkit.util.UIUtil;
import com.google.android.exoplayer.AspectRatioFrameLayout;

public class VideoContainerView
extends RelativeLayout {
    public static final float PORTRAIT_ASPECT_RATIO = 0.563f;
    private AspectRatioFrameLayout mAspectLayout;
    private float mAspectRatio;
    private ImageButton mCloseButton;
    PlayerControlFooterView mControllerView;
    protected ForceAspectImageView mCoverImageView;
    private Button mErrorButton;
    private View mErrorContainer;
    private TextView mErrorTextView;
    protected RelativeLayout mFitSystemContainer;
    VideoHeaderView mHeaderView;
    protected boolean mNeedsSetupViewsByAspectRatio = true;
    private ProgressBar mProgressBar;
    private RelativeLayout mRootOverlayContainer;
    private TextureView mTextureView;
    VideoFooterView mVideoFooterView;
    private FrameLayout mVideoOverlayContainer;

    public VideoContainerView(Context context) {
        super(context);
        this.initialize(context);
    }

    public VideoContainerView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.initialize(context);
    }

    public VideoContainerView(Context context, AttributeSet attributeSet, int n2) {
        super(context, attributeSet, n2);
        this.initialize(context);
    }

    @TargetApi(value=21)
    public VideoContainerView(Context context, AttributeSet attributeSet, int n2, int n3) {
        super(context, attributeSet, n2, n3);
        this.initialize(context);
    }

    private void anchorFooterToVideo() {
        Resources resources = this.getResources();
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, (int)TypedValue.applyDimension((int)1, (float)96.0f, (DisplayMetrics)resources.getDisplayMetrics()));
        layoutParams.gravity = 80;
        View view = new View(this.getContext());
        view.setLayoutParams((ViewGroup.LayoutParams)layoutParams);
        view.setBackground(ResourcesCompat.getDrawable(resources, R.drawable.scrim_footer, this.getTheme()));
        this.mVideoOverlayContainer.addView(view);
        resources = new FrameLayout.LayoutParams(-1, -2);
        resources.gravity = 80;
        this.mControllerView.setLayoutParams((ViewGroup.LayoutParams)resources);
        this.mVideoOverlayContainer.addView((View)this.mControllerView);
        resources = new RelativeLayout.LayoutParams(-1, -2);
        resources.addRule(3, R.id.videoSurfaceContainer);
        this.mVideoFooterView.setLayoutParams((ViewGroup.LayoutParams)resources);
        this.addView((View)this.mVideoFooterView);
        this.mVideoFooterView.setDividerVisible(false);
    }

    private void anchorHeaderAboveVideo() {
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        int n2 = this.getResources().getDimensionPixelSize(R.dimen.padding_large);
        layoutParams.setMargins(n2, 0, n2, n2);
        layoutParams.addRule(2, R.id.videoSurfaceContainer);
        this.mHeaderView.setLayoutParams((ViewGroup.LayoutParams)layoutParams);
        this.addView((View)this.mHeaderView);
        ((RelativeLayout.LayoutParams)this.mHeaderView.getTitleTextView().getLayoutParams()).addRule(15);
    }

    private void anchorHeaderBelowBackButton() {
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(3, R.id.closeButton);
        int n2 = this.getResources().getDimensionPixelSize(R.dimen.padding_large);
        layoutParams.setMargins(n2, 0, n2, 0);
        this.mHeaderView.setLayoutParams((ViewGroup.LayoutParams)layoutParams);
        this.mFitSystemContainer.addView((View)this.mHeaderView);
        ((RelativeLayout.LayoutParams)this.mHeaderView.getTitleTextView().getLayoutParams()).addRule(15);
    }

    private Resources.Theme getTheme() {
        return this.mVideoFooterView.getContext().getTheme();
    }

    protected void anchorFooterToBottom() {
        final View view = new View(this.getContext());
        Resources resources = this.getResources();
        final int n2 = (int)TypedValue.applyDimension((int)1, (float)136.0f, (DisplayMetrics)resources.getDisplayMetrics());
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, n2);
        layoutParams.addRule(12);
        view.setLayoutParams((ViewGroup.LayoutParams)layoutParams);
        view.setBackground(ResourcesCompat.getDrawable(resources, R.drawable.scrim_footer, this.getTheme()));
        this.mRootOverlayContainer.addView(view);
        resources = new RelativeLayout.LayoutParams(-1, -2);
        resources.addRule(12);
        this.mVideoFooterView.setLayoutParams((ViewGroup.LayoutParams)resources);
        this.mFitSystemContainer.addView((View)this.mVideoFooterView);
        this.mVideoFooterView.setDividerVisible(true);
        resources = new RelativeLayout.LayoutParams(-1, -2);
        resources.addRule(2, R.id.footer_view);
        this.mControllerView.setLayoutParams((ViewGroup.LayoutParams)resources);
        this.mFitSystemContainer.addView((View)this.mControllerView);
        UIUtil.runAfterLayout((View)this.mRootOverlayContainer, new Runnable(){

            @Override
            public void run() {
                Rect rect = new Rect();
                view.getGlobalVisibleRect(rect);
                Rect rect2 = new Rect();
                VideoContainerView.this.mVideoFooterView.getGlobalVisibleRect(rect2);
                int n22 = rect.bottom - rect2.bottom;
                if (n22 > 0) {
                    rect = new RelativeLayout.LayoutParams(-1, n2 + n22);
                    rect.addRule(12);
                    view.setLayoutParams((ViewGroup.LayoutParams)rect);
                }
            }
        });
    }

    public ImageButton getCloseButton() {
        return this.mCloseButton;
    }

    public PlayerControlFooterView getControllerView() {
        return this.mControllerView;
    }

    public ForceAspectImageView getCoverImageView() {
        return this.mCoverImageView;
    }

    public Button getErrorButton() {
        return this.mErrorButton;
    }

    RelativeLayout getFitSystemContainer() {
        return this.mFitSystemContainer;
    }

    public VideoHeaderView getHeaderView() {
        return this.mHeaderView;
    }

    public ProgressBar getProgressBar() {
        return this.mProgressBar;
    }

    RelativeLayout getRootOverlayContainer() {
        return this.mRootOverlayContainer;
    }

    public TextureView getTextureView() {
        return this.mTextureView;
    }

    public VideoFooterView getVideoFooterView() {
        return this.mVideoFooterView;
    }

    FrameLayout getVideoOverlayContainer() {
        return this.mVideoOverlayContainer;
    }

    protected void initialize(Context context) {
        VideoContainerView.inflate((Context)context, (int)R.layout.view_video_container, (ViewGroup)this);
        this.mRootOverlayContainer = (RelativeLayout)this.findViewById(R.id.rootOverlayContainer);
        this.mTextureView = (TextureView)this.findViewById(R.id.videoTextureView);
        this.mAspectLayout = (AspectRatioFrameLayout)this.findViewById(R.id.videoSurfaceContainer);
        this.mFitSystemContainer = (RelativeLayout)this.findViewById(R.id.fitSystemsContainer);
        this.mVideoOverlayContainer = (FrameLayout)this.findViewById(R.id.videoOverlayContainer);
        this.mCoverImageView = (ForceAspectImageView)this.findViewById(R.id.coverImageView);
        this.mProgressBar = (ProgressBar)this.findViewById(R.id.progressBar);
        this.mErrorContainer = this.findViewById(R.id.errorContainer);
        this.mErrorTextView = (TextView)this.findViewById(R.id.errorTextView);
        this.mErrorButton = (Button)this.findViewById(R.id.errorButton);
        this.mCloseButton = (ImageButton)this.findViewById(R.id.closeButton);
        this.mTextureView = (TextureView)this.findViewById(R.id.videoTextureView);
        this.mControllerView = new PlayerControlFooterView(context);
        this.mControllerView.setId(R.id.player_control_view);
        this.mHeaderView = new VideoHeaderView(context);
        this.mHeaderView.setId(R.id.header_view);
        this.mVideoFooterView = new VideoFooterView(context);
        this.mVideoFooterView.setId(R.id.footer_view);
    }

    public void setAspectRatio(float f2) {
        if (this.mAspectRatio != f2) {
            this.mAspectRatio = f2;
            this.mAspectLayout.setAspectRatio(f2);
            this.mCoverImageView.setAspectRatio(f2);
            this.setupHeaderAndFooterViewsIfNeeded();
        }
    }

    public void setErrorState(PlaybackErrorState playbackErrorState) {
        switch (.$SwitchMap$com$buzzfeed$mediaviewer$ui$view$VideoContainerView$PlaybackErrorState[playbackErrorState.ordinal()]) {
            default: {
                return;
            }
            case 1: {
                this.mErrorContainer.setVisibility(8);
                return;
            }
            case 2: {
                this.mErrorTextView.setText(R.string.video_viewer_error_loading_video);
                this.mErrorButton.setText(R.string.video_viewer_title_reload_button);
                this.mErrorContainer.setVisibility(0);
                return;
            }
            case 3: 
        }
        this.mErrorTextView.setText(R.string.video_viewer_error_offline);
        this.mErrorButton.setText(R.string.video_viewer_title_try_again);
        this.mErrorContainer.setVisibility(0);
    }

    /*
     * Enabled aggressive block sorting
     */
    protected void setupHeaderAndFooterViewsIfNeeded() {
        if (!this.mNeedsSetupViewsByAspectRatio || this.mAspectRatio <= 0.0f) {
            return;
        }
        if (this.mAspectRatio <= 0.563f) {
            this.anchorHeaderBelowBackButton();
            this.anchorFooterToBottom();
        } else {
            this.anchorHeaderAboveVideo();
            this.anchorFooterToVideo();
            this.mAspectLayout.bringToFront();
        }
        this.mNeedsSetupViewsByAspectRatio = false;
    }

    public static enum PlaybackErrorState {
        NONE,
        VIDEO_PLAYBACK,
        OFFLINE;
        

        private PlaybackErrorState() {
        }

        public static PlaybackErrorState toEnum(String object) {
            try {
                object = PlaybackErrorState.valueOf((String)object);
                return object;
            }
            catch (Exception var0_1) {
                return NONE;
            }
        }
    }

}

