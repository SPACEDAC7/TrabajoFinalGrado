/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.annotation.TargetApi
 *  android.app.Activity
 *  android.app.Application
 *  android.app.Application$ActivityLifecycleCallbacks
 *  android.graphics.Bitmap
 *  android.os.Bundle
 *  android.os.Handler
 *  android.transition.Transition
 *  android.transition.Transition$TransitionListener
 *  android.view.View
 *  android.view.Window
 */
package com.buzzfeed.android.vcr.view;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.Application;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.os.Handler;
import android.transition.Transition;
import android.view.View;
import android.view.Window;
import com.buzzfeed.android.vcr.player.VCRSharedSurfaceTexturePresenter;
import com.buzzfeed.android.vcr.view.SurfaceTextureLayout;
import com.buzzfeed.android.vcr.view.TransitionCoordinator;
import com.buzzfeed.android.vcr.view.TransitionListenerAdapter;

@TargetApi(value=21)
class SharedElementPlayerCoordinator
implements Application.ActivityLifecycleCallbacks {
    private static final boolean DEBUG = false;
    public static final String PLAYER_TRANSITION_NAME;
    private static final String TAG;
    private Activity mFirstActivity;
    private Transition.TransitionListener mFirstTransitionListener;
    private boolean mHasSecondReturnTransitionEnded;
    private boolean mIsReturning;
    private Activity mSecondActivity;
    private Transition.TransitionListener mSecondTransitionListener;
    private VCRSharedSurfaceTexturePresenter mSharedPresenter;

    static {
        TAG = SharedElementPlayerCoordinator.class.getSimpleName();
        PLAYER_TRANSITION_NAME = TAG + ".PLAYER_TRANSITION_NAME";
    }

    public SharedElementPlayerCoordinator(Activity activity) {
        this.mFirstActivity = activity;
        this.mFirstTransitionListener = new FirstActivityTransitionListener();
        this.mFirstActivity.getWindow().getSharedElementExitTransition().addListener(this.mFirstTransitionListener);
        this.mSharedPresenter = ((TransitionCoordinator.SharedPlayerHost)this.mFirstActivity).getSharedSurfaceTexturePresenter();
        this.mSecondTransitionListener = new SecondActivityTransitionListener();
    }

    private void cleanUp() {
        SharedElementPlayerCoordinator.log("cleanUp started");
        this.mFirstActivity.getApplication().unregisterActivityLifecycleCallbacks((Application.ActivityLifecycleCallbacks)this);
        Transition transition = this.mFirstActivity.getWindow().getSharedElementExitTransition();
        if (transition != null) {
            transition.removeListener(this.mFirstTransitionListener);
        }
        this.mFirstActivity = null;
        this.mSecondActivity = null;
        this.mSharedPresenter = null;
    }

    private static void log(String string2) {
    }

    private void removeAndCleanUp() {
        if (this.mSecondActivity != null) {
            this.mSecondActivity.getWindow().setEnterTransition(null);
        }
        this.cleanUp();
    }

    public void onActivityCreated(Activity activity, Bundle bundle) {
        SharedElementPlayerCoordinator.log("onActivityCreated activity=" + activity.getClass().getSimpleName());
        if (this.mSecondActivity == null) {
            this.mSecondActivity = activity;
            this.onSharedPlayerOwnershipGained((TransitionCoordinator.SharedPlayerHost)this.mSecondActivity);
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    public void onActivityDestroyed(Activity activity) {
        SharedElementPlayerCoordinator.log("onActivityDestroyed activity=" + activity.getClass().getSimpleName());
        if (this.mFirstActivity == activity) {
            this.removeAndCleanUp();
            return;
        } else {
            if (this.mSecondActivity != activity) return;
            {
                this.mSecondActivity = null;
                return;
            }
        }
    }

    public void onActivityPaused(Activity activity) {
        SharedElementPlayerCoordinator.log("onActivityPaused activity=" + activity.getClass().getSimpleName());
    }

    public void onActivityResumed(Activity activity) {
        SharedElementPlayerCoordinator.log("onActivityResumed activity=" + activity.getClass().getSimpleName());
    }

    public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        SharedElementPlayerCoordinator.log("onActivitySaveInstanceState activity=" + activity.getClass().getSimpleName());
    }

    /*
     * Enabled aggressive block sorting
     */
    public void onActivityStarted(Activity activity) {
        SharedElementPlayerCoordinator.log("onActivityStarted activity=" + activity.getClass().getSimpleName());
        if (this.mFirstActivity == activity) {
            this.mIsReturning = true;
            return;
        } else {
            if (activity != this.mSecondActivity) return;
            {
                ((TransitionCoordinator.SharedPlayerHost)this.mSecondActivity).getSharedElementView().setTransitionName(PLAYER_TRANSITION_NAME);
                activity.getWindow().getSharedElementEnterTransition().addListener(this.mSecondTransitionListener);
                return;
            }
        }
    }

    public void onActivityStopped(Activity activity) {
        SharedElementPlayerCoordinator.log("onActivityStopped activity=" + activity.getClass().getSimpleName());
        if (this.mFirstActivity == activity) {
            this.mIsReturning = false;
        }
    }

    public void onFirstActivityReturnTransitionStarted() {
        if (!this.mHasSecondReturnTransitionEnded) {
            this.mSharedPresenter.detachSharedSurfaceTexture();
        }
        this.onSharedPlayerOwnershipGained((TransitionCoordinator.SharedPlayerHost)this.mFirstActivity);
        this.cleanUp();
    }

    public void onSecondActivityTransitionEnded() {
        TransitionCoordinator.SharedPlayerHost sharedPlayerHost = (TransitionCoordinator.SharedPlayerHost)this.mFirstActivity;
        final TransitionCoordinator.SharedPlayerHost sharedPlayerHost2 = (TransitionCoordinator.SharedPlayerHost)this.mSecondActivity;
        Bitmap bitmap = sharedPlayerHost2.getSurfaceTextureLayout().createBitmap();
        sharedPlayerHost.getSurfaceTextureLayout().setBitmap(bitmap);
        sharedPlayerHost2.getSurfaceTextureLayout().setBitmap(bitmap);
        this.mSecondActivity.getWindow().getDecorView().getHandler().post(new Runnable(){

            @Override
            public void run() {
                SharedElementPlayerCoordinator.this.onSharedPlayerOwnershipLoss(sharedPlayerHost2);
            }
        });
        this.mHasSecondReturnTransitionEnded = true;
    }

    public void onSecondActivityTransitionStarted() {
    }

    public void onSharedPlayerOwnershipGained(TransitionCoordinator.SharedPlayerHost sharedPlayerHost) {
        sharedPlayerHost.onSharedPresenterOwnershipGained(this.mSharedPresenter);
    }

    public void onSharedPlayerOwnershipLoss(TransitionCoordinator.SharedPlayerHost sharedPlayerHost) {
        VCRSharedSurfaceTexturePresenter vCRSharedSurfaceTexturePresenter = sharedPlayerHost.getSharedSurfaceTexturePresenter();
        vCRSharedSurfaceTexturePresenter.detachSharedSurfaceTexture();
        sharedPlayerHost.onSharedPresenterOwnershipLoss(vCRSharedSurfaceTexturePresenter);
    }

    private class FirstActivityTransitionListener
    extends TransitionListenerAdapter {
        private FirstActivityTransitionListener() {
        }

        @Override
        public void onTransitionEnd(Transition transition) {
            if (SharedElementPlayerCoordinator.this.mFirstActivity != null) {
                SharedElementPlayerCoordinator.log("onTransitionEnd activity=" + SharedElementPlayerCoordinator.this.mFirstActivity.getClass().getSimpleName());
            }
        }

        @Override
        public void onTransitionStart(Transition transition) {
            if (SharedElementPlayerCoordinator.this.mIsReturning) {
                SharedElementPlayerCoordinator.this.onFirstActivityReturnTransitionStarted();
            }
            if (SharedElementPlayerCoordinator.this.mFirstActivity != null) {
                SharedElementPlayerCoordinator.log("onTransitionStart activity=" + SharedElementPlayerCoordinator.this.mFirstActivity.getClass().getSimpleName());
            }
        }
    }

    private class SecondActivityTransitionListener
    extends TransitionListenerAdapter {
        private SecondActivityTransitionListener() {
        }

        /*
         * Enabled aggressive block sorting
         */
        @Override
        public void onTransitionEnd(Transition transition) {
            if (SharedElementPlayerCoordinator.this.mIsReturning) {
                SharedElementPlayerCoordinator.this.mSecondActivity.getWindow().getSharedElementEnterTransition().removeListener(SharedElementPlayerCoordinator.this.mSecondTransitionListener);
                SharedElementPlayerCoordinator.this.onSecondActivityTransitionEnded();
            } else if (SharedElementPlayerCoordinator.this.mFirstTransitionListener == null) {
                SharedElementPlayerCoordinator.this.mFirstTransitionListener = new FirstActivityTransitionListener();
                SharedElementPlayerCoordinator.this.mFirstActivity.getWindow().getSharedElementExitTransition().addListener(SharedElementPlayerCoordinator.this.mFirstTransitionListener);
            }
            if (SharedElementPlayerCoordinator.this.mSecondActivity != null) {
                SharedElementPlayerCoordinator.log("onTransitionEnd activity=" + SharedElementPlayerCoordinator.this.mSecondActivity.getClass().getSimpleName());
            }
        }

        @Override
        public void onTransitionStart(Transition transition) {
            if (SharedElementPlayerCoordinator.this.mIsReturning) {
                SharedElementPlayerCoordinator.this.onSecondActivityTransitionStarted();
            }
            if (SharedElementPlayerCoordinator.this.mSecondActivity != null) {
                SharedElementPlayerCoordinator.log("onTransitionStart activity=" + SharedElementPlayerCoordinator.this.mSecondActivity.getClass().getSimpleName());
            }
        }
    }

}

