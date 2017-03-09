/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.net.Uri
 *  android.os.Bundle
 *  android.util.Pair
 *  org.json.JSONException
 *  org.json.JSONObject
 */
package com.facebook.share.internal;

import android.net.Uri;
import android.os.Bundle;
import android.util.Pair;
import com.facebook.FacebookException;
import com.facebook.internal.Utility;
import com.facebook.internal.Validate;
import com.facebook.share.internal.ShareInternalUtility;
import com.facebook.share.model.ShareContent;
import com.facebook.share.model.ShareLinkContent;
import com.facebook.share.model.ShareOpenGraphAction;
import com.facebook.share.model.ShareOpenGraphContent;
import com.facebook.share.model.SharePhotoContent;
import com.facebook.share.model.ShareVideo;
import com.facebook.share.model.ShareVideoContent;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.UUID;
import org.json.JSONException;
import org.json.JSONObject;

public class NativeDialogParameters {
    private static Bundle create(ShareLinkContent shareLinkContent, boolean bl) {
        Bundle bundle = NativeDialogParameters.createBaseParameters(shareLinkContent, bl);
        Utility.putNonEmptyString(bundle, "TITLE", shareLinkContent.getContentTitle());
        Utility.putNonEmptyString(bundle, "DESCRIPTION", shareLinkContent.getContentDescription());
        Utility.putUri(bundle, "IMAGE", shareLinkContent.getImageUrl());
        return bundle;
    }

    private static Bundle create(ShareOpenGraphContent shareOpenGraphContent, JSONObject jSONObject, boolean bl) {
        Bundle bundle = NativeDialogParameters.createBaseParameters(shareOpenGraphContent, bl);
        Utility.putNonEmptyString(bundle, "PREVIEW_PROPERTY_NAME", (String)ShareInternalUtility.getFieldNameAndNamespaceFromFullName((String)shareOpenGraphContent.getPreviewPropertyName()).second);
        Utility.putNonEmptyString(bundle, "ACTION_TYPE", shareOpenGraphContent.getAction().getActionType());
        Utility.putNonEmptyString(bundle, "ACTION", jSONObject.toString());
        return bundle;
    }

    private static Bundle create(SharePhotoContent sharePhotoContent, List<String> list, boolean bl) {
        sharePhotoContent = NativeDialogParameters.createBaseParameters(sharePhotoContent, bl);
        sharePhotoContent.putStringArrayList("PHOTOS", new ArrayList<String>(list));
        return sharePhotoContent;
    }

    private static Bundle create(ShareVideoContent shareVideoContent, boolean bl) {
        ShareVideo shareVideo = shareVideoContent.getVideo();
        Bundle bundle = NativeDialogParameters.createBaseParameters(shareVideoContent, bl);
        Utility.putNonEmptyString(bundle, "TITLE", shareVideoContent.getContentTitle());
        Utility.putNonEmptyString(bundle, "DESCRIPTION", shareVideoContent.getContentDescription());
        Utility.putUri(bundle, "VIDEO", shareVideo.getLocalUrl());
        return bundle;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public static Bundle create(UUID uUID, ShareContent shareContent, boolean bl) {
        Validate.notNull(shareContent, "shareContent");
        Validate.notNull(uUID, "callId");
        Object object = null;
        if (shareContent instanceof ShareLinkContent) {
            return NativeDialogParameters.create((ShareLinkContent)shareContent, bl);
        }
        if (shareContent instanceof SharePhotoContent) {
            shareContent = (SharePhotoContent)shareContent;
            return NativeDialogParameters.create((SharePhotoContent)shareContent, ShareInternalUtility.getPhotoUrls((SharePhotoContent)shareContent, uUID), bl);
        }
        if (shareContent instanceof ShareVideoContent) {
            return NativeDialogParameters.create((ShareVideoContent)shareContent, bl);
        }
        if (!(shareContent instanceof ShareOpenGraphContent)) return object;
        shareContent = (ShareOpenGraphContent)shareContent;
        object = shareContent.getAction();
        try {
            return NativeDialogParameters.create((ShareOpenGraphContent)shareContent, ShareInternalUtility.removeNamespacesFromOGJsonObject(ShareInternalUtility.toJSONObjectForCall(uUID, (ShareOpenGraphAction)object), false), bl);
        }
        catch (JSONException var0_1) {
            throw new FacebookException("Unable to create a JSON Object from the provided ShareOpenGraphContent: " + var0_1.getMessage());
        }
    }

    private static Bundle createBaseParameters(ShareContent object, boolean bl) {
        Bundle bundle = new Bundle();
        Utility.putUri(bundle, "LINK", object.getContentUrl());
        Utility.putNonEmptyString(bundle, "PLACE", object.getPlaceId());
        Utility.putNonEmptyString(bundle, "REF", object.getRef());
        bundle.putBoolean("DATA_FAILURES_FATAL", bl);
        object = object.getPeopleIds();
        if (!Utility.isNullOrEmpty(object)) {
            bundle.putStringArrayList("FRIENDS", new ArrayList(object));
        }
        return bundle;
    }
}

