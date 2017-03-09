/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Intent
 *  android.content.IntentSender
 *  android.content.IntentSender$SendIntentException
 *  android.os.Bundle
 */
package android.support.v4.app;

import android.content.Intent;
import android.content.IntentSender;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.v4.app.BaseFragmentActivityHoneycomb;

abstract class BaseFragmentActivityJB
extends BaseFragmentActivityHoneycomb {
    boolean mStartedActivityFromFragment;

    BaseFragmentActivityJB() {
    }

    public void startActivityForResult(Intent intent, int n2, @Nullable Bundle bundle) {
        if (!this.mStartedActivityFromFragment && n2 != -1) {
            BaseFragmentActivityJB.checkForValidRequestCode(n2);
        }
        super.startActivityForResult(intent, n2, bundle);
    }

    public void startIntentSenderForResult(IntentSender intentSender, int n2, @Nullable Intent intent, int n3, int n4, int n5, Bundle bundle) throws IntentSender.SendIntentException {
        if (!this.mStartedIntentSenderFromFragment && n2 != -1) {
            BaseFragmentActivityJB.checkForValidRequestCode(n2);
        }
        super.startIntentSenderForResult(intentSender, n2, intent, n3, n4, n5, bundle);
    }
}

