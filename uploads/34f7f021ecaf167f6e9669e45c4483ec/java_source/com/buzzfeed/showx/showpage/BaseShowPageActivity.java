/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.app.Fragment
 *  android.app.FragmentManager
 *  android.app.FragmentTransaction
 *  android.content.Context
 *  android.content.Intent
 *  android.os.Bundle
 *  android.os.Handler
 *  android.text.TextUtils
 */
package com.buzzfeed.showx.showpage;

import android.app.Fragment;
import android.app.FragmentManager;
import android.app.FragmentTransaction;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v7.app.AppCompatActivity;
import android.text.TextUtils;
import com.buzzfeed.analytics.util.ScreenshotDetector;
import com.buzzfeed.showx.R;
import com.buzzfeed.showx.showpage.BaseShowPageFragment;
import com.buzzfeed.showx.showpage.ShowPagePresenter;
import com.buzzfeed.showx.showpage.data.loader.ShowPageLoader;
import com.buzzfeed.toolkit.util.LogUtil;
import uk.co.chrisjenx.calligraphy.CalligraphyContextWrapper;

public abstract class BaseShowPageActivity
extends AppCompatActivity {
    private static final String SHOWPAGE_FRAGMENT_TAG = "SHOWPAGE_FRAGMENT_TAG";
    private static final String TAG = LogUtil.makeLogTag(BaseShowPageActivity.class);
    private ScreenshotDetector mScreenshotDetector;
    protected BaseShowPageFragment mShowPageFragment;

    public BaseShowPageActivity() {
        this.mScreenshotDetector = new ScreenshotDetector((Context)this, new Handler());
    }

    protected void attachBaseContext(Context context) {
        super.attachBaseContext((Context)CalligraphyContextWrapper.wrap(context));
    }

    protected abstract boolean getUseShowSettingsActionForNetworkError();

    protected abstract String onBindShowId(@NonNull Intent var1);

    @Override
    protected void onCreate(@Nullable Bundle object) {
        String string2 = TAG + ".onCreate";
        super.onCreate((Bundle)object);
        this.setContentView(R.layout.activity_video_show);
        object = this.getIntent();
        String string3 = this.onBindShowId((Intent)object);
        if (TextUtils.isEmpty((CharSequence)string3)) {
            LogUtil.e(string2, "Show ID is required to start this Activity. Finishing...");
            this.finish();
            return;
        }
        this.mShowPageFragment = (BaseShowPageFragment)this.getFragmentManager().findFragmentByTag("SHOWPAGE_FRAGMENT_TAG");
        if (this.mShowPageFragment == null) {
            this.mShowPageFragment = this.onCreateShowPageFragment();
            this.getFragmentManager().beginTransaction().replace(R.id.rootContainer, (Fragment)this.mShowPageFragment, "SHOWPAGE_FRAGMENT_TAG").commit();
            this.getFragmentManager().executePendingTransactions();
        }
        object = new ShowPagePresenter((Context)this, object.getStringExtra("SELECTED_SHOW_COVER_URI"), this.onCreateShowPageLoader(string3), this.getUseShowSettingsActionForNetworkError());
        this.mShowPageFragment.setPresenter((ShowPagePresenter)object);
    }

    protected abstract BaseShowPageFragment onCreateShowPageFragment();

    @NonNull
    protected abstract ShowPageLoader onCreateShowPageLoader(@NonNull String var1);

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
}

