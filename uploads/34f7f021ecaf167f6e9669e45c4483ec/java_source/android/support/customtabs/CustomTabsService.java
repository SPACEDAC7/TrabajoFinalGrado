/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.app.Service
 *  android.content.Intent
 *  android.net.Uri
 *  android.os.Bundle
 *  android.os.IBinder
 *  android.os.IBinder$DeathRecipient
 *  android.os.RemoteException
 */
package android.support.customtabs;

import android.app.Service;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import android.support.customtabs.CustomTabsSessionToken;
import android.support.customtabs.ICustomTabsCallback;
import android.support.customtabs.ICustomTabsService;
import android.support.v4.util.ArrayMap;
import java.util.List;
import java.util.Map;
import java.util.NoSuchElementException;

public abstract class CustomTabsService
extends Service {
    public static final String ACTION_CUSTOM_TABS_CONNECTION = "android.support.customtabs.action.CustomTabsService";
    public static final String KEY_URL = "android.support.customtabs.otherurls.URL";
    private ICustomTabsService.Stub mBinder;
    private final Map<IBinder, IBinder.DeathRecipient> mDeathRecipientMap = new ArrayMap<IBinder, IBinder.DeathRecipient>();

    public CustomTabsService() {
        this.mBinder = new ICustomTabsService.Stub(){

            @Override
            public Bundle extraCommand(String string2, Bundle bundle) {
                return CustomTabsService.this.extraCommand(string2, bundle);
            }

            @Override
            public boolean mayLaunchUrl(ICustomTabsCallback iCustomTabsCallback, Uri uri, Bundle bundle, List<Bundle> list) {
                return CustomTabsService.this.mayLaunchUrl(new CustomTabsSessionToken(iCustomTabsCallback), uri, bundle, list);
            }

            /*
             * Enabled aggressive block sorting
             * Enabled unnecessary exception pruning
             * Enabled aggressive exception aggregation
             * Converted monitor instructions to comments
             * Lifted jumps to return sites
             */
            @Override
            public boolean newSession(ICustomTabsCallback iCustomTabsCallback) {
                IBinder.DeathRecipient deathRecipient;
                final CustomTabsSessionToken customTabsSessionToken = new CustomTabsSessionToken(iCustomTabsCallback);
                try {
                    deathRecipient = new IBinder.DeathRecipient(){

                        public void binderDied() {
                            CustomTabsService.this.cleanUpSession(customTabsSessionToken);
                        }
                    };
                    Map map = CustomTabsService.this.mDeathRecipientMap;
                    // MONITORENTER : map
                }
                catch (RemoteException var1_2) {
                    return false;
                }
                iCustomTabsCallback.asBinder().linkToDeath(deathRecipient, 0);
                CustomTabsService.this.mDeathRecipientMap.put(iCustomTabsCallback.asBinder(), deathRecipient);
                // MONITOREXIT : map
                return CustomTabsService.this.newSession(customTabsSessionToken);
            }

            @Override
            public boolean updateVisuals(ICustomTabsCallback iCustomTabsCallback, Bundle bundle) {
                return CustomTabsService.this.updateVisuals(new CustomTabsSessionToken(iCustomTabsCallback), bundle);
            }

            @Override
            public boolean warmup(long l2) {
                return CustomTabsService.this.warmup(l2);
            }

        };
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     * Converted monitor instructions to comments
     * Lifted jumps to return sites
     */
    protected boolean cleanUpSession(CustomTabsSessionToken customTabsSessionToken) {
        try {
            Map<IBinder, IBinder.DeathRecipient> map = this.mDeathRecipientMap;
            // MONITORENTER : map
        }
        catch (NoSuchElementException var1_2) {
            return false;
        }
        customTabsSessionToken = customTabsSessionToken.getCallbackBinder();
        customTabsSessionToken.unlinkToDeath(this.mDeathRecipientMap.get(customTabsSessionToken), 0);
        this.mDeathRecipientMap.remove(customTabsSessionToken);
        // MONITOREXIT : map
        return true;
    }

    protected abstract Bundle extraCommand(String var1, Bundle var2);

    protected abstract boolean mayLaunchUrl(CustomTabsSessionToken var1, Uri var2, Bundle var3, List<Bundle> var4);

    protected abstract boolean newSession(CustomTabsSessionToken var1);

    public IBinder onBind(Intent intent) {
        return this.mBinder;
    }

    protected abstract boolean updateVisuals(CustomTabsSessionToken var1, Bundle var2);

    protected abstract boolean warmup(long var1);

}

