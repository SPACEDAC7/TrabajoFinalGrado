/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.graphics.Bitmap
 *  android.net.Uri
 */
package com.facebook.share.internal;

import android.graphics.Bitmap;
import android.net.Uri;
import com.facebook.FacebookException;
import com.facebook.internal.Utility;
import com.facebook.share.model.ShareContent;
import com.facebook.share.model.ShareLinkContent;
import com.facebook.share.model.ShareModel;
import com.facebook.share.model.ShareOpenGraphAction;
import com.facebook.share.model.ShareOpenGraphContent;
import com.facebook.share.model.ShareOpenGraphObject;
import com.facebook.share.model.ShareOpenGraphValueContainer;
import com.facebook.share.model.SharePhoto;
import com.facebook.share.model.SharePhotoContent;
import com.facebook.share.model.ShareVideo;
import com.facebook.share.model.ShareVideoContent;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Set;

public class ShareContentValidation {
    private static Validator DefaultValidator;
    private static Validator WebShareValidator;

    private static Validator getDefaultValidator() {
        if (DefaultValidator == null) {
            DefaultValidator = new Validator();
        }
        return DefaultValidator;
    }

    private static Validator getWebShareValidator() {
        if (WebShareValidator == null) {
            WebShareValidator = new WebShareValidator();
        }
        return WebShareValidator;
    }

    /*
     * Enabled aggressive block sorting
     */
    private static void validate(ShareContent shareContent, Validator validator) throws FacebookException {
        if (shareContent == null) {
            throw new FacebookException("Must provide non-null content to share");
        }
        if (shareContent instanceof ShareLinkContent) {
            validator.validate((ShareLinkContent)shareContent);
            return;
        } else {
            if (shareContent instanceof SharePhotoContent) {
                validator.validate((SharePhotoContent)shareContent);
                return;
            }
            if (shareContent instanceof ShareVideoContent) {
                validator.validate((ShareVideoContent)shareContent);
                return;
            }
            if (!(shareContent instanceof ShareOpenGraphContent)) return;
            {
                validator.validate((ShareOpenGraphContent)shareContent);
                return;
            }
        }
    }

    public static void validateForApiShare(ShareContent shareContent) {
        ShareContentValidation.validate(shareContent, ShareContentValidation.getDefaultValidator());
    }

    public static void validateForMessage(ShareContent shareContent) {
        ShareContentValidation.validate(shareContent, ShareContentValidation.getDefaultValidator());
    }

    public static void validateForNativeShare(ShareContent shareContent) {
        ShareContentValidation.validate(shareContent, ShareContentValidation.getDefaultValidator());
    }

    public static void validateForWebShare(ShareContent shareContent) {
        ShareContentValidation.validate(shareContent, ShareContentValidation.getWebShareValidator());
    }

    private static void validateLinkContent(ShareLinkContent shareLinkContent, Validator validator) {
        if ((shareLinkContent = shareLinkContent.getImageUrl()) != null && !Utility.isWebUri((Uri)shareLinkContent)) {
            throw new FacebookException("Image Url must be an http:// or https:// url");
        }
    }

    private static void validateOpenGraphAction(ShareOpenGraphAction shareOpenGraphAction, Validator validator) {
        if (shareOpenGraphAction == null) {
            throw new FacebookException("Must specify a non-null ShareOpenGraphAction");
        }
        if (Utility.isNullOrEmpty(shareOpenGraphAction.getActionType())) {
            throw new FacebookException("ShareOpenGraphAction must have a non-empty actionType");
        }
        validator.validate(shareOpenGraphAction, false);
    }

