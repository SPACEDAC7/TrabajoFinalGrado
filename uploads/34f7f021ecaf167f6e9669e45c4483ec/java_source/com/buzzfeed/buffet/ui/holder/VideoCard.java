/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.annotation.TargetApi
 *  android.content.Context
 *  android.text.TextUtils
 *  android.view.TextureView
 *  android.view.View
 *  android.view.View$OnClickListener
 *  android.view.ViewGroup
 *  android.widget.Button
 *  android.widget.ImageView
 *  android.widget.ProgressBar
 *  android.widget.TextView
 */
package com.buzzfeed.buffet.ui.holder;

import android.annotation.TargetApi;
import android.content.Context;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import android.view.TextureView;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.bumptech.glide.Glide;
import com.buzzfeed.buffet.R;
import com.buzzfeed.buffet.ui.holder.BaseCard;
import com.buzzfeed.buffet.ui.listener.BuffetEventListener;
import com.buzzfeed.toolkit.content.Content;
import com.buzzfeed.toolkit.content.FlowItem;
import com.buzzfeed.toolkit.content.VideoContent;
import com.buzzfeed.toolkit.content.WeaverEmbed;
import com.buzzfeed.toolkit.ui.DebouncingOnClickListener;
import com.buzzfeed.toolkit.ui.view.ForceAspectFrameLayout;
import com.buzzfeed.toolkit.ui.view.ForceAspectImageView;
import com.buzzfeed.toolkit.util.EZUtil;
import com.buzzfeed.toolkit.util.GlideUtils;
import com.buzzfeed.toolkit.util.UIUtil;
import com.buzzfeed.toolkit.util.VersionUtil;
import com.buzzfeed.toolkit.util.WeaverVideoUtils;
import com.google.android.exoplayer.AspectRatioFrameLayout;
import java.util.Stack;

