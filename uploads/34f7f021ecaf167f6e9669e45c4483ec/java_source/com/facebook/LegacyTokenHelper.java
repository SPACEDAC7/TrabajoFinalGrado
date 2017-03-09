/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.content.SharedPreferences
 *  android.content.SharedPreferences$Editor
 *  android.os.Bundle
 *  org.json.JSONArray
 *  org.json.JSONException
 *  org.json.JSONObject
 */
package com.facebook;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Bundle;
import com.facebook.AccessTokenSource;
import com.facebook.LoggingBehavior;
import com.facebook.internal.Logger;
import com.facebook.internal.Utility;
import com.facebook.internal.Validate;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

final class LegacyTokenHelper {
    public static final String APPLICATION_ID_KEY = "com.facebook.TokenCachingStrategy.ApplicationId";
    public static final String DECLINED_PERMISSIONS_KEY = "com.facebook.TokenCachingStrategy.DeclinedPermissions";
    public static final String DEFAULT_CACHE_KEY = "com.facebook.SharedPreferencesTokenCachingStrategy.DEFAULT_KEY";
    public static final String EXPIRATION_DATE_KEY = "com.facebook.TokenCachingStrategy.ExpirationDate";
    private static final long INVALID_BUNDLE_MILLISECONDS = Long.MIN_VALUE;
    private static final String IS_SSO_KEY = "com.facebook.TokenCachingStrategy.IsSSO";
    private static final String JSON_VALUE = "value";
    private static final String JSON_VALUE_ENUM_TYPE = "enumType";
    private static final String JSON_VALUE_TYPE = "valueType";
    public static final String LAST_REFRESH_DATE_KEY = "com.facebook.TokenCachingStrategy.LastRefreshDate";
    public static final String PERMISSIONS_KEY = "com.facebook.TokenCachingStrategy.Permissions";
    private static final String TAG = LegacyTokenHelper.class.getSimpleName();
    public static final String TOKEN_KEY = "com.facebook.TokenCachingStrategy.Token";
    public static final String TOKEN_SOURCE_KEY = "com.facebook.TokenCachingStrategy.AccessTokenSource";
    private static final String TYPE_BOOLEAN = "bool";
    private static final String TYPE_BOOLEAN_ARRAY = "bool[]";
    private static final String TYPE_BYTE = "byte";
    private static final String TYPE_BYTE_ARRAY = "byte[]";
    private static final String TYPE_CHAR = "char";
    private static final String TYPE_CHAR_ARRAY = "char[]";
    private static final String TYPE_DOUBLE = "double";
    private static final String TYPE_DOUBLE_ARRAY = "double[]";
    private static final String TYPE_ENUM = "enum";
    private static final String TYPE_FLOAT = "float";
    private static final String TYPE_FLOAT_ARRAY = "float[]";
    private static final String TYPE_INTEGER = "int";
    private static final String TYPE_INTEGER_ARRAY = "int[]";
    private static final String TYPE_LONG = "long";
    private static final String TYPE_LONG_ARRAY = "long[]";
    private static final String TYPE_SHORT = "short";
    private static final String TYPE_SHORT_ARRAY = "short[]";
    private static final String TYPE_STRING = "string";
    private static final String TYPE_STRING_LIST = "stringList";
    private SharedPreferences cache;
    private String cacheKey;

    public LegacyTokenHelper(Context context) {
        this(context, null);
    }