    private static void validateOpenGraphContent(ShareOpenGraphContent shareOpenGraphContent, Validator object) {
        object.validate(shareOpenGraphContent.getAction());
        object = shareOpenGraphContent.getPreviewPropertyName();
        if (Utility.isNullOrEmpty((String)object)) {
            throw new FacebookException("Must specify a previewPropertyName.");
        }
        if (shareOpenGraphContent.getAction().get((String)object) == null) {
            throw new FacebookException("Property \"" + (String)object + "\" was not found on the action. " + "The name of the preview property must match the name of an " + "action property.");
        }
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private static void validateOpenGraphKey(String string2, boolean bl) {
        if (!bl) {
            return;
        }
        String[] arrstring = string2.split(":");
        if (arrstring.length < 2) {
            throw new FacebookException("Open Graph keys must be namespaced: %s", string2);
        }
        int n2 = arrstring.length;
        int n3 = 0;
        while (n3 < n2) {
            if (arrstring[n3].isEmpty()) {
                throw new FacebookException("Invalid key found in Open Graph dictionary: %s", string2);
            }
            ++n3;
        }
    }

    private static void validateOpenGraphObject(ShareOpenGraphObject shareOpenGraphObject, Validator validator) {
        if (shareOpenGraphObject == null) {
            throw new FacebookException("Cannot share a null ShareOpenGraphObject");
        }
        validator.validate(shareOpenGraphObject, true);
    }

    private static void validateOpenGraphValueContainer(ShareOpenGraphValueContainer shareOpenGraphValueContainer, Validator validator, boolean bl) {
        Iterator<String> iterator = shareOpenGraphValueContainer.keySet().iterator();
        while (iterator.hasNext()) {
            Iterator iterator2 = iterator.next();
            ShareContentValidation.validateOpenGraphKey((String)((Object)iterator2), bl);
            iterator2 = shareOpenGraphValueContainer.get((String)((Object)iterator2));
            if (iterator2 instanceof List) {
                for (Object e2 : (List)((Object)iterator2)) {
                    if (e2 == null) {
                        throw new FacebookException("Cannot put null objects in Lists in ShareOpenGraphObjects and ShareOpenGraphActions");
                    }
                    ShareContentValidation.validateOpenGraphValueContainerObject(e2, validator);
                }
                continue;
            }
            ShareContentValidation.validateOpenGraphValueContainerObject(iterator2, validator);
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    private static void validateOpenGraphValueContainerObject(Object object, Validator validator) {
        if (object instanceof ShareOpenGraphObject) {
            validator.validate((ShareOpenGraphObject)object);
            return;
        } else {
            if (!(object instanceof SharePhoto)) return;
            {
                validator.validate((SharePhoto)object);
                return;
            }
        }
    }

    private static void validatePhotoContent(SharePhotoContent iterator, Validator validator) {
        if ((iterator = iterator.getPhotos()) == null || iterator.isEmpty()) {
            throw new FacebookException("Must specify at least one Photo in SharePhotoContent.");
        }
        if (iterator.size() > 6) {
            throw new FacebookException(String.format(Locale.ROOT, "Cannot add more than %d photos.", 6));
        }
        iterator = iterator.iterator();
        while (iterator.hasNext()) {
            validator.validate((SharePhoto)iterator.next());
        }
    }

    private static void validatePhotoForNativeDialog(SharePhoto sharePhoto, Validator validator) {
        if (sharePhoto == null) {
            throw new FacebookException("Cannot share a null SharePhoto");
        }
        Bitmap bitmap = sharePhoto.getBitmap();
        sharePhoto = sharePhoto.getImageUrl();
        if (bitmap == null) {
            if (sharePhoto == null) {
                throw new FacebookException("SharePhoto does not have a Bitmap or ImageUrl specified");
            }
            if (Utility.isWebUri((Uri)sharePhoto) && !validator.isOpenGraphContent()) {
                throw new FacebookException("Cannot set the ImageUrl of a SharePhoto to the Uri of an image on the web when sharing SharePhotoContent");
            }
        }
    }

    private static void validatePhotoForWebDialog(SharePhoto sharePhoto, Validator validator) {
        if (sharePhoto == null) {
            throw new FacebookException("Cannot share a null SharePhoto");
        }
        if ((sharePhoto = sharePhoto.getImageUrl()) == null || !Utility.isWebUri((Uri)sharePhoto)) {
            throw new FacebookException("SharePhoto must have a non-null imageUrl set to the Uri of an image on the web");
        }
    }

    private static void validateVideo(ShareVideo shareVideo, Validator validator) {
        if (shareVideo == null) {
            throw new FacebookException("Cannot share a null ShareVideo");
        }
        if (shareVideo.getLocalUrl() == null) {
            throw new FacebookException("ShareVideo does not have a LocalUrl specified");
        }
    }

    private static void validateVideoContent(ShareVideoContent shareModel, Validator validator) {
        validator.validate(shareModel.getVideo());
        shareModel = shareModel.getPreviewPhoto();
        if (shareModel != null) {
            validator.validate((SharePhoto)shareModel);
        }
    }

    private static class Validator {
        private boolean isOpenGraphContent = false;

        private Validator() {
        }

        public boolean isOpenGraphContent() {
            return this.isOpenGraphContent;
        }

        public void validate(ShareLinkContent shareLinkContent) {
            ShareContentValidation.validateLinkContent(shareLinkContent, this);
        }

        public void validate(ShareOpenGraphAction shareOpenGraphAction) {
            ShareContentValidation.validateOpenGraphAction(shareOpenGraphAction, this);
        }

        public void validate(ShareOpenGraphContent shareOpenGraphContent) {
            this.isOpenGraphContent = true;
            ShareContentValidation.validateOpenGraphContent(shareOpenGraphContent, this);
        }

        public void validate(ShareOpenGraphObject shareOpenGraphObject) {
            ShareContentValidation.validateOpenGraphObject(shareOpenGraphObject, this);
        }

        public void validate(ShareOpenGraphValueContainer shareOpenGraphValueContainer, boolean bl) {
            ShareContentValidation.validateOpenGraphValueContainer(shareOpenGraphValueContainer, this, bl);
        }

        public void validate(SharePhoto sharePhoto) {
            ShareContentValidation.validatePhotoForNativeDialog(sharePhoto, this);
        }

        public void validate(SharePhotoContent sharePhotoContent) {
            ShareContentValidation.validatePhotoContent(sharePhotoContent, this);
        }

        public void validate(ShareVideo shareVideo) {
            ShareContentValidation.validateVideo(shareVideo, this);
        }

        public void validate(ShareVideoContent shareVideoContent) {
            ShareContentValidation.validateVideoContent(shareVideoContent, this);
        }
    }

    private static class WebShareValidator
    extends Validator {
        private WebShareValidator() {
        }

        @Override
        public void validate(SharePhoto sharePhoto) {
            ShareContentValidation.validatePhotoForWebDialog(sharePhoto, this);
        }

        @Override
        public void validate(SharePhotoContent sharePhotoContent) {
            throw new FacebookException("Cannot share SharePhotoContent via web sharing dialogs");
        }

        @Override
        public void validate(ShareVideoContent shareVideoContent) {
            throw new FacebookException("Cannot share ShareVideoContent via web sharing dialogs");
        }
    }

}

