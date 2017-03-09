/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  org.json.JSONArray
 *  org.json.JSONObject
 */
package com.facebook.internal;

import com.facebook.FacebookRequestError;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONObject;

public final class FacebookRequestErrorClassification {
    public static final int EC_APP_TOO_MANY_CALLS = 4;
    public static final int EC_INVALID_SESSION = 102;
    public static final int EC_INVALID_TOKEN = 190;
    public static final int EC_RATE = 9;
    public static final int EC_SERVICE_UNAVAILABLE = 2;
    public static final int EC_TOO_MANY_USER_ACTION_CALLS = 341;
    public static final int EC_USER_TOO_MANY_CALLS = 17;
    public static final String KEY_LOGIN_RECOVERABLE = "login_recoverable";
    public static final String KEY_NAME = "name";
    public static final String KEY_OTHER = "other";
    public static final String KEY_RECOVERY_MESSAGE = "recovery_message";
    public static final String KEY_TRANSIENT = "transient";
    private static FacebookRequestErrorClassification defaultInstance;
    private final Map<Integer, Set<Integer>> loginRecoverableErrors;
    private final String loginRecoverableRecoveryMessage;
    private final Map<Integer, Set<Integer>> otherErrors;
    private final String otherRecoveryMessage;
    private final Map<Integer, Set<Integer>> transientErrors;
    private final String transientRecoveryMessage;

    FacebookRequestErrorClassification(Map<Integer, Set<Integer>> map, Map<Integer, Set<Integer>> map2, Map<Integer, Set<Integer>> map3, String string2, String string3, String string4) {
        this.otherErrors = map;
        this.transientErrors = map2;
        this.loginRecoverableErrors = map3;
        this.otherRecoveryMessage = string2;
        this.transientRecoveryMessage = string3;
        this.loginRecoverableRecoveryMessage = string4;
    }

    /*
     * Enabled aggressive block sorting
     */
    public static FacebookRequestErrorClassification createFromJSON(JSONArray jSONArray) {
        if (jSONArray == null) {
            return null;
        }
        Map<Integer, Set<Integer>> map = null;
        Map<Integer, Set<Integer>> map2 = null;
        Map<Integer, Set<Integer>> map3 = null;
        String string2 = null;
        String string3 = null;
        String string4 = null;
        int n2 = 0;
        while (n2 < jSONArray.length()) {
            Map<Integer, Set<Integer>> map4;
            String string5;
            String string6;
            String string7;
            Map<Integer, Set<Integer>> map5;
            Map<Integer, Set<Integer>> map6;
            JSONObject jSONObject = jSONArray.optJSONObject(n2);
            if (jSONObject == null) {
                string7 = string4;
                string5 = string3;
                string6 = string2;
                map6 = map3;
                map4 = map2;
                map5 = map;
            } else {
                String string8 = jSONObject.optString("name");
                map5 = map;
                map4 = map2;
                map6 = map3;
                string6 = string2;
                string5 = string3;
                string7 = string4;
                if (string8 != null) {
                    if (string8.equalsIgnoreCase("other")) {
                        string6 = jSONObject.optString("recovery_message", null);
                        map5 = FacebookRequestErrorClassification.parseJSONDefinition(jSONObject);
                        map4 = map2;
                        map6 = map3;
                        string5 = string3;
                        string7 = string4;
                    } else if (string8.equalsIgnoreCase("transient")) {
                        string5 = jSONObject.optString("recovery_message", null);
                        map4 = FacebookRequestErrorClassification.parseJSONDefinition(jSONObject);
                        map5 = map;
                        map6 = map3;
                        string6 = string2;
                        string7 = string4;
                    } else {
                        map5 = map;
                        map4 = map2;
                        map6 = map3;
                        string6 = string2;
                        string5 = string3;
                        string7 = string4;
                        if (string8.equalsIgnoreCase("login_recoverable")) {
                            string7 = jSONObject.optString("recovery_message", null);
                            map6 = FacebookRequestErrorClassification.parseJSONDefinition(jSONObject);
                            map5 = map;
                            map4 = map2;
                            string6 = string2;
                            string5 = string3;
                        }
                    }
                }
            }
            ++n2;
            map = map5;
            map2 = map4;
            map3 = map6;
            string2 = string6;
            string3 = string5;
            string4 = string7;
        }
        return new FacebookRequestErrorClassification(map, map2, map3, string2, string3, string4);
    }

