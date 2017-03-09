/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.net.Uri
 *  android.os.Bundle
 *  org.json.JSONException
 */
package com.facebook.share.internal;

import android.net.Uri;
import android.os.Bundle;
import com.facebook.FacebookException;
import com.facebook.internal.Utility;
import com.facebook.share.internal.ShareInternalUtility;
import com.facebook.share.model.AppGroupCreationContent;
import com.facebook.share.model.GameRequestContent;
import com.facebook.share.model.ShareLinkContent;
import com.facebook.share.model.ShareOpenGraphAction;
import com.facebook.share.model.ShareOpenGraphContent;
import java.util.ArrayList;
import java.util.Locale;
import org.json.JSONException;

public class WebDialogParameters {
    public static Bundle create(AppGroupCreationContent appGroupCreationContent) {
        Bundle bundle = new Bundle();
        Utility.putNonEmptyString(bundle, "name", appGroupCreationContent.getName());
        Utility.putNonEmptyString(bundle, "description", appGroupCreationContent.getDescription());
        Utility.putNonEmptyString(bundle, "privacy", appGroupCreationContent.getAppGroupPrivacy().toString().toLowerCase(Locale.ENGLISH));
        return bundle;
    }

    public static Bundle create(GameRequestContent gameRequestContent) {
        Bundle bundle = new Bundle();
        Utility.putNonEmptyString(bundle, "message", gameRequestContent.getMessage());
        Utility.putNonEmptyString(bundle, "to", gameRequestContent.getTo());
        Utility.putNonEmptyString(bundle, "title", gameRequestContent.getTitle());
        Utility.putNonEmptyString(bundle, "data", gameRequestContent.getData());
        if (gameRequestContent.getActionType() != null) {
            Utility.putNonEmptyString(bundle, "action_type", gameRequestContent.getActionType().toString().toLowerCase(Locale.ENGLISH));
        }
        Utility.putNonEmptyString(bundle, "object_id", gameRequestContent.getObjectId());
        if (gameRequestContent.getFilters() != null) {
            Utility.putNonEmptyString(bundle, "filters", gameRequestContent.getFilters().toString().toLowerCase(Locale.ENGLISH));
        }
        Utility.putCommaSeparatedStringList(bundle, "suggestions", gameRequestContent.getSuggestions());
        return bundle;
    }

    public static Bundle create(ShareLinkContent shareLinkContent) {
        Bundle bundle = new Bundle();
        Utility.putUri(bundle, "href", shareLinkContent.getContentUrl());
        return bundle;
    }

    public static Bundle create(ShareOpenGraphContent shareOpenGraphContent) {
        Bundle bundle;
        block3 : {
            bundle = new Bundle();
            Utility.putNonEmptyString(bundle, "action_type", shareOpenGraphContent.getAction().getActionType());
            try {
                shareOpenGraphContent = ShareInternalUtility.removeNamespacesFromOGJsonObject(ShareInternalUtility.toJSONObjectForWeb(shareOpenGraphContent), false);
                if (shareOpenGraphContent == null) break block3;
            }
            catch (JSONException var0_1) {
                throw new FacebookException("Unable to serialize the ShareOpenGraphContent to JSON", (Throwable)var0_1);
            }
            Utility.putNonEmptyString(bundle, "action_properties", shareOpenGraphContent.toString());
        }
        return bundle;
    }

    public static Bundle createForFeed(ShareLinkContent shareLinkContent) {
        Bundle bundle = new Bundle();
        Utility.putNonEmptyString(bundle, "name", shareLinkContent.getContentTitle());
        Utility.putNonEmptyString(bundle, "description", shareLinkContent.getContentDescription());
        Utility.putNonEmptyString(bundle, "link", Utility.getUriString(shareLinkContent.getContentUrl()));
        Utility.putNonEmptyString(bundle, "picture", Utility.getUriString(shareLinkContent.getImageUrl()));
        return bundle;
    }
}