public class VideoCard
extends BaseCard {
    private float mAspectRatio;
    protected ImageView mAudioIcon;
    protected ForceAspectImageView mCoverImageView;
    private State mCurrentUiState;
    private ViewGroup mErrorView;
    protected TextView mHeadline;
    private ViewGroup mPlayButton;
    private ProgressBar mProgressSpinner;
    protected TextView mRecipeButton;
    private Button mReloadVideoButton;
    protected ViewGroup mShareButtonWrapper;
    protected ImageView mShowImage;
    protected ViewGroup mShowImageWrapper;
    private View mTrendingView;
    private ForceAspectFrameLayout mVideoContainer;
    @Nullable
    protected VideoContent mVideoContent;
    protected TextureView mVideoSurface;
    private AspectRatioFrameLayout mVideoSurfaceWrapper;

    public VideoCard(View view) {
        super(view);
        this.mVideoContainer = (ForceAspectFrameLayout)((Object)UIUtil.findView(view, R.id.card_video_container));
        this.mCoverImageView = (ForceAspectImageView)((Object)UIUtil.findView(view, R.id.card_video_cover_image));
        this.mHeadline = (TextView)UIUtil.findView(view, R.id.video_card_title);
        this.mShowImage = (ImageView)UIUtil.findView(view, R.id.video_card_title_image);
        this.mRecipeButton = (TextView)UIUtil.findView(view, R.id.video_card_recipe);
        this.mShowImageWrapper = (ViewGroup)UIUtil.findView(view, R.id.video_card_title_image_wrapper);
        this.mShareButtonWrapper = (ViewGroup)UIUtil.findView(view, R.id.share_button_wrapper);
        this.mProgressSpinner = (ProgressBar)UIUtil.findView(view, R.id.video_card_progress_spinner);
        this.mPlayButton = (ViewGroup)UIUtil.findView(view, R.id.video_card_play_button);
        this.mErrorView = (ViewGroup)UIUtil.findView(view, R.id.card_video_error_view);
        this.mReloadVideoButton = (Button)UIUtil.findView(view, R.id.card_video_reload_button);
        this.mVideoSurface = (TextureView)UIUtil.findView(view, R.id.card_video_texture_view);
        this.mVideoSurfaceWrapper = (AspectRatioFrameLayout)((Object)UIUtil.findView(view, R.id.card_video_surface_wrapper));
        this.mAudioIcon = (ImageView)UIUtil.findView(view, R.id.card_video_audio_icon);
        this.mTrendingView = UIUtil.findView(view, R.id.video_card_trending_text);
    }

    /*
     * Enabled aggressive block sorting
     */
    private void setTrendingBadgeVisibility(boolean bl) {
        View view = this.mTrendingView;
        int n2 = bl ? 0 : 8;
        view.setVisibility(n2);
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    @TargetApi(value=21)
    private void setupHeadlineText() {
        if (this.mVideoContent == null) {
            return;
        }
        this.mHeadline.setText((CharSequence)this.mVideoContent.getTitle());
        if (!VersionUtil.hasLollipop()) return;
        this.mCoverImageView.setTransitionName(this.mVideoContent.getId());
    }

    /*
     * Enabled aggressive block sorting
     */
    private void setupRecipeButton() {
        int n2 = 0;
        int n3 = this.mVideoContent != null && !TextUtils.isEmpty((CharSequence)this.mVideoContent.getSourceUri()) && WeaverVideoUtils.hasTastySpecificShowContent(this.mVideoContent.getShow()) ? 1 : 0;
        TextView textView = this.mRecipeButton;
        n3 = n3 != 0 ? n2 : 8;
        textView.setVisibility(n3);
    }

    public void applyUiState(State state) {
        if (this.mCurrentUiState == state) {
            return;
        }
        this.mCurrentUiState = state;
        switch (.$SwitchMap$com$buzzfeed$buffet$ui$holder$VideoCard$State[state.ordinal()]) {
            default: {
                return;
            }
            case 1: {
                this.mErrorView.setVisibility(4);
                this.mVideoSurfaceWrapper.setVisibility(0);
                this.mCoverImageView.setVisibility(0);
                this.mPlayButton.setVisibility(0);
                this.mProgressSpinner.setVisibility(8);
                return;
            }
            case 2: {
                this.mErrorView.setVisibility(4);
                this.mVideoSurfaceWrapper.setVisibility(0);
                this.mProgressSpinner.setVisibility(0);
                return;
            }
            case 3: {
                this.mErrorView.setVisibility(4);
                this.mVideoSurfaceWrapper.setVisibility(0);
                this.mCoverImageView.setVisibility(4);
                this.mPlayButton.setVisibility(8);
                this.mProgressSpinner.setVisibility(8);
                return;
            }
            case 4: 
        }
        this.mVideoSurfaceWrapper.setVisibility(4);
        this.mCoverImageView.setVisibility(4);
        this.mPlayButton.setVisibility(8);
        this.mProgressSpinner.setVisibility(8);
        this.mErrorView.setVisibility(0);
    }

    public ImageView getCoverImageView() {
        return this.mCoverImageView;
    }

    public TextureView getTextureView() {
        return this.mVideoSurface;
    }

    @Nullable
    public VideoContent getVideoContent() {
        return this.mVideoContent;
    }

    protected void onConfigureContainerDimensions(float f2) {
        this.mVideoContainer.setAspectRatio(f2);
        this.updateVideoAspectRatio(f2);
        this.mCoverImageView.setAspectRatio(f2);
        this.mCoverImageView.forceLayout();
    }

    @Override
    public void onViewHolderRecycled() {
        Glide.clear((View)this.mCoverImageView);
        Glide.clear((View)this.mShowImage);
        this.mVideoContent = null;
    }

    @Override
    public void populateFrom(FlowItem flowItem) {
        this.mVideoContent = (VideoContent)flowItem.getContent();
        EZUtil.checkNotNull(this.mVideoContent, "VideoContent must not be null.");
        this.mAspectRatio = WeaverVideoUtils.getAspectRatioFromVideo(WeaverVideoUtils.getFirstVideoFromVideoContent(this.mVideoContent));
        this.onConfigureContainerDimensions(this.mAspectRatio);
        this.updateCoverImage();
        this.updateIcons();
        this.setupClickListeners(flowItem);
        this.setupHeadlineText();
        this.setupRecipeButton();
        this.setTrendingBadgeVisibility(this.mVideoContent.isTrendingVideo());
        UIUtil.tintProgressBar(this.itemView.getContext(), this.mProgressSpinner, R.color.buzzfeed_blue);
        this.applyUiState(State.STOPPED);
    }

    /*
     * Enabled aggressive block sorting
     */
    protected void setAudioIconVisibility(boolean bl) {
        ImageView imageView = this.mAudioIcon;
        int n2 = bl ? 0 : 8;
        imageView.setVisibility(n2);
    }

    /*
     * Enabled aggressive block sorting
     */
    protected void setShowAvatarVisibility(boolean bl) {
        int n2 = 0;
        ImageView imageView = this.mShowImage;
        int n3 = bl ? 0 : 8;
        imageView.setVisibility(n3);
        imageView = this.mShowImageWrapper;
        n3 = bl ? n2 : 4;
        imageView.setVisibility(n3);
    }

    protected void setupClickListeners(final FlowItem flowItem) {
        final int n2 = this.getAdapterPosition();
        this.itemView.setOnClickListener(new View.OnClickListener(){

            public void onClick(View view) {
                if (VideoCard.this.getBuffetEventListener() != null) {
                    VideoCard.this.getBuffetEventListener().onCellClicked(flowItem, n2, VideoCard.this.mCoverImageView, null, false);
                }
            }
        });
        this.mRecipeButton.setOnClickListener(new View.OnClickListener(){

            public void onClick(View view) {
                if (VideoCard.this.getBuffetEventListener() != null && VideoCard.this.mVideoContent != null) {
                    VideoCard.this.getBuffetEventListener().onGetRecipeClicked(VideoCard.this.mVideoContent.getUri());
                }
            }
        });
        this.mReloadVideoButton.setOnClickListener(new View.OnClickListener(){

            public void onClick(View view) {
                if (VideoCard.this.getBuffetEventListener() != null) {
                    VideoCard.this.getBuffetEventListener().onVideoReloadClicked();
                }
            }
        });
        this.mShowImageWrapper.setOnClickListener(new View.OnClickListener(){

            public void onClick(View view) {
                if (VideoCard.this.getBuffetEventListener() != null) {
                    VideoCard.this.getBuffetEventListener().onShowImageClicked(VideoCard.this.mVideoContent);
                }
            }
        });
        if (this.mVideoContent != null && !TextUtils.isEmpty((CharSequence)this.mVideoContent.getShareUrl())) {
            this.mShareButtonWrapper.setVisibility(0);
            this.mShareButtonWrapper.setOnClickListener((View.OnClickListener)new DebouncingOnClickListener(){

                @Override
                public void doClick(View view) {
                    if (VideoCard.this.getBuffetEventListener() != null) {
                        VideoCard.this.getBuffetEventListener().onShareClicked(flowItem, n2);
                    }
                }
            });
            return;
        }
        this.mShareButtonWrapper.setVisibility(8);
        this.mShareButtonWrapper.setOnClickListener(null);
    }

    /*
     * Enabled aggressive block sorting
     */
    protected void updateCoverImage() {
        if (this.mVideoContent == null) {
            return;
        }
        int n2 = UIUtil.getScreenWidth();
        int n3 = this.mAspectRatio > 0.0f ? (int)((float)n2 / this.mAspectRatio) : 0;
        GlideUtils.loadImageStack(this.itemView.getContext(), this.mCoverImageView, this.mVideoContent.getThumbnailStack(), n2, n3);
    }

    /*
     * Enabled aggressive block sorting
     */
    protected void updateIcons() {
        if (this.mVideoContent != null && this.mVideoContent.getShow() != null) {
            String string2 = this.mVideoContent.getShow().getThumbnailUrl();
            this.setShowAvatarVisibility(true);
            GlideUtils.loadImageRounded(this.itemView.getContext(), this.mShowImage, string2, 2.0f);
        } else {
            this.setShowAvatarVisibility(false);
        }
        this.setAudioIconVisibility(true);
    }

    public void updateVideoAspectRatio(float f2) {
        this.mVideoSurfaceWrapper.setAspectRatio(f2);
    }

    public static enum State {
        PREPARING,
        PLAYING,
        STOPPED,
        ERROR;
        

        private State() {
        }
    }

}

