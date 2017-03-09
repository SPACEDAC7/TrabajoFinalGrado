/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.net.Uri
 */
package bolts;

import android.net.Uri;
import bolts.AppLink;
import bolts.Task;

public interface AppLinkResolver {
    public Task<AppLink> getAppLinkFromUrlInBackground(Uri var1);
}

