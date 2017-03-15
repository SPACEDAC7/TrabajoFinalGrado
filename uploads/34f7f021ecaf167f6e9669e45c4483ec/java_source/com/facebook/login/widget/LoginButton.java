/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.app.Activity
 *  android.app.AlertDialog
 *  android.app.AlertDialog$Builder
 *  android.content.Context
 *  android.content.DialogInterface
 *  android.content.DialogInterface$OnClickListener
 *  android.content.res.Resources
 *  android.content.res.Resources$Theme
 *  android.content.res.TypedArray
 *  android.graphics.Canvas
 *  android.graphics.Paint
 *  android.graphics.Typeface
 *  android.os.AsyncTask
 *  android.os.Bundle
 *  android.util.AttributeSet
 *  android.util.Log
 *  android.view.View
 *  android.view.View$OnClickListener
 */
package com.facebook.login.widget;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Typeface;
import android.os.AsyncTask;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import com.facebook.AccessToken;
import com.facebook.AccessTokenTracker;
import com.facebook.CallbackManager;
import com.facebook.FacebookButtonBase;
import com.facebook.FacebookCallback;
import com.facebook.Profile;
import com.facebook.R;
import com.facebook.appevents.AppEventsLogger;
import com.facebook.internal.CallbackManagerImpl;
import com.facebook.internal.LoginAuthorizationType;
import com.facebook.internal.Utility;
import com.facebook.login.DefaultAudience;
import com.facebook.login.LoginBehavior;
import com.facebook.login.LoginManager;
import com.facebook.login.LoginResult;
import com.facebook.login.widget.ToolTipPopup;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.Set;

