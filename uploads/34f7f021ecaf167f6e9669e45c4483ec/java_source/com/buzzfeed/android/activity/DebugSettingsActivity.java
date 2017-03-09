/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.app.Activity
 *  android.app.Fragment
 *  android.app.FragmentManager
 *  android.app.FragmentTransaction
 *  android.content.Context
 *  android.content.Intent
 *  android.os.Bundle
 *  android.view.KeyEvent
 *  android.view.View
 *  android.view.View$OnClickListener
 *  android.widget.TextView
 */
package com.buzzfeed.android.activity;

import android.app.Activity;
import android.app.Fragment;
import android.app.FragmentManager;
import android.app.FragmentTransaction;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.v7.app.ActionBar;
import android.support.v7.widget.Toolbar;
import android.view.KeyEvent;
import android.view.View;
import android.widget.TextView;
import com.buzzfeed.android.activity.BaseActivity;
import com.buzzfeed.android.ui.debugsettings.DebugSettingsFragment;

public class DebugSettingsActivity
extends BaseActivity {
    private static final String PREFERENCE_FRAGMENT_TAG;
    private static final String TAG;
    private static final String TITLE = "Debug Settings";
    private DebugSettingsFragment mDebugSettingsFragment;

    static {
        TAG = DebugSettingsActivity.class.getSimpleName();
        PREFERENCE_FRAGMENT_TAG = TAG + ".PREFERENCE_FRAGMENT_TAG";
    }

    public static void startIntent(Activity activity) {
        activity.startActivity(new Intent((Context)activity, (Class)DebugSettingsActivity.class));
    }

    @Override
    protected void configureToolbar(@NonNull Toolbar toolbar) {
        super.configureToolbar(toolbar);
        this.getSupportActionBar().setDisplayShowTitleEnabled(false);
        this.getSupportActionBar().setDisplayShowCustomEnabled(true);
        this.getSupportActionBar().setCustomView(2130903068);
        ((TextView)this.getSupportActionBar().getCustomView().findViewById(2131820683)).setText((CharSequence)"Debug Settings");
    }

    @Override
    public void onBackPressed() {
        this.mDebugSettingsFragment.onBackPressed();
    }

    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.setContentView(2130903076);
        this.setToolBarAsUp(new View.OnClickListener(){

            public void onClick(View view) {
                DebugSettingsActivity.this.onBackPressed();
            }
        });
        FragmentManager fragmentManager = this.getFragmentManager();
        if (bundle != null) {
            this.mDebugSettingsFragment = (DebugSettingsFragment)fragmentManager.findFragmentByTag(PREFERENCE_FRAGMENT_TAG);
        }
        if (this.mDebugSettingsFragment == null) {
            this.mDebugSettingsFragment = new DebugSettingsFragment();
            fragmentManager.beginTransaction().replace(2131820706, (Fragment)this.mDebugSettingsFragment, PREFERENCE_FRAGMENT_TAG).commit();
        }
    }

    public boolean onKeyDown(int n2, KeyEvent keyEvent) {
        if (n2 == 4 && keyEvent.getRepeatCount() == 0) {
            this.mDebugSettingsFragment.onBackPressed();
        }
        return super.onKeyDown(n2, keyEvent);
    }

}

