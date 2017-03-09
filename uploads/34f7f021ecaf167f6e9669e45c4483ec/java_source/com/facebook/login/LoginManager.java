/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.app.Activity
 *  android.content.ActivityNotFoundException
 *  android.content.Context
 *  android.content.Intent
 *  android.content.pm.PackageManager
 *  android.content.pm.ResolveInfo
 *  android.os.Bundle
 *  android.os.Parcelable
 */
package com.facebook.login;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.os.Bundle;
import android.os.Parcelable;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import com.facebook.AccessToken;
import com.facebook.CallbackManager;
import com.facebook.FacebookActivity;
import com.facebook.FacebookAuthorizationException;
import com.facebook.FacebookCallback;
import com.facebook.FacebookException;
import com.facebook.FacebookSdk;
import com.facebook.GraphRequest;
import com.facebook.GraphResponse;
import com.facebook.Profile;
import com.facebook.internal.CallbackManagerImpl;
import com.facebook.internal.Validate;
import com.facebook.login.DefaultAudience;
import com.facebook.login.LoginBehavior;
import com.facebook.login.LoginClient;
import com.facebook.login.LoginFragment;
import com.facebook.login.LoginLogger;
import com.facebook.login.LoginResult;
import com.facebook.login.StartActivityDelegate;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.UUID;

public class LoginManager {
    private static final String MANAGE_PERMISSION_PREFIX = "manage";
    private static final Set<String> OTHER_PUBLISH_PERMISSIONS = LoginManager.getOtherPublishPermissions();
    private static final String PUBLISH_PERMISSION_PREFIX = "publish";
    private static volatile LoginManager instance;
    private Context context;
    private DefaultAudience defaultAudience = DefaultAudience.FRIENDS;
    private LoginBehavior loginBehavior = LoginBehavior.SSO_WITH_FALLBACK;
    private LoginLogger loginLogger;
    private HashMap<String, String> pendingLoggingExtras;
    private LoginClient.Request pendingLoginRequest;

    LoginManager() {
        Validate.sdkInitialized();
    }

    static LoginResult computeLoginResult(LoginClient.Request object, AccessToken accessToken) {
        Set<String> set = object.getPermissions();
        HashSet<String> hashSet = new HashSet<String>(accessToken.getPermissions());
        if (object.isRerequest()) {
            hashSet.retainAll(set);
        }
        object = new HashSet<String>(set);
        object.removeAll(hashSet);
        return new LoginResult(accessToken, (Set<String>)hashSet, (Set<String>)object);
    }

