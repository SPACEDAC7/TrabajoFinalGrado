/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.app.Activity
 *  android.content.Context
 *  android.os.Bundle
 */
package com.facebook.share.widget;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import com.facebook.FacebookCallback;
import com.facebook.appevents.AppEventsLogger;
import com.facebook.internal.AppCall;
import com.facebook.internal.CallbackManagerImpl;
import com.facebook.internal.DialogFeature;
import com.facebook.internal.DialogPresenter;
import com.facebook.internal.FacebookDialogBase;
import com.facebook.share.Sharer;
import com.facebook.share.internal.LegacyNativeDialogParameters;
import com.facebook.share.internal.NativeDialogParameters;
import com.facebook.share.internal.OpenGraphActionDialogFeature;
import com.facebook.share.internal.ShareContentValidation;
import com.facebook.share.internal.ShareDialogFeature;
import com.facebook.share.internal.ShareInternalUtility;
import com.facebook.share.internal.WebDialogParameters;
import com.facebook.share.model.ShareContent;
import com.facebook.share.model.ShareLinkContent;
import com.facebook.share.model.ShareOpenGraphContent;
import com.facebook.share.model.SharePhotoContent;
import com.facebook.share.model.ShareVideoContent;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

public final class ShareDialog
extends FacebookDialogBase<ShareContent, Sharer.Result>
implements Sharer {
    private static final int DEFAULT_REQUEST_CODE = CallbackManagerImpl.RequestCodeOffset.Share.toRequestCode();
    private static final String FEED_DIALOG = "feed";
    private static final String WEB_OG_SHARE_DIALOG = "share_open_graph";
    private static final String WEB_SHARE_DIALOG = "share";
    private boolean isAutomaticMode = true;
    private boolean shouldFailOnDataError = false;

    public ShareDialog(Activity activity) {
        super(activity, DEFAULT_REQUEST_CODE);
        ShareInternalUtility.registerStaticShareCallback(DEFAULT_REQUEST_CODE);
    }

    ShareDialog(Activity activity, int n2) {
        super(activity, n2);
        ShareInternalUtility.registerStaticShareCallback(n2);
    }

    public ShareDialog(Fragment fragment) {
        super(fragment, DEFAULT_REQUEST_CODE);
        ShareInternalUtility.registerStaticShareCallback(DEFAULT_REQUEST_CODE);
    }

    ShareDialog(Fragment fragment, int n2) {
        super(fragment, n2);
        ShareInternalUtility.registerStaticShareCallback(n2);
    }

    public static boolean canShow(Class<? extends ShareContent> class_) {
        if (ShareDialog.canShowWebTypeCheck(class_) || ShareDialog.canShowNative(class_)) {
            return true;
        }
        return false;
    }

    private static boolean canShowNative(Class<? extends ShareContent> object) {
        if ((object = ShareDialog.getFeature(object)) != null && DialogPresenter.canPresentNativeDialogWithFeature((DialogFeature)object)) {
            return true;
        }
        return false;
    }

    private static boolean canShowWebTypeCheck(Class<? extends ShareContent> class_) {
        if (ShareLinkContent.class.isAssignableFrom(class_) || ShareOpenGraphContent.class.isAssignableFrom(class_)) {
            return true;
        }
        return false;
    }

    private static DialogFeature getFeature(Class<? extends ShareContent> class_) {
        if (ShareLinkContent.class.isAssignableFrom(class_)) {
            return ShareDialogFeature.SHARE_DIALOG;
        }
        if (SharePhotoContent.class.isAssignableFrom(class_)) {
            return ShareDialogFeature.PHOTOS;
        }
        if (ShareVideoContent.class.isAssignableFrom(class_)) {
            return ShareDialogFeature.VIDEO;
        }
        if (ShareOpenGraphContent.class.isAssignableFrom(class_)) {
            return OpenGraphActionDialogFeature.OG_ACTION_DIALOG;
        }
        return null;
    }

    /*
     * Enabled aggressive block sorting
     */
    private void logDialogShare(Context object, ShareContent object2, Mode object3) {
        if (this.isAutomaticMode) {
            object3 = Mode.AUTOMATIC;
        }
        switch (.$SwitchMap$com$facebook$share$widget$ShareDialog$Mode[object3.ordinal()]) {
            default: {
                object3 = "unknown";
                break;
            }
            case 1: {
                object3 = "automatic";
                break;
            }
            case 2: {
                object3 = "web";
                break;
            }
            case 3: {
                object3 = "native";
            }
        }
        object2 = (object2 = ShareDialog.getFeature(object2.getClass())) == ShareDialogFeature.SHARE_DIALOG ? "status" : (object2 == ShareDialogFeature.PHOTOS ? "photo" : (object2 == ShareDialogFeature.VIDEO ? "video" : (object2 == OpenGraphActionDialogFeature.OG_ACTION_DIALOG ? "open_graph" : "unknown")));
        object = AppEventsLogger.newLogger((Context)object);
        Bundle bundle = new Bundle();
        bundle.putString("fb_share_dialog_show", (String)object3);
        bundle.putString("fb_share_dialog_content_type", (String)object2);
        object.logSdkEvent("fb_share_dialog_show", null, bundle);
    }

    public static void show(Activity activity, ShareContent shareContent) {
        new ShareDialog(activity).show(shareContent);
    }

    public static void show(Fragment fragment, ShareContent shareContent) {
        new ShareDialog(fragment).show(shareContent);
    }

    public boolean canShow(ShareContent shareContent, Mode mode) {
        Object object = mode;
        if (mode == Mode.AUTOMATIC) {
            object = BASE_AUTOMATIC_MODE;
        }
        return this.canShowImpl(shareContent, object);
    }

    @Override
    protected AppCall createBaseAppCall() {
        return new AppCall(this.getRequestCode());
    }

    @Override
    protected List<FacebookDialogBase<ShareContent, Sharer.Result>> getOrderedModeHandlers() {
        ArrayList<FacebookDialogBase<ShareContent, Sharer.Result>> arrayList = new ArrayList<FacebookDialogBase<ShareContent, Sharer.Result>>();
        arrayList.add(new NativeHandler());
        arrayList.add(new FeedHandler());
        arrayList.add(new WebShareHandler());
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

    /*
     * Enabled aggressive block sorting
     */
    public void show(ShareContent shareContent, Mode object) {
        boolean bl = object == Mode.AUTOMATIC;
        this.isAutomaticMode = bl;
        if (this.isAutomaticMode) {
            object = BASE_AUTOMATIC_MODE;
        }
        this.showImpl(shareContent, object);
    }

    private class FeedHandler
    extends FacebookDialogBase<ShareContent, Sharer.Result> {
        private FeedHandler() {
        }

        @Override
        public boolean canShow(ShareContent shareContent) {
            return shareContent instanceof ShareLinkContent;
        }

        public AppCall createAppCall(ShareContent shareContent) {
            ShareDialog.this.logDialogShare((Context)ShareDialog.this.getActivityContext(), shareContent, Mode.FEED);
            shareContent = (ShareLinkContent)shareContent;
            AppCall appCall = ShareDialog.this.createBaseAppCall();
            ShareContentValidation.validateForWebShare(shareContent);
            DialogPresenter.setupAppCallForWebDialog(appCall, "feed", WebDialogParameters.createForFeed((ShareLinkContent)shareContent));
            return appCall;
        }

        public Object getMode() {
            return Mode.FEED;
        }
    }

    public static enum Mode {
        AUTOMATIC,
        NATIVE,
        WEB,
        FEED;
        

        private Mode() {
        }
    }

    private class NativeHandler
    extends FacebookDialogBase<ShareContent, Sharer.Result> {
        private NativeHandler() {
        }

        @Override
        public boolean canShow(ShareContent shareContent) {
            if (shareContent != null && ShareDialog.canShowNative(shareContent.getClass())) {
                return true;
            }
            return false;
        }

        public AppCall createAppCall(final ShareContent shareContent) {
            ShareDialog.this.logDialogShare((Context)ShareDialog.this.getActivityContext(), shareContent, Mode.NATIVE);
            ShareContentValidation.validateForNativeShare(shareContent);
            final AppCall appCall = ShareDialog.this.createBaseAppCall();
            DialogPresenter.setupAppCallForNativeDialog(appCall, new DialogPresenter.ParameterProvider(ShareDialog.this.getShouldFailOnDataError()){
                final /* synthetic */ boolean val$shouldFailOnDataError;

                @Override
                public Bundle getLegacyParameters() {
                    return LegacyNativeDialogParameters.create(appCall.getCallId(), shareContent, this.val$shouldFailOnDataError);
                }

                @Override
                public Bundle getParameters() {
                    return NativeDialogParameters.create(appCall.getCallId(), shareContent, this.val$shouldFailOnDataError);
                }
            }, ShareDialog.getFeature(shareContent.getClass()));
            return appCall;
        }

        public Object getMode() {
            return Mode.NATIVE;
        }

    }

    private class WebShareHandler
    extends FacebookDialogBase<ShareContent, Sharer.Result> {
        private WebShareHandler() {
        }

        private String getActionName(ShareContent shareContent) {
            if (shareContent instanceof ShareLinkContent) {
                return "share";
            }
            if (shareContent instanceof ShareOpenGraphContent) {
                return "share_open_graph";
            }
            return null;
        }

        @Override
        public boolean canShow(ShareContent shareContent) {
            if (shareContent != null && ShareDialog.canShowWebTypeCheck(shareContent.getClass())) {
                return true;
            }
            return false;
        }

        /*
         * Enabled aggressive block sorting
         */
        public AppCall createAppCall(ShareContent shareContent) {
            ShareDialog.this.logDialogShare((Context)ShareDialog.this.getActivityContext(), shareContent, Mode.WEB);
            AppCall appCall = ShareDialog.this.createBaseAppCall();
            ShareContentValidation.validateForWebShare(shareContent);
            Bundle bundle = shareContent instanceof ShareLinkContent ? WebDialogParameters.create((ShareLinkContent)shareContent) : WebDialogParameters.create((ShareOpenGraphContent)shareContent);
            DialogPresenter.setupAppCallForWebDialog(appCall, this.getActionName(shareContent), bundle);
            return appCall;
        }

        public Object getMode() {
            return Mode.WEB;
        }
    }

}

