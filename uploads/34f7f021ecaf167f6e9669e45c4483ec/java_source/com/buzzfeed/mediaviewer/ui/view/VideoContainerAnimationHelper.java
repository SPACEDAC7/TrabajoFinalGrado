/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.animation.Animator
 *  android.animation.Animator$AnimatorListener
 *  android.animation.AnimatorListenerAdapter
 *  android.animation.AnimatorSet
 *  android.animation.ObjectAnimator
 *  android.animation.TimeInterpolator
 *  android.graphics.Paint
 *  android.view.View
 *  android.view.ViewParent
 *  android.view.animation.DecelerateInterpolator
 *  android.widget.FrameLayout
 *  android.widget.ImageButton
 *  android.widget.RelativeLayout
 */
package com.buzzfeed.mediaviewer.ui.view;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.TimeInterpolator;
import android.graphics.Paint;
import android.view.View;
import android.view.ViewParent;
import android.view.animation.DecelerateInterpolator;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import android.widget.RelativeLayout;
import com.buzzfeed.mediaviewer.ui.view.PlayerControlFooterView;
import com.buzzfeed.mediaviewer.ui.view.VideoContainerView;
import com.buzzfeed.mediaviewer.ui.view.VideoFooterView;
import com.buzzfeed.mediaviewer.ui.view.VideoHeaderView;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

public class VideoContainerAnimationHelper {
    private static final long DEFAULT_ALPHA_DURATION = 500;
    private static final long DEFAULT_TRANSLATION_DURATION = 500;
    private AnimatorSet mAnimatorSet;
    private float mAspectRatio;
    private View mCloseButton;
    private PlayerControlFooterView mControllerView;
    private RelativeLayout mFitSystemContainer;
    private VideoHeaderView mHeaderView;
    private boolean mIsShowing = true;
    private RelativeLayout mRootContainer;
    private RelativeLayout mRootOverlayContainer;
    private VideoFooterView mVideoFooterView;
    private FrameLayout mVideoOverlayContainer;

    public VideoContainerAnimationHelper(VideoContainerView videoContainerView) {
        this.mRootContainer = videoContainerView;
        this.mRootOverlayContainer = videoContainerView.getRootOverlayContainer();
        this.mFitSystemContainer = videoContainerView.getFitSystemContainer();
        this.mVideoOverlayContainer = videoContainerView.getVideoOverlayContainer();
        this.mCloseButton = videoContainerView.getCloseButton();
        this.mControllerView = videoContainerView.getControllerView();
        this.mHeaderView = videoContainerView.getHeaderView();
        this.mControllerView = videoContainerView.getControllerView();
        this.mVideoFooterView = videoContainerView.getVideoFooterView();
    }

    private void cancelAnimationIfNeeded() {
        if (this.mAnimatorSet != null && (this.mAnimatorSet.isStarted() || this.mAnimatorSet.isRunning())) {
            this.mAnimatorSet.cancel();
        }
    }

    private Animator createAlphaAnimator(View view, float f2, float f3) {
        return ObjectAnimator.ofFloat((Object)view, (String)"alpha", (float[])new float[]{f2, f3}).setDuration(500);
    }

    private Animator createAlphaTransitionAnimator(View view) {
        return ObjectAnimator.ofFloat((Object)view, (String)"alpha", (float[])new float[]{0.0f, 1.0f}).setDuration(1000);
    }

    private Animator createTranslationAnimator(View view, float f2, float f3) {
        return ObjectAnimator.ofFloat((Object)view, (String)"translationY", (float[])new float[]{f2, f3}).setDuration(500);
    }

    private List<Animator> setupAlphaAnimator(List<Animator> list, float f2, float f3) {
        list.add(this.createAlphaAnimator((View)this.mFitSystemContainer, f2, f3));
        if (this.mVideoOverlayContainer.getChildCount() > 0) {
            list.add(this.createAlphaAnimator((View)this.mVideoOverlayContainer, f2, f3));
        }
        list.add(this.createAlphaAnimator((View)this.mRootOverlayContainer, f2, f3));
        if (this.mHeaderView.getParent() == this.mRootContainer) {
            list.add(this.createAlphaAnimator((View)this.mHeaderView, f2, f3));
        }
        if (this.mVideoFooterView.getParent() == this.mRootContainer) {
            list.add(this.createAlphaAnimator((View)this.mVideoFooterView, f2, f3));
        }
        return list;
    }

    public void cancelHide() {
        if (!this.mIsShowing) {
            this.cancelAnimationIfNeeded();
        }
    }

