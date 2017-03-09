/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Intent
 *  android.os.Bundle
 */
package com.buzzfeed.toolkit.util;

import android.content.Intent;
import android.os.Bundle;

public class IntentUtils {
    /*
     * Enabled aggressive block sorting
     */
    public static Bundle createBundleFromIntent(Intent intent) {
        Bundle bundle = new Bundle();
        if (intent == null || intent.getExtras() == null) {
            return bundle;
        }
        bundle.putAll(intent.getExtras());
        return bundle;
    }
}

