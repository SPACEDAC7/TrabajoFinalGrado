/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.os.Build
 *  android.os.Build$VERSION
 *  android.util.AttributeSet
 *  android.view.View
 */
package android.support.v4.app;

import android.content.Context;
import android.os.Build;
import android.support.v4.app.BaseFragmentActivityGingerbread;
import android.util.AttributeSet;
import android.view.View;

abstract class BaseFragmentActivityHoneycomb
extends BaseFragmentActivityGingerbread {
    BaseFragmentActivityHoneycomb() {
    }

    public View onCreateView(View view, String string2, Context context, AttributeSet attributeSet) {
        View view2;
        View view3 = view2 = this.dispatchFragmentsOnCreateView(view, string2, context, attributeSet);
        if (view2 == null) {
            view3 = view2;
            if (Build.VERSION.SDK_INT >= 11) {
                view3 = super.onCreateView(view, string2, context, attributeSet);
            }
        }
        return view3;
    }
}

