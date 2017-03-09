/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.app.Activity
 *  android.content.Intent
 *  android.content.IntentSender
 *  android.content.IntentSender$SendIntentException
 *  android.os.Bundle
 */
package android.support.v4.app;

import android.app.Activity;
import android.content.Intent;
import android.content.IntentSender;
import android.os.Bundle;

class ActivityCompatJB {
    ActivityCompatJB() {
    }

    public static void finishAffinity(Activity activity) {
        activity.finishAffinity();
    }

    public static void startActivityForResult(Activity activity, Intent intent, int n2, Bundle bundle) {
        activity.startActivityForResult(intent, n2, bundle);
    }

    public static void startIntentSenderForResult(Activity activity, IntentSender intentSender, int n2, Intent intent, int n3, int n4, int n5, Bundle bundle) throws IntentSender.SendIntentException {
        activity.startIntentSenderForResult(intentSender, n2, intent, n3, n4, n5, bundle);
    }
}

