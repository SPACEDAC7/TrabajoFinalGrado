/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.app.TabActivity
 *  android.content.Context
 *  android.os.Bundle
 */
package com.comscore.instrumentation;

import android.app.TabActivity;
import android.content.Context;
import android.os.Bundle;
import com.comscore.analytics.comScore;

@Deprecated
public class InstrumentedTabActivity
extends TabActivity {
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        comScore.setAppContext(this.getApplicationContext());
    }

    protected void onPause() {
        super.onPause();
        comScore.onExitForeground();
    }

    protected void onResume() {
        super.onResume();
        comScore.getCore().setCurrentActivityName(this.getClass().getSimpleName());
        comScore.onEnterForeground();
    }
}

