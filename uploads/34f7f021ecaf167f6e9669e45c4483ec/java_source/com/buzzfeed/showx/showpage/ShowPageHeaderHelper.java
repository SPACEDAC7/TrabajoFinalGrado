/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.animation.ValueAnimator
 *  android.animation.ValueAnimator$AnimatorUpdateListener
 *  android.content.Context
 *  android.view.View
 */
package com.buzzfeed.showx.showpage;

import android.animation.ValueAnimator;
import android.content.Context;
import android.support.annotation.NonNull;
import android.support.design.widget.AppBarLayout;
import android.view.View;
import com.buzzfeed.showx.showpage.ui.view.ShowPageToolbar;
import com.buzzfeed.toolkit.util.EZUtil;
import com.buzzfeed.toolkit.util.UIUtil;
import com.buzzfeed.toolkit.util.VersionUtil;

final class ShowPageHeaderHelper {
    private static final long DEFAULT_ANIMATION_DURATION = 400;
    private AppBarLayout mAppBarLayout;
    private ToolbarState mCurrentToolbarState;
    private View mHeaderOverlay;
    private boolean mIsOverlayShown;
    private InternalOffsetChangedListener mOffsetChangedListener;
    private float mOverlayAlpha = 0.0f;
    private ValueAnimator mOverlayAnimator;
    private ShowPageToolbar mToolbar;
    private int mTopHeaderClearance;

    ShowPageHeaderHelper(@NonNull ShowPageToolbar showPageToolbar, @NonNull AppBarLayout appBarLayout, @NonNull View view) {
        this.mToolbar = EZUtil.checkNotNull(showPageToolbar, "Toolbar must not be null");
        this.mAppBarLayout = EZUtil.checkNotNull(appBarLayout, "AppBarLayout must not be null.");
        this.mHeaderOverlay = EZUtil.checkNotNull(view, "Header overlay must not be null.");
        this.mTopHeaderClearance = this.calculateTopHeaderClearance(this.mAppBarLayout.getContext());
        this.mOffsetChangedListener = new InternalOffsetChangedListener();
        this.mAppBarLayout.addOnOffsetChangedListener(this.mOffsetChangedListener);
        this.mToolbar.setTitleTextAlpha(0.0f);
    }

    /*
     * Enabled aggressive block sorting
     */
    private void animateOverlay(float f2) {
        if (this.mOverlayAnimator == null) {
            this.mOverlayAnimator = new ValueAnimator();
            this.mOverlayAnimator.setDuration(400);
            this.mOverlayAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener(){

                public void onAnimationUpdate(ValueAnimator valueAnimator) {
                    ShowPageHeaderHelper.this.setOverlayAlpha(((Float)valueAnimator.getAnimatedValue()).floatValue());
                }
            });
        } else if (this.mOverlayAnimator.isRunning()) {
            this.mOverlayAnimator.cancel();
        }
        this.mOverlayAnimator.setFloatValues(new float[]{this.mOverlayAlpha, f2});
        this.mOverlayAnimator.start();
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private int calculateTopHeaderClearance(Context context) {
        int n2;
        int n3 = UIUtil.getActionBarHeight(context);
        if (!VersionUtil.hasLollipop()) {
            n2 = UIUtil.getStatusBarHeight(context);
            do {
                return n2 + n3;
                break;
            } while (true);
        }
        n2 = 0;
        return n2 + n3;
    }

    private void setOverlayAlpha(float f2) {
        if (Float.compare(this.mOverlayAlpha, f2) != 0) {
            this.mOverlayAlpha = f2;
            this.mHeaderOverlay.setAlpha(this.mOverlayAlpha);
            this.mToolbar.setTitleTextAlpha(this.mOverlayAlpha);
        }
    }

    private void setOverlayShown(boolean bl) {
        this.setOverlayShown(bl, false);
    }

    /*
     * Enabled aggressive block sorting
     */
    private void setOverlayShown(boolean bl, boolean bl2) {
        if (this.mIsOverlayShown != bl) {
            float f2 = bl ? 1.0f : 0.0f;
            if (bl2) {
                this.animateOverlay(f2);
            } else {
                this.setOverlayAlpha(f2);
            }
            this.mIsOverlayShown = bl;
        }
    }

    void detach() {
        if (this.mOverlayAnimator != null) {
            this.mOverlayAnimator.cancel();
            this.mOverlayAnimator = null;
        }
        this.mAppBarLayout.removeOnOffsetChangedListener(this.mOffsetChangedListener);
        this.mAppBarLayout = null;
        this.mToolbar = null;
        this.mHeaderOverlay = null;
        this.mOffsetChangedListener = null;
    }

    public ToolbarState getToolbarState() {
        return this.mCurrentToolbarState;
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    public void setToolbarState(ToolbarState var1_1) {
        if (var1_1 == null) return;
        if (this.mCurrentToolbarState == var1_1) {
            return;
        }
        switch (.$SwitchMap$com$buzzfeed$showx$showpage$ShowPageHeaderHelper$ToolbarState[var1_1.ordinal()]) {
            case 1: {
                this.setOverlayShown(false, false);
                ** break;
            }
            case 2: {
                this.setOverlayShown(true, false);
            }
lbl10: // 3 sources:
            default: {
                ** GOTO lbl14
            }
            case 3: 
        }
        this.setOverlayShown(false, false);
lbl14: // 2 sources:
        this.mCurrentToolbarState = var1_1;
    }

    private class InternalOffsetChangedListener
    implements AppBarLayout.OnOffsetChangedListener {
        private InternalOffsetChangedListener() {
        }

        /*
         * Enabled aggressive block sorting
         */
        @Override
        public void onOffsetChanged(AppBarLayout appBarLayout, int n2) {
            boolean bl = true;
            n2 = appBarLayout.getTotalScrollRange() + n2;
            if (n2 == 0) {
                ShowPageHeaderHelper.this.mCurrentToolbarState = ToolbarState.HIDDEN;
                return;
            } else if (n2 > 0 && n2 <= ShowPageHeaderHelper.this.mTopHeaderClearance) {
                if (ShowPageHeaderHelper.this.mCurrentToolbarState != ToolbarState.HIDDEN) return;
                {
                    ShowPageHeaderHelper.this.setOverlayShown(true);
                    ShowPageHeaderHelper.this.mCurrentToolbarState = ToolbarState.SHOWING;
                    return;
                }
            } else {
                if (ShowPageHeaderHelper.this.mCurrentToolbarState == ToolbarState.EXPANDED) return;
                {
                    if (ShowPageHeaderHelper.this.mCurrentToolbarState != ToolbarState.SHOWING) {
                        bl = false;
                    }
                    ShowPageHeaderHelper.this.setOverlayShown(false, bl);
                    ShowPageHeaderHelper.this.mCurrentToolbarState = ToolbarState.EXPANDED;
                    return;
                }
            }
        }
    }

    public static enum ToolbarState {
        HIDDEN,
        SHOWING,
        EXPANDED;
        

        private ToolbarState() {
        }
    }

}