    public void hideOverlay() {
        if (!this.mIsShowing) {
            return;
        }
        this.cancelAnimationIfNeeded();
        this.mAnimatorSet = new AnimatorSet();
        ArrayList<Animator> arrayList = new ArrayList<Animator>();
        this.setupAlphaAnimator(arrayList, 1.0f, 0.0f);
        this.mAnimatorSet.playTogether(arrayList);
        this.mAnimatorSet.addListener((Animator.AnimatorListener)new AnimatorListenerAdapter(){

            public void onAnimationStart(Animator animator2) {
                super.onAnimationStart(animator2);
                VideoContainerAnimationHelper.this.mIsShowing = false;
                VideoContainerAnimationHelper.this.mControllerView.setEnabled(false);
            }
        });
        this.mAnimatorSet.start();
    }

    public void setAspectRatio(float f2) {
        if (this.mAspectRatio != f2) {
            this.mAspectRatio = f2;
        }
    }

    public void showOverlay() {
        if (this.mIsShowing) {
            return;
        }
        this.cancelAnimationIfNeeded();
        this.mAnimatorSet = new AnimatorSet();
        ArrayList<Animator> arrayList = new ArrayList<Animator>();
        this.setupAlphaAnimator(arrayList, 0.0f, 1.0f);
        this.mAnimatorSet.playTogether(arrayList);
        this.mAnimatorSet.addListener((Animator.AnimatorListener)new AnimatorListenerAdapter(){

            public void onAnimationStart(Animator animator2) {
                super.onAnimationStart(animator2);
                VideoContainerAnimationHelper.this.mIsShowing = true;
                VideoContainerAnimationHelper.this.mControllerView.setEnabled(true);
            }
        });
        this.mAnimatorSet.start();
    }

    /*
     * Enabled aggressive block sorting
     */
    public void startTransition() {
        if (this.mAspectRatio > 0.0f) {
            this.mAnimatorSet = new AnimatorSet();
            ArrayList<Animator> arrayList = new ArrayList<Animator>();
            if (this.mAspectRatio <= 0.563f) {
                arrayList.add(this.createAlphaTransitionAnimator((View)this.mHeaderView));
                arrayList.add(this.createTranslationAnimator((View)this.mHeaderView, (float)this.mHeaderView.getHeight() * 3.0f, 0.0f));
                arrayList.add(this.createAlphaTransitionAnimator((View)this.mVideoFooterView));
                arrayList.add(this.createTranslationAnimator((View)this.mVideoFooterView, (float)(- this.mVideoFooterView.getHeight()) * 3.0f, 0.0f));
                arrayList.add(this.createAlphaTransitionAnimator((View)this.mControllerView));
                arrayList.add(this.createTranslationAnimator((View)this.mControllerView, (float)(- this.mControllerView.getHeight()) * 3.0f, 0.0f));
            } else {
                arrayList.add(this.createTranslationAnimator((View)this.mHeaderView, (float)(- this.mHeaderView.getHeight()) * 3.0f, 0.0f));
                arrayList.add(this.createTranslationAnimator((View)this.mVideoFooterView, (float)this.mVideoFooterView.getHeight() * 3.0f, 0.0f));
            }
            this.mVideoOverlayContainer.setAlpha(0.0f);
            Animator animator2 = this.createAlphaAnimator((View)this.mVideoOverlayContainer, 0.0f, 1.0f);
            animator2.setStartDelay(300);
            arrayList.add(animator2);
            if (this.mCloseButton != null) {
                this.mCloseButton.setAlpha(0.0f);
                animator2 = this.createAlphaAnimator(this.mCloseButton, 0.0f, 1.0f);
                animator2.setStartDelay(300);
                arrayList.add(animator2);
                this.mCloseButton.setLayerType(2, null);
            }
            this.mHeaderView.setLayerType(2, null);
            this.mVideoFooterView.setLayerType(2, null);
            this.mControllerView.setLayerType(2, null);
            this.mVideoOverlayContainer.setLayerType(2, null);
            this.mAnimatorSet.playTogether(arrayList);
            this.mAnimatorSet.setInterpolator((TimeInterpolator)new DecelerateInterpolator(1.0f));
            this.mAnimatorSet.start();
            this.mAnimatorSet.addListener((Animator.AnimatorListener)new AnimatorListenerAdapter(){

                public void onAnimationEnd(Animator animator2) {
                    super.onAnimationEnd(animator2);
                    if (VideoContainerAnimationHelper.this.mCloseButton != null) {
                        VideoContainerAnimationHelper.this.mCloseButton.setLayerType(0, null);
                    }
                    VideoContainerAnimationHelper.this.mHeaderView.setLayerType(0, null);
                    VideoContainerAnimationHelper.this.mVideoFooterView.setLayerType(0, null);
                    VideoContainerAnimationHelper.this.mControllerView.setLayerType(0, null);
                    VideoContainerAnimationHelper.this.mVideoOverlayContainer.setLayerType(0, null);
                }
            });
        }
    }

}

