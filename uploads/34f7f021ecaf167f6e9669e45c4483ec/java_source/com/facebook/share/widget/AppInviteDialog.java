/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.app.Activity
 *  android.content.Intent
 *  android.os.Build
 *  android.os.Build$VERSION
 *  android.os.Bundle
 *  android.util.Log
 */
package com.facebook.share.widget;

import android.app.Activity;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.util.Log;
import com.facebook.FacebookCallback;
import com.facebook.internal.AppCall;
import com.facebook.internal.CallbackManagerImpl;
import com.facebook.internal.DialogFeature;
import com.facebook.internal.DialogPresenter;
import com.facebook.internal.FacebookDialogBase;
import com.facebook.share.internal.AppInviteDialogFeature;
import com.facebook.share.internal.ResultProcessor;
import com.facebook.share.internal.ShareInternalUtility;
import com.facebook.share.model.AppInviteContent;
import java.util.ArrayList;
import java.util.List;

public class AppInviteDialog
extends FacebookDialogBase<AppInviteContent, Result> {
    private static final int DEFAULT_REQUEST_CODE = CallbackManagerImpl.RequestCodeOffset.AppInvite.toRequestCode();
    private static final String TAG = "AppInviteDialog";

    public AppInviteDialog(Activity activity) {
        super(activity, DEFAULT_REQUEST_CODE);
    }

    public AppInviteDialog(Fragment fragment) {
        super(fragment, DEFAULT_REQUEST_CODE);
    }

    public static boolean canShow() {
        if (AppInviteDialog.canShowNativeDialog() || AppInviteDialog.canShowWebFallback()) {
            return true;
        }
        return false;
    }

    private static boolean canShowNativeDialog() {
        if (Build.VERSION.SDK_INT >= 14 && DialogPresenter.canPresentNativeDialogWithFeature(AppInviteDialog.getFeature())) {
            return true;
        }
        return false;
    }

    private static boolean canShowWebFallback() {
        if (Build.VERSION.SDK_INT >= 14 && DialogPresenter.canPresentWebFallbackDialogWithFeature(AppInviteDialog.getFeature())) {
            return true;
        }
        return false;
    }

    private static Bundle createParameters(AppInviteContent appInviteContent) {
        Bundle bundle = new Bundle();
        bundle.putString("app_link_url", appInviteContent.getApplinkUrl());
        bundle.putString("preview_image_url", appInviteContent.getPreviewImageUrl());
        return bundle;
    }

    private static DialogFeature getFeature() {
        return AppInviteDialogFeature.APP_INVITES_DIALOG;
    }

    public static void show(Activity activity, AppInviteContent appInviteContent) {
        new AppInviteDialog(activity).show(appInviteContent);
    }

    public static void show(Fragment fragment, AppInviteContent appInviteContent) {
        new AppInviteDialog(fragment).show(appInviteContent);
    }

    @Override
    protected AppCall createBaseAppCall() {
        return new AppCall(this.getRequestCode());
    }

    @Override
    protected List<FacebookDialogBase<AppInviteContent, Result>> getOrderedModeHandlers() {
        ArrayList<FacebookDialogBase<AppInviteContent, Result>> arrayList = new ArrayList<FacebookDialogBase<AppInviteContent, Result>>();
        arrayList.add(new NativeHandler());
        arrayList.add(new WebFallbackHandler());
        return arrayList;
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    protected void registerCallbackImpl(CallbackManagerImpl callbackManagerImpl, FacebookCallback<Result> object) {
        object = object == null ? null : new ResultProcessor((FacebookCallback)object, (FacebookCallback)object){
            final /* synthetic */ FacebookCallback val$callback;

            @Override
            public void onSuccess(AppCall appCall, Bundle bundle) {
                if ("cancel".equalsIgnoreCase(ShareInternalUtility.getNativeDialogCompletionGesture(bundle))) {
                    this.val$callback.onCancel();
                    return;
                }
                this.val$callback.onSuccess(new Result(bundle));
            }
        };
        object = new CallbackManagerImpl.Callback((ResultProcessor)object){
            final /* synthetic */ ResultProcessor val$resultProcessor;

            @Override
            public boolean onActivityResult(int n2, Intent intent) {
                return ShareInternalUtility.handleActivityResult(AppInviteDialog.this.getRequestCode(), n2, intent, this.val$resultProcessor);
            }
        };
        callbackManagerImpl.registerCallback(this.getRequestCode(), (CallbackManagerImpl.Callback)object);
    }

    private class NativeHandler
    extends FacebookDialogBase<AppInviteContent, Result> {
        private NativeHandler() {
        }

        @Override
        public boolean canShow(AppInviteContent appInviteContent) {
            return AppInviteDialog.canShowNativeDialog();
        }

        public AppCall createAppCall(final AppInviteContent appInviteContent) {
            AppCall appCall = AppInviteDialog.this.createBaseAppCall();
            DialogPresenter.setupAppCallForNativeDialog(appCall, new DialogPresenter.ParameterProvider(){

                @Override
                public Bundle getLegacyParameters() {
                    Log.e((String)"AppInviteDialog", (String)"Attempting to present the AppInviteDialog with an outdated Facebook app on the device");
                    return new Bundle();
                }

                @Override
                public Bundle getParameters() {
                    return AppInviteDialog.createParameters(appInviteContent);
                }
            }, AppInviteDialog.getFeature());
            return appCall;
        }

    }

    public static final class Result {
        private final Bundle bundle;

        public Result(Bundle bundle) {
            this.bundle = bundle;
        }

        public Bundle getData() {
            return this.bundle;
        }
    }

    private class WebFallbackHandler
    extends FacebookDialogBase<AppInviteContent, Result> {
        private WebFallbackHandler() {
        }

        @Override
        public boolean canShow(AppInviteContent appInviteContent) {
            return AppInviteDialog.canShowWebFallback();
        }

        public AppCall createAppCall(AppInviteContent appInviteContent) {
            AppCall appCall = AppInviteDialog.this.createBaseAppCall();
            DialogPresenter.setupAppCallForWebFallbackDialog(appCall, AppInviteDialog.createParameters(appInviteContent), AppInviteDialog.getFeature());
            return appCall;
        }
    }

}