    public static FacebookRequestErrorClassification getDefaultErrorClassification() {
        synchronized (FacebookRequestErrorClassification.class) {
            if (defaultInstance == null) {
                defaultInstance = FacebookRequestErrorClassification.getDefaultErrorClassificationImpl();
            }
            FacebookRequestErrorClassification facebookRequestErrorClassification = defaultInstance;
            return facebookRequestErrorClassification;
        }
    }

    private static FacebookRequestErrorClassification getDefaultErrorClassificationImpl() {
        return new FacebookRequestErrorClassification(null, new HashMap<Integer, Set<Integer>>(){}, new HashMap<Integer, Set<Integer>>(){}, null, null, null);
    }

    /*
     * Enabled aggressive block sorting
     */
    private static Map<Integer, Set<Integer>> parseJSONDefinition(JSONObject jSONObject) {
        JSONArray jSONArray = jSONObject.optJSONArray("items");
        if (jSONArray.length() == 0) {
            return null;
        }
        HashMap<Integer, Object> hashMap = new HashMap<Integer, Object>();
        int n2 = 0;
        do {
            int n3;
            jSONObject = hashMap;
            if (n2 >= jSONArray.length()) return jSONObject;
            jSONObject = jSONArray.optJSONObject(n2);
            if (jSONObject != null && (n3 = jSONObject.optInt("code")) != 0) {
                JSONObject jSONObject2 = null;
                JSONArray jSONArray2 = jSONObject.optJSONArray("subcodes");
                jSONObject = jSONObject2;
                if (jSONArray2 != null) {
                    jSONObject = jSONObject2;
                    if (jSONArray2.length() > 0) {
                        jSONObject2 = new JSONObject();
                        int n4 = 0;
                        do {
                            jSONObject = jSONObject2;
                            if (n4 >= jSONArray2.length()) break;
                            int n5 = jSONArray2.optInt(n4);
                            if (n5 != 0) {
                                jSONObject2.add(n5);
                            }
                            ++n4;
                        } while (true);
                    }
                }
                hashMap.put(n3, (Object)jSONObject);
            }
            ++n2;
        } while (true);
    }

    public FacebookRequestError.Category classify(int n2, int n3, boolean bl) {
        Set<Integer> set;
        if (bl) {
            return FacebookRequestError.Category.TRANSIENT;
        }
        if (this.otherErrors != null && this.otherErrors.containsKey(n2) && ((set = this.otherErrors.get(n2)) == null || set.contains(n3))) {
            return FacebookRequestError.Category.OTHER;
        }
        if (this.loginRecoverableErrors != null && this.loginRecoverableErrors.containsKey(n2) && ((set = this.loginRecoverableErrors.get(n2)) == null || set.contains(n3))) {
            return FacebookRequestError.Category.LOGIN_RECOVERABLE;
        }
        if (this.transientErrors != null && this.transientErrors.containsKey(n2) && ((set = this.transientErrors.get(n2)) == null || set.contains(n3))) {
            return FacebookRequestError.Category.TRANSIENT;
        }
        return FacebookRequestError.Category.OTHER;
    }

    public Map<Integer, Set<Integer>> getLoginRecoverableErrors() {
        return this.loginRecoverableErrors;
    }

    public Map<Integer, Set<Integer>> getOtherErrors() {
        return this.otherErrors;
    }

    public String getRecoveryMessage(FacebookRequestError.Category category) {
        switch (.$SwitchMap$com$facebook$FacebookRequestError$Category[category.ordinal()]) {
            default: {
                return null;
            }
            case 1: {
                return this.otherRecoveryMessage;
            }
            case 2: {
                return this.loginRecoverableRecoveryMessage;
            }
            case 3: 
        }
        return this.transientRecoveryMessage;
    }

    public Map<Integer, Set<Integer>> getTransientErrors() {
        return this.transientErrors;
    }

}

