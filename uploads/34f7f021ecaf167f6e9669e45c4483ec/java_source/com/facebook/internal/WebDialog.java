/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.annotation.SuppressLint
 *  android.app.Dialog
 *  android.app.ProgressDialog
 *  android.content.Context
 *  android.content.DialogInterface
 *  android.content.DialogInterface$OnCancelListener
 *  android.content.Intent
 *  android.content.res.Resources
 *  android.graphics.Bitmap
 *  android.graphics.drawable.Drawable
 *  android.net.Uri
 *  android.net.http.SslError
 *  android.os.Bundle
 *  android.util.DisplayMetrics
 *  android.view.Display
 *  android.view.KeyEvent
 *  android.view.MotionEvent
 *  android.view.View
 *  android.view.View$OnClickListener
 *  android.view.View$OnTouchListener
 *  android.view.ViewGroup
 *  android.view.ViewGroup$LayoutParams
 *  android.view.Window
 *  android.view.WindowManager
 *  android.webkit.SslErrorHandler
 *  android.webkit.WebSettings
 *  android.webkit.WebView
 *  android.webkit.WebViewClient
 *  android.widget.FrameLayout
 *  android.widget.FrameLayout$LayoutParams
 *  android.widget.ImageView
 *  android.widget.LinearLayout
 */
package com.facebook.internal;

import android.annotation.SuppressLint;
import android.app.Dialog;
import android.app.ProgressDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.net.http.SslError;
import android.os.Bundle;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.webkit.SslErrorHandler;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.facebook.AccessToken;
import com.facebook.FacebookDialogException;
import com.facebook.FacebookException;
import com.facebook.FacebookOperationCanceledException;
import com.facebook.FacebookRequestError;
import com.facebook.FacebookServiceException;
import com.facebook.R;
import com.facebook.internal.ServerProtocol;
import com.facebook.internal.Utility;
import com.facebook.internal.Validate;

