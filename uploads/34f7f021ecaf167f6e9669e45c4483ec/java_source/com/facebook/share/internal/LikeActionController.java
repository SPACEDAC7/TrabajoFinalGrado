/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.app.Activity
 *  android.content.Context
 *  android.content.Intent
 *  android.content.SharedPreferences
 *  android.content.SharedPreferences$Editor
 *  android.os.Bundle
 *  android.os.Handler
 *  android.os.Looper
 *  android.util.Log
 *  org.json.JSONException
 *  org.json.JSONObject
 */
package com.facebook.share.internal;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.support.v4.app.Fragment;
import android.support.v4.content.LocalBroadcastManager;
import android.util.Log;
import com.facebook.AccessToken;
import com.facebook.AccessTokenTracker;
import com.facebook.FacebookCallback;
import com.facebook.FacebookException;
import com.facebook.FacebookOperationCanceledException;
import com.facebook.FacebookRequestError;
import com.facebook.FacebookSdk;
import com.facebook.GraphRequest;
import com.facebook.GraphRequestAsyncTask;
import com.facebook.GraphRequestBatch;
import com.facebook.GraphResponse;
import com.facebook.HttpMethod;
import com.facebook.LoggingBehavior;
import com.facebook.appevents.AppEventsLogger;
import com.facebook.internal.AppCall;
import com.facebook.internal.BundleJSONConverter;
import com.facebook.internal.CallbackManagerImpl;
import com.facebook.internal.FileLruCache;
import com.facebook.internal.Logger;
import com.facebook.internal.NativeProtocol;
import com.facebook.internal.PlatformServiceClient;
import com.facebook.internal.Utility;
import com.facebook.internal.WorkQueue;
import com.facebook.share.internal.LikeContent;
import com.facebook.share.internal.LikeDialog;
import com.facebook.share.internal.LikeStatusClient;
import com.facebook.share.internal.ResultProcessor;
import com.facebook.share.internal.ShareInternalUtility;
import com.facebook.share.widget.LikeView;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Locale;
import java.util.Set;
import java.util.UUID;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONException;
import org.json.JSONObject;

public class LikeActionController {
    public static final String ACTION_LIKE_ACTION_CONTROLLER_DID_ERROR = "com.facebook.sdk.LikeActionController.DID_ERROR";
    public static final String ACTION_LIKE_ACTION_CONTROLLER_DID_RESET = "com.facebook.sdk.LikeActionController.DID_RESET";
    public static final String ACTION_LIKE_ACTION_CONTROLLER_UPDATED = "com.facebook.sdk.LikeActionController.UPDATED";
    public static final String ACTION_OBJECT_ID_KEY = "com.facebook.sdk.LikeActionController.OBJECT_ID";
    private static final int ERROR_CODE_OBJECT_ALREADY_LIKED = 3501;
    public static final String ERROR_INVALID_OBJECT_ID = "Invalid Object Id";
    public static final String ERROR_PUBLISH_ERROR = "Unable to publish the like/unlike action";
    private static final String JSON_BOOL_IS_OBJECT_LIKED_KEY = "is_object_liked";
    private static final String JSON_BUNDLE_FACEBOOK_DIALOG_ANALYTICS_BUNDLE = "facebook_dialog_analytics_bundle";
    private static final String JSON_INT_OBJECT_TYPE_KEY = "object_type";
    private static final String JSON_INT_VERSION_KEY = "com.facebook.share.internal.LikeActionController.version";
    private static final String JSON_STRING_LIKE_COUNT_WITHOUT_LIKE_KEY = "like_count_string_without_like";
    private static final String JSON_STRING_LIKE_COUNT_WITH_LIKE_KEY = "like_count_string_with_like";
    private static final String JSON_STRING_OBJECT_ID_KEY = "object_id";
    private static final String JSON_STRING_SOCIAL_SENTENCE_WITHOUT_LIKE_KEY = "social_sentence_without_like";
    private static final String JSON_STRING_SOCIAL_SENTENCE_WITH_LIKE_KEY = "social_sentence_with_like";
    private static final String JSON_STRING_UNLIKE_TOKEN_KEY = "unlike_token";
    private static final String LIKE_ACTION_CONTROLLER_STORE = "com.facebook.LikeActionController.CONTROLLER_STORE_KEY";
    private static final String LIKE_ACTION_CONTROLLER_STORE_OBJECT_SUFFIX_KEY = "OBJECT_SUFFIX";
    private static final String LIKE_ACTION_CONTROLLER_STORE_PENDING_OBJECT_ID_KEY = "PENDING_CONTROLLER_KEY";
    private static final int LIKE_ACTION_CONTROLLER_VERSION = 3;
    private static final String LIKE_DIALOG_RESPONSE_LIKE_COUNT_STRING_KEY = "like_count_string";
    private static final String LIKE_DIALOG_RESPONSE_OBJECT_IS_LIKED_KEY = "object_is_liked";
    private static final String LIKE_DIALOG_RESPONSE_SOCIAL_SENTENCE_KEY = "social_sentence";
    private static final String LIKE_DIALOG_RESPONSE_UNLIKE_TOKEN_KEY = "unlike_token";
    private static final int MAX_CACHE_SIZE = 128;
    private static final int MAX_OBJECT_SUFFIX = 1000;
    private static final String TAG = LikeActionController.class.getSimpleName();
    private static AccessTokenTracker accessTokenTracker;
    private static final ConcurrentHashMap<String, LikeActionController> cache;
    private static FileLruCache controllerDiskCache;
    private static WorkQueue diskIOWorkQueue;
    private static Handler handler;
    private static boolean isInitialized;
    private static WorkQueue mruCacheWorkQueue;
    private static String objectIdForPendingController;
    private static volatile int objectSuffix;
    private AppEventsLogger appEventsLogger;
    private Bundle facebookDialogAnalyticsBundle;
    private boolean isObjectLiked;
    private boolean isObjectLikedOnServer;
    private boolean isPendingLikeOrUnlike;
    private String likeCountStringWithLike;
    private String likeCountStringWithoutLike;
    private String objectId;
    private boolean objectIsPage;
    private LikeView.ObjectType objectType;
    private String socialSentenceWithLike;
    private String socialSentenceWithoutLike;
    private String unlikeToken;
    private String verifiedObjectId;

    static {
        cache = new ConcurrentHashMap();
        mruCacheWorkQueue = new WorkQueue(1);
        diskIOWorkQueue = new WorkQueue(1);
    }

