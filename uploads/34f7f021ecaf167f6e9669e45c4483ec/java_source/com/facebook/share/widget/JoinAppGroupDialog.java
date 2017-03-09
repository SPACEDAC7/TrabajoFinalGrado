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
import java.util.ArrayList;
import java.util.List;

public class JoinAppGroupDialog
extends FacebookDialogBase<String, Result> {
    private static final int DEFAULT_REQUEST_CODE = CallbackManagerImpl.RequestCodeOffset.AppGroupJoin.toRequestCode();
    private static final String JOIN_GAME_GROUP_DIALOG = "game_group_join";

    public JoinAppGroupDialog(Activity activity) {
        super(activity, DEFAULT_REQUEST_CODE);
    }

    public JoinAppGroupDialog(Fragment fragment) {
        super(fragment, DEFAULT_REQUEST_CODE);
    }

    public static boolean canShow() {
        return true;
    }

    public static void show(Activity activity, String string2) {
        new JoinAppGroupDialog(activity).show(string2);
    }

    public static void show(Fragment fragment, String string2) {
        new JoinAppGroupDialog(fragment).show(string2);
    }

    @Override
    protected AppCall createBaseAppCall() {
        return new AppCall(this.getRequestCode());
    }

    @Override
    protected List<FacebookDialogBase<String, Result>> getOrderedModeHandlers() {
        ArrayList<FacebookDialogBase<String, Result>> arrayList = new ArrayList<FacebookDialogBase<String, Result>>();
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
                this.val$callback.onSuccess(new Result(bundle));
            }
        };
        object = new CallbackManagerImpl.Callback((ResultProcessor)object){
            final /* synthetic */ ResultProcessor val$resultProcessor;

            @Override
            public boolean onActivityResult(int n2, Intent intent) {
                return ShareInternalUtility.handleActivityResult(JoinAppGroupDialog.this.getRequestCode(), n2, intent, this.val$resultProcessor);
            }
        };
        callbackManagerImpl.registerCallback(this.getRequestCode(), (CallbackManagerImpl.Callback)object);
    }

    public static final class Result {
        private final Bundle data;

        private Result(Bundle bundle) {
            this.data = bundle;
        }

        public Bundle getData() {
            return this.data;
        }
    }

    private class WebHandler
    extends FacebookDialogBase<String, Result> {
        private WebHandler() {
        }

        @Override
        public boolean canShow(String string2) {
            return true;
        }

        public AppCall createAppCall(String string2) {
            AppCall appCall = JoinAppGroupDialog.this.createBaseAppCall();
            Bundle bundle = new Bundle();
            bundle.putString("id", string2);
            DialogPresenter.setupAppCallForWebDialog(appCall, "game_group_join", bundle);
            return appCall;
        }
    }

}

