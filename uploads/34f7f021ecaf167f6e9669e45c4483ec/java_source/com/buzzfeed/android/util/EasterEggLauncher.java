/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.app.Activity
 *  android.content.Context
 *  android.content.Intent
 *  android.content.res.Resources
 *  android.widget.Toast
 */
package com.buzzfeed.android.util;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.widget.Toast;
import com.buzzfeed.android.activity.BuzzCatActivity;

public class EasterEggLauncher {
    private Activity mActivity;
    private String[] mEasterEggPhrases;
    private Toast mEasterEggToast;
    private int mLogoClickCount = 0;

    public EasterEggLauncher(Activity activity) {
        this.mActivity = activity;
        this.mEasterEggPhrases = activity.getResources().getStringArray(2131492870);
    }

    public boolean easterEggClicked() {
        if (this.mEasterEggToast != null) {
            this.mEasterEggToast.cancel();
        }
        if (this.mLogoClickCount >= this.mEasterEggPhrases.length) {
            this.mLogoClickCount = 0;
            this.mActivity.startActivity(new Intent((Context)this.mActivity, (Class)BuzzCatActivity.class));
            return true;
        }
        String string2 = this.mEasterEggPhrases[this.mLogoClickCount];
        this.mEasterEggToast = Toast.makeText((Context)this.mActivity, (CharSequence)string2, (int)0);
        this.mEasterEggToast.show();
        ++this.mLogoClickCount;
        return false;
    }
}

