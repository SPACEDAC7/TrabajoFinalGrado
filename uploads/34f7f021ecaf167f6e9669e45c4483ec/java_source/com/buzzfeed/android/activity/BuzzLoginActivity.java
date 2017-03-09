/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.animation.Animator
 *  android.animation.Animator$AnimatorListener
 *  android.animation.AnimatorListenerAdapter
 *  android.animation.AnimatorSet
 *  android.animation.ObjectAnimator
 *  android.app.Activity
 *  android.content.Context
 *  android.content.DialogInterface
 *  android.content.DialogInterface$OnClickListener
 *  android.content.Intent
 *  android.content.res.Resources
 *  android.net.Uri
 *  android.os.Build
 *  android.os.Build$VERSION
 *  android.os.Bundle
 *  android.provider.SearchRecentSuggestions
 *  android.text.Editable
 *  android.text.Html
 *  android.text.TextUtils
 *  android.util.Log
 *  android.view.View
 *  android.widget.EditText
 *  android.widget.ImageView
 *  android.widget.TextView
 *  okhttp3.ResponseBody
 *  org.json.JSONException
 *  org.json.JSONObject
 *  retrofit2.Response
 */
package com.buzzfeed.android.activity;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.res.Resources;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.provider.SearchRecentSuggestions;
import android.support.annotation.NonNull;
import android.support.v7.app.AlertDialog;
import android.text.Editable;
import android.text.Html;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;
import com.buzzfeed.analytics.client.BuzzFeedTracker;
import com.buzzfeed.analytics.client.DustbusterClient;
import com.buzzfeed.android.activity.BaseActivity;
import com.buzzfeed.android.data.BuzzUser;
import com.buzzfeed.android.data.EnvironmentConfig;
import com.buzzfeed.android.data.bookmark.BFBookmarkManager;
import com.buzzfeed.android.data.login.GoogleLoginManager;
import com.buzzfeed.android.ui.dialog.BuzzFeedAlertDialog;
import com.buzzfeed.android.ui.widget.FloatingButton;
import com.buzzfeed.android.util.AESCryptUtils;
import com.buzzfeed.android.util.BuzzApiClient;
import com.buzzfeed.android.util.BuzzUtils;
import com.buzzfeed.toolkit.util.BFVault;
import com.buzzfeed.toolkit.util.DeviceUtil;
import com.buzzfeed.toolkit.util.HttpErrorParser;
import com.buzzfeed.toolkit.util.LogUtil;
import com.buzzfeed.toolkit.util.NetworkUtil;
import com.buzzfeed.toolkit.util.retrofit.SafeCall;
import com.buzzfeed.toolkit.util.retrofit.StringCallback;
import com.facebook.AccessToken;
import com.facebook.CallbackManager;
import com.facebook.Profile;
import com.facebook.ProfileTracker;
import com.facebook.login.LoginManager;
import com.google.android.gms.auth.GoogleAuthUtil;
import com.google.android.gms.auth.api.Auth;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.auth.api.signin.GoogleSignInApi;
import com.google.android.gms.auth.api.signin.GoogleSignInResult;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;
import okhttp3.ResponseBody;
import org.json.JSONException;
import org.json.JSONObject;
import retrofit2.Call;
import retrofit2.Response;

