/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Intent
 *  android.os.Bundle
 *  android.os.IBinder
 *  android.os.RemoteException
 *  android.util.Log
 */
package android.support.customtabs;

import android.content.Intent;
import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import android.support.customtabs.CustomTabsCallback;
import android.support.customtabs.ICustomTabsCallback;
import android.support.v4.app.BundleCompat;
import android.util.Log;

public class CustomTabsSessionToken {
    private static final String TAG = "CustomTabsSessionToken";
    private final CustomTabsCallback mCallback;
    private final ICustomTabsCallback mCallbackBinder;

    CustomTabsSessionToken(ICustomTabsCallback iCustomTabsCallback) {
        this.mCallbackBinder = iCustomTabsCallback;
        this.mCallback = new CustomTabsCallback(){

            @Override
            public void onNavigationEvent(int n2, Bundle bundle) {
                try {
                    CustomTabsSessionToken.this.mCallbackBinder.onNavigationEvent(n2, bundle);
                    return;
                }
                catch (RemoteException var2_3) {
                    Log.e((String)"CustomTabsSessionToken", (String)"RemoteException during ICustomTabsCallback transaction");
                    return;
                }
            }
        };
    }

    public static CustomTabsSessionToken getSessionTokenFromIntent(Intent intent) {
        if ((intent = BundleCompat.getBinder(intent.getExtras(), "android.support.customtabs.extra.SESSION")) == null) {
            return null;
        }
        return new CustomTabsSessionToken(ICustomTabsCallback.Stub.asInterface((IBinder)intent));
    }

    public boolean equals(Object object) {
        if (!(object instanceof CustomTabsSessionToken)) {
            return false;
        }
        return ((CustomTabsSessionToken)object).getCallbackBinder().equals((Object)this.mCallbackBinder.asBinder());
    }

    public CustomTabsCallback getCallback() {
        return this.mCallback;
    }

    IBinder getCallbackBinder() {
        return this.mCallbackBinder.asBinder();
    }

    public int hashCode() {
        return this.getCallbackBinder().hashCode();
    }

}

