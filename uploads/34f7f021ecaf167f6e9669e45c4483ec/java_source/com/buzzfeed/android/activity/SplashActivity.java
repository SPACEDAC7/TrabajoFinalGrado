/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.animation.Animator
 *  android.animation.Animator$AnimatorListener
 *  android.animation.AnimatorInflater
 *  android.animation.AnimatorSet
 *  android.animation.TimeInterpolator
 *  android.app.Activity
 *  android.app.ProgressDialog
 *  android.app.TaskStackBuilder
 *  android.content.Context
 *  android.content.Intent
 *  android.content.SharedPreferences
 *  android.content.SharedPreferences$Editor
 *  android.content.res.Resources
 *  android.net.Uri
 *  android.os.Handler
 *  android.text.TextUtils
 *  android.view.View
 *  android.view.animation.Animation
 *  android.view.animation.AnimationUtils
 *  android.view.animation.Interpolator
 *  android.widget.ImageView
 */
package com.buzzfeed.android.activity;

import android.animation.Animator;
import android.animation.AnimatorInflater;
import android.animation.AnimatorSet;
import android.animation.TimeInterpolator;
import android.app.Activity;
import android.app.ProgressDialog;
import android.app.TaskStackBuilder;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.res.Resources;
import android.net.Uri;
import android.os.Handler;
import android.text.TextUtils;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.view.animation.Interpolator;
import android.widget.ImageView;
import com.buzzfeed.analytics.client.DustbusterClient;
import com.buzzfeed.android.activity.BaseActivity;
import com.buzzfeed.android.activity.BuffetActivity;
import com.buzzfeed.android.activity.PagerActivity;
import com.buzzfeed.android.activity.ShowPageActivity;
import com.buzzfeed.android.activity.SpicyActivity;
import com.buzzfeed.android.data.EnvironmentConfig;
import com.buzzfeed.android.data.Feed;
import com.buzzfeed.android.experiment.SplashABTest;
import com.buzzfeed.android.navigation.FeedListProvider;
import com.buzzfeed.android.util.BuzzUtils;
import com.buzzfeed.android.util.chrometabs.CustomTabUtils;
import com.buzzfeed.toolkit.util.AnimatorListener;
import com.buzzfeed.toolkit.util.ApplicationStateCallbacks;
import com.google.android.gms.plus.PlusShare;
import java.io.Serializable;
import java.util.List;
import java.util.Locale;

