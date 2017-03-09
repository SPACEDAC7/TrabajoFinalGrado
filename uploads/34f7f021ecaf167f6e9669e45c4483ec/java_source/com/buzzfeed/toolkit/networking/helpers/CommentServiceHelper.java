/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  okhttp3.MultipartBody
 *  okhttp3.MultipartBody$Part
 *  okhttp3.RequestBody
 *  okhttp3.ResponseBody
 */
package com.buzzfeed.toolkit.networking.helpers;

import android.content.Context;
import com.buzzfeed.toolkit.networking.Environment;
import com.buzzfeed.toolkit.networking.helpers.BaseServiceHelper;
import com.buzzfeed.toolkit.util.MultipartRequestHelper;
import com.buzzfeed.toolkit.util.retrofit.SafeCall;
import com.buzzfeed.toolkit.util.retrofit.SafeCallback;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import okhttp3.MultipartBody;
import okhttp3.RequestBody;
import okhttp3.ResponseBody;
import retrofit2.Call;
import retrofit2.Retrofit;
import retrofit2.http.FieldMap;
import retrofit2.http.FormUrlEncoded;
import retrofit2.http.GET;
import retrofit2.http.Multipart;
import retrofit2.http.POST;
import retrofit2.http.Part;
import retrofit2.http.PartMap;
import retrofit2.http.Path;
import retrofit2.http.QueryMap;

