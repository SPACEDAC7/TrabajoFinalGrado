/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.text.TextUtils
 *  okhttp3.ResponseBody
 */
package com.buzzfeed.toolkit.networking.helpers;

import android.content.Context;
import android.text.TextUtils;
import com.buzzfeed.toolkit.networking.Environment;
import com.buzzfeed.toolkit.networking.helpers.BaseServiceHelper;
import com.buzzfeed.toolkit.util.retrofit.SafeCall;
import com.buzzfeed.toolkit.util.retrofit.SafeCallback;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import okhttp3.ResponseBody;
import retrofit2.Call;
import retrofit2.Retrofit;
import retrofit2.http.GET;
import retrofit2.http.Headers;
import retrofit2.http.Path;
import retrofit2.http.QueryMap;

public class LegacyFeedServiceHelper
extends BaseServiceHelper<LegacyFeedService> {
    public LegacyFeedServiceHelper(Context context, Environment environment) {
        super(context, environment);
    }

    @Override
    protected LegacyFeedService createService(Retrofit retrofit) {
        return (LegacyFeedService)retrofit.create(LegacyFeedService.class);
    }

    public SafeCall<ResponseBody> loadFeeds(String string2, @QueryMap Map<String, String> map, SafeCallback<ResponseBody> safeCallback) {
        String string3 = string2;
        if (!TextUtils.isEmpty((CharSequence)string2)) {
            string3 = string2;
            if (string2.substring(0, 1).equals("/")) {
                string3 = string2.substring(1);
            }
        }
        return this.enqueueSafeRequest(((LegacyFeedService)this.getService()).loadFeeds(string3, map), safeCallback);
    }

    public SafeCall<ResponseBody> searchFeeds(@QueryMap Map<String, String> map, SafeCallback<ResponseBody> safeCallback) {
        return this.enqueueSafeRequest(((LegacyFeedService)this.getService()).searchFeeds(map), safeCallback);
    }

    static interface LegacyFeedService {
        @GET(value="{path}.mobile3.js")
        @Headers(value={"Content-Type: application/json;charset=utf-8"})
        public Call<ResponseBody> loadFeeds(@Path(value="path") String var1, @QueryMap Map<String, String> var2);

        @GET(value="buzzfeed/search2_json")
        @Headers(value={"Content-Type: application/json;charset=utf-8"})
        public Call<ResponseBody> searchFeeds(@QueryMap Map<String, String> var1);
    }

    public static final class QueryParamsBuilder {
        private static final String COUNTRY_PARAM = "country";
        private static final String KEY_NO_CACHE = "no_cache";
        private static final String PAGE_PARAM = "p";
        private HashMap<String, String> mParamMap = new HashMap();

        public Map<String, String> build() {
            return Collections.unmodifiableMap(this.mParamMap);
        }

        public QueryParamsBuilder country(String string2) {
            this.mParamMap.put("country", string2);
            return this;
        }

        public QueryParamsBuilder noCache(boolean bl) {
            if (bl) {
                this.mParamMap.put("no_cache", String.valueOf(true));
            }
            return this;
        }

        public QueryParamsBuilder page(String string2) {
            this.mParamMap.put("p", string2);
            return this;
        }
    }

    public static final class SearchParamsBuilder {
        private static final String MOBILE_APP_PARAM_KEY = "s";
        private static final String MOBILE_APP_PARAM_VALUE = "mobile_app";
        private static final String MOBILE_SEARCH_QUERY_PARAM_KEY = "q";
        private HashMap<String, String> mParamMap = new HashMap();

        public Map<String, String> build() {
            this.mParamMap.put("s", "mobile_app");
            return Collections.unmodifiableMap(this.mParamMap);
        }

        public SearchParamsBuilder query(String string2) {
            this.mParamMap.put("q", string2);
            return this;
        }
    }

}

