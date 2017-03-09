/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.app.Activity
 *  android.util.Log
 */
package com.facebook.internal;

import android.app.Activity;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.util.Log;
import com.facebook.CallbackManager;
import com.facebook.FacebookCallback;
import com.facebook.FacebookDialog;
import com.facebook.FacebookException;
import com.facebook.FacebookSdk;
import com.facebook.internal.AppCall;
import com.facebook.internal.CallbackManagerImpl;
import com.facebook.internal.DialogPresenter;
import com.facebook.internal.Utility;
import com.facebook.internal.Validate;
import java.util.Iterator;
import java.util.List;

public abstract class FacebookDialogBase<CONTENT, RESULT>
implements FacebookDialog<CONTENT, RESULT> {
    protected static final Object BASE_AUTOMATIC_MODE = new Object();
    private static final String TAG = "FacebookDialog";
    private final Activity activity;
    private final Fragment fragment;
    private List<FacebookDialogBase<CONTENT, RESULT>> modeHandlers;
    private int requestCode;

    protected FacebookDialogBase(Activity activity, int n2) {
        Validate.notNull((Object)activity, "activity");
        this.activity = activity;
        this.fragment = null;
        this.requestCode = n2;
    }

    protected FacebookDialogBase(Fragment fragment, int n2) {
        Validate.notNull(fragment, "fragment");
        this.fragment = fragment;
        this.activity = null;
        this.requestCode = n2;
        if (fragment.getActivity() == null) {
            throw new IllegalArgumentException("Cannot use a fragment that is not attached to an activity");
        }
    }

    private List<FacebookDialogBase<CONTENT, RESULT>> cachedModeHandlers() {
        if (this.modeHandlers == null) {
            this.modeHandlers = this.getOrderedModeHandlers();
        }
        return this.modeHandlers;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    private AppCall createAppCallForMode(CONTENT object, Object object2) {
        Object object3;
        block4 : {
            boolean bl = object2 == BASE_AUTOMATIC_MODE;
            ModeHandler modeHandler = null;
            Iterator<FacebookDialogBase<CONTENT, RESULT>> iterator = this.cachedModeHandlers().iterator();
            do {
                object3 = modeHandler;
                if (!iterator.hasNext()) break block4;
                object3 = (ModeHandler)((Object)iterator.next());
            } while (!bl && !Utility.areObjectsEqual(object3.getMode(), object2) || !object3.canShow(object));
            try {
                object3 = object3.createAppCall(object);
            }
            catch (FacebookException var1_2) {
                object3 = this.createBaseAppCall();
                DialogPresenter.setupAppCallForValidationError((AppCall)object3, var1_2);
            }
        }
        object = object3;
        if (object3 == null) {
            object = this.createBaseAppCall();
            DialogPresenter.setupAppCallForCannotShowError((AppCall)object);
        }
        return object;
    }

    @Override
    public boolean canShow(CONTENT CONTENT) {
        return this.canShowImpl(CONTENT, BASE_AUTOMATIC_MODE);
    }

    /*
     * Enabled aggressive block sorting
     */
    protected boolean canShowImpl(CONTENT CONTENT, Object object) {
        ModeHandler modeHandler;
        boolean bl = object == BASE_AUTOMATIC_MODE;
        Iterator<FacebookDialogBase<CONTENT, RESULT>> iterator = this.cachedModeHandlers().iterator();
        do {
            if (!iterator.hasNext()) {
                return false;
            }
            modeHandler = (ModeHandler)((Object)iterator.next());
        } while (!bl && !Utility.areObjectsEqual(modeHandler.getMode(), object) || !modeHandler.canShow(CONTENT));
        return true;
    }

    protected abstract AppCall createBaseAppCall();

    protected Activity getActivityContext() {
        if (this.activity != null) {
            return this.activity;
        }
        if (this.fragment != null) {
            return this.fragment.getActivity();
        }
        return null;
    }

    protected abstract List<FacebookDialogBase<CONTENT, RESULT>> getOrderedModeHandlers();

    public int getRequestCode() {
        return this.requestCode;
    }

    @Override
    public final void registerCallback(CallbackManager callbackManager, FacebookCallback<RESULT> facebookCallback) {
        if (!(callbackManager instanceof CallbackManagerImpl)) {
            throw new FacebookException("Unexpected CallbackManager, please use the provided Factory.");
        }
        this.registerCallbackImpl((CallbackManagerImpl)callbackManager, facebookCallback);
    }

    @Override
    public final void registerCallback(CallbackManager callbackManager, FacebookCallback<RESULT> facebookCallback, int n2) {
        this.setRequestCode(n2);
        this.registerCallback(callbackManager, facebookCallback);
    }

    protected abstract void registerCallbackImpl(CallbackManagerImpl var1, FacebookCallback<RESULT> var2);

    protected void setRequestCode(int n2) {
        if (FacebookSdk.isFacebookRequestCode(n2)) {
            throw new IllegalArgumentException("Request code " + n2 + " cannot be within the range reserved by the Facebook SDK.");
        }
        this.requestCode = n2;
    }

    @Override
    public void show(CONTENT CONTENT) {
        this.showImpl(CONTENT, BASE_AUTOMATIC_MODE);
    }

    /*
     * Enabled aggressive block sorting
     */
    protected void showImpl(CONTENT object, Object object2) {
        if ((object = this.createAppCallForMode(object, object2)) != null) {
            if (this.fragment == null) {
                DialogPresenter.present((AppCall)object, this.activity);
                return;
            }
            DialogPresenter.present((AppCall)object, this.fragment);
            return;
        } else {
            Log.e((String)"FacebookDialog", (String)"No code path should ever result in a null appCall");
            if (!FacebookSdk.isDebugEnabled()) return;
            {
                throw new IllegalStateException("No code path should ever result in a null appCall");
            }
        }
    }

    protected abstract class ModeHandler {
        protected ModeHandler() {
        }

        public abstract boolean canShow(CONTENT var1);

        public abstract AppCall createAppCall(CONTENT var1);

        public Object getMode() {
            return FacebookDialogBase.BASE_AUTOMATIC_MODE;
        }
    }

}

