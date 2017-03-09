/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.content.res.Configuration
 */
package com.adjust.sdk;

import android.content.Context;
import android.content.res.Configuration;
import com.adjust.sdk.Constants;
import com.adjust.sdk.plugin.Plugin;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.GenericDeclaration;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;

public class Reflection {
    public static Object createDefaultInstance(Class class_) {
        try {
            class_ = class_.newInstance();
            return class_;
        }
        catch (Throwable var0_1) {
            return null;
        }
    }

    public static Object createDefaultInstance(String string2) {
        return Reflection.createDefaultInstance(Reflection.forName(string2));
    }

    public static /* varargs */ Object createInstance(String string2, Class[] arrclass, Object ... arrobject) {
        try {
            string2 = Class.forName(string2).getConstructor(arrclass).newInstance(arrobject);
            return string2;
        }
        catch (Throwable var0_1) {
            return null;
        }
    }

    public static Class forName(String object) {
        try {
            object = Class.forName((String)object);
            return object;
        }
        catch (Throwable var0_1) {
            return null;
        }
    }

    private static Object getAdvertisingInfoObject(Context context) throws Exception {
        return Reflection.invokeStaticMethod("com.google.android.gms.ads.identifier.AdvertisingIdClient", "getAdvertisingIdInfo", new Class[]{Context.class}, new Object[]{context});
    }

    public static String getAndroidId(Context object) {
        try {
            object = (String)Reflection.invokeStaticMethod("com.adjust.sdk.plugin.AndroidIdUtil", "getAndroidId", new Class[]{Context.class}, object);
            return object;
        }
        catch (Throwable var0_1) {
            return null;
        }
    }

    public static String getCpuAbi() {
        try {
            String string2 = (String)Reflection.readField("android.os.Build", "CPU_ABI");
            return string2;
        }
        catch (Throwable var0_1) {
            return null;
        }
    }

    public static Locale getLocaleFromField(Configuration object) {
        try {
            object = (Locale)Reflection.readField("android.content.res.Configuration", "locale", object);
            return object;
        }
        catch (Throwable var0_1) {
            return null;
        }
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public static Locale getLocaleFromLocaleList(Configuration object) {
        block3 : {
            Object var1_2 = null;
            try {
                object = Reflection.invokeInstanceMethod(object, "getLocales", null, new Object[0]);
                if (object != null) break block3;
                return null;
            }
            catch (Throwable var0_1) {
                return var1_2;
            }
        }
        return (Locale)Reflection.invokeInstanceMethod(object, "get", new Class[]{Integer.TYPE}, 0);
    }

    public static String getMacAddress(Context object) {
        try {
            object = (String)Reflection.invokeStaticMethod("com.adjust.sdk.plugin.MacAddressUtil", "getMacAddress", new Class[]{Context.class}, object);
            return object;
        }
        catch (Throwable var0_1) {
            return null;
        }
    }

    public static String getPlayAdId(Context object) {
        try {
            object = (String)Reflection.invokeInstanceMethod(Reflection.getAdvertisingInfoObject((Context)object), "getId", null, new Object[0]);
            return object;
        }
        catch (Throwable var0_1) {
            return null;
        }
    }

    public static Map<String, String> getPluginKeys(Context object) {
        HashMap<String, String> hashMap = new HashMap<String, String>();
        Iterator<Plugin> iterator = Reflection.getPlugins().iterator();
        while (iterator.hasNext()) {
            Map.Entry<String, String> entry = iterator.next().getParameter((Context)object);
            if (entry == null) continue;
            hashMap.put(entry.getKey(), entry.getValue());
        }
        object = hashMap;
        if (hashMap.size() == 0) {
            object = null;
        }
        return object;
    }

    private static List<Plugin> getPlugins() {
        ArrayList<Plugin> arrayList = new ArrayList<Plugin>(Constants.PLUGINS.size());
        Iterator<String> iterator = Constants.PLUGINS.iterator();
        while (iterator.hasNext()) {
            Object object = Reflection.createDefaultInstance(iterator.next());
            if (object == null || !(object instanceof Plugin)) continue;
            arrayList.add((Plugin)object);
        }
        return arrayList;
    }

    public static String[] getSupportedAbis() {
        try {
            String[] arrstring = (String[])Reflection.readField("android.os.Build", "SUPPORTED_ABIS");
            return arrstring;
        }
        catch (Throwable var0_1) {
            return null;
        }
    }

    public static Object getVMRuntimeObject() {
        try {
            Object object = Reflection.invokeStaticMethod("dalvik.system.VMRuntime", "getRuntime", null, new Object[0]);
            return object;
        }
        catch (Throwable var0_1) {
            return null;
        }
    }

    public static String getVmInstructionSet() {
        try {
            String string2 = (String)Reflection.invokeInstanceMethod(Reflection.getVMRuntimeObject(), "vmInstructionSet", null, new Object[0]);
            return string2;
        }
        catch (Throwable var0_1) {
            return null;
        }
    }

    public static /* varargs */ Object invokeInstanceMethod(Object object, String string2, Class[] arrclass, Object ... arrobject) throws Exception {
        return Reflection.invokeMethod(object.getClass(), string2, object, arrclass, arrobject);
    }

    public static /* varargs */ Object invokeMethod(Class genericDeclaration, String string2, Object object, Class[] arrclass, Object ... arrobject) throws Exception {
        if ((genericDeclaration = genericDeclaration.getMethod(string2, arrclass)) == null) {
            return null;
        }
        return genericDeclaration.invoke(object, arrobject);
    }

    public static /* varargs */ Object invokeStaticMethod(String string2, String string3, Class[] arrclass, Object ... arrobject) throws Exception {
        return Reflection.invokeMethod(Class.forName(string2), string3, null, arrclass, arrobject);
    }

    public static Boolean isPlayTrackingEnabled(Context object) {
        boolean bl;
        block4 : {
            block3 : {
                bl = false;
                try {
                    object = (Boolean)Reflection.invokeInstanceMethod(Reflection.getAdvertisingInfoObject((Context)object), "isLimitAdTrackingEnabled", null, new Object[0]);
                    if (object != null) break block3;
                    return null;
                }
                catch (Throwable var0_1) {
                    return null;
                }
            }
            if (object.booleanValue()) break block4;
            bl = true;
        }
        return bl;
    }

    public static Object readField(String string2, String string3) throws Exception {
        return Reflection.readField(string2, string3, null);
    }

    /*
     * Enabled aggressive block sorting
     */
    public static Object readField(String object, String string2, Object object2) throws Exception {
        if ((object = Reflection.forName((String)object)) == null || (object = object.getField(string2)) == null) {
            return null;
        }
        return object.get(object2);
    }
}

