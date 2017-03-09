/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.app.Activity
 *  android.content.Intent
 *  android.os.Bundle
 */
package com.facebook.share.widget;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import com.facebook.FacebookCallback;
import com.facebook.internal.AppCall;
import com.facebook.internal.CallbackManagerImpl;
import com.facebook.internal.DialogPresenter;
import com.facebook.internal.FacebookDialogBase;
import com.facebook.share.internal.GameRequestValidation;
import com.facebook.share.internal.ResultProcessor;
import com.facebook.share.internal.ShareInternalUtility;
import com.facebook.share.internal.WebDialogParameters;
import com.facebook.share.model.GameRequestContent;
import java.util.ArrayList;
import java.util.List;

public class GameRequestDialog
extends FacebookDialogBase<GameRequestContent, Result> {
    private static final int DEFAULT_REQUEST_CODE = CallbackManagerImpl.RequestCodeOffset.GameRequest.toRequestCode();
    private static final String GAME_REQUEST_DIALOG = "apprequests";

    public GameRequestDialog(Activity activity) {
        super(activity, DEFAULT_REQUEST_CODE);
    }

    public GameRequestDialog(Fragment fragment) {
        super(fragment, DEFAULT_REQUEST_CODE);
    }

    public static boolean canShow() {
        return true;
    }

    public static void show(Activity activity, GameRequestContent gameRequestContent) {
        new GameRequestDialog(activity).show(gameRequestContent);
    }

    public static void show(Fragment fragment, GameRequestContent gameRequestContent) {
        new GameRequestDialog(fragment).show(gameRequestContent);
    }

    @Override
    protected AppCall createBaseAppCall() {
        return new AppCall(this.getRequestCode());
    }

    @Override
    protected List<FacebookDialogBase<GameRequestContent, Result>> getOrderedModeHandlers() {
        ArrayList<FacebookDialogBase<GameRequestContent, Result>> arrayList = new ArrayList<FacebookDialogBase<GameRequestContent, Result>>();
        arrayList.add(new WebHandler());
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
                if (bundle != null) {
                    this.val$callback.onSuccess(new Result(bundle.getString("request")));
                    return;
                }
                this.onCancel(appCall);
            }
        };
        callbackManagerImpl.registerCallback(this.getRequestCode(), new CallbackManagerImpl.Callback((ResultProcessor)object){
            final /* synthetic */ ResultProcessor val$resultProcessor;

            @Override
            public boolean onActivityResult(int n2, Intent intent) {
                return ShareInternalUtility.handleActivityResult(GameRequestDialog.this.getRequestCode(), n2, intent, this.val$resultProcessor);
            }
        });
    }

    public static final class Result {
        String requestId;

        private Result(String string2) {
            this.requestId = string2;
        }

        public String getRequestId() {
            return this.requestId;
        }
    }

    private class WebHandler
    extends FacebookDialogBase<GameRequestContent, Result> {
        private WebHandler() {
        }

        @Override
        public boolean canShow(GameRequestContent gameRequestContent) {
            return true;
        }

        public AppCall createAppCall(GameRequestContent gameRequestContent) {
            GameRequestValidation.validate(gameRequestContent);
            AppCall appCall = GameRequestDialog.this.createBaseAppCall();
            DialogPresenter.setupAppCallForWebDialog(appCall, "apprequests", WebDialogParameters.create(gameRequestContent));
            return appCall;
        }
    }

}

