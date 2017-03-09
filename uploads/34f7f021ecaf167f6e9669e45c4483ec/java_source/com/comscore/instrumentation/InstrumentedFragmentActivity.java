/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.os.Bundle
 */
package com.comscore.instrumentation;

import android.content.Context;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import com.comscore.analytics.comScore;

public class InstrumentedFragmentActivity
extends FragmentActivity {
    @Override
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        comScore.setAppContext(this.getApplicationContext());
    }

    @Override
    protected void onPause() {
        super.onPause();
        comScore.onExitForeground();
    }

    @Override
    protected void onResume() {
        super.onResume();
        comScore.getCore().setCurrentActivityName(this.getClass().getSimpleName());
        comScore.onEnterForeground();
    }
}

