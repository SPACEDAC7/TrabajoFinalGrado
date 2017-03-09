/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  okhttp3.ResponseBody
 *  org.json.JSONException
 *  org.json.JSONObject
 */
package com.buzzfeed.toolkit.networking.helpers;

import android.content.Context;
import com.buzzfeed.toolkit.networking.Environment;
import com.buzzfeed.toolkit.networking.helpers.BaseServiceHelper;
import com.buzzfeed.toolkit.util.retrofit.SafeCall;
import com.buzzfeed.toolkit.util.retrofit.SafeCallback;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import okhttp3.ResponseBody;
import org.json.JSONException;
import org.json.JSONObject;
import retrofit2.Call;
import retrofit2.Retrofit;
import retrofit2.http.FieldMap;
import retrofit2.http.FormUrlEncoded;
import retrofit2.http.POST;

public class AuthServiceHelper
extends BaseServiceHelper<BuzzfeedAuthService> {
    private static final String API_CLIENT_KEY = "api_client";
    private static final String API_CLIENT_VALUE = "android";
    private static final String KEY_CONTRIBUTE = "contribute";
    private static final String KEY_DISPLAY_NAME = "display_name";
    private static final String KEY_EMAIL = "email";
    private static final String KEY_GOOGLEPLUS = "googleplus";
    private static final String KEY_HOST = "host";
    public static final String KEY_LOGIN_PASSWORD = "password";
    public static final String KEY_LOGIN_PW = "pw";
    private static final String KEY_NAME = "name";
    public static final String KEY_SESSION_KEY = "session_key";
    public static final String KEY_USERNAME = "username";
    public static final String KEY_VALIDATION_JSON_VALIDATED = "validated";

    public AuthServiceHelper(Context context, Environment environment) {
        super(context, environment);
    }

    public Call<ResponseBody> authorizeViaSessionKey(Map<String, String> map) {
        return ((BuzzfeedAuthService)this.getService()).buzzfeedAuthRequest(map);
    }

    @Override
    protected BuzzfeedAuthService createService(Retrofit retrofit) {
        return (BuzzfeedAuthService)retrofit.create(BuzzfeedAuthService.class);
    }

    public SafeCall<ResponseBody> loginToBuzzfeed(@FieldMap Map<String, String> map, SafeCallback<ResponseBody> safeCallback) {
        return this.enqueueSafeRequest(((BuzzfeedAuthService)this.getService()).buzzfeedAuthRequest(map), safeCallback);
    }

    public SafeCall<ResponseBody> signUpToBuzzfeed(@FieldMap Map<String, String> map, SafeCallback<ResponseBody> safeCallback) {
        return this.enqueueSafeRequest(((BuzzfeedAuthService)this.getService()).signUpToBuzzfeed(map), safeCallback);
    }

    public Call<ResponseBody> validateRequest(Map<String, String> map) {
        return ((BuzzfeedAuthService)this.getService()).validateRequest(map);
    }

    public static final class BfLoginParamBuilder {
        private HashMap<String, String> mParamMap = new HashMap();

        public Map<String, String> build() {
            this.mParamMap.put("api_client", "android");
            return Collections.unmodifiableMap(this.mParamMap);
        }

        public BfLoginParamBuilder password(String string2) {
            this.mParamMap.put("password", string2);
            return this;
        }

        public BfLoginParamBuilder username(String string2) {
            this.mParamMap.put("username", string2);
            return this;
        }
    }

    public static final class BfSignUpParamBuilder {
        private HashMap<String, String> mParamMap = new HashMap();

        public Map<String, String> build() {
            this.mParamMap.put("contribute", "1");
            this.mParamMap.put("api_client", "android");
            return Collections.unmodifiableMap(this.mParamMap);
        }

        public BfSignUpParamBuilder email(String string2) {
            this.mParamMap.put("email", string2);
            return this;
        }

        public BfSignUpParamBuilder host(String string2) {
            this.mParamMap.put("host", string2);
            return this;
        }

        public BfSignUpParamBuilder name(String string2) {
            this.mParamMap.put("name", string2);
            return this;
        }

        public BfSignUpParamBuilder password(String string2) {
            this.mParamMap.put("pw", string2);
            return this;
        }

        public BfSignUpParamBuilder username(String string2) {
            this.mParamMap.put("username", string2);
            return this;
        }
    }

    static interface BuzzfeedAuthService {
        @FormUrlEncoded
        @POST(value="buzzfeed/_www_login")
        public Call<ResponseBody> buzzfeedAuthRequest(@FieldMap Map<String, String> var1);

        @FormUrlEncoded
        @POST(value="buzzfeed/_contribute_register")
        public Call<ResponseBody> signUpToBuzzfeed(@FieldMap Map<String, String> var1);

        @FormUrlEncoded
        @POST(value="buzzfeed/validate")
        public Call<ResponseBody> validateRequest(@FieldMap Map<String, String> var1);
    }

    public static final class FbAuthParamBuilder {
        private static final String KEY_ACCESS_TOKEN = "access_token";
        private static final String KEY_FACEBOOK_UID = "facebook_uid";
        private static final String KEY_FB_USERNAME = "fb_username";
        private HashMap<String, String> mParamMap = new HashMap();

        public FbAuthParamBuilder accessToken(String string2) {
            this.mParamMap.put("access_token", string2);
            return this;
        }

        public Map<String, String> build() {
            this.mParamMap.put("api_client", "android");
            return Collections.unmodifiableMap(this.mParamMap);
        }

        public FbAuthParamBuilder uID(String string2) {
            this.mParamMap.put("facebook_uid", string2);
            return this;
        }

        public FbAuthParamBuilder username(String string2) {
            this.mParamMap.put("fb_username", string2);
            return this;
        }
    }

    public static final class GoogleLoginParamBuilder {
        private static final String GOOGLE_CLIENT_KEY = "client";
        private static final String KEY_OTC = "otc";
        private HashMap<String, String> mParamMap = new HashMap();

        public Map<String, String> build() {
            this.mParamMap.put("contribute", "1");
            this.mParamMap.put("googleplus", "1");
            this.mParamMap.put("client", "android");
            return Collections.unmodifiableMap(this.mParamMap);
        }

        public GoogleLoginParamBuilder otc(String string2) {
            this.mParamMap.put("otc", string2);
            return this;
        }
    }

    public static final class GoogleSignUpParamBuilder {
        private static final String KEY_ALLOW_EMAIL_UPDATES = "allow_email_updates";
        private static final String KEY_COUNTRY = "country";
        public static final String KEY_GOOGLEPLUSID = "googleplus_uid";
        private static final String KEY_GOOGLEPLUS_IMAGE = "googleplus_image";
        private static final String KEY_IMPORT_FB_PROFILE = "import_fb_profile";
        private static final String KEY_LANGUAGE = "language";
        private static final String KEY_SIGNUP_PASSWORD = "pw";
        private static final String KEY_SIGNUP_PASSWORD2 = "pw2";
        private HashMap<String, String> mParamMap = new HashMap();

        public Map<String, String> build() {
            this.mParamMap.put("import_fb_profile", "false");
            this.mParamMap.put("allow_email_updates", "1");
            this.mParamMap.put("googleplus", "1");
            this.mParamMap.put("api_client", "android");
            return Collections.unmodifiableMap(this.mParamMap);
        }

        public GoogleSignUpParamBuilder country(String string2) {
            this.mParamMap.put("country", string2);
            return this;
        }

        public GoogleSignUpParamBuilder host(String string2) {
            this.mParamMap.put("host", string2);
            return this;
        }

        public GoogleSignUpParamBuilder userInfo(JSONObject jSONObject) throws JSONException {
            this.mParamMap.put("display_name", jSONObject.getString("display_name"));
            this.mParamMap.put("name", jSONObject.getString("username"));
            this.mParamMap.put("username", jSONObject.getString("username"));
            this.mParamMap.put("pw", jSONObject.getString("password"));
            this.mParamMap.put("pw2", jSONObject.getString("password"));
            this.mParamMap.put("email", jSONObject.getString("email"));
            this.mParamMap.put("googleplus_uid", jSONObject.getString("googleplus_uid"));
            this.mParamMap.put("googleplus_image", jSONObject.getString("googleplus_image"));
            this.mParamMap.put("language", jSONObject.getString("language"));
            return this;
        }
    }

}

