/*
 * Decompiled with CFR 0_115.
 */
package com.facebook.internal;

import com.facebook.FacebookSdk;
import com.facebook.FacebookSdkNotInitializedException;
import com.facebook.internal.Utility;
import java.util.Collection;
import java.util.Iterator;

public final class Validate {
    public static void containsNoNullOrEmpty(Collection<String> object, String string2) {
        Validate.notNull(object, string2);
        object = object.iterator();
        while (object.hasNext()) {
            String string3 = (String)object.next();
            if (string3 == null) {
                throw new NullPointerException("Container '" + string2 + "' cannot contain null values");
            }
            if (string3.length() != 0) continue;
            throw new IllegalArgumentException("Container '" + string2 + "' cannot contain empty values");
        }
    }

    public static <T> void containsNoNulls(Collection<T> object, String string2) {
        Validate.notNull(object, string2);
        object = object.iterator();
        while (object.hasNext()) {
            if (object.next() != null) continue;
            throw new NullPointerException("Container '" + string2 + "' cannot contain null values");
        }
    }

    public static <T> void notEmpty(Collection<T> collection, String string2) {
        if (collection.isEmpty()) {
            throw new IllegalArgumentException("Container '" + string2 + "' cannot be empty");
        }
    }

    public static <T> void notEmptyAndContainsNoNulls(Collection<T> collection, String string2) {
        Validate.containsNoNulls(collection, string2);
        Validate.notEmpty(collection, string2);
    }

    public static void notNull(Object object, String string2) {
        if (object == null) {
            throw new NullPointerException("Argument '" + string2 + "' cannot be null");
        }
    }

    public static void notNullOrEmpty(String string2, String string3) {
        if (Utility.isNullOrEmpty(string2)) {
            throw new IllegalArgumentException("Argument '" + string3 + "' cannot be null or empty");
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    public static /* varargs */ void oneOf(Object object, String string2, Object ... arrobject) {
        int n2 = arrobject.length;
        int n3 = 0;
        do {
            if (n3 >= n2) {
                throw new IllegalArgumentException("Argument '" + string2 + "' was not one of the allowed values");
            }
            Object object2 = arrobject[n3];
            if (object2 != null ? object2.equals(object) : object == null) {
                return;
            }
            ++n3;
        } while (true);
    }

    public static void sdkInitialized() {
        if (!FacebookSdk.isInitialized()) {
            throw new FacebookSdkNotInitializedException();
        }
    }
}

