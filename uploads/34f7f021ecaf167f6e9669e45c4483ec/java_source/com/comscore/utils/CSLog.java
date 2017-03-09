/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.util.Log
 */
package com.comscore.utils;

import android.util.Log;
import com.comscore.utils.Constants;

public class CSLog {
    public static void d(Class<? extends Object> class_, String string2) {
        if (Constants.DEBUG) {
            Log.d((String)class_.getSimpleName(), (String)string2);
        }
    }

    public static void d(Object object, String string2) {
        if (Constants.DEBUG) {
            CSLog.d(object.getClass(), string2);
        }
    }

    public static void e(Class<? extends Object> class_, String string2) {
        if (Constants.DEBUG) {
            Log.e((String)class_.getSimpleName(), (String)string2);
        }
    }

    public static void e(Object object, String string2) {
        if (Constants.DEBUG) {
            CSLog.e(object.getClass(), string2);
        }
    }

    public static void printStackTrace(Exception exception) {
        if (Constants.DEBUG) {
            exception.printStackTrace();
        }
    }

    public static void v(Class<? extends Object> class_, String string2) {
        if (Constants.DEBUG) {
            Log.v((String)class_.getSimpleName(), (String)string2);
        }
    }

    public static void v(Object object, String string2) {
        if (Constants.DEBUG) {
            CSLog.v(object.getClass(), string2);
        }
    }
}

