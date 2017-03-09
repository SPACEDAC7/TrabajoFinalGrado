/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.annotation.TargetApi
 *  android.app.Activity
 */
package com.buzzfeed.android.vcr.util;

import android.annotation.TargetApi;
import android.app.Activity;
import com.buzzfeed.android.vcr.util.SystemUiHelper;
import com.buzzfeed.android.vcr.util.SystemUiHelperImplJB;

@TargetApi(value=19)
class SystemUiHelperImplKK
extends SystemUiHelperImplJB {
    SystemUiHelperImplKK(Activity activity, int n2, int n3, SystemUiHelper.OnVisibilityChangeListener onVisibilityChangeListener) {
        super(activity, n2, n3, onVisibilityChangeListener);
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    @Override
    protected int createHideFlags() {
        int n2;
        int n3 = n2 = super.createHideFlags();
        if (this.mLevel != 3) return n3;
        if ((this.mFlags & 2) != 0) {
            n3 = 4096;
            do {
                return n2 | n3;
                break;
            } while (true);
        }
        n3 = 2048;
        return n2 | n3;
    }
}

