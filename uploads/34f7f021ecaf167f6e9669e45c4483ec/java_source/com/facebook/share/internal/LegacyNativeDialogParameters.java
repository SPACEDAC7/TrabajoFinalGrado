/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.net.Uri
 *  android.os.Bundle
 *  org.json.JSONException
 *  org.json.JSONObject
 */
package com.facebook.share.internal;

import android.net.Uri;
import android.os.Bundle;
import com.facebook.FacebookException;
import com.facebook.internal.Utility;
import com.facebook.internal.Validate;
import com.facebook.share.internal.ShareInternalUtility;
import com.facebook.share.model.ShareContent;
import com.facebook.share.model.ShareLinkContent;
import com.facebook.share.model.ShareOpenGraphAction;
import com.facebook.share.model.ShareOpenGraphContent;
import com.facebook.share.model.SharePhotoContent;
import com.facebook.share.model.ShareVideoContent;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.UUID;
import org.json.JSONException;
import org.json.JSONObject;

public class LegacyNativeDialogParameters {
    private static Bundle create(ShareLinkContent shareLinkContent, boolean bl) {
        Bundle bundle = LegacyNativeDialogParameters.createBaseParameters(shareLinkContent, bl);
        Utility.putNonEmptyString(bundle, "com.facebook.platform.extra.TITLE", shareLinkContent.getContentTitle());
        Utility.putNonEmptyString(bundle, "com.facebook.platform.extra.DESCRIPTION", shareLinkContent.getContentDescription());
        Utility.putUri(bundle, "com.facebook.platform.extra.IMAGE", shareLinkContent.getImageUrl());
        return bundle;
    }

    private static Bundle create(ShareOpenGraphContent shareOpenGraphContent, JSONObject jSONObject, boolean bl) {
        Bundle bundle = LegacyNativeDialogParameters.createBaseParameters(shareOpenGraphContent, bl);
        Utility.putNonEmptyString(bundle, "com.facebook.platform.extra.PREVIEW_PROPERTY_NAME", shareOpenGraphContent.getPreviewPropertyName());
        Utility.putNonEmptyString(bundle, "com.facebook.platform.extra.ACTION_TYPE", shareOpenGraphContent.getAction().getActionType());
        Utility.putNonEmptyString(bundle, "com.facebook.platform.extra.ACTION", jSONObject.toString());
        return bundle;
    }

    private static Bundle create(SharePhotoContent sharePhotoContent, List<String> list, boolean bl) {
        sharePhotoContent = LegacyNativeDialogParameters.createBaseParameters(sharePhotoContent, bl);
        sharePhotoContent.putStringArrayList("com.facebook.platform.extra.PHOTOS", new ArrayList<String>(list));
        return sharePhotoContent;
    }

    private static Bundle create(ShareVideoContent shareVideoContent, boolean bl) {
        return null;
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
            return LegacyNativeDialogParameters.create((ShareLinkContent)shareContent, bl);
        }
        if (shareContent instanceof SharePhotoContent) {
            shareContent = (SharePhotoContent)shareContent;
            return LegacyNativeDialogParameters.create((SharePhotoContent)shareContent, ShareInternalUtility.getPhotoUrls((SharePhotoContent)shareContent, uUID), bl);
        }
        if (shareContent instanceof ShareVideoContent) {
            return LegacyNativeDialogParameters.create((ShareVideoContent)shareContent, bl);
        }
        if (!(shareContent instanceof ShareOpenGraphContent)) return object;
        shareContent = (ShareOpenGraphContent)shareContent;
        object = shareContent.getAction();
        try {
            return LegacyNativeDialogParameters.create((ShareOpenGraphContent)shareContent, ShareInternalUtility.toJSONObjectForCall(uUID, (ShareOpenGraphAction)object), bl);
        }
        catch (JSONException var0_1) {
            throw new FacebookException("Unable to create a JSON Object from the provided ShareOpenGraphContent: " + var0_1.getMessage());
        }
    }

    private static Bundle createBaseParameters(ShareContent object, boolean bl) {
        Bundle bundle = new Bundle();
        Utility.putUri(bundle, "com.facebook.platform.extra.LINK", object.getContentUrl());
        Utility.putNonEmptyString(bundle, "com.facebook.platform.extra.PLACE", object.getPlaceId());
        Utility.putNonEmptyString(bundle, "com.facebook.platform.extra.REF", object.getRef());
        bundle.putBoolean("com.facebook.platform.extra.DATA_FAILURES_FATAL", bl);
        object = object.getPeopleIds();
        if (!Utility.isNullOrEmpty(object)) {
            bundle.putStringArrayList("com.facebook.platform.extra.FRIENDS", new ArrayList(object));
        }
        return bundle;
    }
}

