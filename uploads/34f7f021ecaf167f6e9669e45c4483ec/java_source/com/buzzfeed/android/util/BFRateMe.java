/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.content.Intent
 *  android.content.SharedPreferences
 *  android.content.SharedPreferences$Editor
 *  android.net.Uri
 *  android.preference.PreferenceManager
 *  android.widget.Button
 */
package com.buzzfeed.android.util;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.net.Uri;
import android.preference.PreferenceManager;
import android.support.v4.app.FragmentManager;
import android.widget.Button;
import com.buzzfeed.analytics.client.BuzzFeedTracker;
import com.buzzfeed.android.activity.BaseActivity;
import com.buzzfeed.android.ui.dialog.BuzzDialogFragment;
import com.buzzfeed.android.util.BFRateMeUtils;
import com.buzzfeed.android.util.BuzzUtils;
import com.buzzfeed.toolkit.util.LogUtil;

public class BFRateMe
implements BuzzDialogFragment.BuzzDialogFragmentListener {
    public static final int HATE_OPTION = 6;
    public static final int HEART_OPTION = 5;
    private static final long MILLIS_IN_A_DAY = 57600000;
    public static final int RATE_ME_MAYBE = 4;
    private static final String TAG = BFRateMe.class.getSimpleName();
    private static BFRateMe instance;
    private boolean isDisabled = false;
    private BaseActivity mActivity;
    private SharedPreferences mPreferences;
    private BuzzFeedTracker mTracker;

    private BFRateMe(Context context) {
        this.mPreferences = PreferenceManager.getDefaultSharedPreferences((Context)context.getApplicationContext());
    }

    private void disableRateMeDialog() {
        String string2 = TAG + ".disableRateMeDialog";
        this.mPreferences.edit().putBoolean("rate_me_dont_show_again", true).apply();
        this.isDisabled = true;
        LogUtil.v(string2, "Disabled RateMe dialog");
    }

    public static BFRateMe getInstance(Context context) {
        if (instance == null) {
            instance = new BFRateMe(context);
        }
        return instance;
    }

    private void incrementDaysSinceLastPrompt() {
        long l2 = this.mPreferences.getLong("rate_me_time_of_days_app_used_since_last_prompt_increment", 0);
        if (System.currentTimeMillis() - l2 >= 57600000) {
            int n2 = this.mPreferences.getInt("rate_me_days_app_used_count", 0) + 1;
            int n3 = this.mPreferences.getInt("rate_me_days_app_used_since_last_prompt_count", 0) + 1;
            SharedPreferences.Editor editor = this.mPreferences.edit();
            editor.putInt("rate_me_days_app_used_count", n2);
            editor.putInt("rate_me_days_app_used_since_last_prompt_count", n3);
            editor.putLong("rate_me_time_of_days_app_used_since_last_prompt_increment", System.currentTimeMillis());
            editor.apply();
            LogUtil.v(TAG, "User has used the app for " + n2 + " days and " + n3 + " days since last prompt");
        }
    }

    private boolean isDisabled() {
        if (!this.isDisabled) {
            this.isDisabled = this.mPreferences.getBoolean("rate_me_dont_show_again", false);
            if (this.isDisabled) {
                LogUtil.d(TAG, "RateMe has been disabled, most user usage tracking will be skipped");
            }
        }
        return this.isDisabled;
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    public void buildDialogFragment(int var1_1) {
        var2_2 = null;
        BuzzDialogFragment.removeDialogFragment(this.mActivity);
        switch (var1_1) {
            case 4: {
                var2_2 = BuzzDialogFragment.newInstance(2131296477, true).setIcon(2130838009).setMessage(2131296480).setPositiveButton(2131296485);
                ** break;
            }
            case 5: {
                var2_2 = BuzzDialogFragment.newInstance(2131296487).setIcon(2130838009).setMessage(2131296486).setPositiveButton(2131296479).setExtraButton(2131296485).setNegativeButton(2131296478);
            }
lbl9: // 3 sources:
            default: {
                ** GOTO lbl13
            }
            case 6: 
        }
        var2_2 = BuzzDialogFragment.newInstance(2131296484).setIcon(2130837868).setMessage(2131296483).setPositiveButton(2131296481).setNegativeButton(2131296482);
lbl13: // 2 sources:
        if (var2_2 == null) return;
        var2_2.setReferenceId(var1_1).setListener(this).show(this.mActivity.getSupportFragmentManager(), "dialogFragmentTag");
    }

    public void forceShowRateMeDialog(BaseActivity baseActivity) {
        LogUtil.v(TAG + ".forceShowRateMeDialog", "Showing forced rating prompt");
        this.mActivity = baseActivity;
        this.mTracker = BuzzFeedTracker.getInstance();
        this.buildDialogFragment(4);
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    @Override
    public void onBuzzDialogClick(BuzzDialogFragment var1_1, Button var2_2) {
        var3_3 = var2_2.getId();
        var4_4 = var1_1.getReferenceId();
        if (var4_4 == 0) ** GOTO lbl50
        if (var4_4 != 4) ** GOTO lbl19
        switch (var3_3) {
            case 2131820754: {
                this.mTracker.trackEvent(this.mActivity.getString(2131296763), this.mActivity.getString(2131296722), "", 0);
                this.buildDialogFragment(5);
                ** break;
            }
            case 2131820756: {
                this.mTracker.trackEvent(this.mActivity.getString(2131296763), this.mActivity.getString(2131296721), "", 0);
                this.buildDialogFragment(6);
            }
lbl13: // 3 sources:
            default: {
                ** GOTO lbl50
            }
            case 2131820757: 
        }
        BFRateMe.getInstance((Context)this.mActivity).disableRateMeDialog();
        this.mTracker.trackEvent(this.mActivity.getString(2131296763), this.mActivity.getString(2131296705), "", 0);
        ** GOTO lbl50
lbl19: // 1 sources:
        if (var4_4 != 5) ** GOTO lbl38
        switch (var3_3) {
            default: {
                ** GOTO lbl50
            }
            case 2131820757: {
                var2_2 = new Intent("android.intent.action.VIEW", Uri.parse((String)BFRateMeUtils.getMarketUri((Context)this.mActivity)));
                var2_2.setFlags(268435456);
                this.mActivity.startActivity((Intent)var2_2);
                BFRateMe.getInstance((Context)this.mActivity).disableRateMeDialog();
                this.mTracker.trackEvent(this.mActivity.getString(2131296763) + "positive", this.mActivity.getString(2131296700), "", 0);
                ** GOTO lbl50
            }
            case 2131820759: {
                BFRateMe.getInstance((Context)this.mActivity).disableRateMeDialog();
                this.mTracker.trackEvent(this.mActivity.getString(2131296763) + "positive", this.mActivity.getString(2131296699), "", 0);
                ** GOTO lbl50
            }
            case 2131820758: 
        }
        this.mPreferences.edit().putLong("rate_me_time_of_last_prompt", System.currentTimeMillis()).apply();
        this.mTracker.trackEvent(this.mActivity.getString(2131296763) + "positive", this.mActivity.getString(2131296698), "", 0);
        ** GOTO lbl50
lbl38: // 1 sources:
        if (var4_4 == 6) {
            switch (var3_3) {
                default: {
                    break;
                }
                case 2131820757: {
                    BFRateMe.getInstance((Context)this.mActivity).disableRateMeDialog();
                    this.mTracker.trackEvent(this.mActivity.getString(2131296763) + "negative", this.mActivity.getString(2131296730), "", 0);
                    BuzzUtils.openFeedback(this.mActivity);
                    break;
                }
                case 2131820758: {
                    BFRateMe.getInstance((Context)this.mActivity).disableRateMeDialog();
                    this.mTracker.trackEvent(this.mActivity.getString(2131296763) + "negative", this.mActivity.getString(2131296699), "", 0);
                }
            }
        }
lbl50: // 12 sources:
        if (var1_1 == null) return;
        var1_1.dismiss();
    }

    public void onLaunch() {
        if (this.mPreferences.getLong("rate_me_time_of_first_launch", 0) == 0) {
            this.mPreferences.edit().putLong("rate_me_time_of_first_launch", System.currentTimeMillis()).apply();
            LogUtil.v(TAG, "Recorded the time of the first app launch");
        }
        if (!this.isDisabled()) {
            int n2 = this.mPreferences.getInt("rate_me_launch_count", 0) + 1;
            this.mPreferences.edit().putInt("rate_me_launch_count", n2).apply();
            LogUtil.v(TAG, "App has been launched " + n2 + " times");
            n2 = this.mPreferences.getInt("rate_me_launches_since_last_prompt_count", 0) + 1;
            this.mPreferences.edit().putInt("rate_me_launches_since_last_prompt_count", n2).apply();
            LogUtil.v(TAG, "App has been launched " + n2 + " times since last prompt");
            this.incrementDaysSinceLastPrompt();
        }
    }

    public static class Pref {
        public static final String DAYS_APP_USED_COUNT = "rate_me_days_app_used_count";
        public static final String DAYS_APP_USED_SINCE_LAST_PROMPT_COUNT = "rate_me_days_app_used_since_last_prompt_count";
        public static final String DONT_SHOW_AGAIN = "rate_me_dont_show_again";
        public static final String LAUNCHES_SINCE_LAST_PROMPT_COUNT = "rate_me_launches_since_last_prompt_count";
        public static final String LAUNCH_COUNT = "rate_me_launch_count";
        private static final String PREFIX = "rate_me_";
        public static final String TIME_OF_FIRST_LAUNCH = "rate_me_time_of_first_launch";
        public static final String TIME_OF_LAST_DAYS_APP_USED_INCREMENT = "rate_me_time_of_days_app_used_since_last_prompt_increment";
        public static final String TIME_OF_LAST_PROMPT = "rate_me_time_of_last_prompt";
    }

}