    public LegacyTokenHelper(Context object, String string2) {
        Validate.notNull(object, "context");
        String string3 = string2;
        if (Utility.isNullOrEmpty(string2)) {
            string3 = "com.facebook.SharedPreferencesTokenCachingStrategy.DEFAULT_KEY";
        }
        this.cacheKey = string3;
        string2 = object.getApplicationContext();
        if (string2 != null) {
            object = string2;
        }
        this.cache = object.getSharedPreferences(this.cacheKey, 0);
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    private void deserializeKey(String string2, Bundle bundle) throws JSONException {
        Object object = new JSONObject(this.cache.getString(string2, "{}"));
        JSONArray jSONArray = object.getString("valueType");
        if (jSONArray.equals("bool")) {
            bundle.putBoolean(string2, object.getBoolean("value"));
            return;
        }
        if (jSONArray.equals("bool[]")) {
            object = object.getJSONArray("value");
            jSONArray = new boolean[object.length()];
            int n2 = 0;
            do {
                if (n2 >= jSONArray.length) {
                    bundle.putBooleanArray(string2, (boolean[])jSONArray);
                    return;
                }
                jSONArray[n2] = object.getBoolean(n2);
                ++n2;
            } while (true);
        }
        if (jSONArray.equals("byte")) {
            bundle.putByte(string2, (byte)object.getInt("value"));
            return;
        }
        if (jSONArray.equals("byte[]")) {
            object = object.getJSONArray("value");
            jSONArray = new byte[object.length()];
            int n3 = 0;
            do {
                if (n3 >= jSONArray.length) {
                    bundle.putByteArray(string2, (byte[])jSONArray);
                    return;
                }
                jSONArray[n3] = (byte)object.getInt(n3);
                ++n3;
            } while (true);
        }
        if (jSONArray.equals("short")) {
            bundle.putShort(string2, (short)object.getInt("value"));
            return;
        }
        if (jSONArray.equals("short[]")) {
            object = object.getJSONArray("value");
            jSONArray = new short[object.length()];
            int n4 = 0;
            do {
                if (n4 >= jSONArray.length) {
                    bundle.putShortArray(string2, (short[])jSONArray);
                    return;
                }
                jSONArray[n4] = (short)object.getInt(n4);
                ++n4;
            } while (true);
        }
        if (jSONArray.equals("int")) {
            bundle.putInt(string2, object.getInt("value"));
            return;
        }
        if (jSONArray.equals("int[]")) {
            object = object.getJSONArray("value");
            jSONArray = new int[object.length()];
            int n5 = 0;
            do {
                if (n5 >= jSONArray.length) {
                    bundle.putIntArray(string2, (int[])jSONArray);
                    return;
                }
                jSONArray[n5] = object.getInt(n5);
                ++n5;
            } while (true);
        }
        if (jSONArray.equals("long")) {
            bundle.putLong(string2, object.getLong("value"));
            return;
        }
        if (jSONArray.equals("long[]")) {
            object = object.getJSONArray("value");
            jSONArray = new long[object.length()];
            int n6 = 0;
            do {
                if (n6 >= jSONArray.length) {
                    bundle.putLongArray(string2, (long[])jSONArray);
                    return;
                }
                jSONArray[n6] = object.getLong(n6);
                ++n6;
            } while (true);
        }
        if (jSONArray.equals("float")) {
            bundle.putFloat(string2, (float)object.getDouble("value"));
            return;
        }
        if (jSONArray.equals("float[]")) {
            object = object.getJSONArray("value");
            jSONArray = new float[object.length()];
            int n7 = 0;
            do {
                if (n7 >= jSONArray.length) {
                    bundle.putFloatArray(string2, (float[])jSONArray);
                    return;
                }
                jSONArray[n7] = (float)object.getDouble(n7);
                ++n7;
            } while (true);
        }
        if (jSONArray.equals("double")) {
            bundle.putDouble(string2, object.getDouble("value"));
            return;
        }
        if (jSONArray.equals("double[]")) {
            object = object.getJSONArray("value");
            jSONArray = new double[object.length()];
            int n8 = 0;
            do {
                if (n8 >= jSONArray.length) {
                    bundle.putDoubleArray(string2, (double[])jSONArray);
                    return;
                }
                jSONArray[n8] = object.getDouble(n8);
                ++n8;
            } while (true);
        }
        if (jSONArray.equals("char")) {
            if ((object = object.getString("value")) == null || object.length() != 1) return;
            {
                bundle.putChar(string2, object.charAt(0));
                return;
            }
        }
        if (jSONArray.equals("char[]")) {
            object = object.getJSONArray("value");
            jSONArray = new char[object.length()];
            int n9 = 0;
            do {
                if (n9 >= jSONArray.length) {
                    bundle.putCharArray(string2, (char[])jSONArray);
                    return;
                }
                String string3 = object.getString(n9);
                if (string3 != null && string3.length() == 1) {
                    jSONArray[n9] = string3.charAt(0);
                }
                ++n9;
            } while (true);
        }
        if (jSONArray.equals("string")) {
            bundle.putString(string2, object.getString("value"));
            return;
        }
        if (!jSONArray.equals("stringList")) {
            if (!jSONArray.equals("enum")) return;
            try {
                bundle.putSerializable(string2, Enum.valueOf(Class.forName(object.getString("enumType")), object.getString("value")));
                return;
            }
            catch (ClassNotFoundException var1_2) {
                return;
            }
            catch (IllegalArgumentException var1_3) {
                return;
            }
        }
        jSONArray = object.getJSONArray("value");
        int n10 = jSONArray.length();
        ArrayList<Object> arrayList = new ArrayList<Object>(n10);
        int n11 = 0;
        do {
            if (n11 >= n10) {
                bundle.putStringArrayList(string2, arrayList);
                return;
            }
            object = jSONArray.get(n11);
            object = object == JSONObject.NULL ? null : (String)object;
            arrayList.add(n11, object);
            ++n11;
        } while (true);
    }

    public static String getApplicationId(Bundle bundle) {
        Validate.notNull((Object)bundle, "bundle");
        return bundle.getString("com.facebook.TokenCachingStrategy.ApplicationId");
    }

    /*
     * Enabled aggressive block sorting
     */
    static Date getDate(Bundle bundle, String string2) {
        long l2;
        if (bundle == null || (l2 = bundle.getLong(string2, Long.MIN_VALUE)) == Long.MIN_VALUE) {
            return null;
        }
        return new Date(l2);
    }

    public static Date getExpirationDate(Bundle bundle) {
        Validate.notNull((Object)bundle, "bundle");
        return LegacyTokenHelper.getDate(bundle, "com.facebook.TokenCachingStrategy.ExpirationDate");
    }

    public static long getExpirationMilliseconds(Bundle bundle) {
        Validate.notNull((Object)bundle, "bundle");
        return bundle.getLong("com.facebook.TokenCachingStrategy.ExpirationDate");
    }

    public static Date getLastRefreshDate(Bundle bundle) {
        Validate.notNull((Object)bundle, "bundle");
        return LegacyTokenHelper.getDate(bundle, "com.facebook.TokenCachingStrategy.LastRefreshDate");
    }

    public static long getLastRefreshMilliseconds(Bundle bundle) {
        Validate.notNull((Object)bundle, "bundle");
        return bundle.getLong("com.facebook.TokenCachingStrategy.LastRefreshDate");
    }

    public static Set<String> getPermissions(Bundle object) {
        Validate.notNull(object, "bundle");
        object = object.getStringArrayList("com.facebook.TokenCachingStrategy.Permissions");
        if (object == null) {
            return null;
        }
        return new HashSet<String>((Collection<String>)object);
    }

    public static AccessTokenSource getSource(Bundle bundle) {
        Validate.notNull((Object)bundle, "bundle");
        if (bundle.containsKey("com.facebook.TokenCachingStrategy.AccessTokenSource")) {
            return (AccessTokenSource)((Object)bundle.getSerializable("com.facebook.TokenCachingStrategy.AccessTokenSource"));
        }
        if (bundle.getBoolean("com.facebook.TokenCachingStrategy.IsSSO")) {
            return AccessTokenSource.FACEBOOK_APPLICATION_WEB;
        }
        return AccessTokenSource.WEB_VIEW;
    }

    public static String getToken(Bundle bundle) {
        Validate.notNull((Object)bundle, "bundle");
        return bundle.getString("com.facebook.TokenCachingStrategy.Token");
    }

    /*
     * Enabled aggressive block sorting
     */
    public static boolean hasTokenInformation(Bundle bundle) {
        String string2;
        if (bundle == null || (string2 = bundle.getString("com.facebook.TokenCachingStrategy.Token")) == null || string2.length() == 0 || bundle.getLong("com.facebook.TokenCachingStrategy.ExpirationDate", 0) == 0) {
            return false;
        }
        return true;
    }

    public static void putApplicationId(Bundle bundle, String string2) {
        Validate.notNull((Object)bundle, "bundle");
        bundle.putString("com.facebook.TokenCachingStrategy.ApplicationId", string2);
    }

    static void putDate(Bundle bundle, String string2, Date date) {
        bundle.putLong(string2, date.getTime());
    }

    public static void putDeclinedPermissions(Bundle bundle, Collection<String> collection) {
        Validate.notNull((Object)bundle, "bundle");
        Validate.notNull(collection, "value");
        bundle.putStringArrayList("com.facebook.TokenCachingStrategy.DeclinedPermissions", new ArrayList<String>(collection));
    }

    public static void putExpirationDate(Bundle bundle, Date date) {
        Validate.notNull((Object)bundle, "bundle");
        Validate.notNull(date, "value");
        LegacyTokenHelper.putDate(bundle, "com.facebook.TokenCachingStrategy.ExpirationDate", date);
    }

    public static void putExpirationMilliseconds(Bundle bundle, long l2) {
        Validate.notNull((Object)bundle, "bundle");
        bundle.putLong("com.facebook.TokenCachingStrategy.ExpirationDate", l2);
    }

    public static void putLastRefreshDate(Bundle bundle, Date date) {
        Validate.notNull((Object)bundle, "bundle");
        Validate.notNull(date, "value");
        LegacyTokenHelper.putDate(bundle, "com.facebook.TokenCachingStrategy.LastRefreshDate", date);
    }

    public static void putLastRefreshMilliseconds(Bundle bundle, long l2) {
        Validate.notNull((Object)bundle, "bundle");
        bundle.putLong("com.facebook.TokenCachingStrategy.LastRefreshDate", l2);
    }

    public static void putPermissions(Bundle bundle, Collection<String> collection) {
        Validate.notNull((Object)bundle, "bundle");
        Validate.notNull(collection, "value");
        bundle.putStringArrayList("com.facebook.TokenCachingStrategy.Permissions", new ArrayList<String>(collection));
    }

    public static void putSource(Bundle bundle, AccessTokenSource accessTokenSource) {
        Validate.notNull((Object)bundle, "bundle");
        bundle.putSerializable("com.facebook.TokenCachingStrategy.AccessTokenSource", (Serializable)((Object)accessTokenSource));
    }

    public static void putToken(Bundle bundle, String string2) {
        Validate.notNull((Object)bundle, "bundle");
        Validate.notNull(string2, "value");
        bundle.putString("com.facebook.TokenCachingStrategy.Token", string2);
    }

    /*
     * Enabled aggressive block sorting
     */
    private void serializeKey(String string2, Bundle object, SharedPreferences.Editor editor) throws JSONException {
        byte[] arrby = object.get(string2);
        if (arrby == null) {
            return;
        }
        object = null;
        Object object2 = null;
        JSONObject jSONObject = new JSONObject();
        if (arrby instanceof Byte) {
            object = "byte";
            jSONObject.put("value", ((Byte)arrby).intValue());
        } else if (arrby instanceof Short) {
            object = "short";
            jSONObject.put("value", ((Short)arrby).intValue());
        } else if (arrby instanceof Integer) {
            object = "int";
            jSONObject.put("value", ((Integer)arrby).intValue());
        } else if (arrby instanceof Long) {
            object = "long";
            jSONObject.put("value", ((Long)arrby).longValue());
        } else if (arrby instanceof Float) {
            object = "float";
            jSONObject.put("value", ((Float)arrby).doubleValue());
        } else if (arrby instanceof Double) {
            object = "double";
            jSONObject.put("value", ((Double)arrby).doubleValue());
        } else if (arrby instanceof Boolean) {
            object = "bool";
            jSONObject.put("value", ((Boolean)arrby).booleanValue());
        } else if (arrby instanceof Character) {
            object = "char";
            jSONObject.put("value", (Object)arrby.toString());
        } else if (arrby instanceof String) {
            object = "string";
            jSONObject.put("value", (Object)((String)arrby));
        } else if (arrby instanceof Enum) {
            object = "enum";
            jSONObject.put("value", (Object)arrby.toString());
            jSONObject.put("enumType", (Object)arrby.getClass().getName());
        } else {
            JSONArray jSONArray = new JSONArray();
            if (arrby instanceof byte[]) {
                String string3 = "byte[]";
                arrby = arrby;
                int n2 = arrby.length;
                int n3 = 0;
                do {
                    object2 = jSONArray;
                    object = string3;
                    if (n3 < n2) {
                        jSONArray.put((int)arrby[n3]);
                        ++n3;
                        continue;
                    }
                    break;
                    break;
                } while (true);
            } else if (arrby instanceof short[]) {
                String string4 = "short[]";
                arrby = arrby;
                int n4 = arrby.length;
                int n5 = 0;
                do {
                    object2 = jSONArray;
                    object = string4;
                    if (n5 < n4) {
                        jSONArray.put((int)arrby[n5]);
                        ++n5;
                        continue;
                    }
                    break;
                    break;
                } while (true);
            } else if (arrby instanceof int[]) {
                String string5 = "int[]";
                arrby = arrby;
                int n6 = arrby.length;
                int n7 = 0;
                do {
                    object2 = jSONArray;
                    object = string5;
                    if (n7 < n6) {
                        jSONArray.put((int)arrby[n7]);
                        ++n7;
                        continue;
                    }
                    break;
                    break;
                } while (true);
            } else if (arrby instanceof long[]) {
                String string6 = "long[]";
                arrby = arrby;
                int n8 = arrby.length;
                int n9 = 0;
                do {
                    object2 = jSONArray;
                    object = string6;
                    if (n9 < n8) {
                        jSONArray.put((long)arrby[n9]);
                        ++n9;
                        continue;
                    }
                    break;
                    break;
                } while (true);
            } else if (arrby instanceof float[]) {
                String string7 = "float[]";
                arrby = arrby;
                int n10 = arrby.length;
                int n11 = 0;
                do {
                    object2 = jSONArray;
                    object = string7;
                    if (n11 < n10) {
                        jSONArray.put((double)arrby[n11]);
                        ++n11;
                        continue;
                    }
                    break;
                    break;
                } while (true);
            } else if (arrby instanceof double[]) {
                String string8 = "double[]";
                arrby = arrby;
                int n12 = arrby.length;
                int n13 = 0;
                do {
                    object2 = jSONArray;
                    object = string8;
                    if (n13 < n12) {
                        jSONArray.put((double)arrby[n13]);
                        ++n13;
                        continue;
                    }
                    break;
                    break;
                } while (true);
            } else if (arrby instanceof boolean[]) {
                String string9 = "bool[]";
                arrby = (boolean[])arrby;
                int n14 = arrby.length;
                int n15 = 0;
                do {
                    object2 = jSONArray;
                    object = string9;
                    if (n15 < n14) {
                        jSONArray.put((boolean)arrby[n15]);
                        ++n15;
                        continue;
                    }
                    break;
                    break;
                } while (true);
            } else if (arrby instanceof char[]) {
                String string10 = "char[]";
                arrby = (char[])arrby;
                int n16 = arrby.length;
                int n17 = 0;
                do {
                    object2 = jSONArray;
                    object = string10;
                    if (n17 < n16) {
                        jSONArray.put((Object)String.valueOf((char)arrby[n17]));
                        ++n17;
                        continue;
                    }
                    break;
                    break;
                } while (true);
            } else if (arrby instanceof List) {
                String string11 = "stringList";
                arrby = ((List)arrby).iterator();
                do {
                    object2 = jSONArray;
                    object = string11;
                    if (arrby.hasNext()) {
                        object = object2 = (String)arrby.next();
                        if (object2 == null) {
                            object = JSONObject.NULL;
                        }
                        jSONArray.put(object);
                        continue;
                    }
                    break;
                    break;
                } while (true);
            } else {
                object2 = null;
            }
        }
        if (object == null) return;
        jSONObject.put("valueType", object);
        if (object2 != null) {
            jSONObject.putOpt("value", object2);
        }
        editor.putString(string2, jSONObject.toString());
    }

    public void clear() {
        this.cache.edit().clear().apply();
    }

    public Bundle load() {
        Object object;
        Bundle bundle = new Bundle();
        Iterator iterator = this.cache.getAll().keySet().iterator();
        do {
            object = bundle;
            if (!iterator.hasNext()) break;
            object = (String)iterator.next();
            try {
                this.deserializeKey((String)object, bundle);
                continue;
            }
            catch (JSONException var2_2) {
                Logger.log(LoggingBehavior.CACHE, 5, TAG, "Error reading cached value for key: '" + (String)object + "' -- " + (Object)var2_2);
                object = null;
                break;
            }
        } while (true);
        return object;
    }

    public void save(Bundle bundle) {
        Validate.notNull((Object)bundle, "bundle");
        SharedPreferences.Editor editor = this.cache.edit();
        for (String string2 : bundle.keySet()) {
            try {
                this.serializeKey(string2, bundle, editor);
                continue;
            }
            catch (JSONException var1_2) {
                Logger.log(LoggingBehavior.CACHE, 5, TAG, "Error processing value for key: '" + string2 + "' -- " + (Object)var1_2);
                return;
            }
        }
        editor.apply();
    }
}

