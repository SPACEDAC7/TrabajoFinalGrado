/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.content.Intent
 *  android.os.Bundle
 */
package android.support.v4.content;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;

class ContextCompatJellybean {
    ContextCompatJellybean() {
    }

    public static void startActivities(Context context, Intent[] arrintent, Bundle bundle) {
        context.startActivities(arrintent, bundle);
    }
}

