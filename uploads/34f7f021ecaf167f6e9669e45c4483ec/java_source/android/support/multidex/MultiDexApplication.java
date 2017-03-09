/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.app.Application
 *  android.content.Context
 */
package android.support.multidex;

import android.app.Application;
import android.content.Context;
import android.support.multidex.MultiDex;

public class MultiDexApplication
extends Application {
    protected void attachBaseContext(Context context) {
        super.attachBaseContext(context);
        MultiDex.install((Context)this);
    }
}

