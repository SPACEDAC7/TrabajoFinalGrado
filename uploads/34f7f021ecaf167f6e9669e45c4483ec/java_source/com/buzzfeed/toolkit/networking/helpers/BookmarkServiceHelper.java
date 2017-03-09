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
import com.buzzfeed.toolkit.util.retrofit.SafeCallback;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import okhttp3.ResponseBody;
import retrofit2.Call;
import retrofit2.Retrofit;
import retrofit2.http.FieldMap;
import retrofit2.http.FormUrlEncoded;
import retrofit2.http.GET;
import retrofit2.http.POST;
import retrofit2.http.QueryMap;

public class BookmarkServiceHelper
extends BaseServiceHelper<BookmarkService> {
    private static final String API_CLIENT = "api_client";
    private static final String API_CLIENT_VALUE = "android";

    public BookmarkServiceHelper(Context context, Environment environment) {
        super(context, environment);
        this.noCache();
    }

    public SafeCall<ResponseBody> addBookmarks(Map<String, String> map, SafeCallback<ResponseBody> safeCallback) {
        return this.enqueueSafeRequest(((BookmarkService)this.getService()).addBookmarks(map), safeCallback);
    }

    @Override
    protected BookmarkService createService(Retrofit retrofit) {
        return (BookmarkService)retrofit.create(BookmarkService.class);
    }

    public SafeCall<ResponseBody> getBookmarksList(Map<String, String> map, SafeCallback<ResponseBody> safeCallback) {
        return this.enqueueSafeRequest(((BookmarkService)this.getService()).getBookmarksList(map), safeCallback);
    }

    static interface BookmarkService {
        @FormUrlEncoded
        @POST(value="buzzfeed/api/bookmarks")
        public Call<ResponseBody> addBookmarks(@FieldMap Map<String, String> var1);

        @GET(value="buzzfeed/api/bookmarks")
        public Call<ResponseBody> getBookmarksList(@QueryMap Map<String, String> var1);
    }

    public static final class ParamBuilder {
        private static final String KEY_BOOKMARKS = "bookmarks";
        private static final String KEY_BUZZ_ID = "buzz_id";
        private static final String KEY_FILTER = "filter";
        private static final String KEY_METHOD = "_method";
        private static final String KEY_NO_CACHE = "no_cache";
        private static final String KEY_SESSION_KEY = "session_key";
        private static final String KEY_SYNC_ID = "sync_id";
        private static final String KEY_USER_ID = "user_id";
        private HashMap<String, String> mParamMap = new HashMap();

        public ParamBuilder bookmarks(String string2) {
            this.mParamMap.put("bookmarks", string2);
            return this;
        }

        public Map<String, String> build() {
            this.mParamMap.put("api_client", "android");
            return Collections.unmodifiableMap(this.mParamMap);
        }

        public ParamBuilder buzzId(String string2) {
            this.mParamMap.put("buzz_id", string2);
            return this;
        }

        public ParamBuilder filter(String string2) {
            this.mParamMap.put("filter", string2);
            return this;
        }

        public ParamBuilder method(String string2) {
            this.mParamMap.put("_method", string2);
            return this;
        }

        public ParamBuilder noCache(boolean bl) {
            if (bl) {
                this.mParamMap.put("no_cache", String.valueOf(true));
            }
            return this;
        }

        public ParamBuilder sessionKey(String string2) {
            this.mParamMap.put("session_key", string2);
            return this;
        }

        public ParamBuilder syncId(String string2) {
            this.mParamMap.put("sync_id", string2);
            return this;
        }

        public ParamBuilder userId(String string2) {
            this.mParamMap.put("user_id", string2);
            return this;
        }
    }

}