public class SplashActivity
extends BaseActivity {
    private static final String KEY_BADGES = "badges";
    private static final String KEY_BUZZFEED = "buzzfeed";
    private static final String KEY_BUZZFEED_DOT_COM = "buzzfeed.com";
    private static final String KEY_DESTINATION = "destination";
    private static final String KEY_HOME = "home";
    private static final String KEY_HTTP = "http";
    private static final String KEY_HTTPS = "https";
    private static final String KEY_MESSAGE = "message";
    private static final String KEY_NOTIFICATION = "from_notification";
    private static final String KEY_NOTIFICATION_ID = "notification_id";
    private static final String KEY_SHOW_ID = "show_id";
    private static final String KEY_VALIDATE = "validate";
    private static final String KEY_VERTICAL = "vertical";
    private static final String KEY_VIDEO = "videos";
    public static final String KEY_WIDGET_LANG = "KEY_WIDGET_LANG";
    private static final int SPLASH_DISPLAY_LENGTH = 1215;
    private Handler mHandler;
    private ProgressDialog mProgressDialog;
    private Runnable mRunnable;

    private void dismissAndFinish() {
        if (this.mProgressDialog != null) {
            this.mProgressDialog.dismiss();
        }
        this.finish();
    }

    public static Intent getNotificationIntent(int n2, String string2, String string3) {
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.setFlags(268435456);
        intent.putExtra("from_notification", true);
        intent.putExtra("message", string3);
        intent.putExtra("destination", string2);
        intent.putExtra("notification_id", n2);
        intent.setData(Uri.parse((String)BuzzUtils.standardizeBuzzFeedUri(string2)));
        return intent;
    }

    public static Intent getShowNotificationIntent(int n2, String string2, String string3, String string4) {
        string2 = SplashActivity.getNotificationIntent(n2, string2, string3);
        string2.putExtra("show_id", string4);
        return string2;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private boolean handleDeepLink(Uri object, Intent intent) {
        String string2 = object.getScheme();
        String string3 = object.getAuthority();
        FeedListProvider feedListProvider = FeedListProvider.getInstance(EnvironmentConfig.getEdition((Context)this));
        if ("buzzfeed".equals(string2)) {
            if ("badges".equals(string3) || "vertical".equals(string3)) {
                if (feedListProvider.isBottomNavFeed((Feed)(object = feedListProvider.getFeedForVertical(object.getLastPathSegment())))) {
                    intent = new Intent((Context)this, (Class)PagerActivity.class);
                    intent.addFlags(268435456);
                    intent.addFlags(67108864);
                    intent.putExtra("KEY_FEED", (Serializable)object);
                    this.startActivity(intent);
                    do {
                        return true;
                        break;
                    } while (true);
                }
                BuffetActivity.startIntentWithFeedNewTask(this, (Feed)object);
                return true;
            }
            if ("home".equals(string3)) {
                PagerActivity.startIntent(this);
                return true;
            }
            if ("videos".equals(string3)) {
                ShowPageActivity.startIntent((Context)this, intent.getStringExtra("show_id"), null, null);
                return true;
            }
            SpicyActivity.startIntent(this, object.getPath(), null);
            return true;
        }
        if ("http".equals(string2) || "https".equals(string2)) {
            if (string3.contains("buzzfeed.com")) {
                if (object.getPathSegments().contains("validate")) {
                    CustomTabUtils.openChromeTab(this, object.toString());
                    return true;
                }
                SpicyActivity.startIntent(this, object.toString(), null);
                return true;
            }
            PagerActivity.startIntent(this);
            return true;
        }
        PagerActivity.startIntent(this);
        return true;
    }

    /*
     * Enabled aggressive block sorting
     */
    private void loadAndLaunchInitialIntent(Intent intent) {
        boolean bl = true;
        if (intent.hasExtra("KEY_WIDGET_FEED_NAME")) {
            this.startClickIntentFromWidget(intent.getStringExtra("KEY_WIDGET_FEED_NAME"), intent.getStringExtra("KEY_WIDGET_BUZZ_URL"), intent.getStringExtra("KEY_WIDGET_LANG"));
        } else if ("com.google.android.apps.plus.VIEW_DEEP_LINK".equals(intent.getAction())) {
            String string2 = PlusShare.getDeepLinkId(intent);
            if (string2 != null) {
                bl = this.handleDeepLink(Uri.parse((String)string2), intent);
            } else {
                PagerActivity.startIntent(this);
            }
        } else if ("android.intent.action.VIEW".equals(intent.getAction())) {
            boolean bl2;
            bl = bl2 = this.handleDeepLink(intent.getData(), intent);
            if (intent.getBooleanExtra("from_notification", false)) {
                DustbusterClient.getInstance().trackNotificationOpened(intent.getStringExtra("message"), intent.getStringExtra("destination"));
                bl = bl2;
            }
        } else {
            PagerActivity.startIntent(this);
        }
        if (bl) {
            this.finish();
        }
    }

    private void loadAndPlayAnimation() {
        AnimatorSet animatorSet = this.setUpAnimatorSet(2131820713, 2131034114);
        AnimatorSet animatorSet2 = this.setUpAnimatorSet(2131820712, 2131034113);
        animatorSet2.setInterpolator((TimeInterpolator)new BadgeBounceInterpolator());
        animatorSet2.addListener((Animator.AnimatorListener)new AnimatorListener((ImageView)this.findViewById(2131820712), AnimationUtils.loadAnimation((Context)this, (int)2130968606)){
            final /* synthetic */ ImageView val$badgeImageView;
            final /* synthetic */ Animation val$badgeOutAnimatorSet;

            @Override
            public void onAnimationEnd(Animator animator2) {
                this.val$badgeImageView.startAnimation(this.val$badgeOutAnimatorSet);
            }
        });
        animatorSet.start();
        animatorSet2.start();
    }

    private AnimatorSet setUpAnimatorSet(int n2, int n3) {
        ImageView imageView = (ImageView)this.findViewById(n2);
        imageView.clearAnimation();
        AnimatorSet animatorSet = (AnimatorSet)AnimatorInflater.loadAnimator((Context)this, (int)n3);
        animatorSet.setTarget((Object)imageView);
        return animatorSet;
    }

    private boolean shouldDisplaySplash() {
        boolean bl = false;
        SharedPreferences sharedPreferences = this.getPreferences(0);
        int n2 = Integer.valueOf(this.getResources().getString(2131296959));
        String string2 = this.getString(2131296923);
        boolean bl2 = bl;
        if (sharedPreferences.getInt(string2, n2) < 502002) {
            sharedPreferences = sharedPreferences.edit();
            sharedPreferences.putInt(string2, 502002);
            sharedPreferences.apply();
            bl2 = bl;
            if (!sIsFromBackground) {
                bl2 = bl;
                if (!SplashABTest.shouldNotUseSplash((Context)this)) {
                    bl2 = true;
                }
            }
        }
        return bl2;
    }

    private void startClickIntentFromWidget(String string2, String string3, String string4) {
        if (Locale.getDefault().getLanguage().equals(string4) && string2 != null && !TextUtils.isEmpty((CharSequence)string2) && !TextUtils.isEmpty((CharSequence)string3)) {
            SplashActivity.startIntentFromWidget(this, string2, string3);
            return;
        }
        string2 = new Intent("android.intent.action.VIEW", Uri.parse((String)EnvironmentConfig.getUrlWithSSLBaseUrl(string3)));
        string2.addFlags(268435456);
        string2.addFlags(67108864);
        string2.setAction("android.intent.action.VIEW");
        this.startActivity((Intent)string2);
    }

    /*
     * Enabled aggressive block sorting
     */
    public static void startIntentFromWidget(Activity activity, String object, String object2) {
        TaskStackBuilder taskStackBuilder = TaskStackBuilder.create((Context)activity);
        Intent intent = new Intent((Context)activity, (Class)SpicyActivity.class);
        intent.addFlags(268435456);
        intent.addFlags(67108864);
        intent.putExtra("KEY_URL", (String)object2);
        object2 = FeedListProvider.getInstance(EnvironmentConfig.getEdition((Context)activity));
        object = object2.getFeedForVertical(object.toLowerCase());
        intent.putExtra("KEY_FEED", (Serializable)object);
        if (object2.isBottomNavFeed((Feed)object)) {
            taskStackBuilder.addNextIntentWithParentStack(intent);
            taskStackBuilder.editIntentAt(0).putExtra("KEY_FEED", (Serializable)object);
        } else {
            taskStackBuilder.addParentStack((Class)BuffetActivity.class);
            activity = new Intent((Context)activity, (Class)BuffetActivity.class);
            activity.putExtra("KEY_FEED", (Serializable)object);
            taskStackBuilder.addNextIntent((Intent)activity);
        }
        taskStackBuilder.addNextIntent(intent).startActivities();
    }

    private void startSplashAnimation() {
        if (this.shouldDisplaySplash()) {
            this.setContentView(2130903079);
            this.loadAndPlayAnimation();
            this.mHandler = new Handler();
            this.mRunnable = new Runnable(){

                @Override
                public void run() {
                    SplashActivity.this.loadAndLaunchInitialIntent(SplashActivity.this.getIntent());
                    SplashActivity.this.overridePendingTransition(17432576, 17432577);
                }
            };
            this.mHandler.postDelayed(this.mRunnable, 1215);
            return;
        }
        this.loadAndLaunchInitialIntent(this.getIntent());
    }

    @Override
    protected void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        this.loadAndLaunchInitialIntent(intent);
    }

    @Override
    protected void onPause() {
        super.onPause();
        if (this.mHandler != null) {
            this.mHandler.removeCallbacks(this.mRunnable);
        }
    }

    @Override
    protected void onResume() {
        super.onResume();
        this.startSplashAnimation();
    }

    private class BadgeBounceInterpolator
    implements Interpolator {
        private double mFrequency;
        private double mMaxAmplitude;

        private BadgeBounceInterpolator() {
            this.mMaxAmplitude = 0.2;
            this.mFrequency = 2.0;
        }

        public float getInterpolation(float f2) {
            return (float)(-1.0 * Math.pow(2.718281828459045, (double)(- f2) / this.mMaxAmplitude) * Math.cos(this.mFrequency * (double)f2 * 2.0 * 3.141592653589793) + 1.0);
        }
    }

    public static class SplashActivityBackgroundCallback
    extends ApplicationStateCallbacks {
        private static boolean sIsFromBackground;

        @Override
        public void onApplicationEnterBackground() {
            sIsFromBackground = true;
        }

        @Override
        public void onApplicationEnterForeground() {
        }
    }

}

