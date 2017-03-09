/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.app.AppOpsManager
 *  android.content.Context
 *  android.content.pm.ApplicationInfo
 */
package android.support.v4.app;

import android.app.AppOpsManager;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

class NotificationManagerCompatKitKat {
    private static final String CHECK_OP_NO_THROW = "checkOpNoThrow";
    private static final String OP_POST_NOTIFICATION = "OP_POST_NOTIFICATION";

    NotificationManagerCompatKitKat() {
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public static boolean areNotificationsEnabled(Context object) {
        AppOpsManager appOpsManager = (AppOpsManager)object.getSystemService("appops");
        Object object2 = object.getApplicationInfo();
        object = object.getApplicationContext().getPackageName();
        int n2 = object2.uid;
        try {
            object2 = Class.forName(AppOpsManager.class.getName());
            n2 = (Integer)object2.getMethod("checkOpNoThrow", Integer.TYPE, Integer.TYPE, String.class).invoke((Object)appOpsManager, (int)((Integer)object2.getDeclaredField("OP_POST_NOTIFICATION").get(Integer.class)), n2, object);
            if (n2 != 0) return false;
            return true;
        }
        catch (ClassNotFoundException var0_1) {
            do {
                return true;
                break;
            } while (true);
        }
        catch (RuntimeException var0_2) {
            return true;
        }
        catch (NoSuchFieldException var0_3) {
            return true;
        }
        catch (IllegalAccessException var0_4) {
            return true;
        }
        catch (NoSuchMethodException var0_5) {
            return true;
        }
        catch (InvocationTargetException var0_6) {
            return true;
        }
    }
}

