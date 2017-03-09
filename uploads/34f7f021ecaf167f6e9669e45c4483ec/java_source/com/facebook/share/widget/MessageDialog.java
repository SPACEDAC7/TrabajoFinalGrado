/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.app.Activity
 *  android.os.Bundle
 */
package com.facebook.share.widget;

import android.app.Activity;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import com.facebook.FacebookCallback;
import com.facebook.internal.AppCall;
import com.facebook.internal.CallbackManagerImpl;
import com.facebook.internal.DialogFeature;
import com.facebook.internal.DialogPresenter;
import com.facebook.internal.FacebookDialogBase;
import com.facebook.share.Sharer;
import com.facebook.share.internal.LegacyNativeDialogParameters;
import com.facebook.share.internal.MessageDialogFeature;
import com.facebook.share.internal.NativeDialogParameters;
import com.facebook.share.internal.OpenGraphMessageDialogFeature;
import com.facebook.share.internal.ShareContentValidation;
import com.facebook.share.internal.ShareInternalUtility;
import com.facebook.share.model.ShareContent;
import com.facebook.share.model.ShareLinkContent;
import com.facebook.share.model.ShareOpenGraphContent;
import com.facebook.share.model.SharePhotoContent;
import com.facebook.share.model.ShareVideoContent;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

public final class MessageDialog
extends FacebookDialogBase<ShareContent, Sharer.Result>
implements Sharer {
    private static final int DEFAULT_REQUEST_CODE = CallbackManagerImpl.RequestCodeOffset.Message.toRequestCode();
    private boolean shouldFailOnDataError = false;

    public MessageDialog(Activity activity) {
        super(activity, DEFAULT_REQUEST_CODE);
        ShareInternalUtility.registerStaticShareCallback(DEFAULT_REQUEST_CODE);
    }

    MessageDialog(Activity activity, int n2) {
        super(activity, n2);
        ShareInternalUtility.registerStaticShareCallback(n2);
    }

    public MessageDialog(Fragment fragment) {
        super(fragment, DEFAULT_REQUEST_CODE);
        ShareInternalUtility.registerStaticShareCallback(DEFAULT_REQUEST_CODE);
    }

    MessageDialog(Fragment fragment, int n2) {
        super(fragment, n2);
        ShareInternalUtility.registerStaticShareCallback(n2);
    }

    public static boolean canShow(Class<? extends ShareContent> object) {
        if ((object = MessageDialog.getFeature(object)) != null && DialogPresenter.canPresentNativeDialogWithFeature((DialogFeature)object)) {
            return true;
        }
        return false;
    }

    private static DialogFeature getFeature(Class<? extends ShareContent> class_) {
        if (ShareLinkContent.class.isAssignableFrom(class_)) {
            return MessageDialogFeature.MESSAGE_DIALOG;
        }
        if (SharePhotoContent.class.isAssignableFrom(class_)) {
            return MessageDialogFeature.PHOTOS;
        }
        if (ShareVideoContent.class.isAssignableFrom(class_)) {
            return MessageDialogFeature.VIDEO;
        }
        if (ShareOpenGraphContent.class.isAssignableFrom(class_)) {
            return OpenGraphMessageDialogFeature.OG_MESSAGE_DIALOG;
        }
        return null;
    }

    public static void show(Activity activity, ShareContent shareContent) {
        new MessageDialog(activity).show(shareContent);
    }

    public static void show(Fragment fragment, ShareContent shareContent) {
        new MessageDialog(fragment).show(shareContent);
    }

    @Override
    protected AppCall createBaseAppCall() {
        return new AppCall(this.getRequestCode());
    }

    @Override
    protected List<FacebookDialogBase<ShareContent, Sharer.Result>> getOrderedModeHandlers() {
        ArrayList<FacebookDialogBase<ShareContent, Sharer.Result>> arrayList = new ArrayList<FacebookDialogBase<ShareContent, Sharer.Result>>();
        arrayList.add(new NativeHandler());
        return arrayList;
    }

    @Override
    public boolean getShouldFailOnDataError() {
        return this.shouldFailOnDataError;
    }

    @Override
    protected void registerCallbackImpl(CallbackManagerImpl callbackManagerImpl, FacebookCallback<Sharer.Result> facebookCallback) {
        ShareInternalUtility.registerSharerCallback(this.getRequestCode(), callbackManagerImpl, facebookCallback);
    }

    @Override
    public void setShouldFailOnDataError(boolean bl) {
        this.shouldFailOnDataError = bl;
    }

    private class NativeHandler
    extends FacebookDialogBase<ShareContent, Sharer.Result> {
        private NativeHandler() {
        }

        @Override
        public boolean canShow(ShareContent shareContent) {
            if (shareContent != null && MessageDialog.canShow(shareContent.getClass())) {
                return true;
            }
            return false;
        }

        public AppCall createAppCall(final ShareContent shareContent) {
            ShareContentValidation.validateForMessage(shareContent);
            final AppCall appCall = MessageDialog.this.createBaseAppCall();
            final boolean bl = MessageDialog.this.getShouldFailOnDataError();
            MessageDialog.this.getActivityContext();
            DialogPresenter.setupAppCallForNativeDialog(appCall, new DialogPresenter.ParameterProvider(){

                @Override
                public Bundle getLegacyParameters() {
                    return LegacyNativeDialogParameters.create(appCall.getCallId(), shareContent, bl);
                }

                @Override
                public Bundle getParameters() {
                    return NativeDialogParameters.create(appCall.getCallId(), shareContent, bl);
                }
            }, MessageDialog.getFeature(shareContent.getClass()));
            return appCall;
        }

    }

}

