/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.util.AttributeSet
 *  android.view.View
 *  android.view.Window
 */
package android.support.v7.app;

import android.content.Context;
import android.support.v7.app.AppCompatCallback;
import android.support.v7.app.AppCompatDelegateImplV9;
import android.util.AttributeSet;
import android.view.View;
import android.view.Window;

class AppCompatDelegateImplV11
extends AppCompatDelegateImplV9 {
    AppCompatDelegateImplV11(Context context, Window window, AppCompatCallback appCompatCallback) {
        super(context, window, appCompatCallback);
    }

    @Override
    View callActivityOnCreateView(View view, String string2, Context context, AttributeSet attributeSet) {
        return null;
    }
}