    /*
     * Enabled aggressive block sorting
     */
    private LoginClient.Request createLoginRequest(Collection<String> hashSet) {
        LoginBehavior loginBehavior = this.loginBehavior;
        hashSet = hashSet != null ? new HashSet(hashSet) : new HashSet();
        hashSet = new LoginClient.Request(loginBehavior, Collections.unmodifiableSet(hashSet), this.defaultAudience, FacebookSdk.getApplicationId(), UUID.randomUUID().toString());
        boolean bl = AccessToken.getCurrentAccessToken() != null;
        hashSet.setRerequest(bl);
        return hashSet;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private LoginClient.Request createLoginRequestFromResponse(GraphResponse set) {
        Validate.notNull(set, "response");
        set = set.getRequest().getAccessToken();
        if (set != null) {
            set = set.getPermissions();
            do {
                return this.createLoginRequest(set);
                break;
            } while (true);
        }
        set = null;
        return this.createLoginRequest(set);
    }

    /*
     * Enabled aggressive block sorting
     */
    private void finishLogin(AccessToken accessToken, FacebookException facebookException, boolean bl, FacebookCallback<LoginResult> facebookCallback) {
        if (accessToken != null) {
            AccessToken.setCurrentAccessToken(accessToken);
            Profile.fetchProfileForCurrentAccessToken();
        }
        if (facebookCallback == null) return;
        {
            LoginResult loginResult = accessToken != null ? LoginManager.computeLoginResult(this.pendingLoginRequest, accessToken) : null;
            if (bl || loginResult != null && loginResult.getRecentlyGrantedPermissions().size() == 0) {
                facebookCallback.onCancel();
                return;
            } else {
                if (facebookException != null) {
                    facebookCallback.onError(facebookException);
                    return;
                }
                if (accessToken == null) return;
                {
                    facebookCallback.onSuccess(loginResult);
                    return;
                }
            }
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public static LoginManager getInstance() {
        if (instance == null) {
            synchronized (LoginManager.class) {
                if (instance == null) {
                    instance = new LoginManager();
                }
            }
        }
        return instance;
    }

    private LoginLogger getLogger() {
        if (this.loginLogger == null || !this.loginLogger.getApplicationId().equals(this.pendingLoginRequest.getApplicationId())) {
            this.loginLogger = new LoginLogger(this.context, this.pendingLoginRequest.getApplicationId());
        }
        return this.loginLogger;
    }

    private Intent getLoginActivityIntent(LoginClient.Request request) {
        Intent intent = new Intent();
        intent.setClass(FacebookSdk.getApplicationContext(), (Class)FacebookActivity.class);
        intent.setAction(request.getLoginBehavior().toString());
        intent.putExtras(LoginFragment.populateIntentExtras(request));
        return intent;
    }

    private static Set<String> getOtherPublishPermissions() {
        return Collections.unmodifiableSet(new HashSet<String>(){});
    }

    private static boolean isPublishPermission(String string2) {
        if (string2 != null && (string2.startsWith("publish") || string2.startsWith("manage") || OTHER_PUBLISH_PERMISSIONS.contains(string2))) {
            return true;
        }
        return false;
    }

    private void logCompleteLogin(LoginClient.Result.Code code, Map<String, String> map, Exception exception) {
        if (this.pendingLoginRequest == null) {
            this.getLogger().logUnexpectedError("fb_mobile_login_complete", "Unexpected call to logCompleteLogin with null pendingAuthorizationRequest.");
            return;
        }
        this.getLogger().logCompleteLogin(this.pendingLoginRequest.getAuthId(), this.pendingLoggingExtras, code, map, exception);
    }

    private void logStartLogin() {
        this.getLogger().logStartLogin(this.pendingLoginRequest);
    }

    private boolean resolveIntent(Intent intent) {
        if (FacebookSdk.getApplicationContext().getPackageManager().resolveActivity(intent, 0) == null) {
            return false;
        }
        return true;
    }

    /*
     * Enabled aggressive block sorting
     */
    private void startLogin(StartActivityDelegate object, LoginClient.Request hashMap) throws FacebookException {
        this.pendingLoginRequest = hashMap;
        this.pendingLoggingExtras = new HashMap();
        this.context = object.getActivityContext();
        this.logStartLogin();
        CallbackManagerImpl.registerStaticCallback(CallbackManagerImpl.RequestCodeOffset.Login.toRequestCode(), new CallbackManagerImpl.Callback(){

            @Override
            public boolean onActivityResult(int n2, Intent intent) {
                return LoginManager.this.onActivityResult(n2, intent);
            }
        });
        boolean bl = this.tryLoginActivity((StartActivityDelegate)object, (LoginClient.Request)((Object)hashMap));
        hashMap = this.pendingLoggingExtras;
        object = bl ? "1" : "0";
        hashMap.put("try_login_activity", (String)object);
        if (!bl) {
            object = new FacebookException("Log in attempt failed: LoginActivity could not be started");
            this.logCompleteLogin(LoginClient.Result.Code.ERROR, null, (Exception)object);
            this.pendingLoginRequest = null;
            throw object;
        }
    }

    private boolean tryLoginActivity(StartActivityDelegate startActivityDelegate, LoginClient.Request request) {
        if (!this.resolveIntent((Intent)(request = this.getLoginActivityIntent(request)))) {
            return false;
        }
        try {
            startActivityDelegate.startActivityForResult((Intent)request, LoginClient.getLoginRequestCode());
            return true;
        }
        catch (ActivityNotFoundException var1_2) {
            return false;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    private void validatePublishPermissions(Collection<String> iterator) {
        String string2;
        if (iterator == null) {
            return;
        }
        iterator = iterator.iterator();
        do {
            if (!iterator.hasNext()) return;
        } while (LoginManager.isPublishPermission(string2 = (String)iterator.next()));
        throw new FacebookException(String.format("Cannot pass a read permission (%s) to a request for publish authorization", string2));
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    private void validateReadPermissions(Collection<String> iterator) {
        String string2;
        if (iterator == null) {
            return;
        }
        iterator = iterator.iterator();
        do {
            if (!iterator.hasNext()) return;
        } while (!LoginManager.isPublishPermission(string2 = (String)iterator.next()));
        throw new FacebookException(String.format("Cannot pass a publish or manage permission (%s) to a request for read authorization", string2));
    }

    public DefaultAudience getDefaultAudience() {
        return this.defaultAudience;
    }

    public LoginBehavior getLoginBehavior() {
        return this.loginBehavior;
    }

    LoginClient.Request getPendingLoginRequest() {
        return this.pendingLoginRequest;
    }

    public void logInWithPublishPermissions(Activity activity, Collection<String> object) {
        this.validatePublishPermissions((Collection<String>)object);
        object = this.createLoginRequest((Collection<String>)object);
        this.startLogin(new ActivityStartActivityDelegate(activity), (LoginClient.Request)object);
    }

    public void logInWithPublishPermissions(Fragment fragment, Collection<String> object) {
        this.validatePublishPermissions((Collection<String>)object);
        object = this.createLoginRequest((Collection<String>)object);
        this.startLogin(new FragmentStartActivityDelegate(fragment), (LoginClient.Request)object);
    }

    public void logInWithReadPermissions(Activity activity, Collection<String> object) {
        this.validateReadPermissions((Collection<String>)object);
        object = this.createLoginRequest((Collection<String>)object);
        this.startLogin(new ActivityStartActivityDelegate(activity), (LoginClient.Request)object);
    }

    public void logInWithReadPermissions(Fragment fragment, Collection<String> object) {
        this.validateReadPermissions((Collection<String>)object);
        object = this.createLoginRequest((Collection<String>)object);
        this.startLogin(new FragmentStartActivityDelegate(fragment), (LoginClient.Request)object);
    }

    public void logOut() {
        AccessToken.setCurrentAccessToken(null);
        Profile.setCurrentProfile(null);
    }

    boolean onActivityResult(int n2, Intent intent) {
        return this.onActivityResult(n2, intent, null);
    }

    /*
     * Enabled aggressive block sorting
     */
    boolean onActivityResult(int n2, Intent object, FacebookCallback<LoginResult> facebookCallback) {
        Object object2;
        Object object3;
        if (this.pendingLoginRequest == null) {
            return false;
        }
        Object var12_4 = null;
        Object object4 = null;
        Object object5 = null;
        Object var10_7 = null;
        Object object6 = LoginClient.Result.Code.ERROR;
        LoginClient.Result.Code code = null;
        boolean bl = false;
        boolean bl2 = false;
        if (object != null) {
            LoginClient.Result result = (LoginClient.Result)object.getParcelableExtra("com.facebook.LoginFragment:Result");
            object = object6;
            object6 = var12_4;
            object2 = code;
            object3 = object5;
            if (result != null) {
                code = result.code;
                if (n2 == -1) {
                    if (result.code == LoginClient.Result.Code.SUCCESS) {
                        object = result.token;
                        bl = bl2;
                        object6 = object4;
                    } else {
                        object6 = new FacebookAuthorizationException(result.errorMessage);
                        bl = bl2;
                        object = var10_7;
                    }
                } else {
                    object6 = object4;
                    bl = bl2;
                    object = var10_7;
                    if (n2 == 0) {
                        bl = true;
                        object6 = object4;
                        object = var10_7;
                    }
                }
                object2 = result.loggingExtras;
                object3 = object;
                object = code;
            }
        } else {
            object = object6;
            object6 = var12_4;
            object2 = code;
            object3 = object5;
            if (n2 == 0) {
                bl = true;
                object = LoginClient.Result.Code.CANCEL;
                object6 = var12_4;
                object2 = code;
                object3 = object5;
            }
        }
        object4 = object6;
        if (object6 == null) {
            object4 = object6;
            if (object3 == null) {
                object4 = object6;
                if (!bl) {
                    object4 = new FacebookException("Unexpected call to LoginManager.onActivityResult");
                }
            }
        }
        this.logCompleteLogin((LoginClient.Result.Code)((Object)object), (Map<String, String>)object2, (Exception)object4);
        this.finishLogin((AccessToken)object3, (FacebookException)object4, bl, facebookCallback);
        return true;
    }

    public void registerCallback(CallbackManager callbackManager, final FacebookCallback<LoginResult> facebookCallback) {
        if (!(callbackManager instanceof CallbackManagerImpl)) {
            throw new FacebookException("Unexpected CallbackManager, please use the provided Factory.");
        }
        ((CallbackManagerImpl)callbackManager).registerCallback(CallbackManagerImpl.RequestCodeOffset.Login.toRequestCode(), new CallbackManagerImpl.Callback(){

            @Override
            public boolean onActivityResult(int n2, Intent intent) {
                return LoginManager.this.onActivityResult(n2, intent, facebookCallback);
            }
        });
    }

    public void resolveError(Activity activity, GraphResponse graphResponse) {
        this.startLogin(new ActivityStartActivityDelegate(activity), this.createLoginRequestFromResponse(graphResponse));
    }

    public void resolveError(Fragment fragment, GraphResponse graphResponse) {
        this.startLogin(new FragmentStartActivityDelegate(fragment), this.createLoginRequestFromResponse(graphResponse));
    }

    public LoginManager setDefaultAudience(DefaultAudience defaultAudience) {
        this.defaultAudience = defaultAudience;
        return this;
    }

    public LoginManager setLoginBehavior(LoginBehavior loginBehavior) {
        this.loginBehavior = loginBehavior;
        return this;
    }

    private static class ActivityStartActivityDelegate
    implements StartActivityDelegate {
        private final Activity activity;

        ActivityStartActivityDelegate(Activity activity) {
            Validate.notNull((Object)activity, "activity");
            this.activity = activity;
        }

        @Override
        public Activity getActivityContext() {
            return this.activity;
        }

        @Override
        public void startActivityForResult(Intent intent, int n2) {
            this.activity.startActivityForResult(intent, n2);
        }
    }

    private static class FragmentStartActivityDelegate
    implements StartActivityDelegate {
        private final Fragment fragment;

        FragmentStartActivityDelegate(Fragment fragment) {
            Validate.notNull(fragment, "fragment");
            this.fragment = fragment;
        }

        @Override
        public Activity getActivityContext() {
            return this.fragment.getActivity();
        }

        @Override
        public void startActivityForResult(Intent intent, int n2) {
            this.fragment.startActivityForResult(intent, n2);
        }
    }

}

