/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.content.Intent
 *  android.graphics.Bitmap
 *  android.net.Uri
 *  android.os.Bundle
 *  android.os.ParcelFileDescriptor
 *  android.os.Parcelable
 *  android.text.TextUtils
 *  android.util.Pair
 *  org.json.JSONArray
 *  org.json.JSONException
 *  org.json.JSONObject
 */
package com.facebook.share.internal;

import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Bundle;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import android.util.Pair;
import com.facebook.AccessToken;
import com.facebook.CallbackManager;
import com.facebook.FacebookCallback;
import com.facebook.FacebookException;
import com.facebook.FacebookGraphResponseException;
import com.facebook.FacebookOperationCanceledException;
import com.facebook.FacebookRequestError;
import com.facebook.FacebookSdk;
import com.facebook.GraphRequest;
import com.facebook.GraphResponse;
import com.facebook.HttpMethod;
import com.facebook.appevents.AppEventsLogger;
import com.facebook.internal.AppCall;
import com.facebook.internal.CallbackManagerImpl;
import com.facebook.internal.GraphUtil;
import com.facebook.internal.NativeAppCallAttachmentStore;
import com.facebook.internal.NativeProtocol;
import com.facebook.internal.Utility;
import com.facebook.share.Sharer;
import com.facebook.share.internal.OpenGraphJSONUtility;
import com.facebook.share.internal.ResultProcessor;
import com.facebook.share.model.ShareOpenGraphAction;
import com.facebook.share.model.ShareOpenGraphContent;
import com.facebook.share.model.SharePhoto;
import com.facebook.share.model.SharePhotoContent;
import com.facebook.share.widget.LikeView;
import java.io.File;
import java.io.FileNotFoundException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.UUID;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public final class ShareInternalUtility {
    private static final String MY_ACTION_FORMAT = "me/%s";
    private static final String MY_FEED = "me/feed";
    private static final String MY_OBJECTS_FORMAT = "me/objects/%s";
    private static final String MY_PHOTOS = "me/photos";
    private static final String MY_STAGING_RESOURCES = "me/staging_resources";
    private static final String MY_VIDEOS = "me/videos";
    private static final String OBJECT_PARAM = "object";
    private static final String PICTURE_PARAM = "picture";
    private static final String STAGING_PARAM = "file";

    private ShareInternalUtility() {
    }

    private static AppCall getAppCallFromActivityResult(int n2, int n3, Intent object) {
        if ((object = NativeProtocol.getCallIdFromIntent((Intent)object)) == null) {
            return null;
        }
        return AppCall.finishPendingCall((UUID)object, n2);
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private static NativeAppCallAttachmentStore.Attachment getAttachment(UUID uUID, SharePhoto object) {
        Bitmap bitmap = object.getBitmap();
        Uri uri = object.getImageUrl();
        object = null;
        if (bitmap != null) {
            return NativeAppCallAttachmentStore.createAttachment(uUID, bitmap);
        }
        if (uri == null) return object;
        return NativeAppCallAttachmentStore.createAttachment(uUID, uri);
    }

    public static Pair<String, String> getFieldNameAndNamespaceFromFullName(String string2) {
        String string3 = null;
        int n2 = string2.indexOf(58);
        if (n2 != -1 && string2.length() > n2 + 1) {
            string3 = string2.substring(0, n2);
            string2 = string2.substring(n2 + 1);
        }
        return new Pair((Object)string3, (Object)string2);
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    @Nullable
    public static LikeView.ObjectType getMostSpecificObjectType(LikeView.ObjectType objectType, LikeView.ObjectType objectType2) {
        if (objectType == objectType2) {
            return objectType;
        }
        if (objectType == LikeView.ObjectType.UNKNOWN) {
            return objectType2;
        }
        if (objectType2 == LikeView.ObjectType.UNKNOWN) return objectType;
        return null;
    }

    public static String getNativeDialogCompletionGesture(Bundle bundle) {
        if (bundle.containsKey("completionGesture")) {
            return bundle.getString("completionGesture");
        }
        return bundle.getString("com.facebook.platform.extra.COMPLETION_GESTURE");
    }

    public static boolean getNativeDialogDidComplete(Bundle bundle) {
        if (bundle.containsKey("didComplete")) {
            return bundle.getBoolean("didComplete");
        }
        return bundle.getBoolean("com.facebook.platform.extra.DID_COMPLETE", false);
    }

    public static List<String> getPhotoUrls(SharePhotoContent list, UUID object) {
        if (list == null || (list = list.getPhotos()) == null) {
            return null;
        }
        list = Utility.map(list, new Utility.Mapper<SharePhoto, NativeAppCallAttachmentStore.Attachment>((UUID)object){
            final /* synthetic */ UUID val$appCallId;

            @Override
            public NativeAppCallAttachmentStore.Attachment apply(SharePhoto sharePhoto) {
                return ShareInternalUtility.getAttachment(this.val$appCallId, sharePhoto);
            }
        });
        object = Utility.map(list, new Utility.Mapper<NativeAppCallAttachmentStore.Attachment, String>(){

            @Override
            public String apply(NativeAppCallAttachmentStore.Attachment attachment) {
                return attachment.getAttachmentUrl();
            }
        });
        NativeAppCallAttachmentStore.addAttachments(list);
        return object;
    }

    public static String getShareDialogPostId(Bundle bundle) {
        if (bundle.containsKey("postId")) {
            return bundle.getString("postId");
        }
        if (bundle.containsKey("com.facebook.platform.extra.POST_ID")) {
            return bundle.getString("com.facebook.platform.extra.POST_ID");
        }
        return bundle.getString("post_id");
    }

    public static ResultProcessor getShareResultProcessor(final FacebookCallback<Sharer.Result> facebookCallback) {
        return new ResultProcessor(facebookCallback){

            @Override
            public void onCancel(AppCall appCall) {
                ShareInternalUtility.invokeOnCancelCallback(facebookCallback);
            }

            @Override
            public void onError(AppCall appCall, FacebookException facebookException) {
                ShareInternalUtility.invokeOnErrorCallback(facebookCallback, facebookException);
            }

            /*
             * Enabled force condition propagation
             * Lifted jumps to return sites
             */
            @Override
            public void onSuccess(AppCall object, Bundle bundle) {
                if (bundle == null) return;
                object = ShareInternalUtility.getNativeDialogCompletionGesture(bundle);
                if (object == null || "post".equalsIgnoreCase((String)object)) {
                    object = ShareInternalUtility.getShareDialogPostId(bundle);
                    ShareInternalUtility.invokeOnSuccessCallback(facebookCallback, (String)object);
                    return;
                }
                if ("cancel".equalsIgnoreCase((String)object)) {
                    ShareInternalUtility.invokeOnCancelCallback(facebookCallback);
                    return;
                }
                ShareInternalUtility.invokeOnErrorCallback(facebookCallback, new FacebookException("UnknownError"));
            }
        };
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public static boolean handleActivityResult(int n2, int n3, Intent intent, ResultProcessor resultProcessor) {
        boolean bl = true;
        AppCall appCall = ShareInternalUtility.getAppCallFromActivityResult(n2, n3, intent);
        if (appCall == null) {
            return false;
        }
        NativeAppCallAttachmentStore.cleanupAttachmentsForCall(appCall.getCallId());
        if (resultProcessor == null) return bl;
        FacebookException facebookException = NativeProtocol.getExceptionFromErrorData(NativeProtocol.getErrorDataFromResultIntent(intent));
        if (facebookException != null) {
            if (facebookException instanceof FacebookOperationCanceledException) {
                resultProcessor.onCancel(appCall);
                return true;
            }
            resultProcessor.onError(appCall, facebookException);
            return true;
        }
        resultProcessor.onSuccess(appCall, NativeProtocol.getSuccessResultsFromIntent(intent));
        return true;
    }

    public static void invokeCallbackWithError(FacebookCallback<Sharer.Result> facebookCallback, String string2) {
        ShareInternalUtility.invokeOnErrorCallback(facebookCallback, string2);
    }

    public static void invokeCallbackWithException(FacebookCallback<Sharer.Result> facebookCallback, Exception exception) {
        if (exception instanceof FacebookException) {
            ShareInternalUtility.invokeOnErrorCallback(facebookCallback, (FacebookException)exception);
            return;
        }
        ShareInternalUtility.invokeCallbackWithError(facebookCallback, "Error preparing share content: " + exception.getLocalizedMessage());
    }

    public static void invokeCallbackWithResults(FacebookCallback<Sharer.Result> facebookCallback, String object, GraphResponse graphResponse) {
        Object object2 = graphResponse.getError();
        if (object2 != null) {
            object = object2 = object2.getErrorMessage();
            if (Utility.isNullOrEmpty((String)object2)) {
                object = "Unexpected error sharing.";
            }
            ShareInternalUtility.invokeOnErrorCallback(facebookCallback, graphResponse, (String)object);
            return;
        }
        ShareInternalUtility.invokeOnSuccessCallback(facebookCallback, (String)object);
    }

    private static void invokeOnCancelCallback(FacebookCallback<Sharer.Result> facebookCallback) {
        ShareInternalUtility.logShareResult("cancelled", null);
        if (facebookCallback != null) {
            facebookCallback.onCancel();
        }
    }

    private static void invokeOnErrorCallback(FacebookCallback<Sharer.Result> facebookCallback, FacebookException facebookException) {
        ShareInternalUtility.logShareResult("error", facebookException.getMessage());
        if (facebookCallback != null) {
            facebookCallback.onError(facebookException);
        }
    }

    private static void invokeOnErrorCallback(FacebookCallback<Sharer.Result> facebookCallback, GraphResponse graphResponse, String string2) {
        ShareInternalUtility.logShareResult("error", string2);
        if (facebookCallback != null) {
            facebookCallback.onError(new FacebookGraphResponseException(graphResponse, string2));
        }
    }

    private static void invokeOnErrorCallback(FacebookCallback<Sharer.Result> facebookCallback, String string2) {
        ShareInternalUtility.logShareResult("error", string2);
        if (facebookCallback != null) {
            facebookCallback.onError(new FacebookException(string2));
        }
    }

    private static void invokeOnSuccessCallback(FacebookCallback<Sharer.Result> facebookCallback, String string2) {
        ShareInternalUtility.logShareResult("succeeded", null);
        if (facebookCallback != null) {
            facebookCallback.onSuccess(new Sharer.Result(string2));
        }
    }

    private static void logShareResult(String string2, String string3) {
        AppEventsLogger appEventsLogger = AppEventsLogger.newLogger(FacebookSdk.getApplicationContext());
        Bundle bundle = new Bundle();
        bundle.putString("fb_share_dialog_outcome", string2);
        if (string3 != null) {
            bundle.putString("error_message", string3);
        }
        appEventsLogger.logSdkEvent("fb_share_dialog_result", null, bundle);
    }

    public static GraphRequest newPostOpenGraphActionRequest(AccessToken accessToken, JSONObject jSONObject, GraphRequest.Callback callback) {
        if (jSONObject == null) {
            throw new FacebookException("openGraphAction cannot be null");
        }
        String string2 = jSONObject.optString("type");
        if (Utility.isNullOrEmpty(string2)) {
            throw new FacebookException("openGraphAction must have non-null 'type' property");
        }
        return GraphRequest.newPostRequest(accessToken, String.format("me/%s", string2), jSONObject, callback);
    }

    public static GraphRequest newPostOpenGraphObjectRequest(AccessToken accessToken, String string2, String string3, String string4, String string5, String string6, JSONObject jSONObject, GraphRequest.Callback callback) {
        return ShareInternalUtility.newPostOpenGraphObjectRequest(accessToken, GraphUtil.createOpenGraphObjectForPost(string2, string3, string4, string5, string6, jSONObject, null), callback);
    }

    public static GraphRequest newPostOpenGraphObjectRequest(AccessToken accessToken, JSONObject jSONObject, GraphRequest.Callback callback) {
        if (jSONObject == null) {
            throw new FacebookException("openGraphObject cannot be null");
        }
        if (Utility.isNullOrEmpty(jSONObject.optString("type"))) {
            throw new FacebookException("openGraphObject must have non-null 'type' property");
        }
        if (Utility.isNullOrEmpty(jSONObject.optString("title"))) {
            throw new FacebookException("openGraphObject must have non-null 'title' property");
        }
        String string2 = String.format("me/objects/%s", jSONObject.optString("type"));
        Bundle bundle = new Bundle();
        bundle.putString("object", jSONObject.toString());
        return new GraphRequest(accessToken, string2, bundle, HttpMethod.POST, callback);
    }

    public static GraphRequest newStatusUpdateRequest(AccessToken accessToken, String string2, GraphRequest.Callback callback) {
        return ShareInternalUtility.newStatusUpdateRequest(accessToken, string2, (String)null, null, callback);
    }

    private static GraphRequest newStatusUpdateRequest(AccessToken accessToken, String string2, String string3, List<String> list, GraphRequest.Callback callback) {
        Bundle bundle = new Bundle();
        bundle.putString("message", string2);
        if (string3 != null) {
            bundle.putString("place", string3);
        }
        if (list != null && list.size() > 0) {
            bundle.putString("tags", TextUtils.join((CharSequence)",", list));
        }
        return new GraphRequest(accessToken, "me/feed", bundle, HttpMethod.POST, callback);
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public static GraphRequest newStatusUpdateRequest(AccessToken accessToken, String string2, JSONObject object, List<JSONObject> iterator, GraphRequest.Callback callback) {
        ArrayList<String> arrayList = null;
        if (iterator != null) {
            ArrayList<String> arrayList2 = new ArrayList<String>(iterator.size());
            iterator = iterator.iterator();
            do {
                arrayList = arrayList2;
                if (!iterator.hasNext()) break;
                arrayList2.add(((JSONObject)iterator.next()).optString("id"));
            } while (true);
        }
        if (object == null) {
            object = null;
            do {
                return ShareInternalUtility.newStatusUpdateRequest(accessToken, string2, (String)object, arrayList, callback);
                break;
            } while (true);
        }
        object = object.optString("id");
        return ShareInternalUtility.newStatusUpdateRequest(accessToken, string2, (String)object, arrayList, callback);
    }

    public static GraphRequest newUpdateOpenGraphObjectRequest(AccessToken accessToken, String string2, String string3, String string4, String string5, String string6, JSONObject jSONObject, GraphRequest.Callback callback) {
        return ShareInternalUtility.newUpdateOpenGraphObjectRequest(accessToken, GraphUtil.createOpenGraphObjectForPost(null, string3, string4, string5, string6, jSONObject, string2), callback);
    }

    public static GraphRequest newUpdateOpenGraphObjectRequest(AccessToken accessToken, JSONObject jSONObject, GraphRequest.Callback callback) {
        if (jSONObject == null) {
            throw new FacebookException("openGraphObject cannot be null");
        }
        String string2 = jSONObject.optString("id");
        if (string2 == null) {
            throw new FacebookException("openGraphObject must have an id");
        }
        Bundle bundle = new Bundle();
        bundle.putString("object", jSONObject.toString());
        return new GraphRequest(accessToken, string2, bundle, HttpMethod.POST, callback);
    }

    public static GraphRequest newUploadPhotoRequest(AccessToken accessToken, Bitmap bitmap, GraphRequest.Callback callback) {
        Bundle bundle = new Bundle(1);
        bundle.putParcelable("picture", (Parcelable)bitmap);
        return new GraphRequest(accessToken, "me/photos", bundle, HttpMethod.POST, callback);
    }

    public static GraphRequest newUploadPhotoRequest(AccessToken accessToken, Uri uri, GraphRequest.Callback callback) throws FileNotFoundException {
        if (Utility.isFileUri(uri)) {
            return ShareInternalUtility.newUploadPhotoRequest(accessToken, new File(uri.getPath()), callback);
        }
        if (!Utility.isContentUri(uri)) {
            throw new FacebookException("The photo Uri must be either a file:// or content:// Uri");
        }
        Bundle bundle = new Bundle(1);
        bundle.putParcelable("picture", (Parcelable)uri);
        return new GraphRequest(accessToken, "me/photos", bundle, HttpMethod.POST, callback);
    }

    public static GraphRequest newUploadPhotoRequest(AccessToken accessToken, File file, GraphRequest.Callback callback) throws FileNotFoundException {
        file = ParcelFileDescriptor.open((File)file, (int)268435456);
        Bundle bundle = new Bundle(1);
        bundle.putParcelable("picture", (Parcelable)file);
        return new GraphRequest(accessToken, "me/photos", bundle, HttpMethod.POST, callback);
    }

    public static GraphRequest newUploadStagingResourceWithImageRequest(AccessToken accessToken, Bitmap bitmap, GraphRequest.Callback callback) {
        Bundle bundle = new Bundle(1);
        bundle.putParcelable("file", (Parcelable)bitmap);
        return new GraphRequest(accessToken, "me/staging_resources", bundle, HttpMethod.POST, callback);
    }

    public static GraphRequest newUploadStagingResourceWithImageRequest(AccessToken accessToken, Uri object, GraphRequest.Callback callback) throws FileNotFoundException {
        if (Utility.isFileUri((Uri)object)) {
            return ShareInternalUtility.newUploadStagingResourceWithImageRequest(accessToken, new File(object.getPath()), callback);
        }
        if (!Utility.isContentUri((Uri)object)) {
            throw new FacebookException("The image Uri must be either a file:// or content:// Uri");
        }
        object = new GraphRequest.ParcelableResourceWithMimeType<Uri>((Uri)object, "image/png");
        Bundle bundle = new Bundle(1);
        bundle.putParcelable("file", (Parcelable)object);
        return new GraphRequest(accessToken, "me/staging_resources", bundle, HttpMethod.POST, callback);
    }

    public static GraphRequest newUploadStagingResourceWithImageRequest(AccessToken accessToken, File object, GraphRequest.Callback callback) throws FileNotFoundException {
        object = new GraphRequest.ParcelableResourceWithMimeType<ParcelFileDescriptor>(ParcelFileDescriptor.open((File)object, (int)268435456), "image/png");
        Bundle bundle = new Bundle(1);
        bundle.putParcelable("file", (Parcelable)object);
        return new GraphRequest(accessToken, "me/staging_resources", bundle, HttpMethod.POST, callback);
    }

    public static GraphRequest newUploadVideoRequest(AccessToken accessToken, Uri uri, GraphRequest.Callback callback) throws FileNotFoundException {
        if (Utility.isFileUri(uri)) {
            return ShareInternalUtility.newUploadVideoRequest(accessToken, new File(uri.getPath()), callback);
        }
        if (!Utility.isContentUri(uri)) {
            throw new FacebookException("The video Uri must be either a file:// or content:// Uri");
        }
        Bundle bundle = new Bundle(1);
        bundle.putParcelable("picture", (Parcelable)uri);
        return new GraphRequest(accessToken, "me/photos", bundle, HttpMethod.POST, callback);
    }

    public static GraphRequest newUploadVideoRequest(AccessToken accessToken, File file, GraphRequest.Callback callback) throws FileNotFoundException {
        ParcelFileDescriptor parcelFileDescriptor = ParcelFileDescriptor.open((File)file, (int)268435456);
        Bundle bundle = new Bundle(1);
        bundle.putParcelable(file.getName(), (Parcelable)parcelFileDescriptor);
        return new GraphRequest(accessToken, "me/videos", bundle, HttpMethod.POST, callback);
    }

    public static void registerSharerCallback(final int n2, CallbackManager callbackManager, final FacebookCallback<Sharer.Result> facebookCallback) {
        if (!(callbackManager instanceof CallbackManagerImpl)) {
            throw new FacebookException("Unexpected CallbackManager, please use the provided Factory.");
        }
        ((CallbackManagerImpl)callbackManager).registerCallback(n2, new CallbackManagerImpl.Callback(){

            @Override
            public boolean onActivityResult(int n22, Intent intent) {
                return ShareInternalUtility.handleActivityResult(n2, n22, intent, ShareInternalUtility.getShareResultProcessor(facebookCallback));
            }
        });
    }

    public static void registerStaticShareCallback(final int n2) {
        CallbackManagerImpl.registerStaticCallback(n2, new CallbackManagerImpl.Callback(){

            @Override
            public boolean onActivityResult(int n22, Intent intent) {
                return ShareInternalUtility.handleActivityResult(n2, n22, intent, ShareInternalUtility.getShareResultProcessor(null));
            }
        });
    }

    /*
     * Enabled aggressive block sorting
     */
    public static JSONArray removeNamespacesFromOGJsonArray(JSONArray jSONArray, boolean bl) throws JSONException {
        JSONArray jSONArray2 = new JSONArray();
        int n2 = 0;
        while (n2 < jSONArray.length()) {
            Object object;
            Object object2 = jSONArray.get(n2);
            if (object2 instanceof JSONArray) {
                object = ShareInternalUtility.removeNamespacesFromOGJsonArray((JSONArray)object2, bl);
            } else {
                object = object2;
                if (object2 instanceof JSONObject) {
                    object = ShareInternalUtility.removeNamespacesFromOGJsonObject((JSONObject)object2, bl);
                }
            }
            jSONArray2.put(object);
            ++n2;
        }
        return jSONArray2;
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     * Lifted jumps to return sites
     */
    public static JSONObject removeNamespacesFromOGJsonObject(JSONObject var0, boolean var1_2) {
        block14 : {
            block12 : {
                block13 : {
                    if (var0 == null) {
                        return null;
                    }
                    try {
                        var4_3 = new JSONObject();
                        var6_4 = new JSONObject();
                        var7_5 = var0.names();
                        var2_6 = 0;
lbl8: // 2 sources:
                        if (var2_6 >= var7_5.length()) break block12;
                        var8_9 = var7_5.getString(var2_6);
                        var5_8 = var0.get(var8_9);
                        if (var5_8 instanceof JSONObject) {
                            var3_7 = ShareInternalUtility.removeNamespacesFromOGJsonObject((JSONObject)var5_8, true);
                        } else {
                            var3_7 = var5_8;
                            if (var5_8 instanceof JSONArray) {
                                var3_7 = ShareInternalUtility.removeNamespacesFromOGJsonArray((JSONArray)var5_8, true);
                            }
                        }
                        var9_10 = ShareInternalUtility.getFieldNameAndNamespaceFromFullName(var8_9);
                        var5_8 = (String)var9_10.first;
                        var9_10 = (String)var9_10.second;
                        if (!var1_2) break block13;
                        if (var5_8 != null && var5_8.equals("fbsdk")) {
                            var4_3.put(var8_9, var3_7);
                        } else if (var5_8 == null || var5_8.equals("og")) {
                            var4_3.put((String)var9_10, var3_7);
                        } else {
                            var6_4.put((String)var9_10, var3_7);
                        }
                        break block14;
                    }
                    catch (JSONException var0_1) {
                        throw new FacebookException("Failed to create json object from share content");
                    }
                }
                var4_3.put((String)var9_10, var3_7);
                ** GOTO lbl39
            }
            var0 = var4_3;
            if (var6_4.length() <= 0) return var0;
            var4_3.put("data", (Object)var6_4);
            return var4_3;
        }
        ++var2_6;
        ** GOTO lbl8
    }

    public static JSONObject toJSONObjectForCall(final UUID uUID, ShareOpenGraphAction shareOpenGraphAction) throws JSONException {
        final ArrayList<NativeAppCallAttachmentStore.Attachment> arrayList = new ArrayList<NativeAppCallAttachmentStore.Attachment>();
        uUID = OpenGraphJSONUtility.toJSONObject(shareOpenGraphAction, new OpenGraphJSONUtility.PhotoJSONProcessor(){

            /*
             * Enabled force condition propagation
             * Lifted jumps to return sites
             */
            @Override
            public JSONObject toJSONObject(SharePhoto sharePhoto) {
                NativeAppCallAttachmentStore.Attachment attachment = ShareInternalUtility.getAttachment(uUID, sharePhoto);
                if (attachment == null) {
                    return null;
                }
                arrayList.add(attachment);
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put("url", (Object)attachment.getAttachmentUrl());
                    attachment = jSONObject;
                }
                catch (JSONException var1_2) {
                    throw new FacebookException("Unable to attach images", (Throwable)var1_2);
                }
                if (!sharePhoto.getUserGenerated()) return attachment;
                jSONObject.put("user_generated", true);
                return jSONObject;
            }
        });
        NativeAppCallAttachmentStore.addAttachments(arrayList);
        return uUID;
    }

    public static JSONObject toJSONObjectForWeb(ShareOpenGraphContent shareOpenGraphContent) throws JSONException {
        return OpenGraphJSONUtility.toJSONObject(shareOpenGraphContent.getAction(), new OpenGraphJSONUtility.PhotoJSONProcessor(){

            @Override
            public JSONObject toJSONObject(SharePhoto sharePhoto) {
                sharePhoto = sharePhoto.getImageUrl();
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put("url", (Object)sharePhoto.toString());
                    return jSONObject;
                }
                catch (JSONException var1_2) {
                    throw new FacebookException("Unable to attach images", (Throwable)var1_2);
                }
            }
        });
    }

}