public class LoginButton
extends FacebookButtonBase {
    private static final int DEFAULT_REQUEST_CODE = CallbackManagerImpl.RequestCodeOffset.Login.toRequestCode();
    private static final String TAG = LoginButton.class.getName();
    private AccessTokenTracker accessTokenTracker;
    private boolean confirmLogout;
    private String loginLogoutEventName = "fb_login_view_usage";
    private LoginManager loginManager;
    private String loginText;
    private String logoutText;
    private boolean nuxChecked;
    private long nuxDisplayTime = 6000;
    private ToolTipMode nuxMode = ToolTipMode.DEFAULT;
    private ToolTipPopup nuxPopup;
    private ToolTipPopup.Style nuxStyle = ToolTipPopup.Style.BLUE;
    private LoginButtonProperties properties = new LoginButtonProperties();

    public LoginButton(Context context) {
        super(context, null, 0, 0, "fb_login_button_create", DEFAULT_REQUEST_CODE);
    }

    public LoginButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0, 0, "fb_login_button_create", DEFAULT_REQUEST_CODE);
    }

    public LoginButton(Context context, AttributeSet attributeSet, int n2) {
        super(context, attributeSet, n2, 0, "fb_login_button_create", DEFAULT_REQUEST_CODE);
    }

    private void checkNuxSettings() {
        if (this.nuxMode == ToolTipMode.DISPLAY_ALWAYS) {
            this.displayNux(this.getResources().getString(R.string.com_facebook_tooltip_default));
            return;
        }
        new AsyncTask<Void, Void, Utility.FetchedAppSettings>(Utility.getMetadataApplicationId(this.getContext())){
            final /* synthetic */ String val$appId;

            protected /* varargs */ Utility.FetchedAppSettings doInBackground(Void ... arrvoid) {
                return Utility.queryAppSettings(this.val$appId, false);
            }

            protected void onPostExecute(Utility.FetchedAppSettings fetchedAppSettings) {
                LoginButton.this.showNuxPerSettings(fetchedAppSettings);
            }
        }.execute((Object[])null);
    }

    private void displayNux(String string2) {
        this.nuxPopup = new ToolTipPopup(string2, (View)this);
        this.nuxPopup.setStyle(this.nuxStyle);
        this.nuxPopup.setNuxDisplayTime(this.nuxDisplayTime);
        this.nuxPopup.show();
    }

    private void parseLoginButtonAttributes(Context context, AttributeSet attributeSet, int n2, int n3) {
        context = context.getTheme().obtainStyledAttributes(attributeSet, R.styleable.com_facebook_login_view, n2, n3);
        try {
            this.confirmLogout = context.getBoolean(R.styleable.com_facebook_login_view_confirm_logout, true);
            this.loginText = context.getString(R.styleable.com_facebook_login_view_login_text);
            this.logoutText = context.getString(R.styleable.com_facebook_login_view_logout_text);
            return;
        }
        finally {
            context.recycle();
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    private void setButtonText() {
        Resources resources = this.getResources();
        if (AccessToken.getCurrentAccessToken() != null) {
            String string2 = this.logoutText != null ? this.logoutText : resources.getString(R.string.com_facebook_loginview_log_out_button);
            this.setText((CharSequence)string2);
            return;
        }
        if (this.loginText != null) {
            this.setText((CharSequence)this.loginText);
            return;
        }
        String string3 = resources.getString(R.string.com_facebook_loginview_log_in_button_long);
        int n2 = this.getWidth();
        String string4 = string3;
        if (n2 != 0) {
            Paint paint = new Paint();
            paint.setTextSize(this.getTextSize());
            paint.setTypeface(this.getTypeface());
            string4 = string3;
            if (paint.measureText(string3) > (float)n2) {
                string4 = resources.getString(R.string.com_facebook_loginview_log_in_button);
            }
        }
        this.setText((CharSequence)string4);
    }

    private void showNuxPerSettings(Utility.FetchedAppSettings fetchedAppSettings) {
        if (fetchedAppSettings != null && fetchedAppSettings.getNuxEnabled() && this.getVisibility() == 0) {
            this.displayNux(fetchedAppSettings.getNuxContent());
        }
    }

    public void clearPermissions() {
        this.properties.clearPermissions();
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    protected void configureButton(Context context, AttributeSet attributeSet, int n2, int n3) {
        super.configureButton(context, attributeSet, n2, n3);
        this.setInternalOnClickListener(new LoginClickListener());
        this.parseLoginButtonAttributes(context, attributeSet, n2, n3);
        if (this.isInEditMode()) {
            this.setBackgroundColor(this.getResources().getColor(R.color.com_facebook_blue));
            this.loginText = "Log in with Facebook";
        } else {
            this.accessTokenTracker = new AccessTokenTracker(){

                @Override
                protected void onCurrentAccessTokenChanged(AccessToken accessToken, AccessToken accessToken2) {
                    LoginButton.this.setButtonText();
                }
            };
        }
        this.setButtonText();
    }

    public void dismissToolTip() {
        if (this.nuxPopup != null) {
            this.nuxPopup.dismiss();
            this.nuxPopup = null;
        }
    }

    public DefaultAudience getDefaultAudience() {
        return this.properties.getDefaultAudience();
    }

    @Override
    protected int getDefaultStyleResource() {
        return R.style.com_facebook_loginview_default_style;
    }

    public LoginBehavior getLoginBehavior() {
        return this.properties.getLoginBehavior();
    }

    LoginManager getLoginManager() {
        if (this.loginManager == null) {
            this.loginManager = LoginManager.getInstance();
        }
        return this.loginManager;
    }

    List<String> getPermissions() {
        return this.properties.getPermissions();
    }

    public long getToolTipDisplayTime() {
        return this.nuxDisplayTime;
    }

    public ToolTipMode getToolTipMode() {
        return this.nuxMode;
    }

    @Override
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.accessTokenTracker != null && !this.accessTokenTracker.isTracking()) {
            this.accessTokenTracker.startTracking();
            this.setButtonText();
        }
    }

    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (this.accessTokenTracker != null) {
            this.accessTokenTracker.stopTracking();
        }
        this.dismissToolTip();
    }

    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (!this.nuxChecked && this.nuxMode != ToolTipMode.NEVER_DISPLAY && !this.isInEditMode()) {
            this.nuxChecked = true;
            this.checkNuxSettings();
        }
    }

    protected void onLayout(boolean bl, int n2, int n3, int n4, int n5) {
        super.onLayout(bl, n2, n3, n4, n5);
        this.setButtonText();
    }

    protected void onVisibilityChanged(View view, int n2) {
        super.onVisibilityChanged(view, n2);
        if (n2 != 0) {
            this.dismissToolTip();
        }
    }

    public void registerCallback(CallbackManager callbackManager, FacebookCallback<LoginResult> facebookCallback) {
        this.getLoginManager().registerCallback(callbackManager, facebookCallback);
    }

    public void registerCallback(CallbackManager callbackManager, FacebookCallback<LoginResult> facebookCallback, int n2) {
        this.setRequestCode(n2);
        this.registerCallback(callbackManager, facebookCallback);
    }

    public void setDefaultAudience(DefaultAudience defaultAudience) {
        this.properties.setDefaultAudience(defaultAudience);
    }

    public void setLoginBehavior(LoginBehavior loginBehavior) {
        this.properties.setLoginBehavior(loginBehavior);
    }

    void setLoginManager(LoginManager loginManager) {
        this.loginManager = loginManager;
    }

    void setProperties(LoginButtonProperties loginButtonProperties) {
        this.properties = loginButtonProperties;
    }

    public void setPublishPermissions(List<String> list) {
        this.properties.setPublishPermissions(list);
    }

    public /* varargs */ void setPublishPermissions(String ... arrstring) {
        this.properties.setPublishPermissions(Arrays.asList(arrstring));
    }

    public void setReadPermissions(List<String> list) {
        this.properties.setReadPermissions(list);
    }

    public /* varargs */ void setReadPermissions(String ... arrstring) {
        this.properties.setReadPermissions(Arrays.asList(arrstring));
    }

    public void setToolTipDisplayTime(long l2) {
        this.nuxDisplayTime = l2;
    }

    public void setToolTipMode(ToolTipMode toolTipMode) {
        this.nuxMode = toolTipMode;
    }

    public void setToolTipStyle(ToolTipPopup.Style style2) {
        this.nuxStyle = style2;
    }

    static class LoginButtonProperties {
        private LoginAuthorizationType authorizationType = null;
        private DefaultAudience defaultAudience = DefaultAudience.FRIENDS;
        private LoginBehavior loginBehavior = LoginBehavior.SSO_WITH_FALLBACK;
        private List<String> permissions = Collections.emptyList();

        LoginButtonProperties() {
        }

        private boolean validatePermissions(List<String> list, LoginAuthorizationType object) {
            if (LoginAuthorizationType.PUBLISH.equals(object) && Utility.isNullOrEmpty(list)) {
                throw new IllegalArgumentException("Permissions for publish actions cannot be null or empty.");
            }
            object = AccessToken.getCurrentAccessToken();
            if (object != null && !Utility.isSubset(list, object.getPermissions())) {
                Log.e((String)TAG, (String)"Cannot set additional permissions with existing AccessToken.");
                return false;
            }
            return true;
        }

        public void clearPermissions() {
            this.permissions = null;
            this.authorizationType = null;
        }

        public DefaultAudience getDefaultAudience() {
            return this.defaultAudience;
        }

        public LoginBehavior getLoginBehavior() {
            return this.loginBehavior;
        }

        List<String> getPermissions() {
            return this.permissions;
        }

        public void setDefaultAudience(DefaultAudience defaultAudience) {
            this.defaultAudience = defaultAudience;
        }

        public void setLoginBehavior(LoginBehavior loginBehavior) {
            this.loginBehavior = loginBehavior;
        }

        public void setPublishPermissions(List<String> list) {
            if (LoginAuthorizationType.READ.equals((Object)this.authorizationType)) {
                throw new UnsupportedOperationException("Cannot call setPublishPermissions after setReadPermissions has been called.");
            }
            if (this.validatePermissions(list, LoginAuthorizationType.PUBLISH)) {
                this.permissions = list;
                this.authorizationType = LoginAuthorizationType.PUBLISH;
            }
        }

        public void setReadPermissions(List<String> list) {
            if (LoginAuthorizationType.PUBLISH.equals((Object)this.authorizationType)) {
                throw new UnsupportedOperationException("Cannot call setReadPermissions after setPublishPermissions has been called.");
            }
            if (this.validatePermissions(list, LoginAuthorizationType.READ)) {
                this.permissions = list;
                this.authorizationType = LoginAuthorizationType.READ;
            }
        }
    }

    private class LoginClickListener
    implements View.OnClickListener {
        private LoginClickListener() {
        }

        /*
         * Enabled aggressive block sorting
         */
        public void onClick(View view) {
            String string2;
            Object object;
            Context context = LoginButton.this.getContext();
            AccessToken accessToken = AccessToken.getCurrentAccessToken();
            if (accessToken != null) {
                if (LoginButton.this.confirmLogout) {
                    string2 = LoginButton.this.getResources().getString(R.string.com_facebook_loginview_log_out_action);
                    String string3 = LoginButton.this.getResources().getString(R.string.com_facebook_loginview_cancel_action);
                    object = Profile.getCurrentProfile();
                    object = object != null && object.getName() != null ? String.format(LoginButton.this.getResources().getString(R.string.com_facebook_loginview_logged_in_as), object.getName()) : LoginButton.this.getResources().getString(R.string.com_facebook_loginview_logged_in_using_facebook);
                    context = new AlertDialog.Builder(context);
                    context.setMessage((CharSequence)object).setCancelable(true).setPositiveButton((CharSequence)string2, new DialogInterface.OnClickListener(){

                        public void onClick(DialogInterface dialogInterface, int n2) {
                            LoginButton.this.getLoginManager().logOut();
                        }
                    }).setNegativeButton((CharSequence)string3, null);
                    context.create().show();
                } else {
                    LoginButton.this.getLoginManager().logOut();
                }
            } else {
                object = LoginButton.this.getLoginManager();
                object.setDefaultAudience(LoginButton.this.getDefaultAudience());
                object.setLoginBehavior(LoginButton.this.getLoginBehavior());
                if (LoginAuthorizationType.PUBLISH.equals((Object)LoginButton.this.properties.authorizationType)) {
                    if (LoginButton.this.getFragment() != null) {
                        object.logInWithPublishPermissions(LoginButton.this.getFragment(), LoginButton.this.properties.permissions);
                    } else {
                        object.logInWithPublishPermissions(LoginButton.this.getActivity(), LoginButton.this.properties.permissions);
                    }
                } else if (LoginButton.this.getFragment() != null) {
                    object.logInWithReadPermissions(LoginButton.this.getFragment(), LoginButton.this.properties.permissions);
                } else {
                    object.logInWithReadPermissions(LoginButton.this.getActivity(), LoginButton.this.properties.permissions);
                }
            }
            object = AppEventsLogger.newLogger(LoginButton.this.getContext());
            string2 = new Bundle();
            int n2 = accessToken != null ? 0 : 1;
            string2.putInt("logging_in", n2);
            object.logSdkEvent(LoginButton.this.loginLogoutEventName, null, (Bundle)string2);
            LoginButton.this.callExternalOnClickListener(view);
        }

    }

    public static enum ToolTipMode {
        DEFAULT,
        DISPLAY_ALWAYS,
        NEVER_DISPLAY;
        

        private ToolTipMode() {
        }
    }

}