    private LikeActionController(String string2, LikeView.ObjectType objectType) {
        this.objectId = string2;
        this.objectType = objectType;
    }

    private static void broadcastAction(LikeActionController likeActionController, String string2) {
        LikeActionController.broadcastAction(likeActionController, string2, null);
    }

    private static void broadcastAction(LikeActionController likeActionController, String string2, Bundle bundle) {
        Intent intent = new Intent(string2);
        string2 = bundle;
        if (likeActionController != null) {
            string2 = bundle;
            if (bundle == null) {
                string2 = new Bundle();
            }
            string2.putString("com.facebook.sdk.LikeActionController.OBJECT_ID", likeActionController.getObjectId());
        }
        if (string2 != null) {
            intent.putExtras((Bundle)string2);
        }
        LocalBroadcastManager.getInstance(FacebookSdk.getApplicationContext()).sendBroadcast(intent);
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    private static boolean canLike(LikeView.ObjectType object) {
        if (LikeDialog.canShowNativeDialog()) return true;
        if (LikeDialog.canShowWebFallback()) {
            return true;
        }
        if (object == LikeView.ObjectType.PAGE) {
            return false;
        }
        object = AccessToken.getCurrentAccessToken();
        if (object == null) return false;
        if (object.getPermissions() == null) return false;
        if (object.getPermissions().contains("publish_actions")) return true;
        return false;
    }

    private boolean canUseOGPublish() {
        AccessToken accessToken = AccessToken.getCurrentAccessToken();
        if (!this.objectIsPage && this.verifiedObjectId != null && accessToken != null && accessToken.getPermissions() != null && accessToken.getPermissions().contains("publish_actions")) {
            return true;
        }
        return false;
    }

    private void clearState() {
        this.facebookDialogAnalyticsBundle = null;
        LikeActionController.storeObjectIdForPendingController(null);
    }

    private static void createControllerForObjectIdAndType(String string2, LikeView.ObjectType objectType, CreationCallback creationCallback) {
        LikeActionController likeActionController;
        final LikeActionController likeActionController2 = LikeActionController.getControllerFromInMemoryCache(string2);
        if (likeActionController2 != null) {
            LikeActionController.verifyControllerAndInvokeCallback(likeActionController2, objectType, creationCallback);
            return;
        }
        likeActionController2 = likeActionController = LikeActionController.deserializeFromDiskSynchronously(string2);
        if (likeActionController == null) {
            likeActionController2 = new LikeActionController(string2, objectType);
            LikeActionController.serializeToDiskAsync(likeActionController2);
        }
        LikeActionController.putControllerInMemoryCache(string2, likeActionController2);
        handler.post(new Runnable(){

            @Override
            public void run() {
                likeActionController2.refreshStatusAsync();
            }
        });
        LikeActionController.invokeCallbackWithController(creationCallback, likeActionController2, null);
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private static LikeActionController deserializeFromDiskSynchronously(String object) {
        InputStream inputStream;
        Object object2;
        block8 : {
            Object var4_3 = null;
            Object object3 = null;
            InputStream inputStream2 = inputStream = null;
            object2 = object3;
            object = LikeActionController.getCacheKeyForObjectId((String)object);
            inputStream2 = inputStream;
            object2 = object3;
            inputStream = controllerDiskCache.get((String)object);
            object = var4_3;
            if (inputStream == null) break block8;
            inputStream2 = inputStream;
            object2 = inputStream;
            object3 = Utility.readStreamToString(inputStream);
            object = var4_3;
            inputStream2 = inputStream;
            object2 = inputStream;
            if (Utility.isNullOrEmpty((String)object3)) break block8;
            inputStream2 = inputStream;
            object2 = inputStream;
            try {
                object = LikeActionController.deserializeFromJson((String)object3);
            }
            catch (IOException var0_1) {
                object2 = inputStream2;
                try {
                    Log.e((String)TAG, (String)"Unable to deserialize controller from disk", (Throwable)var0_1);
                    object2 = null;
                    if (inputStream2 == null) return object2;
                }
                catch (Throwable var0_2) {
                    if (object2 == null) throw var0_2;
                    Utility.closeQuietly((Closeable)object2);
                    throw var0_2;
                }
                Utility.closeQuietly(inputStream2);
                return null;
            }
        }
        object2 = object;
        if (inputStream == null) return object2;
        Utility.closeQuietly(inputStream);
        return object;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private static LikeActionController deserializeFromJson(String object) {
        block4 : {
            try {
                object = new JSONObject((String)object);
                if (object.optInt("com.facebook.share.internal.LikeActionController.version", -1) == 3) break block4;
                return null;
            }
            catch (JSONException var0_1) {
                Log.e((String)TAG, (String)"Unable to deserialize controller from JSON", (Throwable)var0_1);
                return null;
            }
        }
        LikeActionController likeActionController = new LikeActionController(object.getString("object_id"), LikeView.ObjectType.fromInt(object.optInt("object_type", LikeView.ObjectType.UNKNOWN.getValue())));
        likeActionController.likeCountStringWithLike = object.optString("like_count_string_with_like", null);
        likeActionController.likeCountStringWithoutLike = object.optString("like_count_string_without_like", null);
        likeActionController.socialSentenceWithLike = object.optString("social_sentence_with_like", null);
        likeActionController.socialSentenceWithoutLike = object.optString("social_sentence_without_like", null);
        likeActionController.isObjectLiked = object.optBoolean("is_object_liked");
        likeActionController.unlikeToken = object.optString("unlike_token", null);
        JSONObject jSONObject = object.optJSONObject("facebook_dialog_analytics_bundle");
        object = likeActionController;
        if (jSONObject == null) return object;
        likeActionController.facebookDialogAnalyticsBundle = BundleJSONConverter.convertToBundle(jSONObject);
        return likeActionController;
    }

    private void fetchVerifiedObjectId(final RequestCompletionCallback requestCompletionCallback) {
        if (!Utility.isNullOrEmpty(this.verifiedObjectId)) {
            if (requestCompletionCallback != null) {
                requestCompletionCallback.onComplete();
            }
            return;
        }
        final GetOGObjectIdRequestWrapper getOGObjectIdRequestWrapper = new GetOGObjectIdRequestWrapper(this.objectId, this.objectType);
        final GetPageIdRequestWrapper getPageIdRequestWrapper = new GetPageIdRequestWrapper(this.objectId, this.objectType);
        GraphRequestBatch graphRequestBatch = new GraphRequestBatch();
        getOGObjectIdRequestWrapper.addToBatch(graphRequestBatch);
        getPageIdRequestWrapper.addToBatch(graphRequestBatch);
        graphRequestBatch.addCallback(new GraphRequestBatch.Callback(){

            /*
             * Enabled aggressive block sorting
             */
            @Override
            public void onBatchCompleted(GraphRequestBatch object) {
                LikeActionController.this.verifiedObjectId = getOGObjectIdRequestWrapper.verifiedObjectId;
                if (Utility.isNullOrEmpty(LikeActionController.this.verifiedObjectId)) {
                    LikeActionController.this.verifiedObjectId = getPageIdRequestWrapper.verifiedObjectId;
                    LikeActionController.this.objectIsPage = getPageIdRequestWrapper.objectIsPage;
                }
                if (Utility.isNullOrEmpty(LikeActionController.this.verifiedObjectId)) {
                    Logger.log(LoggingBehavior.DEVELOPER_ERRORS, TAG, "Unable to verify the FB id for '%s'. Verify that it is a valid FB object or page", LikeActionController.this.objectId);
                    LikeActionController likeActionController = LikeActionController.this;
                    object = getPageIdRequestWrapper.error != null ? getPageIdRequestWrapper.error : getOGObjectIdRequestWrapper.error;
                    likeActionController.logAppEventForError("get_verified_id", (FacebookRequestError)object);
                }
                if (requestCompletionCallback != null) {
                    requestCompletionCallback.onComplete();
                }
            }
        });
        graphRequestBatch.executeAsync();
    }

    private AppEventsLogger getAppEventsLogger() {
        if (this.appEventsLogger == null) {
            this.appEventsLogger = AppEventsLogger.newLogger(FacebookSdk.getApplicationContext());
        }
        return this.appEventsLogger;
    }

    private static String getCacheKeyForObjectId(String string2) {
        String string3 = null;
        Object object = AccessToken.getCurrentAccessToken();
        if (object != null) {
            string3 = object.getToken();
        }
        object = string3;
        if (string3 != null) {
            object = Utility.md5hash(string3);
        }
        return String.format(Locale.ROOT, "%s|%s|com.fb.sdk.like|%d", string2, Utility.coerceValueIfNullOrEmpty((String)object, ""), objectSuffix);
    }

    public static void getControllerForObjectId(String string2, LikeView.ObjectType objectType, CreationCallback creationCallback) {
        LikeActionController likeActionController;
        if (!isInitialized) {
            LikeActionController.performFirstInitialize();
        }
        if ((likeActionController = LikeActionController.getControllerFromInMemoryCache(string2)) != null) {
            LikeActionController.verifyControllerAndInvokeCallback(likeActionController, objectType, creationCallback);
            return;
        }
        diskIOWorkQueue.addActiveWorkItem(new CreateLikeActionControllerWorkItem(string2, objectType, creationCallback));
    }

    private static LikeActionController getControllerFromInMemoryCache(String string2) {
        LikeActionController likeActionController = cache.get(string2 = LikeActionController.getCacheKeyForObjectId(string2));
        if (likeActionController != null) {
            mruCacheWorkQueue.addActiveWorkItem(new MRUCacheWorkItem(string2, false));
        }
        return likeActionController;
    }

    private ResultProcessor getResultProcessor(final Bundle bundle) {
        return new ResultProcessor(null){

            @Override
            public void onCancel(AppCall appCall) {
                this.onError(appCall, new FacebookOperationCanceledException());
            }

            /*
             * Enabled aggressive block sorting
             */
            @Override
            public void onError(AppCall appCall, FacebookException facebookException) {
                Logger.log(LoggingBehavior.REQUESTS, TAG, "Like Dialog failed with error : %s", facebookException);
                Bundle bundle2 = bundle == null ? new Bundle() : bundle;
                bundle2.putString("call_id", appCall.getCallId().toString());
                LikeActionController.this.logAppEventForError("present_dialog", bundle2);
                LikeActionController.broadcastAction(LikeActionController.this, "com.facebook.sdk.LikeActionController.DID_ERROR", NativeProtocol.createBundleForException(facebookException));
            }

            /*
             * Enabled aggressive block sorting
             */
            @Override
            public void onSuccess(AppCall appCall, Bundle object) {
                if (object == null || !object.containsKey("object_is_liked")) {
                    return;
                }
                boolean bl = object.getBoolean("object_is_liked");
                String string2 = LikeActionController.this.likeCountStringWithLike;
                String string3 = LikeActionController.this.likeCountStringWithoutLike;
                if (object.containsKey("like_count_string")) {
                    string3 = string2 = object.getString("like_count_string");
                }
                String string4 = LikeActionController.this.socialSentenceWithLike;
                String string5 = LikeActionController.this.socialSentenceWithoutLike;
                if (object.containsKey("social_sentence")) {
                    string5 = string4 = object.getString("social_sentence");
                }
                object = object.containsKey("object_is_liked") ? object.getString("unlike_token") : LikeActionController.this.unlikeToken;
                Bundle bundle2 = bundle == null ? new Bundle() : bundle;
                bundle2.putString("call_id", appCall.getCallId().toString());
                LikeActionController.this.getAppEventsLogger().logSdkEvent("fb_like_control_dialog_did_succeed", null, bundle2);
                LikeActionController.this.updateState(bl, string2, string3, string4, string5, (String)object);
            }
        };
    }

    public static boolean handleOnActivityResult(final int n2, final int n3, final Intent intent) {
        if (Utility.isNullOrEmpty(objectIdForPendingController)) {
            objectIdForPendingController = FacebookSdk.getApplicationContext().getSharedPreferences("com.facebook.LikeActionController.CONTROLLER_STORE_KEY", 0).getString("PENDING_CONTROLLER_KEY", null);
        }
        if (Utility.isNullOrEmpty(objectIdForPendingController)) {
            return false;
        }
        LikeActionController.getControllerForObjectId(objectIdForPendingController, LikeView.ObjectType.UNKNOWN, new CreationCallback(){

            @Override
            public void onComplete(LikeActionController likeActionController, FacebookException facebookException) {
                if (facebookException == null) {
                    likeActionController.onActivityResult(n2, n3, intent);
                    return;
                }
                Utility.logd(TAG, facebookException);
            }
        });
        return true;
    }

    private static void invokeCallbackWithController(final CreationCallback creationCallback, final LikeActionController likeActionController, final FacebookException facebookException) {
        if (creationCallback == null) {
            return;
        }
        handler.post(new Runnable(){

            @Override
            public void run() {
                creationCallback.onComplete(likeActionController, facebookException);
            }
        });
    }

    private void logAppEventForError(String string2, Bundle bundle) {
        bundle = new Bundle(bundle);
        bundle.putString("object_id", this.objectId);
        bundle.putString("object_type", this.objectType.toString());
        bundle.putString("current_action", string2);
        this.getAppEventsLogger().logSdkEvent("fb_like_control_error", null, bundle);
    }

    private void logAppEventForError(String string2, FacebookRequestError facebookRequestError) {
        Bundle bundle = new Bundle();
        if (facebookRequestError != null && (facebookRequestError = facebookRequestError.getRequestResult()) != null) {
            bundle.putString("error", facebookRequestError.toString());
        }
        this.logAppEventForError(string2, bundle);
    }

    private void onActivityResult(int n2, int n3, Intent intent) {
        ShareInternalUtility.handleActivityResult(n2, n3, intent, this.getResultProcessor(this.facebookDialogAnalyticsBundle));
        this.clearState();
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private static void performFirstInitialize() {
        synchronized (LikeActionController.class) {
            block6 : {
                boolean bl = isInitialized;
                if (!bl) break block6;
                do {
                    return;
                    break;
                } while (true);
            }
            handler = new Handler(Looper.getMainLooper());
            objectSuffix = FacebookSdk.getApplicationContext().getSharedPreferences("com.facebook.LikeActionController.CONTROLLER_STORE_KEY", 0).getInt("OBJECT_SUFFIX", 1);
            controllerDiskCache = new FileLruCache(TAG, new FileLruCache.Limits());
            LikeActionController.registerAccessTokenTracker();
            CallbackManagerImpl.registerStaticCallback(CallbackManagerImpl.RequestCodeOffset.Like.toRequestCode(), new CallbackManagerImpl.Callback(){

                @Override
                public boolean onActivityResult(int n2, Intent intent) {
                    return LikeActionController.handleOnActivityResult(CallbackManagerImpl.RequestCodeOffset.Like.toRequestCode(), n2, intent);
                }
            });
            isInitialized = true;
            return;
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    private void presentLikeDialog(Activity activity, Fragment fragment, Bundle bundle) {
        Object object = null;
        if (LikeDialog.canShowNativeDialog()) {
            object = "fb_like_control_did_present_dialog";
        } else if (LikeDialog.canShowWebFallback()) {
            object = "fb_like_control_did_present_fallback_dialog";
        } else {
            this.logAppEventForError("present_dialog", bundle);
            Utility.logd(TAG, "Cannot show the Like Dialog on this device.");
        }
        if (object != null) {
            object = new LikeContent.Builder().setObjectId(this.objectId).setObjectType(this.objectType).build();
            if (fragment != null) {
                new LikeDialog(fragment).show(object);
            } else {
                new LikeDialog(activity).show(object);
            }
            this.saveState(bundle);
            this.getAppEventsLogger().logSdkEvent("fb_like_control_did_present_dialog", null, bundle);
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    private void publishAgainIfNeeded(Bundle bundle) {
        if (this.isObjectLiked != this.isObjectLikedOnServer && !this.publishLikeOrUnlikeAsync(this.isObjectLiked, bundle)) {
            boolean bl = !this.isObjectLiked;
            this.publishDidError(bl);
        }
    }

    private void publishDidError(boolean bl) {
        this.updateLikeState(bl);
        Bundle bundle = new Bundle();
        bundle.putString("com.facebook.platform.status.ERROR_DESCRIPTION", "Unable to publish the like/unlike action");
        LikeActionController.broadcastAction(this, "com.facebook.sdk.LikeActionController.DID_ERROR", bundle);
    }

    private void publishLikeAsync(final Bundle bundle) {
        this.isPendingLikeOrUnlike = true;
        this.fetchVerifiedObjectId(new RequestCompletionCallback(){

            @Override
            public void onComplete() {
                if (Utility.isNullOrEmpty(LikeActionController.this.verifiedObjectId)) {
                    Bundle bundle2 = new Bundle();
                    bundle2.putString("com.facebook.platform.status.ERROR_DESCRIPTION", "Invalid Object Id");
                    LikeActionController.broadcastAction(LikeActionController.this, "com.facebook.sdk.LikeActionController.DID_ERROR", bundle2);
                    return;
                }
                GraphRequestBatch graphRequestBatch = new GraphRequestBatch();
                final PublishLikeRequestWrapper publishLikeRequestWrapper = new PublishLikeRequestWrapper(LikeActionController.this.verifiedObjectId, LikeActionController.this.objectType);
                publishLikeRequestWrapper.addToBatch(graphRequestBatch);
                graphRequestBatch.addCallback(new GraphRequestBatch.Callback(){

                    @Override
                    public void onBatchCompleted(GraphRequestBatch graphRequestBatch) {
                        LikeActionController.this.isPendingLikeOrUnlike = false;
                        if (publishLikeRequestWrapper.error != null) {
                            LikeActionController.this.publishDidError(false);
                            return;
                        }
                        LikeActionController.this.unlikeToken = Utility.coerceValueIfNullOrEmpty(publishLikeRequestWrapper.unlikeToken, null);
                        LikeActionController.this.isObjectLikedOnServer = true;
                        LikeActionController.this.getAppEventsLogger().logSdkEvent("fb_like_control_did_like", null, bundle);
                        LikeActionController.this.publishAgainIfNeeded(bundle);
                    }
                });
                graphRequestBatch.executeAsync();
            }

        });
    }

    /*
     * Enabled aggressive block sorting
     */
    private boolean publishLikeOrUnlikeAsync(boolean bl, Bundle bundle) {
        boolean bl2;
        boolean bl3 = bl2 = false;
        if (!this.canUseOGPublish()) return bl3;
        {
            if (bl) {
                bl3 = true;
                this.publishLikeAsync(bundle);
                return bl3;
            } else {
                bl3 = bl2;
                if (Utility.isNullOrEmpty(this.unlikeToken)) return bl3;
                {
                    this.publishUnlikeAsync(bundle);
                    return true;
                }
            }
        }
    }

    private void publishUnlikeAsync(final Bundle bundle) {
        this.isPendingLikeOrUnlike = true;
        GraphRequestBatch graphRequestBatch = new GraphRequestBatch();
        final PublishUnlikeRequestWrapper publishUnlikeRequestWrapper = new PublishUnlikeRequestWrapper(this.unlikeToken);
        publishUnlikeRequestWrapper.addToBatch(graphRequestBatch);
        graphRequestBatch.addCallback(new GraphRequestBatch.Callback(){

            @Override
            public void onBatchCompleted(GraphRequestBatch graphRequestBatch) {
                LikeActionController.this.isPendingLikeOrUnlike = false;
                if (publishUnlikeRequestWrapper.error != null) {
                    LikeActionController.this.publishDidError(true);
                    return;
                }
                LikeActionController.this.unlikeToken = null;
                LikeActionController.this.isObjectLikedOnServer = false;
                LikeActionController.this.getAppEventsLogger().logSdkEvent("fb_like_control_did_unlike", null, bundle);
                LikeActionController.this.publishAgainIfNeeded(bundle);
            }
        });
        graphRequestBatch.executeAsync();
    }

    private static void putControllerInMemoryCache(String string2, LikeActionController likeActionController) {
        string2 = LikeActionController.getCacheKeyForObjectId(string2);
        mruCacheWorkQueue.addActiveWorkItem(new MRUCacheWorkItem(string2, true));
        cache.put(string2, likeActionController);
    }

    private void refreshStatusAsync() {
        if (AccessToken.getCurrentAccessToken() == null) {
            this.refreshStatusViaService();
            return;
        }
        this.fetchVerifiedObjectId(new RequestCompletionCallback(){

            @Override
            public void onComplete() {
                final GetOGObjectLikesRequestWrapper getOGObjectLikesRequestWrapper = new GetOGObjectLikesRequestWrapper(LikeActionController.this.verifiedObjectId, LikeActionController.this.objectType);
                final GetEngagementRequestWrapper getEngagementRequestWrapper = new GetEngagementRequestWrapper(LikeActionController.this.verifiedObjectId, LikeActionController.this.objectType);
                GraphRequestBatch graphRequestBatch = new GraphRequestBatch();
                getOGObjectLikesRequestWrapper.addToBatch(graphRequestBatch);
                getEngagementRequestWrapper.addToBatch(graphRequestBatch);
                graphRequestBatch.addCallback(new GraphRequestBatch.Callback(){

                    @Override
                    public void onBatchCompleted(GraphRequestBatch graphRequestBatch) {
                        if (getOGObjectLikesRequestWrapper.error != null || getEngagementRequestWrapper.error != null) {
                            Logger.log(LoggingBehavior.REQUESTS, TAG, "Unable to refresh like state for id: '%s'", LikeActionController.this.objectId);
                            return;
                        }
                        LikeActionController.this.updateState(getOGObjectLikesRequestWrapper.objectIsLiked, getEngagementRequestWrapper.likeCountStringWithLike, getEngagementRequestWrapper.likeCountStringWithoutLike, getEngagementRequestWrapper.socialSentenceStringWithLike, getEngagementRequestWrapper.socialSentenceStringWithoutLike, getOGObjectLikesRequestWrapper.unlikeToken);
                    }
                });
                graphRequestBatch.executeAsync();
            }

        });
    }

    private void refreshStatusViaService() {
        LikeStatusClient likeStatusClient = new LikeStatusClient(FacebookSdk.getApplicationContext(), FacebookSdk.getApplicationId(), this.objectId);
        if (!likeStatusClient.start()) {
            return;
        }
        likeStatusClient.setCompletedListener(new PlatformServiceClient.CompletedListener(){

            /*
             * Enabled aggressive block sorting
             */
            @Override
            public void completed(Bundle object) {
                if (object == null || !object.containsKey("com.facebook.platform.extra.OBJECT_IS_LIKED")) {
                    return;
                }
                boolean bl = object.getBoolean("com.facebook.platform.extra.OBJECT_IS_LIKED");
                String string2 = object.containsKey("com.facebook.platform.extra.LIKE_COUNT_STRING_WITH_LIKE") ? object.getString("com.facebook.platform.extra.LIKE_COUNT_STRING_WITH_LIKE") : LikeActionController.this.likeCountStringWithLike;
                String string3 = object.containsKey("com.facebook.platform.extra.LIKE_COUNT_STRING_WITHOUT_LIKE") ? object.getString("com.facebook.platform.extra.LIKE_COUNT_STRING_WITHOUT_LIKE") : LikeActionController.this.likeCountStringWithoutLike;
                String string4 = object.containsKey("com.facebook.platform.extra.SOCIAL_SENTENCE_WITH_LIKE") ? object.getString("com.facebook.platform.extra.SOCIAL_SENTENCE_WITH_LIKE") : LikeActionController.this.socialSentenceWithLike;
                String string5 = object.containsKey("com.facebook.platform.extra.SOCIAL_SENTENCE_WITHOUT_LIKE") ? object.getString("com.facebook.platform.extra.SOCIAL_SENTENCE_WITHOUT_LIKE") : LikeActionController.this.socialSentenceWithoutLike;
                object = object.containsKey("com.facebook.platform.extra.UNLIKE_TOKEN") ? object.getString("com.facebook.platform.extra.UNLIKE_TOKEN") : LikeActionController.this.unlikeToken;
                LikeActionController.this.updateState(bl, string2, string3, string4, string5, (String)object);
            }
        });
    }

    private static void registerAccessTokenTracker() {
        accessTokenTracker = new AccessTokenTracker(){

            @Override
            protected void onCurrentAccessTokenChanged(AccessToken accessToken, AccessToken accessToken2) {
                accessToken = FacebookSdk.getApplicationContext();
                if (accessToken2 == null) {
                    objectSuffix = (objectSuffix + 1) % 1000;
                    accessToken.getSharedPreferences("com.facebook.LikeActionController.CONTROLLER_STORE_KEY", 0).edit().putInt("OBJECT_SUFFIX", objectSuffix).apply();
                    cache.clear();
                    controllerDiskCache.clearCache();
                }
                LikeActionController.broadcastAction(null, "com.facebook.sdk.LikeActionController.DID_RESET");
            }
        };
    }

    private void saveState(Bundle bundle) {
        LikeActionController.storeObjectIdForPendingController(this.objectId);
        this.facebookDialogAnalyticsBundle = bundle;
        LikeActionController.serializeToDiskAsync(this);
    }

    private static void serializeToDiskAsync(LikeActionController object) {
        String string2 = LikeActionController.serializeToJson((LikeActionController)object);
        object = LikeActionController.getCacheKeyForObjectId(object.objectId);
        if (!Utility.isNullOrEmpty(string2) && !Utility.isNullOrEmpty((String)object)) {
            diskIOWorkQueue.addActiveWorkItem(new SerializeToDiskWorkItem((String)object, string2));
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    private static void serializeToDiskSynchronously(String object, String string2) {
        Object object2 = null;
        Object object3 = null;
        try {
            object3 = object = controllerDiskCache.openPutStream((String)object);
            object2 = object;
            object.write(string2.getBytes());
            if (object == null) return;
        }
        catch (IOException var0_1) {
            block6 : {
                object2 = object3;
                try {
                    Log.e((String)TAG, (String)"Unable to serialize controller to disk", (Throwable)var0_1);
                    if (object3 != null) break block6;
                }
                catch (Throwable var0_2) {
                    if (object2 == null) throw var0_2;
                    {
                        Utility.closeQuietly((Closeable)object2);
                    }
                    throw var0_2;
                }
                return;
            }
            Utility.closeQuietly((Closeable)object3);
            return;
        }
        {
            Utility.closeQuietly((Closeable)object);
            return;
        }
    }

    private static String serializeToJson(LikeActionController likeActionController) {
        JSONObject jSONObject;
        block3 : {
            jSONObject = new JSONObject();
            try {
                jSONObject.put("com.facebook.share.internal.LikeActionController.version", 3);
                jSONObject.put("object_id", (Object)likeActionController.objectId);
                jSONObject.put("object_type", likeActionController.objectType.getValue());
                jSONObject.put("like_count_string_with_like", (Object)likeActionController.likeCountStringWithLike);
                jSONObject.put("like_count_string_without_like", (Object)likeActionController.likeCountStringWithoutLike);
                jSONObject.put("social_sentence_with_like", (Object)likeActionController.socialSentenceWithLike);
                jSONObject.put("social_sentence_without_like", (Object)likeActionController.socialSentenceWithoutLike);
                jSONObject.put("is_object_liked", likeActionController.isObjectLiked);
                jSONObject.put("unlike_token", (Object)likeActionController.unlikeToken);
                if (likeActionController.facebookDialogAnalyticsBundle == null || (likeActionController = BundleJSONConverter.convertToJSON(likeActionController.facebookDialogAnalyticsBundle)) == null) break block3;
            }
            catch (JSONException var0_1) {
                Log.e((String)TAG, (String)"Unable to serialize controller to JSON", (Throwable)var0_1);
                return null;
            }
            jSONObject.put("facebook_dialog_analytics_bundle", (Object)likeActionController);
        }
        return jSONObject.toString();
    }

    private static void storeObjectIdForPendingController(String string2) {
        objectIdForPendingController = string2;
        FacebookSdk.getApplicationContext().getSharedPreferences("com.facebook.LikeActionController.CONTROLLER_STORE_KEY", 0).edit().putString("PENDING_CONTROLLER_KEY", objectIdForPendingController).apply();
    }

    private void updateLikeState(boolean bl) {
        this.updateState(bl, this.likeCountStringWithLike, this.likeCountStringWithoutLike, this.socialSentenceWithLike, this.socialSentenceWithoutLike, this.unlikeToken);
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private void updateState(boolean bl, String string2, String string3, String string4, String string5, String string6) {
        string2 = Utility.coerceValueIfNullOrEmpty(string2, null);
        string3 = Utility.coerceValueIfNullOrEmpty(string3, null);
        string4 = Utility.coerceValueIfNullOrEmpty(string4, null);
        string5 = Utility.coerceValueIfNullOrEmpty(string5, null);
        string6 = Utility.coerceValueIfNullOrEmpty(string6, null);
        if (bl == this.isObjectLiked && Utility.areObjectsEqual(string2, this.likeCountStringWithLike) && Utility.areObjectsEqual(string3, this.likeCountStringWithoutLike) && Utility.areObjectsEqual(string4, this.socialSentenceWithLike) && Utility.areObjectsEqual(string5, this.socialSentenceWithoutLike) && Utility.areObjectsEqual(string6, this.unlikeToken)) return;
        boolean bl2 = true;
        if (!bl2) {
            return;
        }
        this.isObjectLiked = bl;
        this.likeCountStringWithLike = string2;
        this.likeCountStringWithoutLike = string3;
        this.socialSentenceWithLike = string4;
        this.socialSentenceWithoutLike = string5;
        this.unlikeToken = string6;
        LikeActionController.serializeToDiskAsync(this);
        LikeActionController.broadcastAction(this, "com.facebook.sdk.LikeActionController.UPDATED");
    }

    /*
     * Enabled aggressive block sorting
     */
    private static void verifyControllerAndInvokeCallback(LikeActionController likeActionController, LikeView.ObjectType object, CreationCallback creationCallback) {
        LikeView.ObjectType objectType = ShareInternalUtility.getMostSpecificObjectType((LikeView.ObjectType)((Object)object), likeActionController.objectType);
        Object var3_4 = null;
        if (objectType == null) {
            object = new FacebookException("Object with id:\"%s\" is already marked as type:\"%s\". Cannot change the type to:\"%s\"", likeActionController.objectId, likeActionController.objectType.toString(), object.toString());
            likeActionController = null;
        } else {
            likeActionController.objectType = objectType;
            object = var3_4;
        }
        LikeActionController.invokeCallbackWithController(creationCallback, likeActionController, (FacebookException)object);
    }

    public String getLikeCountString() {
        if (this.isObjectLiked) {
            return this.likeCountStringWithLike;
        }
        return this.likeCountStringWithoutLike;
    }

    public String getObjectId() {
        return this.objectId;
    }

    public String getSocialSentence() {
        if (this.isObjectLiked) {
            return this.socialSentenceWithLike;
        }
        return this.socialSentenceWithoutLike;
    }

    public boolean isObjectLiked() {
        return this.isObjectLiked;
    }

    public boolean shouldDisableView() {
        if (!LikeActionController.canLike(this.objectType)) {
            return true;
        }
        return false;
    }

    /*
     * Enabled aggressive block sorting
     */
    public void toggleLike(Activity activity, Fragment fragment, Bundle bundle) {
        boolean bl = true;
        this.getAppEventsLogger().logSdkEvent("fb_like_control_did_tap", null, bundle);
        boolean bl2 = !this.isObjectLiked;
        if (!this.canUseOGPublish()) {
            this.presentLikeDialog(activity, fragment, bundle);
            return;
        }
        this.updateLikeState(bl2);
        if (this.isPendingLikeOrUnlike) {
            this.getAppEventsLogger().logSdkEvent("fb_like_control_did_undo_quickly", null, bundle);
            return;
        } else {
            if (this.publishLikeOrUnlikeAsync(bl2, bundle)) return;
            {
                bl2 = !bl2 ? bl : false;
            }
        }
        this.updateLikeState(bl2);
        this.presentLikeDialog(activity, fragment, bundle);
    }

    private abstract class AbstractRequestWrapper {
        FacebookRequestError error;
        protected String objectId;
        protected LikeView.ObjectType objectType;
        private GraphRequest request;

        protected AbstractRequestWrapper(String string2, LikeView.ObjectType objectType) {
            this.objectId = string2;
            this.objectType = objectType;
        }

        void addToBatch(GraphRequestBatch graphRequestBatch) {
            graphRequestBatch.add(this.request);
        }

        protected void processError(FacebookRequestError facebookRequestError) {
            Logger.log(LoggingBehavior.REQUESTS, TAG, "Error running request for object '%s' with type '%s' : %s", new Object[]{this.objectId, this.objectType, facebookRequestError});
        }

        protected abstract void processSuccess(GraphResponse var1);

        protected void setRequest(GraphRequest graphRequest) {
            this.request = graphRequest;
            graphRequest.setVersion("v2.3");
            graphRequest.setCallback(new GraphRequest.Callback(){

                @Override
                public void onCompleted(GraphResponse graphResponse) {
                    AbstractRequestWrapper.this.error = graphResponse.getError();
                    if (AbstractRequestWrapper.this.error != null) {
                        AbstractRequestWrapper.this.processError(AbstractRequestWrapper.this.error);
                        return;
                    }
                    AbstractRequestWrapper.this.processSuccess(graphResponse);
                }
            });
        }

    }

    private static class CreateLikeActionControllerWorkItem
    implements Runnable {
        private CreationCallback callback;
        private String objectId;
        private LikeView.ObjectType objectType;

        CreateLikeActionControllerWorkItem(String string2, LikeView.ObjectType objectType, CreationCallback creationCallback) {
            this.objectId = string2;
            this.objectType = objectType;
            this.callback = creationCallback;
        }

        @Override
        public void run() {
            LikeActionController.createControllerForObjectIdAndType(this.objectId, this.objectType, this.callback);
        }
    }

    public static interface CreationCallback {
        public void onComplete(LikeActionController var1, FacebookException var2);
    }

    private class GetEngagementRequestWrapper
    extends AbstractRequestWrapper {
        String likeCountStringWithLike;
        String likeCountStringWithoutLike;
        String socialSentenceStringWithLike;
        String socialSentenceStringWithoutLike;

        GetEngagementRequestWrapper(String string2, LikeView.ObjectType objectType) {
            super(string2, objectType);
            this.likeCountStringWithLike = LikeActionController.this.likeCountStringWithLike;
            this.likeCountStringWithoutLike = LikeActionController.this.likeCountStringWithoutLike;
            this.socialSentenceStringWithLike = LikeActionController.this.socialSentenceWithLike;
            this.socialSentenceStringWithoutLike = LikeActionController.this.socialSentenceWithoutLike;
            LikeActionController.this = new Bundle();
            LikeActionController.this.putString("fields", "engagement.fields(count_string_with_like,count_string_without_like,social_sentence_with_like,social_sentence_without_like)");
            this.setRequest(new GraphRequest(AccessToken.getCurrentAccessToken(), string2, (Bundle)LikeActionController.this, HttpMethod.GET));
        }

        @Override
        protected void processError(FacebookRequestError facebookRequestError) {
            Logger.log(LoggingBehavior.REQUESTS, TAG, "Error fetching engagement for object '%s' with type '%s' : %s", new Object[]{this.objectId, this.objectType, facebookRequestError});
            LikeActionController.this.logAppEventForError("get_engagement", facebookRequestError);
        }

        @Override
        protected void processSuccess(GraphResponse graphResponse) {
            if ((graphResponse = Utility.tryGetJSONObjectFromResponse(graphResponse.getJSONObject(), "engagement")) != null) {
                this.likeCountStringWithLike = graphResponse.optString("count_string_with_like", this.likeCountStringWithLike);
                this.likeCountStringWithoutLike = graphResponse.optString("count_string_without_like", this.likeCountStringWithoutLike);
                this.socialSentenceStringWithLike = graphResponse.optString("social_sentence_with_like", this.socialSentenceStringWithLike);
                this.socialSentenceStringWithoutLike = graphResponse.optString("social_sentence_without_like", this.socialSentenceStringWithoutLike);
            }
        }
    }

    private class GetOGObjectIdRequestWrapper
    extends AbstractRequestWrapper {
        String verifiedObjectId;

        GetOGObjectIdRequestWrapper(String string2, LikeView.ObjectType objectType) {
            super(string2, objectType);
            LikeActionController.this = new Bundle();
            LikeActionController.this.putString("fields", "og_object.fields(id)");
            LikeActionController.this.putString("ids", string2);
            this.setRequest(new GraphRequest(AccessToken.getCurrentAccessToken(), "", (Bundle)LikeActionController.this, HttpMethod.GET));
        }

        @Override
        protected void processError(FacebookRequestError facebookRequestError) {
            if (facebookRequestError.getErrorMessage().contains("og_object")) {
                this.error = null;
                return;
            }
            Logger.log(LoggingBehavior.REQUESTS, TAG, "Error getting the FB id for object '%s' with type '%s' : %s", new Object[]{this.objectId, this.objectType, facebookRequestError});
        }

        @Override
        protected void processSuccess(GraphResponse graphResponse) {
            if ((graphResponse = Utility.tryGetJSONObjectFromResponse(graphResponse.getJSONObject(), this.objectId)) != null && (graphResponse = graphResponse.optJSONObject("og_object")) != null) {
                this.verifiedObjectId = graphResponse.optString("id");
            }
        }
    }

    private class GetOGObjectLikesRequestWrapper
    extends AbstractRequestWrapper {
        boolean objectIsLiked;
        String unlikeToken;

        GetOGObjectLikesRequestWrapper(String string2, LikeView.ObjectType objectType) {
            super(string2, objectType);
            this.objectIsLiked = LikeActionController.this.isObjectLiked;
            LikeActionController.this = new Bundle();
            LikeActionController.this.putString("fields", "id,application");
            LikeActionController.this.putString("object", string2);
            this.setRequest(new GraphRequest(AccessToken.getCurrentAccessToken(), "me/og.likes", (Bundle)LikeActionController.this, HttpMethod.GET));
        }

        @Override
        protected void processError(FacebookRequestError facebookRequestError) {
            Logger.log(LoggingBehavior.REQUESTS, TAG, "Error fetching like status for object '%s' with type '%s' : %s", new Object[]{this.objectId, this.objectType, facebookRequestError});
            LikeActionController.this.logAppEventForError("get_og_object_like", facebookRequestError);
        }

        @Override
        protected void processSuccess(GraphResponse graphResponse) {
            if ((graphResponse = Utility.tryGetJSONArrayFromResponse(graphResponse.getJSONObject(), "data")) != null) {
                for (int i2 = 0; i2 < graphResponse.length(); ++i2) {
                    JSONObject jSONObject = graphResponse.optJSONObject(i2);
                    if (jSONObject == null) continue;
                    this.objectIsLiked = true;
                    JSONObject jSONObject2 = jSONObject.optJSONObject("application");
                    AccessToken accessToken = AccessToken.getCurrentAccessToken();
                    if (jSONObject2 == null || accessToken == null || !Utility.areObjectsEqual(accessToken.getApplicationId(), jSONObject2.optString("id"))) continue;
                    this.unlikeToken = jSONObject.optString("id");
                }
            }
        }
    }

    private class GetPageIdRequestWrapper
    extends AbstractRequestWrapper {
        boolean objectIsPage;
        String verifiedObjectId;

        GetPageIdRequestWrapper(String string2, LikeView.ObjectType objectType) {
            super(string2, objectType);
            LikeActionController.this = new Bundle();
            LikeActionController.this.putString("fields", "id");
            LikeActionController.this.putString("ids", string2);
            this.setRequest(new GraphRequest(AccessToken.getCurrentAccessToken(), "", (Bundle)LikeActionController.this, HttpMethod.GET));
        }

        @Override
        protected void processError(FacebookRequestError facebookRequestError) {
            Logger.log(LoggingBehavior.REQUESTS, TAG, "Error getting the FB id for object '%s' with type '%s' : %s", new Object[]{this.objectId, this.objectType, facebookRequestError});
        }

        /*
         * Enabled aggressive block sorting
         */
        @Override
        protected void processSuccess(GraphResponse graphResponse) {
            if ((graphResponse = Utility.tryGetJSONObjectFromResponse(graphResponse.getJSONObject(), this.objectId)) != null) {
                this.verifiedObjectId = graphResponse.optString("id");
                boolean bl = !Utility.isNullOrEmpty(this.verifiedObjectId);
                this.objectIsPage = bl;
            }
        }
    }

    private static class MRUCacheWorkItem
    implements Runnable {
        private static ArrayList<String> mruCachedItems = new ArrayList();
        private String cacheItem;
        private boolean shouldTrim;

        MRUCacheWorkItem(String string2, boolean bl) {
            this.cacheItem = string2;
            this.shouldTrim = bl;
        }

        @Override
        public void run() {
            if (this.cacheItem != null) {
                mruCachedItems.remove(this.cacheItem);
                mruCachedItems.add(0, this.cacheItem);
            }
            if (this.shouldTrim && mruCachedItems.size() >= 128) {
                while (64 < mruCachedItems.size()) {
                    String string2 = mruCachedItems.remove(mruCachedItems.size() - 1);
                    cache.remove(string2);
                }
            }
        }
    }

    private class PublishLikeRequestWrapper
    extends AbstractRequestWrapper {
        String unlikeToken;

        PublishLikeRequestWrapper(String string2, LikeView.ObjectType objectType) {
            super(string2, objectType);
            LikeActionController.this = new Bundle();
            LikeActionController.this.putString("object", string2);
            this.setRequest(new GraphRequest(AccessToken.getCurrentAccessToken(), "me/og.likes", (Bundle)LikeActionController.this, HttpMethod.POST));
        }

        @Override
        protected void processError(FacebookRequestError facebookRequestError) {
            if (facebookRequestError.getErrorCode() == 3501) {
                this.error = null;
                return;
            }
            Logger.log(LoggingBehavior.REQUESTS, TAG, "Error liking object '%s' with type '%s' : %s", new Object[]{this.objectId, this.objectType, facebookRequestError});
            LikeActionController.this.logAppEventForError("publish_like", facebookRequestError);
        }

        @Override
        protected void processSuccess(GraphResponse graphResponse) {
            this.unlikeToken = Utility.safeGetStringFromResponse(graphResponse.getJSONObject(), "id");
        }
    }

    private class PublishUnlikeRequestWrapper
    extends AbstractRequestWrapper {
        private String unlikeToken;

        PublishUnlikeRequestWrapper(String string2) {
            super(null, null);
            this.unlikeToken = string2;
            this.setRequest(new GraphRequest(AccessToken.getCurrentAccessToken(), string2, null, HttpMethod.DELETE));
        }

        @Override
        protected void processError(FacebookRequestError facebookRequestError) {
            Logger.log(LoggingBehavior.REQUESTS, TAG, "Error unliking object with unlike token '%s' : %s", this.unlikeToken, facebookRequestError);
            LikeActionController.this.logAppEventForError("publish_unlike", facebookRequestError);
        }

        @Override
        protected void processSuccess(GraphResponse graphResponse) {
        }
    }

    private static interface RequestCompletionCallback {
        public void onComplete();
    }

    private static class SerializeToDiskWorkItem
    implements Runnable {
        private String cacheKey;
        private String controllerJson;

        SerializeToDiskWorkItem(String string2, String string3) {
            this.cacheKey = string2;
            this.controllerJson = string3;
        }

        @Override
        public void run() {
            LikeActionController.serializeToDiskSynchronously(this.cacheKey, this.controllerJson);
        }
    }

}

