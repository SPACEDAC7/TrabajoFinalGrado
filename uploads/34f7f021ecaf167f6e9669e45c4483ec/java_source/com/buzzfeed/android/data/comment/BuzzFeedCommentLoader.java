/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Context
 *  android.widget.Toast
 *  okhttp3.ResponseBody
 *  org.json.JSONArray
 *  org.json.JSONException
 *  org.json.JSONObject
 *  retrofit2.Response
 */
package com.buzzfeed.android.data.comment;

import android.content.Context;
import android.widget.Toast;
import com.buzzfeed.android.data.BuzzUser;
import com.buzzfeed.android.data.comment.BuzzFeedComment;
import com.buzzfeed.android.data.comment.Comment;
import com.buzzfeed.android.data.comment.CommentListCache;
import com.buzzfeed.android.data.comment.CommentListMapCache;
import com.buzzfeed.toolkit.content.PostContent;
import com.buzzfeed.toolkit.networking.NetworkService;
import com.buzzfeed.toolkit.networking.helpers.CommentServiceHelper;
import com.buzzfeed.toolkit.util.HttpErrorParser;
import com.buzzfeed.toolkit.util.LogUtil;
import com.buzzfeed.toolkit.util.retrofit.SafeCall;
import com.buzzfeed.toolkit.util.retrofit.SafeCallback;
import com.buzzfeed.toolkit.util.retrofit.StringCallback;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import okhttp3.ResponseBody;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import retrofit2.Call;
import retrofit2.Response;

public class BuzzFeedCommentLoader {
    public static final int BUZZFEED_COMMENTS = 0;
    public static final int FACEBOOK_COMMENTS = 1;
    public static final String FB_LIKE_FAIL = "unlike_success";
    public static final String FB_LIKE_SUCCESS = "like_success";
    public static final String HATE_FAILED = "hate_failed";
    public static final String HATE_SUCCESS = "hate_success";
    public static final String HEART_FAILED = "heart_failed";
    public static final String HEART_SUCCESS = "heart_success";
    private static final String TAG = BuzzFeedCommentLoader.class.getSimpleName();
    public static final String TEXT_CONTRIBUTION_BUZZ_ID = "buzz_id";
    public static final String TEXT_CONTRIBUTION_FORM = "form";
    public static final String TEXT_CONTRIBUTION_PARENT_ID = "parent_id";
    private BuzzUser buzzUser;
    private ArrayList<Comment> commentsList;
    private String errorMsg;
    private boolean hasMore = false;
    private CommentListCache mCommentListCache;
    private CommentServiceHelper mCommentServiceHelper;
    private Context mContext;
    private volatile boolean mIsLoading = false;
    private String next;
    private int page = 1;
    private boolean successfulPost;
    private CommentLoaderListener uiCallback;
    private String version;

    public BuzzFeedCommentLoader(Context context) {
        this.mContext = context.getApplicationContext();
        this.commentsList = new ArrayList();
        this.buzzUser = BuzzUser.getInstance(context);
        this.mCommentListCache = CommentListMapCache.getInstance();
        this.mCommentServiceHelper = NetworkService.getCommentService();
    }

    /*
     * Enabled aggressive block sorting
     */
    private void parseBuzzFeedComments(JSONObject jSONObject) {
        String string2 = TAG + ".parseComments";
        if ((jSONObject = jSONObject.optJSONArray("comments")) == null || jSONObject.length() == 0) {
            return;
        }
        int n2 = 0;
        while (n2 < jSONObject.length()) {
            Object object = jSONObject.optJSONObject(n2);
            if ((object = new BuzzFeedComment(this.mContext, (JSONObject)object)).isValid()) {
                this.commentsList.add((Comment)object);
            } else {
                LogUtil.w(string2, "Comment was not valid; skipping it: " + object.toString());
            }
            ++n2;
        }
    }

    private void reportUpdateCommentFailure(boolean bl, BuzzFeedComment buzzFeedComment) {
        if (bl) {
            this.uiCallback.onFailure("heart_failed", buzzFeedComment);
            return;
        }
        this.uiCallback.onFailure("hate_failed", buzzFeedComment);
    }

