/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.os.UserManager
 */
package android.support.v4.os;

import android.content.Context;
import android.os.UserManager;
import android.support.annotation.RestrictTo;

@RestrictTo(value={RestrictTo.Scope.GROUP_ID})
public class UserManagerCompatApi24 {
    public static boolean isUserUnlocked(Context context) {
        return ((UserManager)context.getSystemService((Class)UserManager.class)).isUserUnlocked();
    }
}