public class CommentServiceHelper
extends BaseServiceHelper<CommentService> {
    private static final String SESSION_KEY = "session_key";

    public CommentServiceHelper(Context context, Environment environment) {
        super(context, environment);
        this.noCache();
    }

    @Override
    protected CommentService createService(Retrofit retrofit) {
        return (CommentService)retrofit.create(CommentService.class);
    }

    public SafeCall<ResponseBody> getComments(String string2, Map<String, String> map, SafeCallback<ResponseBody> safeCallback) {
        return this.enqueueSafeRequest(((CommentService)this.getService()).getComments(string2, map), safeCallback);
    }

    public SafeCall<ResponseBody> postText(@FieldMap Map<String, String> map) {
        return this.createSafeRequest(((CommentService)this.getService()).postContent(map));
    }

    public SafeCall<ResponseBody> saveImage(@FieldMap Map<String, String> map) {
        return this.createSafeRequest(((CommentService)this.getService()).postContent(map));
    }

    public SafeCall<ResponseBody> updateComment(@FieldMap Map<String, String> map, SafeCallback<ResponseBody> safeCallback) {
        return this.enqueueSafeRequest(((CommentService)this.getService()).postContent(map), safeCallback);
    }

    public SafeCall<ResponseBody> uploadImage(@Part MultipartBody.Part part, @PartMap HashMap<String, RequestBody> hashMap) {
        return this.createSafeRequest(((CommentService)this.getService()).uploadImage(part, hashMap));
    }

    static interface CommentService {
        @GET(value="api/comments/{path}")
        public Call<ResponseBody> getComments(@Path(value="path") String var1, @QueryMap Map<String, String> var2);

        @FormUrlEncoded
        @POST(value="buzzfeed/api/comments")
        public Call<ResponseBody> postContent(@FieldMap Map<String, String> var1);

        @Multipart
        @POST(value="bfcgi/_edit_photo_editor_image")
        public Call<ResponseBody> uploadImage(@Part MultipartBody.Part var1, @PartMap HashMap<String, RequestBody> var2);
    }

    public static final class ImageSaveParamBuilder {
        private static final String IMAGE_CONTRIBUTION_BLURB = "blurb";
        private static final String IMAGE_CONTRIBUTION_BUZZ_ID = "buzz_id";
        private static final String IMAGE_CONTRIBUTION_FORM = "form";
        private static final String IMAGE_CONTRIBUTION_HEIGHT = "height";
        private static final String IMAGE_CONTRIBUTION_URL = "url";
        private static final String IMAGE_CONTRIBUTION_WIDTH = "width";
        private HashMap<String, String> mParamMap = new HashMap();

        public ImageSaveParamBuilder blurb(String string2) {
            this.mParamMap.put("blurb", string2);
            return this;
        }

        public Map<String, String> build() {
            this.mParamMap.put("api_client", "android");
            return Collections.unmodifiableMap(this.mParamMap);
        }

        public ImageSaveParamBuilder buzzId(String string2) {
            this.mParamMap.put("buzz_id", string2);
            return this;
        }

        public ImageSaveParamBuilder form(String string2) {
            this.mParamMap.put("form", string2);
            return this;
        }

        public ImageSaveParamBuilder height(String string2) {
            this.mParamMap.put("height", string2);
            return this;
        }

        public ImageSaveParamBuilder sessionKey(String string2) {
            this.mParamMap.put("session_key", string2);
            return this;
        }

        public ImageSaveParamBuilder url(String string2) {
            this.mParamMap.put("url", string2);
            return this;
        }

        public ImageSaveParamBuilder width(String string2) {
            this.mParamMap.put("width", string2);
            return this;
        }
    }

    public static final class ImageUploadParamBuilder {
        static final String IMAGE_CONTRIBUTION_ACTION = "action";
        static final String IMAGE_CONTRIBUTION_MIN_HEIGHT = "minHeight";
        static final String IMAGE_CONTRIBUTION_MIN_WIDTH = "minWidth";
        static final String PARAM_MIN_HEIGHT = "1";
        static final String PARAM_MIN_WIDTH = "1";
        static final String PARAM_UPLOAD_ACTION = "imageupload";
        private HashMap<String, RequestBody> mParamMap = new HashMap();

        public HashMap<String, RequestBody> build() {
            RequestBody requestBody = MultipartRequestHelper.createPartFromString("android");
            RequestBody requestBody2 = MultipartRequestHelper.createPartFromString("1");
            RequestBody requestBody3 = MultipartRequestHelper.createPartFromString("1");
            RequestBody requestBody4 = MultipartRequestHelper.createPartFromString("imageupload");
            this.mParamMap.put("minHeight", requestBody2);
            this.mParamMap.put("minWidth", requestBody3);
            this.mParamMap.put("action", requestBody4);
            this.mParamMap.put("api_client", requestBody);
            return this.mParamMap;
        }
    }

    public static final class PostTextParamBuilder {
        static final String TEXT_CONTRIBUTION_BLURB = "blurb";
        static final String TEXT_CONTRIBUTION_BUZZ_ID = "buzz_id";
        static final String TEXT_CONTRIBUTION_FORM = "form";
        static final String TEXT_CONTRIBUTION_PARENT_ID = "parent_id";
        private HashMap<String, String> mParamMap = new HashMap();

        public PostTextParamBuilder blurb(String string2) {
            this.mParamMap.put("blurb", string2);
            return this;
        }

        public Map<String, String> build() {
            this.mParamMap.put("api_client", "android");
            return Collections.unmodifiableMap(this.mParamMap);
        }

        public PostTextParamBuilder buzzId(String string2) {
            this.mParamMap.put("buzz_id", string2);
            return this;
        }

        public PostTextParamBuilder form(String string2) {
            this.mParamMap.put("form", string2);
            return this;
        }

        public PostTextParamBuilder parentId(String string2) {
            this.mParamMap.put("parent_id", string2);
            return this;
        }

        public PostTextParamBuilder sessionKey(String string2) {
            this.mParamMap.put("session_key", string2);
            return this;
        }
    }

    public static final class QueryParamsBuilder {
        private static final String CACHE_BUSTER_PARAM = "cb";
        private static final String CONTRIBUTIONS = "contributions";
        private static final String FACEBOOK_PAGE_PARAM = "after";
        private static final String PAGE_PARAM = "p";
        private static final String REQUEST_TYPE = "type";
        private HashMap<String, String> mParamMap = new HashMap();

        public Map<String, String> build() {
            this.mParamMap.put("type", "contributions");
            return Collections.unmodifiableMap(this.mParamMap);
        }

        public QueryParamsBuilder cacheBuster(String string2) {
            this.mParamMap.put("cb", string2);
            return this;
        }

        public QueryParamsBuilder facebookPage(String string2) {
            this.mParamMap.put("after", string2);
            return this;
        }

        public QueryParamsBuilder page(String string2) {
            this.mParamMap.put("p", string2);
            return this;
        }
    }

}

