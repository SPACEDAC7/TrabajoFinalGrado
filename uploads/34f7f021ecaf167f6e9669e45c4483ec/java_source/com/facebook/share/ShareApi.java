/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.graphics.Bitmap
 *  android.net.Uri
 *  android.os.Bundle
 *  org.json.JSONArray
 *  org.json.JSONException
 *  org.json.JSONObject
 */
package com.facebook.share;

import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Bundle;
import com.facebook.AccessToken;
import com.facebook.FacebookCallback;
import com.facebook.FacebookException;
import com.facebook.FacebookGraphResponseException;
import com.facebook.FacebookRequestError;
import com.facebook.GraphRequest;
import com.facebook.GraphRequestAsyncTask;
import com.facebook.GraphResponse;
import com.facebook.HttpMethod;
import com.facebook.internal.CollectionMapper;
import com.facebook.internal.Mutable;
import com.facebook.internal.Utility;
import com.facebook.share.Sharer;
import com.facebook.share.internal.ShareContentValidation;
import com.facebook.share.internal.ShareInternalUtility;
import com.facebook.share.model.ShareContent;
import com.facebook.share.model.ShareLinkContent;
import com.facebook.share.model.ShareModel;
import com.facebook.share.model.ShareOpenGraphAction;
import com.facebook.share.model.ShareOpenGraphContent;
import com.facebook.share.model.ShareOpenGraphObject;
import com.facebook.share.model.SharePhoto;
import com.facebook.share.model.SharePhotoContent;
import com.facebook.share.model.ShareVideo;
import com.facebook.share.model.ShareVideoContent;
import java.io.FileNotFoundException;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public final class ShareApi {
    private final ShareContent shareContent;

    public ShareApi(ShareContent shareContent) {
        this.shareContent = shareContent;
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     * Lifted jumps to return sites
     */
    private static void handleImagesOnAction(Bundle var0) {
        block9 : {
            var1_2 = var0.getString("image");
            if (var1_2 == null) return;
            try {
                var2_3 = new JSONArray(var1_2);
                var4_5 = 0;
lbl6: // 2 sources:
                if (var4_5 < var2_3.length()) {
                    var3_6 = var2_3.optJSONObject(var4_5);
                    if (var3_6 != null) {
                        ShareApi.putImageInBundleWithArrayFormat(var0, var4_5, (JSONObject)var3_6);
                    } else {
                        var3_6 = var2_3.getString(var4_5);
                        var0.putString(String.format(Locale.ROOT, "image[%d][url]", new Object[]{var4_5}), (String)var3_6);
                    }
                    break block9;
                }
                var0.remove("image");
                return;
            }
            catch (JSONException var2_4) {
                try {
                    ShareApi.putImageInBundleWithArrayFormat(var0, 0, new JSONObject(var1_2));
                    var0.remove("image");
                    return;
                }
                catch (JSONException var0_1) {
                    return;
                }
            }
        }
        ++var4_5;
        ** GOTO lbl6
    }

    private static void putImageInBundleWithArrayFormat(Bundle bundle, int n2, JSONObject jSONObject) throws JSONException {
        Iterator iterator = jSONObject.keys();
        while (iterator.hasNext()) {
            String string2 = (String)iterator.next();
            bundle.putString(String.format(Locale.ROOT, "image[%d][%s]", n2, string2), jSONObject.get(string2).toString());
        }
    }

    public static void share(ShareContent shareContent, FacebookCallback<Sharer.Result> facebookCallback) {
        new ShareApi(shareContent).share(facebookCallback);
    }

    private void shareLinkContent(ShareLinkContent shareLinkContent, FacebookCallback<Sharer.Result> object) {
        object = new GraphRequest.Callback((FacebookCallback)object){
            final /* synthetic */ FacebookCallback val$callback;

            /*
             * Enabled aggressive block sorting
             */
            @Override
            public void onCompleted(GraphResponse graphResponse) {
                Object object = graphResponse.getJSONObject();
                object = object == null ? null : object.optString("id");
                ShareInternalUtility.invokeCallbackWithResults(this.val$callback, (String)object, graphResponse);
            }
        };
        Bundle bundle = new Bundle();
        bundle.putString("link", Utility.getUriString(shareLinkContent.getContentUrl()));
        bundle.putString("picture", Utility.getUriString(shareLinkContent.getImageUrl()));
        bundle.putString("name", shareLinkContent.getContentTitle());
        bundle.putString("description", shareLinkContent.getContentDescription());
        bundle.putString("ref", shareLinkContent.getRef());
        new GraphRequest(AccessToken.getCurrentAccessToken(), "/me/feed", bundle, HttpMethod.POST, (GraphRequest.Callback)object).executeAsync();
    }

    private void shareOpenGraphContent(ShareOpenGraphContent shareModel, final FacebookCallback<Sharer.Result> facebookCallback) {
        GraphRequest.Callback callback = new GraphRequest.Callback(){

            /*
             * Enabled aggressive block sorting
             */
            @Override
            public void onCompleted(GraphResponse graphResponse) {
                Object object = graphResponse.getJSONObject();
                object = object == null ? null : object.optString("id");
                ShareInternalUtility.invokeCallbackWithResults(facebookCallback, (String)object, graphResponse);
            }
        };
        shareModel = shareModel.getAction();
        final Bundle bundle = shareModel.getBundle();
        ShareApi.stageOpenGraphAction(bundle, new CollectionMapper.OnMapperCompleteListener((ShareOpenGraphAction)shareModel, callback, facebookCallback){
            final /* synthetic */ ShareOpenGraphAction val$action;
            final /* synthetic */ FacebookCallback val$callback;
            final /* synthetic */ GraphRequest.Callback val$requestCallback;

            @Override
            public void onComplete() {
                try {
                    ShareApi.handleImagesOnAction(bundle);
                    new GraphRequest(AccessToken.getCurrentAccessToken(), "/me/" + URLEncoder.encode(this.val$action.getActionType(), "UTF-8"), bundle, HttpMethod.POST, this.val$requestCallback).executeAsync();
                    return;
                }
                catch (UnsupportedEncodingException var1_1) {
                    ShareInternalUtility.invokeCallbackWithException(this.val$callback, var1_1);
                    return;
                }
            }

            @Override
            public void onError(FacebookException facebookException) {
                ShareInternalUtility.invokeCallbackWithException(this.val$callback, facebookException);
            }
        });
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     * Lifted jumps to return sites
     */
    private void sharePhotoContent(SharePhotoContent iterator, FacebookCallback<Sharer.Result> facebookCallback) {
        Mutable<Integer> mutable = new Mutable<Integer>(0);
        AccessToken accessToken = AccessToken.getCurrentAccessToken();
        ArrayList<GraphRequest> arrayList = new ArrayList<GraphRequest>();
        GraphRequest.Callback callback = new GraphRequest.Callback(new ArrayList(), new ArrayList(), mutable, facebookCallback){
            final /* synthetic */ FacebookCallback val$callback;
            final /* synthetic */ ArrayList val$errorResponses;
            final /* synthetic */ Mutable val$requestCount;
            final /* synthetic */ ArrayList val$results;

            /*
             * Enabled aggressive block sorting
             */
            @Override
            public void onCompleted(GraphResponse graphResponse) {
                Object object = graphResponse.getJSONObject();
                if (object != null) {
                    this.val$results.add(object);
                }
                if (graphResponse.getError() != null) {
                    this.val$errorResponses.add(graphResponse);
                }
                this.val$requestCount.value = (Integer)this.val$requestCount.value - 1;
                if ((Integer)this.val$requestCount.value != 0) return;
                {
                    if (!this.val$errorResponses.isEmpty()) {
                        ShareInternalUtility.invokeCallbackWithResults(this.val$callback, null, (GraphResponse)this.val$errorResponses.get(0));
                        return;
                    } else {
                        if (this.val$results.isEmpty()) return;
                        {
                            object = ((JSONObject)this.val$results.get(0)).optString("id");
                            ShareInternalUtility.invokeCallbackWithResults(this.val$callback, (String)object, graphResponse);
                            return;
                        }
                    }
                }
            }
        };
        try {
            iterator = iterator.getPhotos().iterator();
            while (iterator.hasNext()) {
                SharePhoto sharePhoto = (SharePhoto)iterator.next();
                Bitmap bitmap = sharePhoto.getBitmap();
                sharePhoto = sharePhoto.getImageUrl();
                if (bitmap != null) {
                    arrayList.add(ShareInternalUtility.newUploadPhotoRequest(accessToken, bitmap, callback));
                    continue;
                }
                if (sharePhoto == null) continue;
                arrayList.add(ShareInternalUtility.newUploadPhotoRequest(accessToken, (Uri)sharePhoto, callback));
            }
        }
        catch (FileNotFoundException var1_2) {
            ShareInternalUtility.invokeCallbackWithException(facebookCallback, var1_2);
            return;
        }
        mutable.value = (Integer)mutable.value + arrayList.size();
        iterator = arrayList.iterator();
        while (iterator.hasNext()) {
            ((GraphRequest)iterator.next()).executeAsync();
        }
    }

    private void shareVideoContent(ShareVideoContent shareVideoContent, FacebookCallback<Sharer.Result> bundle) {
        Object object = new GraphRequest.Callback((FacebookCallback)bundle){
            final /* synthetic */ FacebookCallback val$callback;

            @Override
            public void onCompleted(GraphResponse graphResponse) {
                String string2;
                String string3 = string2 = null;
                if (graphResponse != null) {
                    JSONObject jSONObject = graphResponse.getJSONObject();
                    string3 = string2;
                    if (jSONObject != null) {
                        string3 = jSONObject.optString("id");
                    }
                }
                ShareInternalUtility.invokeCallbackWithResults(this.val$callback, string3, graphResponse);
            }
        };
        try {
            object = ShareInternalUtility.newUploadVideoRequest(AccessToken.getCurrentAccessToken(), shareVideoContent.getVideo().getLocalUrl(), (GraphRequest.Callback)object);
            bundle = object.getParameters();
        }
        catch (FileNotFoundException var1_2) {
            ShareInternalUtility.invokeCallbackWithException(bundle, var1_2);
            return;
        }
        bundle.putString("title", shareVideoContent.getContentTitle());
        bundle.putString("description", shareVideoContent.getContentDescription());
        bundle.putString("ref", shareVideoContent.getRef());
        object.setParameters(bundle);
        object.executeAsync();
    }

    private static void stageArrayList(final ArrayList arrayList, final CollectionMapper.OnMapValueCompleteListener onMapValueCompleteListener) {
        final JSONArray jSONArray = new JSONArray();
        ShareApi.stageCollectionValues(new CollectionMapper.Collection<Integer>(){

            @Override
            public Object get(Integer n2) {
                return arrayList.get(n2);
            }

            @Override
            public Iterator<Integer> keyIterator() {
                int n2 = arrayList.size();
                return new Iterator<Integer>(new Mutable<Integer>(0), n2){
                    final /* synthetic */ Mutable val$current;
                    final /* synthetic */ int val$size;

                    @Override
                    public boolean hasNext() {
                        if ((Integer)this.val$current.value < this.val$size) {
                            return true;
                        }
                        return false;
                    }

                    @Override
                    public Integer next() {
                        Integer n2 = (Integer)this.val$current.value;
                        Mutable mutable = this.val$current;
                        mutable.value = (Integer)mutable.value + 1;
                        return n2;
                    }

                    @Override
                    public void remove() {
                    }
                };
            }

            @Override
            public void set(Integer n2, Object object, CollectionMapper.OnErrorListener onErrorListener) {
                try {
                    jSONArray.put(n2.intValue(), object);
                    return;
                }
                catch (JSONException var1_2) {
                    Object object2 = object = var1_2.getLocalizedMessage();
                    if (object == null) {
                        object2 = "Error staging object.";
                    }
                    onErrorListener.onError(new FacebookException((String)object2));
                    return;
                }
            }

        }, new CollectionMapper.OnMapperCompleteListener(){

            @Override
            public void onComplete() {
                onMapValueCompleteListener.onComplete((Object)jSONArray);
            }

            @Override
            public void onError(FacebookException facebookException) {
                onMapValueCompleteListener.onError(facebookException);
            }
        });
    }

    private static <T> void stageCollectionValues(CollectionMapper.Collection<T> collection, CollectionMapper.OnMapperCompleteListener onMapperCompleteListener) {
        CollectionMapper.iterate(collection, new CollectionMapper.ValueMapper(){

            @Override
            public void mapValue(Object object, CollectionMapper.OnMapValueCompleteListener onMapValueCompleteListener) {
                if (object instanceof ArrayList) {
                    ShareApi.stageArrayList((ArrayList)object, onMapValueCompleteListener);
                    return;
                }
                if (object instanceof ShareOpenGraphObject) {
                    ShareApi.stageOpenGraphObject((ShareOpenGraphObject)object, onMapValueCompleteListener);
                    return;
                }
                if (object instanceof SharePhoto) {
                    ShareApi.stagePhoto((SharePhoto)object, onMapValueCompleteListener);
                    return;
                }
                onMapValueCompleteListener.onComplete(object);
            }
        }, onMapperCompleteListener);
    }

    private static void stageOpenGraphAction(final Bundle bundle, CollectionMapper.OnMapperCompleteListener onMapperCompleteListener) {
        ShareApi.stageCollectionValues(new CollectionMapper.Collection<String>(){

            @Override
            public Object get(String string2) {
                return bundle.get(string2);
            }

            @Override
            public Iterator<String> keyIterator() {
                return bundle.keySet().iterator();
            }

            @Override
            public void set(String string2, Object object, CollectionMapper.OnErrorListener onErrorListener) {
                if (!Utility.putJSONValueInBundle(bundle, string2, object)) {
                    onErrorListener.onError(new FacebookException("Unexpected value: " + object.toString()));
                }
            }
        }, onMapperCompleteListener);
    }

    private static void stageOpenGraphObject(final ShareOpenGraphObject shareOpenGraphObject, final CollectionMapper.OnMapValueCompleteListener onMapValueCompleteListener) {
        String string2;
        String string3 = string2 = shareOpenGraphObject.getString("type");
        if (string2 == null) {
            string3 = shareOpenGraphObject.getString("og:type");
        }
        if (string3 == null) {
            onMapValueCompleteListener.onError(new FacebookException("Open Graph objects must contain a type value."));
            return;
        }
        string2 = new JSONObject();
        ShareApi.stageCollectionValues(new CollectionMapper.Collection<String>((JSONObject)string2){
            final /* synthetic */ JSONObject val$stagedObject;

            @Override
            public Object get(String string2) {
                return shareOpenGraphObject.get(string2);
            }

            @Override
            public Iterator<String> keyIterator() {
                return shareOpenGraphObject.keySet().iterator();
            }

            @Override
            public void set(String string2, Object object, CollectionMapper.OnErrorListener onErrorListener) {
                try {
                    this.val$stagedObject.put(string2, object);
                    return;
                }
                catch (JSONException var1_2) {
                    Object object2 = object = var1_2.getLocalizedMessage();
                    if (object == null) {
                        object2 = "Error staging object.";
                    }
                    onErrorListener.onError(new FacebookException((String)object2));
                    return;
                }
            }
        }, new CollectionMapper.OnMapperCompleteListener((JSONObject)string2, string3, new GraphRequest.Callback(){

            @Override
            public void onCompleted(GraphResponse graphResponse) {
                Object object = graphResponse.getError();
                if (object != null) {
                    String string2;
                    object = string2 = object.getErrorMessage();
                    if (string2 == null) {
                        object = "Error staging Open Graph object.";
                    }
                    onMapValueCompleteListener.onError(new FacebookGraphResponseException(graphResponse, (String)object));
                    return;
                }
                object = graphResponse.getJSONObject();
                if (object == null) {
                    onMapValueCompleteListener.onError(new FacebookGraphResponseException(graphResponse, "Error staging Open Graph object."));
                    return;
                }
                if ((object = object.optString("id")) == null) {
                    onMapValueCompleteListener.onError(new FacebookGraphResponseException(graphResponse, "Error staging Open Graph object."));
                    return;
                }
                onMapValueCompleteListener.onComplete(object);
            }
        }, onMapValueCompleteListener){
            final /* synthetic */ String val$ogType;
            final /* synthetic */ CollectionMapper.OnMapValueCompleteListener val$onOpenGraphObjectStagedListener;
            final /* synthetic */ GraphRequest.Callback val$requestCallback;
            final /* synthetic */ JSONObject val$stagedObject;

            @Override
            public void onComplete() {
                String string2 = this.val$stagedObject.toString();
                Object object = new Bundle();
                object.putString("object", string2);
                try {
                    new GraphRequest(AccessToken.getCurrentAccessToken(), "/me/objects/" + URLEncoder.encode(this.val$ogType, "UTF-8"), (Bundle)object, HttpMethod.POST, this.val$requestCallback).executeAsync();
                    return;
                }
                catch (UnsupportedEncodingException var1_2) {
                    Object object2 = object = var1_2.getLocalizedMessage();
                    if (object == null) {
                        object2 = "Error staging Open Graph object.";
                    }
                    this.val$onOpenGraphObjectStagedListener.onError(new FacebookException((String)object2));
                    return;
                }
            }

            @Override
            public void onError(FacebookException facebookException) {
                this.val$onOpenGraphObjectStagedListener.onError(facebookException);
            }
        });
    }

    private static void stagePhoto(SharePhoto object, final CollectionMapper.OnMapValueCompleteListener onMapValueCompleteListener) {
        Object object2 = object.getBitmap();
        Uri uri = object.getImageUrl();
        if (object2 != null || uri != null) {
            object = new GraphRequest.Callback((SharePhoto)object){
                final /* synthetic */ SharePhoto val$photo;

                @Override
                public void onCompleted(GraphResponse object) {
                    Object object2 = object.getError();
                    if (object2 != null) {
                        String string2;
                        object2 = string2 = object2.getErrorMessage();
                        if (string2 == null) {
                            object2 = "Error staging photo.";
                        }
                        onMapValueCompleteListener.onError(new FacebookGraphResponseException((GraphResponse)object, (String)object2));
                        return;
                    }
                    if ((object = object.getJSONObject()) == null) {
                        onMapValueCompleteListener.onError(new FacebookException("Error staging photo."));
                        return;
                    }
                    if ((object = object.optString("uri")) == null) {
                        onMapValueCompleteListener.onError(new FacebookException("Error staging photo."));
                        return;
                    }
                    object2 = new JSONObject();
                    try {
                        object2.put("url", object);
                        object2.put("user_generated", this.val$photo.getUserGenerated());
                    }
                    catch (JSONException var1_2) {
                        Object object3 = object2 = var1_2.getLocalizedMessage();
                        if (object2 == null) {
                            object3 = "Error staging photo.";
                        }
                        onMapValueCompleteListener.onError(new FacebookException((String)object3));
                        return;
                    }
                    onMapValueCompleteListener.onComplete(object2);
                }
            };
            if (object2 != null) {
                ShareInternalUtility.newUploadStagingResourceWithImageRequest(AccessToken.getCurrentAccessToken(), (Bitmap)object2, (GraphRequest.Callback)object).executeAsync();
                return;
            }
            try {
                ShareInternalUtility.newUploadStagingResourceWithImageRequest(AccessToken.getCurrentAccessToken(), uri, (GraphRequest.Callback)object).executeAsync();
                return;
            }
            catch (FileNotFoundException var0_1) {
                Object object3 = object2 = var0_1.getLocalizedMessage();
                if (object2 == null) {
                    object3 = "Error staging photo.";
                }
                onMapValueCompleteListener.onError(new FacebookException((String)object3));
                return;
            }
        }
        onMapValueCompleteListener.onError(new FacebookException("Photos must have an imageURL or bitmap."));
    }

    /*
     * Enabled aggressive block sorting
     */
    public boolean canShare() {
        Object object;
        if (this.getShareContent() == null || (object = AccessToken.getCurrentAccessToken()) == null || (object = object.getPermissions()) == null) {
            return false;
        }
        return object.contains("publish_actions");
    }

    public ShareContent getShareContent() {
        return this.shareContent;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public void share(FacebookCallback<Sharer.Result> facebookCallback) {
        if (!this.canShare()) {
            ShareInternalUtility.invokeCallbackWithError(facebookCallback, "Insufficient permissions for sharing content via Api.");
            return;
        }
        ShareContent shareContent = this.getShareContent();
        try {
            ShareContentValidation.validateForApiShare(shareContent);
        }
        catch (FacebookException var2_3) {
            ShareInternalUtility.invokeCallbackWithException(facebookCallback, var2_3);
            return;
        }
        if (shareContent instanceof ShareLinkContent) {
            this.shareLinkContent((ShareLinkContent)shareContent, facebookCallback);
            return;
        }
        if (shareContent instanceof SharePhotoContent) {
            this.sharePhotoContent((SharePhotoContent)shareContent, facebookCallback);
            return;
        }
        if (shareContent instanceof ShareVideoContent) {
            this.shareVideoContent((ShareVideoContent)shareContent, facebookCallback);
            return;
        }
        if (!(shareContent instanceof ShareOpenGraphContent)) return;
        {
            this.shareOpenGraphContent((ShareOpenGraphContent)shareContent, facebookCallback);
            return;
        }
    }

}

