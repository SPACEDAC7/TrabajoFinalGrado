/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.BroadcastReceiver
 *  android.content.Context
 *  android.content.Intent
 *  android.content.IntentFilter
 *  android.net.ConnectivityManager
 *  android.net.NetworkInfo
 *  android.os.Handler
 *  android.view.View
 *  android.view.View$OnClickListener
 */
package com.buzzfeed.android.activity;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Handler;
import android.support.annotation.LayoutRes;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v7.app.ActionBar;
import android.support.v7.app.AppCompatActivity;
import android.support.v7.widget.Toolbar;
import android.view.View;
import com.buzzfeed.analytics.util.ScreenshotDetector;
import com.buzzfeed.toolkit.util.UIUtil;
import uk.co.chrisjenx.calligraphy.CalligraphyContextWrapper;

public abstract class BaseActivity
extends AppCompatActivity {
    public static final IntentFilter INTENT_FILTER_NETWORK_CHANGE = new IntentFilter(){};
    private NetworkChangeReceiver mNetworkChangeReceiver;
    private ScreenshotDetector mScreenshotDetector;
    private Toolbar mToolbar;

    public BaseActivity() {
        this.mNetworkChangeReceiver = new NetworkChangeReceiver();
        this.mScreenshotDetector = new ScreenshotDetector((Context)this, new Handler());
    }

    protected void attachBaseContext(Context context) {
        super.attachBaseContext((Context)CalligraphyContextWrapper.wrap(context));
    }

    protected void configureToolbar(@NonNull Toolbar toolbar) {
        this.getSupportActionBar().setDisplayShowTitleEnabled(false);
        this.getSupportActionBar().setDisplayShowCustomEnabled(true);
        this.getSupportActionBar().setCustomView(2130903066);
    }

    @Nullable
    protected Toolbar getToolbar() {
        return this.mToolbar;
    }

    protected void onNetworkChange(@Nullable NetworkInfo networkInfo) {
    }

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

    @Override
    public void onStart() {
        super.onStart();
        this.registerReceiver((BroadcastReceiver)this.mNetworkChangeReceiver, INTENT_FILTER_NETWORK_CHANGE);
    }

    @Override
    public void onStop() {
        super.onStop();
        this.unregisterReceiver((BroadcastReceiver)this.mNetworkChangeReceiver);
    }

    @Override
    public void setContentView(@LayoutRes int n2) {
        super.setContentView(n2);
        this.setUpToolBar();
    }

    protected void setToolBarAsUp(View.OnClickListener onClickListener) {
        this.setUpToolBar();
        this.mToolbar.setNavigationIcon(2130837699);
        this.mToolbar.setNavigationOnClickListener(onClickListener);
    }

    protected void setUpToolBar() {
        if (this.mToolbar == null) {
            this.mToolbar = (Toolbar)((Object)UIUtil.findView(this, 2131820685));
            if (this.mToolbar != null) {
                this.setSupportActionBar(this.mToolbar);
                this.configureToolbar(this.mToolbar);
            }
        }
    }

    private class NetworkChangeReceiver
    extends BroadcastReceiver {
        private NetworkChangeReceiver() {
        }

        public void onReceive(Context context, Intent intent) {
            context = ((ConnectivityManager)context.getSystemService("connectivity")).getActiveNetworkInfo();
            BaseActivity.this.onNetworkChange((NetworkInfo)context);
        }
    }

}

