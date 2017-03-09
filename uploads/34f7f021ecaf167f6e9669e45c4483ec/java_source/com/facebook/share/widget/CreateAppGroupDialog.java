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
import com.facebook.share.internal.ResultProcessor;
import com.facebook.share.internal.ShareInternalUtility;
import com.facebook.share.internal.WebDialogParameters;
import com.facebook.share.model.AppGroupCreationContent;
import java.util.ArrayList;
import java.util.List;

public class CreateAppGroupDialog
extends FacebookDialogBase<AppGroupCreationContent, Result> {
    private static final int DEFAULT_REQUEST_CODE = CallbackManagerImpl.RequestCodeOffset.AppGroupCreate.toRequestCode();
    private static final String GAME_GROUP_CREATION_DIALOG = "game_group_create";

    public CreateAppGroupDialog(Activity activity) {
        super(activity, DEFAULT_REQUEST_CODE);
    }

    public CreateAppGroupDialog(Fragment fragment) {
        super(fragment, DEFAULT_REQUEST_CODE);
    }

    public static boolean canShow() {
        return true;
    }

    public static void show(Activity activity, AppGroupCreationContent appGroupCreationContent) {
        new CreateAppGroupDialog(activity).show(appGroupCreationContent);
    }

    public static void show(Fragment fragment, AppGroupCreationContent appGroupCreationContent) {
        new CreateAppGroupDialog(fragment).show(appGroupCreationContent);
    }

    @Override
    protected AppCall createBaseAppCall() {
        return new AppCall(this.getRequestCode());
    }

    @Override
    protected List<FacebookDialogBase<AppGroupCreationContent, Result>> getOrderedModeHandlers() {
        ArrayList<FacebookDialogBase<AppGroupCreationContent, Result>> arrayList = new ArrayList<FacebookDialogBase<AppGroupCreationContent, Result>>();
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
                this.val$callback.onSuccess(new Result(bundle.getString("id")));
            }
        };
        object = new CallbackManagerImpl.Callback((ResultProcessor)object){
            final /* synthetic */ ResultProcessor val$resultProcessor;

            @Override
            public boolean onActivityResult(int n2, Intent intent) {
                return ShareInternalUtility.handleActivityResult(CreateAppGroupDialog.this.getRequestCode(), n2, intent, this.val$resultProcessor);
            }
        };
        callbackManagerImpl.registerCallback(this.getRequestCode(), (CallbackManagerImpl.Callback)object);
    }

    public static final class Result {
        private final String id;

        private Result(String string2) {
            this.id = string2;
        }

        public String getId() {
            return this.id;
        }
    }

    private class WebHandler
    extends FacebookDialogBase<AppGroupCreationContent, Result> {
        private WebHandler() {
        }

        @Override
        public boolean canShow(AppGroupCreationContent appGroupCreationContent) {
            return true;
        }

        public AppCall createAppCall(AppGroupCreationContent appGroupCreationContent) {
            AppCall appCall = CreateAppGroupDialog.this.createBaseAppCall();
            DialogPresenter.setupAppCallForWebDialog(appCall, "game_group_create", WebDialogParameters.create(appGroupCreationContent));
            return appCall;
        }
    }

}

