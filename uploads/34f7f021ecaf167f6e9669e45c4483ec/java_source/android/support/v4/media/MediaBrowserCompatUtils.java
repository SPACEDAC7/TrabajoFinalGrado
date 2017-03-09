/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.os.Bundle
 */
package android.support.v4.media;

import android.os.Bundle;
import android.support.annotation.RestrictTo;

@RestrictTo(value={RestrictTo.Scope.GROUP_ID})
public class MediaBrowserCompatUtils {
    /*
     * Enabled aggressive block sorting
     */
    public static boolean areSameOptions(Bundle bundle, Bundle bundle2) {
        if (bundle == bundle2) return true;
        if (bundle == null) {
            if (bundle2.getInt("android.media.browse.extra.PAGE", -1) == -1 && bundle2.getInt("android.media.browse.extra.PAGE_SIZE", -1) == -1) return true;
            return false;
        }
        if (bundle2 == null) {
            if (bundle.getInt("android.media.browse.extra.PAGE", -1) == -1 && bundle.getInt("android.media.browse.extra.PAGE_SIZE", -1) == -1) return true;
            return false;
        }
        if (bundle.getInt("android.media.browse.extra.PAGE", -1) != bundle2.getInt("android.media.browse.extra.PAGE", -1) || bundle.getInt("android.media.browse.extra.PAGE_SIZE", -1) != bundle2.getInt("android.media.browse.extra.PAGE_SIZE", -1)) return false;
        return true;
    }

    /*
     * Enabled aggressive block sorting
     */
    public static boolean hasDuplicatedItems(Bundle bundle, Bundle bundle2) {
        int n2;
        int n3 = bundle == null ? -1 : bundle.getInt("android.media.browse.extra.PAGE", -1);
        int n4 = bundle2 == null ? -1 : bundle2.getInt("android.media.browse.extra.PAGE", -1);
        int n5 = bundle == null ? -1 : bundle.getInt("android.media.browse.extra.PAGE_SIZE", -1);
        int n6 = bundle2 == null ? -1 : bundle2.getInt("android.media.browse.extra.PAGE_SIZE", -1);
        if (n3 == -1 || n5 == -1) {
            n5 = 0;
            n3 = Integer.MAX_VALUE;
        } else {
            n2 = n5 * n3;
            n3 = n2 + n5 - 1;
            n5 = n2;
        }
        if (n4 == -1 || n6 == -1) {
            n6 = 0;
            n4 = Integer.MAX_VALUE;
        } else {
            n2 = n6 * n4;
            n4 = n2 + n6 - 1;
            n6 = n2;
        }
        if (n5 <= n6 && n6 <= n3 || n5 <= n4 && n4 <= n3) {
            return true;
        }
        return false;
    }
}

