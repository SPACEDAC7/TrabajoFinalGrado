/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.annotation.TargetApi
 *  android.app.Activity
 *  android.app.ActivityOptions
 *  android.app.Application
 *  android.app.Application$ActivityLifecycleCallbacks
 *  android.content.ComponentName
 *  android.content.Intent
 *  android.os.Build
 *  android.os.Build$VERSION
 *  android.os.Bundle
 *  android.view.View
 */
package com.buzzfeed.android.vcr.view;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.ActivityOptions;
import android.app.Application;
import android.content.ComponentName;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.view.View;
import com.buzzfeed.android.vcr.player.VCRSharedSurfaceTexturePresenter;
import com.buzzfeed.android.vcr.view.SharedElementPlayerCoordinator;
import com.buzzfeed.android.vcr.view.SurfaceTextureLayout;

public class TransitionCoordinator {
    private static TransitionCoordinator sInstance;

    private TransitionCoordinator() {
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public static TransitionCoordinator getInstance() {
        if (sInstance == null) {
            synchronized (TransitionCoordinator.class) {
                if (sInstance == null) {
                    sInstance = new TransitionCoordinator();
                }
            }
        }
        return sInstance;
    }

    @TargetApi(value=21)
    private Bundle makeSceneTransitionAnimation(Activity activity) {
        SharedPlayerHost sharedPlayerHost = (SharedPlayerHost)activity;
        View view = sharedPlayerHost.getSharedElementView();
        if (view == null) {
            throw new NullPointerException("Shared element for " + activity.getClass().getSimpleName() + " must not be null");
        }
        view.setTransitionName(SharedElementPlayerCoordinator.PLAYER_TRANSITION_NAME);
        SharedElementPlayerCoordinator sharedElementPlayerCoordinator = new SharedElementPlayerCoordinator(activity);
        sharedElementPlayerCoordinator.onSharedPlayerOwnershipLoss(sharedPlayerHost);
        activity.getApplication().registerActivityLifecycleCallbacks((Application.ActivityLifecycleCallbacks)sharedElementPlayerCoordinator);
        return ActivityOptions.makeSceneTransitionAnimation((Activity)activity, (View)view, (String)view.getTransitionName()).toBundle();
    }

    private Bundle setupPlayerTransitionAndMakeBundle(Activity activity, Intent class_) {
        if (activity == null) {
            throw new NullPointerException("Activity must not be null");
        }
        if (class_ == null) {
            throw new NullPointerException("Intent must not be null");
        }
        if (Build.VERSION.SDK_INT < 21) {
            return null;
        }
        if (!(activity instanceof SharedPlayerHost)) {
            throw new RuntimeException(activity.getClass().getSimpleName() + " must implement " + SharedPlayerHost.class.getSimpleName());
        }
        class_ = class_.getComponent().getClassName();
        try {
            class_ = Class.forName((String)((Object)class_));
            if (!SharedPlayerHost.class.isAssignableFrom(class_)) {
                throw new RuntimeException(class_.getSimpleName() + " must implement " + SharedPlayerHost.class.getSimpleName());
            }
        }
        catch (ClassNotFoundException var1_2) {
            throw new IllegalArgumentException("Invalid intent");
        }
        return this.makeSceneTransitionAnimation(activity);
    }

    public void startPlayerTransition(Activity activity, Intent intent) {
        activity.startActivity(intent, this.setupPlayerTransitionAndMakeBundle(activity, intent));
    }

    public void startPlayerTransitionForResult(Activity activity, Intent intent, int n2) {
        activity.startActivityForResult(intent, n2, this.setupPlayerTransitionAndMakeBundle(activity, intent));
    }

    public static interface SharedPlayerHost {
        public View getSharedElementView();

        public VCRSharedSurfaceTexturePresenter getSharedSurfaceTexturePresenter();

        public SurfaceTextureLayout getSurfaceTextureLayout();

        public void onSharedPresenterOwnershipGained(VCRSharedSurfaceTexturePresenter var1);

        public void onSharedPresenterOwnershipLoss(VCRSharedSurfaceTexturePresenter var1);
    }

}