    public void getBuzzFeedComments(PostContent object, boolean bl) {
        Object object2 = TAG + ".getComments";
        object = object.getId();
        this.mIsLoading = true;
        Object object3 = new CommentServiceHelper.QueryParamsBuilder();
        if (this.hasMore() && bl) {
            object3.cacheBuster(this.version).page(String.valueOf(this.page + 1));
        }
        object3 = object3.build();
        object2 = new StringCallback((String)object2, (String)object){
            final /* synthetic */ String val$TAG;
            final /* synthetic */ String val$buzzId;

            @Override
            public void onFailure(Call<ResponseBody> call, Throwable throwable) {
                LogUtil.e(this.val$TAG, "Error fetching comments", throwable);
                BuzzFeedCommentLoader.this.mIsLoading = false;
            }

            @Override
            protected void onNetworkError(Call<ResponseBody> object, Response<ResponseBody> response) {
                object = HttpErrorParser.createExceptionOnHttpError(response.code());
                LogUtil.e(this.val$TAG, "Network Response Error", (Throwable)object);
                Toast.makeText((Context)BuzzFeedCommentLoader.this.mContext, (int)2131296567, (int)0).show();
            }

            /*
             * Enabled aggressive block sorting
             * Enabled unnecessary exception pruning
             * Enabled aggressive exception aggregation
             */
            @Override
            public void onStringResponse(String string2) {
                try {
                    JSONObject jSONObject = new JSONObject(string2);
                    if (jSONObject.optInt("success") == 1) {
                        LogUtil.d(this.val$TAG, "comments response: " + string2);
                        string2 = jSONObject.optJSONObject("paging");
                        if (string2 != null) {
                            BuzzFeedCommentLoader.this.hasMore = string2.has("next");
                            BuzzFeedCommentLoader.this.page = string2.optInt("current");
                            if (BuzzFeedCommentLoader.this.page == 1) {
                                BuzzFeedCommentLoader.this.version = string2.optString("cb");
                            }
                        } else {
                            BuzzFeedCommentLoader.this.hasMore = false;
                        }
                        int n2 = BuzzFeedCommentLoader.this.commentsList.size();
                        BuzzFeedCommentLoader.this.parseBuzzFeedComments(jSONObject);
                        BuzzFeedCommentLoader.this.mCommentListCache.putCommentList(this.val$buzzId, BuzzFeedCommentLoader.this.commentsList);
                        if (BuzzFeedCommentLoader.this.uiCallback == null) return;
                        BuzzFeedCommentLoader.this.uiCallback.onCommentLoadComplete(true, 0, n2);
                        return;
                    }
                }
                catch (JSONException var1_2) {
                    LogUtil.e(this.val$TAG, "error", (Throwable)var1_2);
                    Toast.makeText((Context)BuzzFeedCommentLoader.this.mContext, (int)2131296567, (int)0).show();
                    return;
                }
                LogUtil.e(this.val$TAG, "Success value was false; response: " + string2);
                if (BuzzFeedCommentLoader.this.uiCallback == null) return;
                BuzzFeedCommentLoader.this.uiCallback.onCommentLoadComplete(false, 0, BuzzFeedCommentLoader.this.commentsList.size());
                return;
                finally {
                    BuzzFeedCommentLoader.this.mIsLoading = false;
                    return;
                }
            }
        };
        this.mCommentServiceHelper.getComments((String)object, (Map<String, String>)object3, (SafeCallback<ResponseBody>)object2);
    }

    public ArrayList<Comment> getCommentList() {
        return this.commentsList;
    }

    public boolean hasMore() {
        return this.hasMore;
    }

    public boolean isLoading() {
        return this.mIsLoading;
    }

    public void setListener(CommentLoaderListener commentLoaderListener) {
        this.uiCallback = commentLoaderListener;
    }

