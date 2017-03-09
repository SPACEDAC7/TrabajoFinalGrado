/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.app.PendingIntent
 *  android.content.ComponentName
 *  android.graphics.Bitmap
 *  android.net.Uri
 *  android.os.Bundle
 *  android.os.IBinder
 *  android.os.Parcelable
 *  android.os.RemoteException
 *  android.widget.RemoteViews
 */
package android.support.customtabs;

import android.app.PendingIntent;
import android.content.ComponentName;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcelable;
import android.os.RemoteException;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.customtabs.ICustomTabsCallback;
import android.support.customtabs.ICustomTabsService;
import android.widget.RemoteViews;
import java.util.List;

public final class CustomTabsSession {
    private static final String TAG = "CustomTabsSession";
    private final ICustomTabsCallback mCallback;
    private final ComponentName mComponentName;
    private final ICustomTabsService mService;

    CustomTabsSession(ICustomTabsService iCustomTabsService, ICustomTabsCallback iCustomTabsCallback, ComponentName componentName) {
        this.mService = iCustomTabsService;
        this.mCallback = iCustomTabsCallback;
        this.mComponentName = componentName;
    }

    IBinder getBinder() {
        return this.mCallback.asBinder();
    }

    ComponentName getComponentName() {
        return this.mComponentName;
    }

    public boolean mayLaunchUrl(Uri uri, Bundle bundle, List<Bundle> list) {
        try {
            boolean bl = this.mService.mayLaunchUrl(this.mCallback, uri, bundle, list);
            return bl;
        }
        catch (RemoteException var1_2) {
            return false;
        }
    }

    public boolean setActionButton(@NonNull Bitmap bitmap, @NonNull String string2) {
        Bundle bundle = new Bundle();
        bundle.putParcelable("android.support.customtabs.customaction.ICON", (Parcelable)bitmap);
        bundle.putString("android.support.customtabs.customaction.DESCRIPTION", string2);
        bitmap = new Bundle();
        bitmap.putBundle("android.support.customtabs.extra.ACTION_BUTTON_BUNDLE", bundle);
        try {
            boolean bl = this.mService.updateVisuals(this.mCallback, (Bundle)bitmap);
            return bl;
        }
        catch (RemoteException var1_2) {
            return false;
        }
    }

    public boolean setSecondaryToolbarViews(@Nullable RemoteViews remoteViews, @Nullable int[] arrn, @Nullable PendingIntent pendingIntent) {
        Bundle bundle = new Bundle();
        bundle.putParcelable("android.support.customtabs.extra.EXTRA_REMOTEVIEWS", (Parcelable)remoteViews);
        bundle.putIntArray("android.support.customtabs.extra.EXTRA_REMOTEVIEWS_VIEW_IDS", arrn);
        bundle.putParcelable("android.support.customtabs.extra.EXTRA_REMOTEVIEWS_PENDINGINTENT", (Parcelable)pendingIntent);
        try {
            boolean bl = this.mService.updateVisuals(this.mCallback, bundle);
            return bl;
        }
        catch (RemoteException var1_2) {
            return false;
        }
    }

    @Deprecated
    public boolean setToolbarItem(int n2, @NonNull Bitmap bitmap, @NonNull String string2) {
        Bundle bundle = new Bundle();
        bundle.putInt("android.support.customtabs.customaction.ID", n2);
        bundle.putParcelable("android.support.customtabs.customaction.ICON", (Parcelable)bitmap);
        bundle.putString("android.support.customtabs.customaction.DESCRIPTION", string2);
        bitmap = new Bundle();
        bitmap.putBundle("android.support.customtabs.extra.ACTION_BUTTON_BUNDLE", bundle);
        try {
            boolean bl = this.mService.updateVisuals(this.mCallback, (Bundle)bitmap);
            return bl;
        }
        catch (RemoteException var2_3) {
            return false;
        }
    }
}

