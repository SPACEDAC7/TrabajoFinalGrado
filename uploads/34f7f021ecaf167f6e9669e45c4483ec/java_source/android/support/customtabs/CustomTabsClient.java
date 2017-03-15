/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.ComponentName
 *  android.content.Context
 *  android.content.Intent
 *  android.content.ServiceConnection
 *  android.content.pm.ActivityInfo
 *  android.content.pm.PackageManager
 *  android.content.pm.ResolveInfo
 *  android.net.Uri
 *  android.os.Bundle
 *  android.os.RemoteException
 *  android.text.TextUtils
 */
package android.support.customtabs;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.os.Bundle;
import android.os.RemoteException;
import android.support.annotation.Nullable;
import android.support.annotation.RestrictTo;
import android.support.customtabs.CustomTabsCallback;
import android.support.customtabs.CustomTabsServiceConnection;
import android.support.customtabs.CustomTabsSession;
import android.support.customtabs.ICustomTabsCallback;
import android.support.customtabs.ICustomTabsService;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;

public class CustomTabsClient {
    private final ICustomTabsService mService;
    private final ComponentName mServiceComponentName;

    @RestrictTo(value={RestrictTo.Scope.GROUP_ID})
    CustomTabsClient(ICustomTabsService iCustomTabsService, ComponentName componentName) {
        this.mService = iCustomTabsService;
        this.mServiceComponentName = componentName;
    }

    public static boolean bindCustomTabsService(Context context, String string2, CustomTabsServiceConnection customTabsServiceConnection) {
        Intent intent = new Intent("android.support.customtabs.action.CustomTabsService");
        if (!TextUtils.isEmpty((CharSequence)string2)) {
            intent.setPackage(string2);
        }
        return context.bindService(intent, (ServiceConnection)customTabsServiceConnection, 33);
    }

    public static boolean connectAndInitialize(final Context context, String string2) {
        if (string2 == null) {
            return false;
        }
        context = context.getApplicationContext();
        CustomTabsServiceConnection customTabsServiceConnection = new CustomTabsServiceConnection(){

            @Override
            public final void onCustomTabsServiceConnected(ComponentName componentName, CustomTabsClient customTabsClient) {
                customTabsClient.warmup(0);
                context.unbindService((ServiceConnection)this);
            }

            public final void onServiceDisconnected(ComponentName componentName) {
            }
        };
        try {
            boolean bl = CustomTabsClient.bindCustomTabsService(context, string2, customTabsServiceConnection);
            return bl;
        }
        catch (SecurityException var0_1) {
            return false;
        }
    }

    public static String getPackageName(Context context, @Nullable List<String> list) {
        return CustomTabsClient.getPackageName(context, list, false);
    }

    /*
     * Enabled aggressive block sorting
     */
    public static String getPackageName(Context intent, @Nullable List<String> intent2, boolean bl) {
        void var3_8;
        String string2;
        PackageManager packageManager = intent.getPackageManager();
        intent = intent2 == null ? new Intent() : intent2;
        Object object = new Intent("android.intent.action.VIEW", Uri.parse((String)"http://"));
        Intent intent3 = intent;
        if (!bl) {
            object = packageManager.resolveActivity((Intent)object, 0);
            Intent intent4 = intent;
            if (object != null) {
                object = object.activityInfo.packageName;
                ArrayList<Object> arrayList = new ArrayList<Object>(intent.size() + 1);
                arrayList.add(object);
                if (intent2 != null) {
                    arrayList.addAll((Collection<Object>)intent2);
                }
            }
        }
        intent = new Intent("android.support.customtabs.action.CustomTabsService");
        intent2 = var3_8.iterator();
        do {
            if (!intent2.hasNext()) {
                return null;
            }
            string2 = (String)intent2.next();
            intent.setPackage(string2);
        } while (packageManager.resolveService(intent, 0) == null);
        return string2;
    }

    public Bundle extraCommand(String string2, Bundle bundle) {
        try {
            string2 = this.mService.extraCommand(string2, bundle);
            return string2;
        }
        catch (RemoteException var1_2) {
            return null;
        }
    }

    public CustomTabsSession newSession(CustomTabsCallback object) {
        object = new ICustomTabsCallback.Stub((CustomTabsCallback)object){
            final /* synthetic */ CustomTabsCallback val$callback;

            @Override
            public void extraCallback(String string2, Bundle bundle) throws RemoteException {
                if (this.val$callback != null) {
                    this.val$callback.extraCallback(string2, bundle);
                }
            }

            @Override
            public void onNavigationEvent(int n2, Bundle bundle) {
                if (this.val$callback != null) {
                    this.val$callback.onNavigationEvent(n2, bundle);
                }
            }
        };
        try {
            boolean bl = this.mService.newSession((ICustomTabsCallback)object);
            if (!bl) {
                return null;
            }
        }
        catch (RemoteException var1_2) {
            return null;
        }
        return new CustomTabsSession(this.mService, (ICustomTabsCallback)object, this.mServiceComponentName);
    }

    public boolean warmup(long l2) {
        try {
            boolean bl = this.mService.warmup(l2);
            return bl;
        }
        catch (RemoteException var3_3) {
            return false;
        }
    }

}

