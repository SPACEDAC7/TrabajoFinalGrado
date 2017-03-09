/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.app.Activity
 *  android.content.Context
 *  android.content.Intent
 *  android.content.IntentSender
 *  android.content.IntentSender$SendIntentException
 *  android.os.Build
 *  android.os.Build$VERSION
 *  android.os.Bundle
 *  android.util.AttributeSet
 *  android.view.LayoutInflater
 *  android.view.LayoutInflater$Factory
 *  android.view.View
 */
package android.support.v4.app;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.IntentSender;
import android.os.Build;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;

abstract class BaseFragmentActivityGingerbread
extends Activity {
    boolean mStartedIntentSenderFromFragment;

    BaseFragmentActivityGingerbread() {
    }

    static void checkForValidRequestCode(int n2) {
        if ((-65536 & n2) != 0) {
            throw new IllegalArgumentException("Can only use lower 16 bits for requestCode");
        }
    }

    abstract View dispatchFragmentsOnCreateView(View var1, String var2, Context var3, AttributeSet var4);

    protected void onCreate(Bundle bundle) {
        if (Build.VERSION.SDK_INT < 11 && this.getLayoutInflater().getFactory() == null) {
            this.getLayoutInflater().setFactory((LayoutInflater.Factory)this);
        }
        super.onCreate(bundle);
    }

    public View onCreateView(String string2, Context context, AttributeSet attributeSet) {
        View view;
        View view2 = view = this.dispatchFragmentsOnCreateView(null, string2, context, attributeSet);
        if (view == null) {
            view2 = super.onCreateView(string2, context, attributeSet);
        }
        return view2;
    }

    public void startIntentSenderForResult(IntentSender intentSender, int n2, @Nullable Intent intent, int n3, int n4, int n5) throws IntentSender.SendIntentException {
        if (!this.mStartedIntentSenderFromFragment && n2 != -1) {
            BaseFragmentActivityGingerbread.checkForValidRequestCode(n2);
        }
        super.startIntentSenderForResult(intentSender, n2, intent, n3, n4, n5);
    }
}

