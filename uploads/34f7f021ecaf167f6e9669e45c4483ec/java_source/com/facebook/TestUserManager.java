/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.os.Bundle
 *  android.text.TextUtils
 *  android.util.Log
 *  org.json.JSONArray
 *  org.json.JSONException
 *  org.json.JSONObject
 */
package com.facebook;

import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import com.facebook.AccessToken;
import com.facebook.AccessTokenSource;
import com.facebook.FacebookException;
import com.facebook.FacebookRequestError;
import com.facebook.GraphRequest;
import com.facebook.GraphResponse;
import com.facebook.HttpMethod;
import com.facebook.internal.Utility;
import java.util.Arrays;
import java.util.Collection;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class TestUserManager {
    static final /* synthetic */ boolean $assertionsDisabled;
    private static final String LOG_TAG = "TestUserManager";
    private Map<String, JSONObject> appTestAccounts;
    private String testApplicationId;
    private String testApplicationSecret;

    /*
     * Enabled aggressive block sorting
     */
    static {
        boolean bl = !TestUserManager.class.desiredAssertionStatus();
        $assertionsDisabled = bl;
    }

    public TestUserManager(String string2, String string3) {
        if (Utility.isNullOrEmpty(string3) || Utility.isNullOrEmpty(string2)) {
            throw new FacebookException("Must provide app ID and secret");
        }
        this.testApplicationSecret = string2;
        this.testApplicationId = string3;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    private JSONObject createTestAccount(List<String> object, Mode mode, String object2) {
        Bundle bundle = new Bundle();
        bundle.putString("installed", "true");
        bundle.putString("permissions", this.getPermissionsString((List<String>)object));
        bundle.putString("access_token", this.getAppAccessToken());
        if (mode == Mode.SHARED) {
            bundle.putString("name", String.format("Shared %s Testuser", this.getSharedTestAccountIdentifier((List<String>)object, (String)object2)));
        }
        object2 = new GraphRequest(null, String.format("%s/accounts/test-users", this.testApplicationId), bundle, HttpMethod.POST).executeAndWait();
        object = object2.getError();
        object2 = object2.getJSONObject();
        if (object != null) {
            return null;
        }
        if (!$assertionsDisabled && object2 == null) {
            throw new AssertionError();
        }
        object = object2;
        if (mode != Mode.SHARED) return object;
        try {
            object2.put("name", (Object)bundle.getString("name"));
        }
        catch (JSONException var1_2) {
            Log.e((String)"TestUserManager", (String)"Could not set name", (Throwable)var1_2);
        }
        this.storeTestAccount((JSONObject)object2);
        return object2;
    }

    private JSONObject findOrCreateSharedTestAccount(List<String> list, Mode mode, String string2) {
        JSONObject jSONObject = this.findTestAccountMatchingIdentifier(this.getSharedTestAccountIdentifier(list, string2));
        if (jSONObject != null) {
            return jSONObject;
        }
        return this.createTestAccount(list, mode, string2);
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private JSONObject findTestAccountMatchingIdentifier(String string2) {
        synchronized (this) {
            boolean bl;
            JSONObject jSONObject;
            Iterator<JSONObject> iterator = this.appTestAccounts.values().iterator();
            do {
                if (!iterator.hasNext()) return null;
            } while (!(bl = (jSONObject = iterator.next()).optString("name").contains(string2)));
            return jSONObject;
        }
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private AccessToken getAccessTokenForUser(List<String> jSONObject, Mode mode, String string2) {
        this.retrieveTestAccountsForAppIfNeeded();
        Object object = jSONObject;
        if (Utility.isNullOrEmpty(jSONObject)) {
            object = Arrays.asList("email", "publish_actions");
        }
        if (mode == Mode.PRIVATE) {
            jSONObject = this.createTestAccount((List<String>)object, mode, string2);
            do {
                return new AccessToken(jSONObject.optString("access_token"), this.testApplicationId, jSONObject.optString("id"), (Collection<String>)object, null, AccessTokenSource.TEST_USER, null, null);
                break;
            } while (true);
        }
        jSONObject = this.findOrCreateSharedTestAccount((List<String>)object, mode, string2);
        return new AccessToken(jSONObject.optString("access_token"), this.testApplicationId, jSONObject.optString("id"), (Collection<String>)object, null, AccessTokenSource.TEST_USER, null, null);
    }

    private String getPermissionsString(List<String> list) {
        return TextUtils.join((CharSequence)",", list);
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private String getSharedTestAccountIdentifier(List<String> list, String string2) {
        long l2;
        long l3 = this.getPermissionsString(list).hashCode();
        if (string2 != null) {
            l2 = (long)string2.hashCode() & 0xFFFFFFFFL;
            do {
                return this.validNameStringFromInteger(l3 & 0xFFFFFFFFL ^ l2);
                break;
            } while (true);
        }
        l2 = 0;
        return this.validNameStringFromInteger(l3 & 0xFFFFFFFFL ^ l2);
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    private void populateTestAccounts(JSONArray jSONArray, JSONObject jSONObject) {
        synchronized (this) {
            int n2 = 0;
            while (n2 < jSONArray.length()) {
                void var2_2;
                JSONObject jSONObject2 = jSONArray.optJSONObject(n2);
                JSONObject jSONObject3 = var2_2.optJSONObject(jSONObject2.optString("id"));
                try {
                    jSONObject2.put("name", (Object)jSONObject3.optString("name"));
                }
                catch (JSONException var4_6) {
                    Log.e((String)"TestUserManager", (String)"Could not set name", (Throwable)var4_6);
                }
                this.storeTestAccount(jSONObject2);
                ++n2;
            }
            return;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    private void retrieveTestAccountsForAppIfNeeded() {
        synchronized (this) {
            List<GraphResponse> list = this.appTestAccounts;
            if (list == null) {
                this.appTestAccounts = new HashMap<String, JSONObject>();
                GraphRequest.setDefaultBatchApplicationId(this.testApplicationId);
                list = new Bundle();
                list.putString("access_token", this.getAppAccessToken());
                list = new GraphRequest(null, "app/accounts/test-users", (Bundle)list, null);
                list.setBatchEntryName("testUsers");
                list.setBatchEntryOmitResultOnSuccess(false);
                Object object = new Bundle();
                object.putString("access_token", this.getAppAccessToken());
                object.putString("ids", "{result=testUsers:$.data.*.id}");
                object.putString("fields", "name");
                object = new GraphRequest(null, "", (Bundle)object, null);
                object.setBatchEntryDependsOn("testUsers");
                list = GraphRequest.executeBatchAndWait(new GraphRequest[]{list, object});
                if (list == null || list.size() != 2) {
                    throw new FacebookException("Unexpected number of results from TestUsers batch query");
                }
                this.populateTestAccounts(list.get(0).getJSONObject().optJSONArray("data"), list.get(1).getJSONObject());
            }
            return;
        }
    }

    private void storeTestAccount(JSONObject jSONObject) {
        synchronized (this) {
            this.appTestAccounts.put(jSONObject.optString("id"), jSONObject);
            return;
        }
    }

    private String validNameStringFromInteger(long l2) {
        char[] arrc = Long.toString(l2);
        StringBuilder stringBuilder = new StringBuilder("Perm");
        char c2 = '\u0000';
        arrc = arrc.toCharArray();
        int n2 = arrc.length;
        for (int i2 = 0; i2 < n2; ++i2) {
            char c3;
            char c4 = c3 = arrc[i2];
            if (c3 == c2) {
                c4 = (char)(c3 + 10);
            }
            stringBuilder.append((char)(c4 + 97 - 48));
            c2 = c4;
        }
        return stringBuilder.toString();
    }

    public AccessToken getAccessTokenForPrivateUser(List<String> list) {
        return this.getAccessTokenForUser(list, Mode.PRIVATE, null);
    }

    public AccessToken getAccessTokenForSharedUser(List<String> list) {
        return this.getAccessTokenForSharedUser(list, null);
    }

    public AccessToken getAccessTokenForSharedUser(List<String> list, String string2) {
        return this.getAccessTokenForUser(list, Mode.SHARED, string2);
    }

    final String getAppAccessToken() {
        return this.testApplicationId + "|" + this.testApplicationSecret;
    }

    public String getTestApplicationId() {
        synchronized (this) {
            String string2 = this.testApplicationId;
            return string2;
        }
    }

    public String getTestApplicationSecret() {
        synchronized (this) {
            String string2 = this.testApplicationSecret;
            return string2;
        }
    }

    private static enum Mode {
        PRIVATE,
        SHARED;
        

        private Mode() {
        }
    }

}

