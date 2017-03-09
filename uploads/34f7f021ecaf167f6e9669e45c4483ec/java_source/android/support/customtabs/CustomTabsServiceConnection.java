/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.ComponentName
 *  android.content.ServiceConnection
 *  android.os.IBinder
 */
package android.support.customtabs;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.support.customtabs.CustomTabsClient;
import android.support.customtabs.ICustomTabsService;

public abstract class CustomTabsServiceConnection
implements ServiceConnection {
    public abstract void onCustomTabsServiceConnected(ComponentName var1, CustomTabsClient var2);

    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        this.onCustomTabsServiceConnected(componentName, new CustomTabsClient(ICustomTabsService.Stub.asInterface(iBinder), componentName){});
    }

}