public class BuzzLoginActivity
extends BaseActivity {
    private static final int AUTH_CODE_REQUEST_CODE = 2000;
    private static final int GET_ACCOUNTS_PERMISSION_CODE = 100;
    private static final String SCREEN_TYPE_KEY = "ScreenType";
    private static final String TAG = BuzzLoginActivity.class.getSimpleName();
    private static int[] inputFieldIDs = new int[]{2131820699, 2131820700};
    private final String EMAIL_REGEXP = "(?:[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*|\"(?:[\\x01-\\x08\\x0b\\x0c\\x0e-\\x1f\\x21\\x23-\\x5b\\x5d-\\x7f]|\\\\[\\x01-\\x09\\x0b\\x0c\\x0e-\\x7f])*\")@(?:(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?|\\[(?:(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\\.){3}(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?|[a-z0-9-]*[a-z0-9]:(?:[\\x01-\\x08\\x0b\\x0c\\x0e-\\x1f\\x21-\\x5a\\x53-\\x7f]|\\\\[\\x01-\\x09\\x0b\\x0c\\x0e-\\x7f])+)\\])";
    private final String USERNAME_REGEXP = "^[a-zA-Z0-9]+$";
    private ImageView arrowImage;
    private CallbackManager callbackManager;
    private FloatingButton confirmButton;
    private ScreenType currentScreen = ScreenType.LOGIN_SCREEN;
    private LoginManager facebookLoginManager;
    private AlertDialog mCurrentDialog;
    private DustbusterClient mDustbusterClient;
    private SearchRecentSuggestions mSuggester;
    private BuzzFeedTracker mTracker;
    private EditText passwordField;
    private ProfileTracker profileTracker;
    private EditText usernameField;

    private BuzzFeedAlertDialog.Builder assembleDefaultAlertDialog(int n2, int n3) {
        return new BuzzFeedAlertDialog.Builder((Context)this).setTitle(n2).setMessage(n3);
    }

    private void dismissCurrentDialog() {
        if (this.mCurrentDialog != null && this.mCurrentDialog.isShowing()) {
            this.mCurrentDialog.dismiss();
            this.mCurrentDialog = null;
        }
    }

    private void handleSignInResult(GoogleSignInResult googleSignInResult) {
        Log.d((String)TAG, (String)("handleSignInResult:" + googleSignInResult.isSuccess()));
        if (googleSignInResult.isSuccess()) {
            this.loginToBuzzFeedWithGoogle(googleSignInResult.getSignInAccount());
        }
    }

    private void loginToBuzzFeedWithAccount() {
        EditText editText = (EditText)this.findViewById(2131820699);
        EditText editText2 = (EditText)this.findViewById(2131820700);
        this.loginToBuzzFeedWithAccount(editText.getText().toString(), editText2.getText().toString());
    }

    /*
     * Enabled aggressive block sorting
     */
    private void loginToBuzzFeedWithAccount(String string2, String string3) {
        final String string4 = TAG + ".loginToBuzzFeedWithAccount";
        LogUtil.d(string4, "Logging in with username: " + string2);
        if (TextUtils.isEmpty((CharSequence)string2) || TextUtils.isEmpty((CharSequence)string3)) {
            this.showInvalidLoginDialog();
            return;
        } else {
            if (NetworkUtil.isConnectedToNetwork((Context)this)) {
                if (!this.isFinishing()) {
                    this.showAlertDialog(this.assembleDefaultAlertDialog(2131296386, 2131296391).setProgressBarVisiblilty(true).create());
                }
                BuzzApiClient.loginToBuzzFeedWithAccount(string2, string3, new StringCallback(){

                    @Override
                    public void onFailure(Call<ResponseBody> call, Throwable throwable) {
                        BuzzLoginActivity.this.showInvalidLoginDialog();
                        LogUtil.e(string4, "Error: " + throwable.getLocalizedMessage(), throwable);
                    }

                    @Override
                    protected void onNetworkError(Call<ResponseBody> object, Response<ResponseBody> response) {
                        object = HttpErrorParser.createExceptionOnHttpError(response.code());
                        LogUtil.e(string4, "Network Error", (Throwable)object);
                        BuzzLoginActivity.this.showInvalidLoginDialog();
                    }

                    @Override
                    public void onStringResponse(String string2) {
                        BuzzLoginActivity.this.onBuzzFeedLoginCompletedWithAccount(string2);
                    }
                });
                return;
            }
            if (this.isFinishing()) return;
            {
                this.showAlertDialog(this.assembleDefaultAlertDialog(2131296433, 2131296460).setPositiveButton(2131296461, null).create());
                return;
            }
        }
    }

    private void loginToBuzzFeedWithFacebook() {
        TAG + ".loginBuzzFeedWithFacebook";
        ArrayList<String> arrayList = new ArrayList<String>();
        arrayList.add("email");
        this.facebookLoginManager.logInWithReadPermissions(this, arrayList);
    }

    private void loginToBuzzFeedWithGoogle(final GoogleSignInAccount googleSignInAccount) {
        final String string2 = TAG + ".loginToBuzzFeedWithGoogle";
        if (!this.isFinishing()) {
            this.showAlertDialog(this.assembleDefaultAlertDialog(2131296386, 2131296391).setProgressBarVisiblilty(true).create());
        }
        BuzzApiClient.loginToBuzzFeedWithGooglePlus(googleSignInAccount.getServerAuthCode(), new StringCallback(){

            @Override
            public void onFailure(Call<ResponseBody> call, Throwable throwable) {
                LogUtil.e(string2, "Error: " + throwable.getLocalizedMessage(), throwable);
                if (!BuzzLoginActivity.this.isFinishing()) {
                    BuzzLoginActivity.this.showAlertDialog(BuzzLoginActivity.this.assembleDefaultAlertDialog(2131296407, 2131296425).setPositiveButton(2131296461, null).create());
                }
            }

            @Override
            protected void onNetworkError(Call<ResponseBody> object, Response<ResponseBody> response) {
                object = HttpErrorParser.createExceptionOnHttpError(response.code());
                LogUtil.e(string2, "Network Error", (Throwable)object);
                BuzzLoginActivity.this.showAlertDialog(BuzzLoginActivity.this.assembleDefaultAlertDialog(2131296407, 2131296425).setPositiveButton(2131296461, null).create());
            }

            /*
             * Enabled aggressive block sorting
             * Enabled unnecessary exception pruning
             * Enabled aggressive exception aggregation
             */
            @Override
            public void onStringResponse(String string22) {
                if (!BuzzLoginActivity.this.isFinishing()) {
                    BuzzLoginActivity.this.showAlertDialog(BuzzLoginActivity.this.assembleDefaultAlertDialog(2131296386, 2131296391).setProgressBarVisiblilty(true).create());
                }
                try {
                    string22 = new JSONObject(string22);
                    if (string22.getString("login").equals("false")) {
                        if (string22.has("googleplus_uid")) {
                            BuzzLoginActivity.this.signupGoogleUser((JSONObject)string22);
                        } else if (!BuzzLoginActivity.this.isFinishing()) {
                            BuzzLoginActivity.this.showAlertDialog(BuzzLoginActivity.this.assembleDefaultAlertDialog(2131296407, 2131296425).setPositiveButton(2131296461, null).create());
                        }
                    } else {
                        BuzzLoginActivity.this.onLoginToBuzzFeedWithGooglePlusCompleted((JSONObject)string22, googleSignInAccount);
                    }
                }
                catch (Exception var1_2) {
                    LogUtil.e(string2, "Error: " + var1_2.getLocalizedMessage(), var1_2);
                    BuzzLoginActivity.this.showAlertDialog(BuzzLoginActivity.this.assembleDefaultAlertDialog(2131296407, 2131296425).setPositiveButton(2131296461, null).create());
                }
                try {
                    GoogleAuthUtil.invalidateToken((Context)BuzzLoginActivity.this, googleSignInAccount.getServerAuthCode());
                    return;
                }
                catch (Exception var1_3) {
                    LogUtil.e(string2, "Error: " + var1_3.getLocalizedMessage(), var1_3);
                    BuzzLoginActivity.this.showAlertDialog(BuzzLoginActivity.this.assembleDefaultAlertDialog(2131296407, 2131296425).setPositiveButton(2131296461, null).create());
                    return;
                }
            }
        });
    }

    private void onBuzzFeedLoginCompletedWithAccount(String object) {
        String string2 = TAG + ".onBuzzFeedLoginCompletedWithAccount";
        try {
            Object object2 = new JSONObject((String)object);
            object = BuzzUser.getInstance(this.getApplicationContext());
            object.setLogin(object2.getBoolean("login"));
            if (object.isLogin()) {
                object.setLoginType("buzzfeedAccount");
                object.loadFromJson((JSONObject)object2);
                object2 = object.getUsername();
                object.setPassword(AESCryptUtils.encrypt(this.passwordField.getText().toString(), (Context)this));
                BuzzUtils.showToastNotification(this, String.format(this.getString(2131296388), object2), 0);
                this.mTracker.trackEvent(this.getString(2131296771), this.getString(2131296733), "", 0);
                if (this.mSuggester != null) {
                    this.mSuggester.clearHistory();
                }
                this.onPostLogin((BuzzUser)object);
                return;
            }
            this.showInvalidLoginDialog();
            return;
        }
        catch (Exception var1_2) {
            LogUtil.e(string2, "Error logging in: " + var1_2.getMessage(), var1_2);
            this.showInvalidLoginDialog();
            return;
        }
    }

    private void onBuzzFeedLoginCompletedWithFacebook(String object) {
        String string2 = TAG + ".onBuzzFeedLoginCompletedWithFacebook";
        try {
            Object object2 = new JSONObject((String)object);
            object = BuzzUser.getInstance(this.getApplicationContext());
            object.setLogin(object2.getBoolean("login"));
            if (object.isLogin()) {
                object.setLoginType("facebookAccount");
                object.loadFromJson((JSONObject)object2);
                object.setFacebookUsername(Profile.getCurrentProfile().getFirstName());
                object.setImageUrl(Profile.getCurrentProfile().getProfilePictureUri(100, 100).toString());
                object2 = object.getUsername();
                BuzzUtils.showToastNotification(this, String.format(this.getString(2131296399), object2), 0);
                this.mTracker.trackEvent(this.getString(2131296771), this.getString(2131296706), "", 0);
                if (this.mSuggester != null) {
                    this.mSuggester.clearHistory();
                }
                this.onPostLogin((BuzzUser)object);
                return;
            }
            LogUtil.e(string2, "Could not log in with facebook");
            this.showInvalidLoginDialog();
            return;
        }
        catch (JSONException var1_2) {
            LogUtil.e(string2, "JSON Error in response", (Throwable)var1_2);
            this.showInvalidLoginDialog();
            return;
        }
        catch (Exception var1_3) {
            LogUtil.e(string2, "Error", var1_3);
            this.showInvalidLoginDialog();
            return;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    private void onLoginToBuzzFeedWithGooglePlusCompleted(JSONObject jSONObject, GoogleSignInAccount googleSignInAccount) {
        String string2 = TAG + ".onLoginToBuzzFeedWithGooglePlusCompleted";
        try {
            BuzzUser buzzUser = BuzzUser.getInstance(this.getApplicationContext());
            buzzUser.setLogin(jSONObject.getBoolean("login"));
            if (buzzUser.isLogin()) {
                buzzUser.setLoginType("googleAccount");
                buzzUser.loadFromJson(jSONObject);
                if (googleSignInAccount != null && googleSignInAccount.getPhotoUrl() != null) {
                    buzzUser.setImageUrl(googleSignInAccount.getPhotoUrl().toString());
                } else {
                    buzzUser.setImageUrl(null);
                }
                BuzzUtils.showToastNotification(this, String.format(this.getString(2131296400), buzzUser.getDisplayName()), 0);
                this.mTracker.trackEvent(this.getString(2131296771), this.getString(2131296712), "", 0);
                this.onPostLogin(buzzUser);
                return;
            }
            if (!this.isFinishing()) {
                this.showAlertDialog(this.assembleDefaultAlertDialog(2131296407, 2131296425).setPositiveButton(2131296461, null).create());
            }
            return;
        }
        catch (Exception var1_2) {
            LogUtil.e(string2, "Error: " + var1_2.getLocalizedMessage(), var1_2);
            return;
        }
    }

    private void onPostLogin(BuzzUser buzzUser) {
        BFBookmarkManager bFBookmarkManager = BFBookmarkManager.getInstance((Context)this);
        BuzzUser.getInstance(this.getApplicationContext()).setBuzzUser(buzzUser);
        buzzUser.saveToStorage((Context)this);
        bFBookmarkManager.onUserLoggedIn();
        this.showAlertDialog(this.assembleDefaultAlertDialog(2131296386, 2131296542).setProgressBarVisiblilty(true).create());
        bFBookmarkManager.syncBookmarks(true, new BFBookmarkManager.SyncCompleteListener(){

            @Override
            public void onBookmarkSyncCompleted() {
                if (!BuzzLoginActivity.this.isFinishing()) {
                    BuzzLoginActivity.this.dismissCurrentDialog();
                }
                BuzzLoginActivity.this.setResult(-1, new Intent());
                BuzzLoginActivity.this.finish();
            }

            @Override
            public void onBookmarkSyncError(Exception exception) {
            }
        });
    }

    private void setupArrowAnimation(ImageView imageView) {
        float f2 = imageView.getScaleX();
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(new Animator[]{ObjectAnimator.ofFloat((Object)imageView, (String)"translationX", (float[])new float[]{50.0f}), ObjectAnimator.ofFloat((Object)imageView, (String)"translationY", (float[])new float[]{- 50.0f}), ObjectAnimator.ofFloat((Object)imageView, (String)"scaleX", (float[])new float[]{f2, 1.05f * f2}), ObjectAnimator.ofFloat((Object)imageView, (String)"scaleY", (float[])new float[]{f2, 1.05f * f2})});
        animatorSet.setDuration(30000 / 4);
        AnimatorSet animatorSet2 = new AnimatorSet();
        animatorSet2.playTogether(new Animator[]{ObjectAnimator.ofFloat((Object)imageView, (String)"translationX", (float[])new float[]{0.6f * 50.0f}), ObjectAnimator.ofFloat((Object)imageView, (String)"translationY", (float[])new float[]{(- 50.0f) * 1.4f}), ObjectAnimator.ofFloat((Object)imageView, (String)"scaleX", (float[])new float[]{1.05f * f2, f2}), ObjectAnimator.ofFloat((Object)imageView, (String)"scaleY", (float[])new float[]{1.05f * f2, f2})});
        animatorSet2.setDuration(30000 / 4);
        AnimatorSet animatorSet3 = new AnimatorSet();
        animatorSet3.playTogether(new Animator[]{ObjectAnimator.ofFloat((Object)imageView, (String)"translationX", (float[])new float[]{0.2f * 50.0f}), ObjectAnimator.ofFloat((Object)imageView, (String)"translationY", (float[])new float[]{(- 50.0f) * 0.4f})});
        animatorSet3.setDuration(30000 / 4);
        AnimatorSet animatorSet4 = new AnimatorSet();
        animatorSet4.playTogether(new Animator[]{ObjectAnimator.ofFloat((Object)imageView, (String)"translationX", (float[])new float[]{0.0f}), ObjectAnimator.ofFloat((Object)imageView, (String)"translationY", (float[])new float[]{0.0f})});
        animatorSet4.setDuration(30000 / 4);
        imageView = new AnimatorSet();
        imageView.playSequentially(new Animator[]{animatorSet, animatorSet2, animatorSet3, animatorSet4});
        imageView.addListener((Animator.AnimatorListener)new AnimatorListenerAdapter(){
            private boolean mCanceled;

            public void onAnimationCancel(Animator animator2) {
                this.mCanceled = true;
            }

            public void onAnimationEnd(Animator animator2) {
                if (!this.mCanceled) {
                    animator2.start();
                }
            }

            public void onAnimationStart(Animator animator2) {
                this.mCanceled = false;
            }
        });
        imageView.start();
    }

    private void setupGoogleLoginButton() {
        if (!DeviceUtil.isAmazonDevice()) {
            this.findViewById(2131820968).setVisibility(0);
            return;
        }
        this.findViewById(2131820968).setVisibility(8);
    }

    private void showAlertDialog(AlertDialog alertDialog) {
        this.dismissCurrentDialog();
        this.mCurrentDialog = alertDialog;
        this.mCurrentDialog.show();
    }

    private void showInvalidLoginDialog() {
        this.runOnUiThread(new Runnable(){

            @Override
            public void run() {
                if (!BuzzLoginActivity.this.isFinishing()) {
                    BuzzLoginActivity.this.showAlertDialog(BuzzLoginActivity.this.assembleDefaultAlertDialog(2131296401, 2131296389).setPositiveButton(2131296461, null).create());
                }
            }
        });
    }

    private void signInWithGoogle() {
        if (!NetworkUtil.isConnectedToNetwork((Context)this)) {
            if (!this.isFinishing()) {
                this.showAlertDialog(this.assembleDefaultAlertDialog(2131296433, 2131296460).setPositiveButton(2131296461, null).create());
            }
            return;
        }
        GoogleLoginManager.getInstance().login(this);
    }

    private void signupGoogleUser(final JSONObject jSONObject) {
        final String string2 = TAG + ".signupGoogleUser";
        BuzzApiClient.signUpWithUserInfoUsingGPlus(jSONObject, EnvironmentConfig.getEdition(this.getApplicationContext()), new StringCallback(){

            @Override
            public void onFailure(Call<ResponseBody> call, Throwable throwable) {
                BuzzLoginActivity.this.showInvalidLoginDialog();
                LogUtil.e(string2, "Error: " + throwable.getLocalizedMessage(), throwable);
            }

            @Override
            protected void onNetworkError(Call<ResponseBody> object, Response<ResponseBody> response) {
                object = HttpErrorParser.createExceptionOnHttpError(response.code());
                LogUtil.e(string2, "Network Error", (Throwable)object);
                BuzzLoginActivity.this.showInvalidLoginDialog();
            }

            @Override
            public void onStringResponse(String string22) {
                try {
                    if (new JSONObject(string22).getString("user_validated").equals("true")) {
                        string22 = jSONObject.getString("username");
                        String string3 = jSONObject.getString("password");
                        BuzzLoginActivity.this.mTracker.trackEvent(BuzzLoginActivity.this.getString(2131296771), BuzzLoginActivity.this.getString(2131296735), "", 0);
                        BuzzLoginActivity.this.loginToBuzzFeedWithAccount(string22, string3);
                        return;
                    }
                    LogUtil.e(string2, "Error: user has not been validated");
                    BuzzLoginActivity.this.showInvalidLoginDialog();
                    return;
                }
                catch (JSONException var1_2) {
                    LogUtil.e(string2, "Error: " + var1_2.getLocalizedMessage(), (Throwable)var1_2);
                    BuzzLoginActivity.this.showInvalidLoginDialog();
                    return;
                }
            }
        });
    }

    /*
     * Enabled aggressive block sorting
     */
    private void switchScreen(ScreenType screenType) {
        this.currentScreen = screenType;
        EditText[] arreditText = new EditText[]{this.usernameField, this.passwordField};
        int n2 = arreditText.length;
        for (int i2 = 0; i2 < n2; ++i2) {
            arreditText[i2].setText((CharSequence)"");
        }
        switch (screenType) {
            default: {
                return;
            }
            case LOGIN_SCREEN: {
                this.findViewById(2131820702).setVisibility(8);
                this.confirmButton.setText(2131296404);
                if (!EnvironmentConfig.isStageEnvironment()) return;
                ((EditText)this.findViewById(2131820699)).setText((CharSequence)BFVault.getInstance().getBuzzFeedUserLogin());
                ((EditText)this.findViewById(2131820700)).setText((CharSequence)BFVault.getInstance().getBuzzFeedUserPassword());
                return;
            }
        }
    }

    private void trackBack() {
        this.mDustbusterClient.trackUiTapEvent("/list/login_screen", "back", "login_screen_back", "header");
    }

    public void goBack(View view) {
        this.trackBack();
        this.finish();
    }

    @Override
    public void onActivityResult(int n2, int n3, Intent intent) {
        super.onActivityResult(n2, n3, intent);
        this.callbackManager.onActivityResult(n2, n3, intent);
        if (n2 == 1337) {
            this.handleSignInResult(Auth.GoogleSignInApi.getSignInResultFromIntent(intent));
        }
    }

    @Override
    public void onBackPressed() {
        this.trackBack();
        super.onBackPressed();
    }

    public void onBuzzFeedUserAgreementClick(View view) {
        this.startActivity(BuzzUtils.createViewBuzzIntentExcludingBfApp((Context)this, Uri.parse((String)EnvironmentConfig.getUserAgreementUrl((Context)this))));
    }

    @Override
    public void onCreate(Bundle object) {
        super.onCreate((Bundle)object);
        Object object2 = TAG + ".onCreate";
        this.setContentView(2130903073);
        Object object3 = (TextView)this.findViewById(2131820702);
        object3.setText((CharSequence)Html.fromHtml((String)object3.getText().toString()));
        this.setupGoogleLoginButton();
        this.callbackManager = CallbackManager.Factory.create();
        this.facebookLoginManager = LoginManager.getInstance();
        this.profileTracker = new ProfileTracker((String)object2){
            final /* synthetic */ String val$TAG;

            @Override
            protected void onCurrentProfileChanged(Profile profile, Profile profile2) {
                LogUtil.d(this.val$TAG, "oldProfile: " + profile + ", currentProfile: " + profile2);
                if (profile2 != null) {
                    BuzzApiClient.loginToBuzzFeedWithFacebook(profile2.getId(), profile2.getFirstName(), AccessToken.getCurrentAccessToken().getToken(), new StringCallback(){

                        @Override
                        public void onFailure(Call<ResponseBody> call, Throwable throwable) {
                            BuzzLoginActivity.this.showInvalidLoginDialog();
                            LogUtil.e(1.this.val$TAG, "Error with buzzfeed login using Facebook info: " + throwable.getMessage(), throwable);
                        }

                        @Override
                        protected void onNetworkError(Call<ResponseBody> object, Response<ResponseBody> response) {
                            object = HttpErrorParser.createExceptionOnHttpError(response.code());
                            LogUtil.e(1.this.val$TAG, "Network Error", (Throwable)object);
                            BuzzLoginActivity.this.showInvalidLoginDialog();
                        }

                        @Override
                        public void onStringResponse(String string2) {
                            BuzzLoginActivity.this.onBuzzFeedLoginCompletedWithFacebook(string2);
                        }
                    });
                    BuzzLoginActivity.this.showAlertDialog(BuzzLoginActivity.this.assembleDefaultAlertDialog(2131296386, 2131296391).create());
                }
            }

        };
        this.mTracker = BuzzFeedTracker.getInstance();
        this.mDustbusterClient = DustbusterClient.getInstance();
        this.profileTracker.startTracking();
        this.mSuggester = new SearchRecentSuggestions((Context)this, "com.buzzfeed.android.data.SearchSuggester", 1);
        this.arrowImage = (ImageView)this.findViewById(2131820695);
        if (EnvironmentConfig.isProductionBuild()) {
            this.setupArrowAnimation(this.arrowImage);
        }
        this.confirmButton = (FloatingButton)this.findViewById(2131820701);
        this.usernameField = (EditText)this.findViewById(2131820699);
        this.passwordField = (EditText)this.findViewById(2131820700);
        object2 = this.usernameField;
        object2 = this.passwordField;
        object3 = object2 = ScreenType.LOGIN_SCREEN;
        if (object != null) {
            if (object.containsKey("ScreenType")) {
                object2 = (ScreenType)((Object)object.getSerializable("ScreenType"));
            }
            int[] arrn = inputFieldIDs;
            int n2 = arrn.length;
            int n3 = 0;
            do {
                object3 = object2;
                if (n3 >= n2) break;
                int n4 = arrn[n3];
                object3 = object.getString(this.getResources().getResourceEntryName(n4));
                ((EditText)this.findViewById(n4)).setText((CharSequence)object3);
                ++n3;
            } while (true);
        }
        if (Build.VERSION.SDK_INT >= 21) {
            this.findViewById(2131820703).setBackgroundResource(2130837587);
        }
        object = (FloatingButton)this.findViewById(2131820967);
        object.setText(String.format(object.getText().toString(), " FACEBOOK"));
        object = (FloatingButton)this.findViewById(2131820968);
        object.setText(String.format(object.getText().toString(), " GOOGLE"));
        this.switchScreen((ScreenType)((Object)object3));
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
        LogUtil.d(TAG, "onDestroy");
        this.profileTracker.stopTracking();
        this.dismissCurrentDialog();
    }

    /*
     * Enabled aggressive block sorting
     */
    public void onFBSignInClick(View view) {
        this.mDustbusterClient.trackUiTapEvent("/list/login_screen", "facebook_log_in_button", "facebook_log_in_button", "login_screen");
        if (NetworkUtil.isConnectedToNetwork((Context)this)) {
            this.loginToBuzzFeedWithFacebook();
            return;
        } else {
            if (this.isFinishing()) return;
            {
                this.showAlertDialog(this.assembleDefaultAlertDialog(2131296433, 2131296460).setPositiveButton(2131296461, null).create());
                return;
            }
        }
    }

    public void onGoogleSignInClick(View view) {
        this.mDustbusterClient.trackUiTapEvent("/list/login_screen", "google_log_in_button", "google_log_in_button", "login_screen");
        this.signInWithGoogle();
    }

    public void onLogButtonClick(View view) {
        switch (this.currentScreen) {
            default: {
                return;
            }
            case LOGIN_SCREEN: 
        }
        this.mDustbusterClient.trackUiTapEvent("/list/login_screen", "buzzfeed_log_in_button", "buzzfeed_log_in_button", "login_screen");
        this.loginToBuzzFeedWithAccount();
    }

    @Override
    public void onRequestPermissionsResult(int n2, @NonNull String[] arrstring, @NonNull int[] arrn) {
        switch (n2) {
            default: {
                super.onRequestPermissionsResult(n2, arrstring, arrn);
                return;
            }
            case 100: 
        }
        if (arrn.length > 0 && arrn[0] == 0) {
            this.signInWithGoogle();
            return;
        }
        this.showAlertDialog(this.assembleDefaultAlertDialog(2131296898, 2131296819).setPositiveButton(2131296461, null).create());
    }

    @Override
    protected void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        TAG + ".onSaveInstanceState";
        for (int n2 : inputFieldIDs) {
            bundle.putString(this.getResources().getResourceEntryName(n2), ((EditText)this.findViewById(n2)).getText().toString());
        }
        bundle.putSerializable("ScreenType", (Serializable)((Object)this.currentScreen));
    }

    public static enum ScreenType {
        LOGIN_SCREEN,
        ACCOUNT_SCREEN;
        

        private ScreenType() {
        }
    }

}

