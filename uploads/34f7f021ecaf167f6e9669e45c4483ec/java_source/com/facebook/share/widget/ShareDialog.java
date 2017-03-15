/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.app.Activity
 *  android.content.Context
 *  android.os.Bundle
 *  com.facebook.internal.AppCall
 *  com.facebook.internal.CallbackManagerImpl$RequestCodeOffset
 *  com.facebook.internal.DialogFeature
 *  com.facebook.internal.DialogPresenter
 *  com.facebook.internal.FacebookDialogBase
 *  com.facebook.share.Sharer
 *  com.facebook.share.Sharer$Result
 *  com.facebook.share.internal.OpenGraphActionDialogFeature
 *  com.facebook.share.internal.ShareDialogFeature
 *  com.facebook.share.internal.ShareInternalUtility
 *  com.facebook.share.model.ShareOpenGraphContent
 *  com.facebook.share.model.SharePhotoContent
 *  com.facebook.share.model.ShareVideoContent
 *  com.facebook.share.widget.ShareDialog$1
 *  com.facebook.share.widget.ShareDialog$FeedHandler
 *  com.facebook.share.widget.ShareDialog$Mode
 *  com.facebook.share.widget.ShareDialog$NativeHandler
 *  com.facebook.share.widget.ShareDialog$WebShareHandler
 */
package com.facebook.share.widget;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import com.facebook.CallbackManager;
import com.facebook.FacebookCallback;
import com.facebook.appevents.AppEventsLogger;
import com.facebook.internal.AppCall;
import com.facebook.internal.CallbackManagerImpl;
import com.facebook.internal.DialogFeature;
import com.facebook.internal.DialogPresenter;
import com.facebook.internal.FacebookDialogBase;
import com.facebook.share.Sharer;
import com.facebook.share.internal.OpenGraphActionDialogFeature;
import com.facebook.share.internal.ShareDialogFeature;
import com.facebook.share.internal.ShareInternalUtility;
import com.facebook.share.model.ShareContent;
import com.facebook.share.model.ShareLinkContent;
import com.facebook.share.model.ShareOpenGraphContent;
import com.facebook.share.model.SharePhotoContent;
import com.facebook.share.model.ShareVideoContent;
import com.facebook.share.widget.ShareDialog;
import java.util.ArrayList;
import java.util.List;

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
        ShareInternalUtility.registerStaticShareCallback((int)DEFAULT_REQUEST_CODE);
    }

    ShareDialog(Activity activity, int n2) {
        super(activity, n2);
        ShareInternalUtility.registerStaticShareCallback((int)n2);
    }

    public ShareDialog(Fragment fragment) {
        super(fragment, DEFAULT_REQUEST_CODE);
        ShareInternalUtility.registerStaticShareCallback((int)DEFAULT_REQUEST_CODE);
    }

    ShareDialog(Fragment fragment, int n2) {
        super(fragment, n2);
        ShareInternalUtility.registerStaticShareCallback((int)n2);
    }

    static /* synthetic */ boolean access$300(Class class_) {
        return ShareDialog.canShowNative(class_);
    }

    static /* synthetic */ Activity access$400(ShareDialog shareDialog) {
        return shareDialog.getActivityContext();
    }

    static /* synthetic */ void access$500(ShareDialog shareDialog, Context context, ShareContent shareContent, Mode mode) {
        shareDialog.logDialogShare(context, shareContent, mode);
    }

    static /* synthetic */ DialogFeature access$600(Class class_) {
        return ShareDialog.getFeature(class_);
    }

    static /* synthetic */ boolean access$700(Class class_) {
        return ShareDialog.canShowWebTypeCheck(class_);
    }

    static /* synthetic */ Activity access$800(ShareDialog shareDialog) {
        return shareDialog.getActivityContext();
    }

    static /* synthetic */ Activity access$900(ShareDialog shareDialog) {
        return shareDialog.getActivityContext();
    }

    public static boolean canShow(Class<? extends ShareContent> class_) {
        if (ShareDialog.canShowWebTypeCheck(class_) || ShareDialog.canShowNative(class_)) {
            return true;
        }
        return false;
    }

    private static boolean canShowNative(Class<? extends ShareContent> dialogFeature) {
        if ((dialogFeature = ShareDialog.getFeature(dialogFeature)) != null && DialogPresenter.canPresentNativeDialogWithFeature((DialogFeature)dialogFeature)) {
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
        new ShareDialog(activity).show((Object)shareContent);
    }

    public static void show(Fragment fragment, ShareContent shareContent) {
        new ShareDialog(fragment).show((Object)shareContent);
    }

    public boolean canShow(ShareContent shareContent, Mode mode) {
        Object object = mode;
        if (mode == Mode.AUTOMATIC) {
            object = BASE_AUTOMATIC_MODE;
        }
        return this.canShowImpl((Object)shareContent, object);
    }

    protected AppCall createBaseAppCall() {
        return new AppCall(this.getRequestCode());
    }

    protected List<FacebookDialogBase<ShareContent, Sharer.Result>> getOrderedModeHandlers() {
        ArrayList<FacebookDialogBase<ShareContent, Sharer.Result>> arrayList = new ArrayList<FacebookDialogBase<ShareContent, Sharer.Result>>();
        arrayList.add((FacebookDialogBase<ShareContent, Sharer.Result>)new NativeHandler(this, null));
        arrayList.add((FacebookDialogBase<ShareContent, Sharer.Result>)new FeedHandler(this, null));
        arrayList.add((FacebookDialogBase<ShareContent, Sharer.Result>)new WebShareHandler(this, null));
        return arrayList;
    }

    public boolean getShouldFailOnDataError() {
        return this.shouldFailOnDataError;
    }

    protected void registerCallbackImpl(CallbackManagerImpl callbackManagerImpl, FacebookCallback<Sharer.Result> facebookCallback) {
        ShareInternalUtility.registerSharerCallback((int)this.getRequestCode(), (CallbackManager)callbackManagerImpl, facebookCallback);
    }

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
        this.showImpl((Object)shareContent, object);
    }
}