    /*
     * Enabled aggressive block sorting
     */
    public void updateComment(BuzzFeedComment object, final boolean bl) {
        final String string2 = TAG + ".updateComment";
        Object object2 = new CommentServiceHelper.PostTextParamBuilder();
        if (bl) {
            object2.form("loves");
        } else {
            object2.form("hates");
        }
        object2.sessionKey(this.buzzUser.getSessionKey()).buzzId(object.getBuzzId()).parentId(object.getCommentId());
        object2 = object2.build();
        object = new StringCallback((BuzzFeedComment)object){
            final /* synthetic */ BuzzFeedComment val$comment;

            @Override
            public void onFailure(Call<ResponseBody> call, Throwable throwable) {
                LogUtil.d(string2, "Contribute response: " + throwable.toString());
                BuzzFeedCommentLoader.this.reportUpdateCommentFailure(bl, this.val$comment);
            }

            @Override
            protected void onNetworkError(Call<ResponseBody> object, Response<ResponseBody> response) {
                object = HttpErrorParser.createExceptionOnHttpError(response.code());
                LogUtil.e(string2, "Error updating comment", (Throwable)object);
                BuzzFeedCommentLoader.this.successfulPost = false;
                BuzzFeedCommentLoader.this.reportUpdateCommentFailure(bl, this.val$comment);
            }

            /*
             * Enabled aggressive block sorting
             * Enabled unnecessary exception pruning
             * Enabled aggressive exception aggregation
             */
            @Override
            public void onStringResponse(String object) {
                block11 : {
                    boolean bl2 = true;
                    try {
                        JSONObject jSONObject = new JSONObject((String)object);
                        LogUtil.d(string2, "Contribute response: " + (String)object);
                        object = BuzzFeedCommentLoader.this;
                        if (jSONObject.optInt("success") != 1) {
                            bl2 = false;
                        }
                        ((BuzzFeedCommentLoader)object).successfulPost = bl2;
                        if (BuzzFeedCommentLoader.this.successfulPost) {
                            if (bl) {
                                this.val$comment.love();
                                if (BuzzFeedCommentLoader.this.uiCallback != null) {
                                    BuzzFeedCommentLoader.this.uiCallback.onSuccess("heart_success", this.val$comment);
                                }
                            } else {
                                this.val$comment.hate();
                                if (BuzzFeedCommentLoader.this.uiCallback != null) {
                                    BuzzFeedCommentLoader.this.uiCallback.onSuccess("hate_success", this.val$comment);
                                }
                            }
                            BuzzFeedCommentLoader.this.mCommentListCache.replaceComment(this.val$comment, this.val$comment.getBuzzId());
                            return;
                        }
                        BuzzFeedCommentLoader.this.errorMsg = jSONObject.optString("error");
                        if (!bl) break block11;
                        LogUtil.e(string2, "Hearting comment failed: " + BuzzFeedCommentLoader.this.errorMsg);
                        if (BuzzFeedCommentLoader.this.uiCallback == null) return;
                        {
                            BuzzFeedCommentLoader.this.uiCallback.onFailure("heart_failed", this.val$comment);
                            return;
                        }
                    }
                    catch (JSONException var1_2) {
                        LogUtil.e(string2, "Error updating comment", (Throwable)var1_2);
                        BuzzFeedCommentLoader.this.successfulPost = false;
                        BuzzFeedCommentLoader.this.reportUpdateCommentFailure(bl, this.val$comment);
                        return;
                    }
                }
                LogUtil.e(string2, "Hating comment failed: " + BuzzFeedCommentLoader.this.errorMsg);
                if (BuzzFeedCommentLoader.this.uiCallback == null) return;
                {
                    BuzzFeedCommentLoader.this.uiCallback.onFailure("hate_failed", this.val$comment);
                }
            }
        };
        this.mCommentServiceHelper.updateComment((Map<String, String>)object2, (SafeCallback<ResponseBody>)object);
    }

    public static interface CommentLoaderListener {
        public void onCommentLoadComplete(boolean var1, int var2, int var3);

        public void onFailure(String var1, Comment var2);

        public void onSuccess(String var1, Comment var2);
    }

}

