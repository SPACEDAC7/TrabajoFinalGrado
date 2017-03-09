/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.os.Bundle
 *  com.google.android.maps.MapActivity
 */
package com.comscore.instrumentation;

import android.content.Context;
import android.os.Bundle;
import com.comscore.analytics.comScore;
import com.google.android.maps.MapActivity;

public class InstrumentedMapActivity
extends MapActivity {
    protected boolean isRouteDisplayed() {
        return false;
    }

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

