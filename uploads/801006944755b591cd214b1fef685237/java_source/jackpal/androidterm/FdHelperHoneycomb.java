/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.annotation.TargetApi
 *  android.os.ParcelFileDescriptor
 */
package jackpal.androidterm;

import android.annotation.TargetApi;
import android.os.ParcelFileDescriptor;

@TargetApi(value=12)
class FdHelperHoneycomb {
    FdHelperHoneycomb() {
    }

    static int getFd(ParcelFileDescriptor parcelFileDescriptor) {
        return parcelFileDescriptor.getFd();
    }
}

