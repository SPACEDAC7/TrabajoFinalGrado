/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.app.Activity
 *  android.os.Build
 *  android.os.Build$VERSION
 *  android.os.Bundle
 *  android.util.Log
 */
package com.facebook.share.internal;

import android.app.Activity;
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
import com.facebook.share.internal.LikeContent;
import com.facebook.share.internal.LikeDialogFeature;
import com.facebook.share.widget.LikeView;
import java.util.ArrayList;
import java.util.List;

public class LikeDialog
extends FacebookDialogBase<LikeContent, Result> {
    private static final int DEFAULT_REQUEST_CODE = CallbackManagerImpl.RequestCodeOffset.Like.toRequestCode();
    private static final String TAG = "LikeDialog";

    LikeDialog(Activity activity) {
        super(activity, DEFAULT_REQUEST_CODE);
    }

    LikeDialog(Fragment fragment) {
        super(fragment, DEFAULT_REQUEST_CODE);
    }

    public static boolean canShowNativeDialog() {
        if (Build.VERSION.SDK_INT >= 14 && DialogPresenter.canPresentNativeDialogWithFeature(LikeDialog.getFeature())) {
            return true;
        }
        return false;
    }

    public static boolean canShowWebFallback() {
        if (Build.VERSION.SDK_INT >= 14 && DialogPresenter.canPresentWebFallbackDialogWithFeature(LikeDialog.getFeature())) {
            return true;
        }
        return false;
    }

    private static Bundle createParameters(LikeContent likeContent) {
        Bundle bundle = new Bundle();
        bundle.putString("object_id", likeContent.getObjectId());
        bundle.putString("object_type", likeContent.getObjectType().toString());
        return bundle;
    }

    private static DialogFeature getFeature() {
        return LikeDialogFeature.LIKE_DIALOG;
    }

    @Override
    protected AppCall createBaseAppCall() {
        return new AppCall(this.getRequestCode());
    }

    @Override
    protected List<FacebookDialogBase<LikeContent, Result>> getOrderedModeHandlers() {
        ArrayList<FacebookDialogBase<LikeContent, Result>> arrayList = new ArrayList<FacebookDialogBase<LikeContent, Result>>();
        arrayList.add(new NativeHandler());
        arrayList.add(new WebFallbackHandler());
        return arrayList;
    }

    @Override
    protected void registerCallbackImpl(CallbackManagerImpl callbackManagerImpl, FacebookCallback<Result> facebookCallback) {
        throw new UnsupportedOperationException("registerCallback is not supported for LikeDialog");
    }

    private class NativeHandler
    extends FacebookDialogBase<LikeContent, Result> {
        private NativeHandler() {
        }

        @Override
        public boolean canShow(LikeContent likeContent) {
            if (likeContent != null && LikeDialog.canShowNativeDialog()) {
                return true;
            }
            return false;
        }

        public AppCall createAppCall(final LikeContent likeContent) {
            AppCall appCall = LikeDialog.this.createBaseAppCall();
            DialogPresenter.setupAppCallForNativeDialog(appCall, new DialogPresenter.ParameterProvider(){

                @Override
                public Bundle getLegacyParameters() {
                    Log.e((String)"LikeDialog", (String)"Attempting to present the Like Dialog with an outdated Facebook app on the device");
                    return new Bundle();
                }

                @Override
                public Bundle getParameters() {
                    return LikeDialog.createParameters(likeContent);
                }
            }, LikeDialog.getFeature());
            return appCall;
        }

    }

    public static final class Result {
    }

    private class WebFallbackHandler
    extends FacebookDialogBase<LikeContent, Result> {
        private WebFallbackHandler() {
        }

        @Override
        public boolean canShow(LikeContent likeContent) {
            if (likeContent != null && LikeDialog.canShowWebFallback()) {
                return true;
            }
            return false;
        }

        public AppCall createAppCall(LikeContent likeContent) {
            AppCall appCall = LikeDialog.this.createBaseAppCall();
            DialogPresenter.setupAppCallForWebFallbackDialog(appCall, LikeDialog.createParameters(likeContent), LikeDialog.getFeature());
            return appCall;
        }
    }

}

