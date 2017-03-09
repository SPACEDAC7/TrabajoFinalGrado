/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  okhttp3.ResponseBody
 */
package com.buzzfeed.toolkit.networking.helpers;

import android.content.Context;
import com.buzzfeed.toolkit.networking.Environment;
import com.buzzfeed.toolkit.networking.helpers.BaseServiceHelper;
import com.buzzfeed.toolkit.util.retrofit.SafeCall;
import java.lang.annotation.Annotation;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import okhttp3.ResponseBody;
import retrofit2.Call;
import retrofit2.Retrofit;
import retrofit2.http.FieldMap;
import retrofit2.http.FormUrlEncoded;
import retrofit2.http.POST;

public class ReactionsServiceHelper
extends BaseServiceHelper<ReactionsService> {
    public ReactionsServiceHelper(Context context, Environment environment) {
        super(context, environment);
    }

    @Override
    protected ReactionsService createService(Retrofit retrofit) {
        return (ReactionsService)retrofit.create(ReactionsService.class);
    }

    public SafeCall<ResponseBody> getCsrfTokenInternal(@FieldMap Map<String, String> map) {
        return this.createSafeRequest(((ReactionsService)this.getService()).getCsrfTokenInternal(map));
    }

    public SafeCall<ResponseBody> postReactionToServer(@FieldMap Map<String, String> map) {
        return this.createSafeRequest(((ReactionsService)this.getService()).postReactionToServer(map));
    }

    @Retention(value=RetentionPolicy.SOURCE)
    public static @interface CategoryValues {
        public static final String BADGE = "badge";
        public static final String LOVE_OR_HATE = "love_or_hate";
    }

    public static final class CrsfTokenRequestParamBuilder {
        static final String KEY_ACTION_VALUE = "get_token";
        private HashMap<String, String> mParamMap = new HashMap();

        public Map<String, String> build() {
            this.mParamMap.put("api_client", "android");
            this.mParamMap.put("action", "get_token");
            return Collections.unmodifiableMap(this.mParamMap);
        }

        public CrsfTokenRequestParamBuilder sessionKey(String string2) {
            this.mParamMap.put("session_key", string2);
            return this;
        }
    }

    final class ParamKeys {
        static final String ACTION = "action";
        static final String BADGE_ID = "badge_id";
        static final String BUZZ_ID = "buzz_id";
        static final String CATEGORY = "category";
        static final String MULTIPLE_RESULT_FORMAT = "multiple_result_format";
        static final String SESSION_KEY = "session_key";
        static final String URI = "uri";
        static final String USER_TOKEN = "user_token";
        static final String VALUE = "value";

        ParamKeys() {
        }
    }

    public static final class ReactionRequestParamBuilder {
        static final String ACTION_VOTE = "vote";
        private HashMap<String, String> mParamMap = new HashMap();

        public ReactionRequestParamBuilder badgeId(String string2) {
            this.mParamMap.put("badge_id", string2);
            return this;
        }

        public Map<String, String> build() {
            this.mParamMap.put("api_client", "android");
            this.mParamMap.put("action", "vote");
            return Collections.unmodifiableMap(this.mParamMap);
        }

        public ReactionRequestParamBuilder buzzId(String string2) {
            this.mParamMap.put("buzz_id", string2);
            return this;
        }

        public ReactionRequestParamBuilder category(String string2) {
            this.mParamMap.put("category", string2);
            if ("badge".equals(string2)) {
                this.mParamMap.put("multiple_result_format", "true");
            }
            return this;
        }

        public ReactionRequestParamBuilder sessionKey(String string2) {
            this.mParamMap.put("session_key", string2);
            return this;
        }

        public ReactionRequestParamBuilder uri(String string2) {
            this.mParamMap.put("uri", string2);
            return this;
        }

        public ReactionRequestParamBuilder userToken(String string2) {
            this.mParamMap.put("user_token", string2);
            return this;
        }

        public ReactionRequestParamBuilder value(String string2) {
            this.mParamMap.put("value", string2);
            return this;
        }
    }

    static interface ReactionsService {
        @FormUrlEncoded
        @POST(value="buzzfeed/_admin_user")
        public Call<ResponseBody> getCsrfTokenInternal(@FieldMap Map<String, String> var1);

        @FormUrlEncoded
        @POST(value="buzzfeed/_badge_vote")
        public Call<ResponseBody> postReactionToServer(@FieldMap Map<String, String> var1);
    }

}