public class WebDialog
extends Dialog {
    private static final int API_EC_DIALOG_CANCEL = 4201;
    private static final int BACKGROUND_GRAY = -872415232;
    static final String CANCEL_URI = "fbconnect://cancel";
    public static final int DEFAULT_THEME = 16973840;
    static final boolean DISABLE_SSL_CHECK_FOR_TESTING = false;
    private static final String DISPLAY_TOUCH = "touch";
    private static final String LOG_TAG = "FacebookSDK.WebDialog";
    private static final int MAX_PADDING_SCREEN_HEIGHT = 1280;
    private static final int MAX_PADDING_SCREEN_WIDTH = 800;
    private static final double MIN_SCALE_FACTOR = 0.5;
    private static final int NO_PADDING_SCREEN_HEIGHT = 800;
    private static final int NO_PADDING_SCREEN_WIDTH = 480;
    static final String REDIRECT_URI = "fbconnect://success";
    private FrameLayout contentFrameLayout;
    private ImageView crossImageView;
    private String expectedRedirectUrl = "fbconnect://success";
    private boolean isDetached = false;
    private boolean isPageFinished = false;
    private boolean listenerCalled = false;
    private OnCompleteListener onCompleteListener;
    private ProgressDialog spinner;
    private String url;
    private WebView webView;

    public WebDialog(Context context, String string2) {
        this(context, string2, 16973840);
    }

    public WebDialog(Context context, String string2, int n2) {
        super(context, n2);
        this.url = string2;
    }

    public WebDialog(Context context, String string2, Bundle bundle, int n2, OnCompleteListener onCompleteListener) {
        super(context, n2);
        context = bundle;
        if (bundle == null) {
            context = new Bundle();
        }
        context.putString("redirect_uri", "fbconnect://success");
        context.putString("display", "touch");
        this.url = Utility.buildUri(ServerProtocol.getDialogAuthority(), ServerProtocol.getAPIVersion() + "/" + "dialog/" + string2, (Bundle)context).toString();
        this.onCompleteListener = onCompleteListener;
    }

    private void createCrossImage() {
        this.crossImageView = new ImageView(this.getContext());
        this.crossImageView.setOnClickListener(new View.OnClickListener(){

            public void onClick(View view) {
                WebDialog.this.cancel();
            }
        });
        Drawable drawable2 = this.getContext().getResources().getDrawable(R.drawable.com_facebook_close);
        this.crossImageView.setImageDrawable(drawable2);
        this.crossImageView.setVisibility(4);
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private int getScaledSize(int n2, float f2, int n3, int n4) {
        double d2;
        int n5 = (int)((float)n2 / f2);
        if (n5 <= n3) {
            d2 = 1.0;
            do {
                return (int)((double)n2 * d2);
                break;
            } while (true);
        }
        if (n5 >= n4) {
            d2 = 0.5;
            return (int)((double)n2 * d2);
        }
        d2 = 0.5 + (double)(n4 - n5) / (double)(n4 - n3) * 0.5;
        return (int)((double)n2 * d2);
    }

    @SuppressLint(value={"SetJavaScriptEnabled"})
    private void setUpWebView(int n2) {
        LinearLayout linearLayout = new LinearLayout(this.getContext());
        this.webView = new WebView(this.getContext()){

            public void onWindowFocusChanged(boolean bl) {
                try {
                    super.onWindowFocusChanged(bl);
                    return;
                }
                catch (NullPointerException var2_2) {
                    return;
                }
            }
        };
        this.webView.setVerticalScrollBarEnabled(false);
        this.webView.setHorizontalScrollBarEnabled(false);
        this.webView.setWebViewClient((WebViewClient)new DialogWebViewClient());
        this.webView.getSettings().setJavaScriptEnabled(true);
        this.webView.loadUrl(this.url);
        this.webView.setLayoutParams((ViewGroup.LayoutParams)new FrameLayout.LayoutParams(-1, -1));
        this.webView.setVisibility(4);
        this.webView.getSettings().setSavePassword(false);
        this.webView.getSettings().setSaveFormData(false);
        this.webView.setFocusable(true);
        this.webView.setFocusableInTouchMode(true);
        this.webView.setOnTouchListener(new View.OnTouchListener(){

            public boolean onTouch(View view, MotionEvent motionEvent) {
                if (!view.hasFocus()) {
                    view.requestFocus();
                }
                return false;
            }
        });
        linearLayout.setPadding(n2, n2, n2, n2);
        linearLayout.addView((View)this.webView);
        linearLayout.setBackgroundColor(-872415232);
        this.contentFrameLayout.addView((View)linearLayout);
    }

    public void cancel() {
        if (this.onCompleteListener != null && !this.listenerCalled) {
            this.sendErrorToListener(new FacebookOperationCanceledException());
        }
    }

    public void dismiss() {
        if (this.webView != null) {
            this.webView.stopLoading();
        }
        if (!this.isDetached && this.spinner.isShowing()) {
            this.spinner.dismiss();
        }
        super.dismiss();
    }

    public OnCompleteListener getOnCompleteListener() {
        return this.onCompleteListener;
    }

    protected WebView getWebView() {
        return this.webView;
    }

    protected boolean isListenerCalled() {
        return this.listenerCalled;
    }

    protected boolean isPageFinished() {
        return this.isPageFinished;
    }

    public void onAttachedToWindow() {
        this.isDetached = false;
        super.onAttachedToWindow();
    }

    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.spinner = new ProgressDialog(this.getContext());
        this.spinner.requestWindowFeature(1);
        this.spinner.setMessage((CharSequence)this.getContext().getString(R.string.com_facebook_loading));
        this.spinner.setOnCancelListener(new DialogInterface.OnCancelListener(){

            public void onCancel(DialogInterface dialogInterface) {
                WebDialog.this.cancel();
            }
        });
        this.requestWindowFeature(1);
        this.contentFrameLayout = new FrameLayout(this.getContext());
        this.resize();
        this.getWindow().setGravity(17);
        this.getWindow().setSoftInputMode(16);
        this.createCrossImage();
        this.setUpWebView(this.crossImageView.getDrawable().getIntrinsicWidth() / 2 + 1);
        this.contentFrameLayout.addView((View)this.crossImageView, new ViewGroup.LayoutParams(-2, -2));
        this.setContentView((View)this.contentFrameLayout);
    }

    public void onDetachedFromWindow() {
        this.isDetached = true;
        super.onDetachedFromWindow();
    }

    public boolean onKeyDown(int n2, KeyEvent keyEvent) {
        if (n2 == 4) {
            this.cancel();
        }
        return super.onKeyDown(n2, keyEvent);
    }

    protected void onStart() {
        super.onStart();
        this.resize();
    }

    protected Bundle parseResponseUri(String string2) {
        string2 = Uri.parse((String)string2);
        Bundle bundle = Utility.parseUrlQueryString(string2.getQuery());
        bundle.putAll(Utility.parseUrlQueryString(string2.getFragment()));
        return bundle;
    }

    /*
     * Enabled aggressive block sorting
     */
    public void resize() {
        Display display = ((WindowManager)this.getContext().getSystemService("window")).getDefaultDisplay();
        DisplayMetrics displayMetrics = new DisplayMetrics();
        display.getMetrics(displayMetrics);
        int n2 = displayMetrics.widthPixels < displayMetrics.heightPixels ? displayMetrics.widthPixels : displayMetrics.heightPixels;
        int n3 = displayMetrics.widthPixels < displayMetrics.heightPixels ? displayMetrics.heightPixels : displayMetrics.widthPixels;
        n2 = Math.min(this.getScaledSize(n2, displayMetrics.density, 480, 800), displayMetrics.widthPixels);
        n3 = Math.min(this.getScaledSize(n3, displayMetrics.density, 800, 1280), displayMetrics.heightPixels);
        this.getWindow().setLayout(n2, n3);
    }

    /*
     * Enabled aggressive block sorting
     */
    protected void sendErrorToListener(Throwable throwable) {
        if (this.onCompleteListener != null && !this.listenerCalled) {
            this.listenerCalled = true;
            throwable = throwable instanceof FacebookException ? (FacebookException)throwable : new FacebookException(throwable);
            this.onCompleteListener.onComplete(null, (FacebookException)throwable);
            this.dismiss();
        }
    }

    protected void sendSuccessToListener(Bundle bundle) {
        if (this.onCompleteListener != null && !this.listenerCalled) {
            this.listenerCalled = true;
            this.onCompleteListener.onComplete(bundle, null);
            this.dismiss();
        }
    }

    protected void setExpectedRedirectUrl(String string2) {
        this.expectedRedirectUrl = string2;
    }

    public void setOnCompleteListener(OnCompleteListener onCompleteListener) {
        this.onCompleteListener = onCompleteListener;
    }

    public static class Builder {
        private AccessToken accessToken;
        private String action;
        private String applicationId;
        private Context context;
        private OnCompleteListener listener;
        private Bundle parameters;
        private int theme = 16973840;

        /*
         * Enabled force condition propagation
         * Lifted jumps to return sites
         */
        public Builder(Context context, String string2, Bundle bundle) {
            this.accessToken = AccessToken.getCurrentAccessToken();
            if (this.accessToken == null) {
                String string3 = Utility.getMetadataApplicationId(context);
                if (string3 == null) throw new FacebookException("Attempted to create a builder without a valid access token or a valid default Application ID.");
                this.applicationId = string3;
            }
            this.finishInit(context, string2, bundle);
        }

        public Builder(Context context, String string2, String string3, Bundle bundle) {
            String string4 = string2;
            if (string2 == null) {
                string4 = Utility.getMetadataApplicationId(context);
            }
            Validate.notNullOrEmpty(string4, "applicationId");
            this.applicationId = string4;
            this.finishInit(context, string3, bundle);
        }

        private void finishInit(Context context, String string2, Bundle bundle) {
            this.context = context;
            this.action = string2;
            if (bundle != null) {
                this.parameters = bundle;
                return;
            }
            this.parameters = new Bundle();
        }

        /*
         * Enabled force condition propagation
         * Lifted jumps to return sites
         */
        public WebDialog build() {
            if (this.accessToken != null) {
                this.parameters.putString("app_id", this.accessToken.getApplicationId());
                this.parameters.putString("access_token", this.accessToken.getToken());
                do {
                    return new WebDialog(this.context, this.action, this.parameters, this.theme, this.listener);
                    break;
                } while (true);
            }
            this.parameters.putString("app_id", this.applicationId);
            return new WebDialog(this.context, this.action, this.parameters, this.theme, this.listener);
        }

        public String getApplicationId() {
            return this.applicationId;
        }

        public Context getContext() {
            return this.context;
        }

        public OnCompleteListener getListener() {
            return this.listener;
        }

        public Bundle getParameters() {
            return this.parameters;
        }

        public int getTheme() {
            return this.theme;
        }

        public Builder setOnCompleteListener(OnCompleteListener onCompleteListener) {
            this.listener = onCompleteListener;
            return this;
        }

        public Builder setTheme(int n2) {
            this.theme = n2;
            return this;
        }
    }

    private class DialogWebViewClient
    extends WebViewClient {
        private DialogWebViewClient() {
        }

        public void onPageFinished(WebView webView, String string2) {
            super.onPageFinished(webView, string2);
            if (!WebDialog.this.isDetached) {
                WebDialog.this.spinner.dismiss();
            }
            WebDialog.this.contentFrameLayout.setBackgroundColor(0);
            WebDialog.this.webView.setVisibility(0);
            WebDialog.this.crossImageView.setVisibility(0);
            WebDialog.this.isPageFinished = true;
        }

        public void onPageStarted(WebView webView, String string2, Bitmap bitmap) {
            Utility.logd("FacebookSDK.WebDialog", "Webview loading URL: " + string2);
            super.onPageStarted(webView, string2, bitmap);
            if (!WebDialog.this.isDetached) {
                WebDialog.this.spinner.show();
            }
        }

        public void onReceivedError(WebView webView, int n2, String string2, String string3) {
            super.onReceivedError(webView, n2, string2, string3);
            WebDialog.this.sendErrorToListener(new FacebookDialogException(string2, n2, string3));
        }

        public void onReceivedSslError(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError) {
            super.onReceivedSslError(webView, sslErrorHandler, sslError);
            sslErrorHandler.cancel();
            WebDialog.this.sendErrorToListener(new FacebookDialogException(null, -11, null));
        }

        /*
         * Enabled aggressive block sorting
         * Enabled unnecessary exception pruning
         * Enabled aggressive exception aggregation
         */
        public boolean shouldOverrideUrlLoading(WebView object, String object2) {
            Utility.logd("FacebookSDK.WebDialog", "Redirect URL: " + (String)object2);
            if (object2.startsWith(WebDialog.this.expectedRedirectUrl)) {
                Object object3;
                Bundle bundle = WebDialog.this.parseResponseUri((String)object2);
                object2 = object = bundle.getString("error");
                if (object == null) {
                    object2 = bundle.getString("error_type");
                }
                object = object3 = bundle.getString("error_msg");
                if (object3 == null) {
                    object = bundle.getString("error_message");
                }
                object3 = object;
                if (object == null) {
                    object3 = bundle.getString("error_description");
                }
                object = bundle.getString("error_code");
                int n2 = -1;
                if (!Utility.isNullOrEmpty((String)object)) {
                    try {
                        n2 = Integer.parseInt((String)object);
                    }
                    catch (NumberFormatException var1_2) {
                        n2 = -1;
                    }
                }
                if (Utility.isNullOrEmpty((String)object2) && Utility.isNullOrEmpty((String)object3) && n2 == -1) {
                    WebDialog.this.sendSuccessToListener(bundle);
                    return true;
                }
                if (object2 != null && (object2.equals("access_denied") || object2.equals("OAuthAccessDeniedException"))) {
                    WebDialog.this.cancel();
                    return true;
                }
                if (n2 == 4201) {
                    WebDialog.this.cancel();
                    return true;
                }
                object = new FacebookRequestError(n2, (String)object2, (String)object3);
                WebDialog.this.sendErrorToListener(new FacebookServiceException((FacebookRequestError)object, (String)object3));
                return true;
            }
            if (object2.startsWith("fbconnect://cancel")) {
                WebDialog.this.cancel();
                return true;
            }
            if (object2.contains("touch")) {
                return false;
            }
            WebDialog.this.getContext().startActivity(new Intent("android.intent.action.VIEW", Uri.parse((String)object2)));
            return true;
        }
    }

    public static interface OnCompleteListener {
        public void onComplete(Bundle var1, FacebookException var2);
    }

}

