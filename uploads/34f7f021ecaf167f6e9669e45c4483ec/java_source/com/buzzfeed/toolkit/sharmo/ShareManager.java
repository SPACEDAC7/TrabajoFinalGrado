/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.annotation.TargetApi
 *  android.app.Activity
 *  android.app.PendingIntent
 *  android.content.ActivityNotFoundException
 *  android.content.Context
 *  android.content.Intent
 *  android.content.IntentSender
 *  android.content.res.Resources
 *  android.net.Uri
 *  android.net.Uri$Builder
 *  android.os.Build
 *  android.os.Build$VERSION
 *  android.os.Parcelable
 *  android.provider.Telephony
 *  android.provider.Telephony$Sms
 *  android.text.TextUtils
 *  android.widget.Toast
 *  com.pinterest.pinit.PinIt
 *  com.pinterest.pinit.PinItListener
 *  org.json.JSONObject
 */
package com.buzzfeed.toolkit.sharmo;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.PendingIntent;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.content.IntentSender;
import android.content.res.Resources;
import android.net.Uri;
import android.os.Build;
import android.os.Parcelable;
import android.provider.Telephony;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import android.widget.Toast;
import com.buzzfeed.toolkit.R;
import com.buzzfeed.toolkit.content.PostContent;
import com.buzzfeed.toolkit.sharmo.ShareReceiver;
import com.buzzfeed.toolkit.sharmo.Shareable;
import com.buzzfeed.toolkit.tenderizer.Tenderizer;
import com.buzzfeed.toolkit.util.DeviceUtil;
import com.buzzfeed.toolkit.util.EZUtil;
import com.buzzfeed.toolkit.util.JSONUtil;
import com.buzzfeed.toolkit.util.LogUtil;
import com.buzzfeed.toolkit.util.ShareItemType;
import com.buzzfeed.toolkit.util.UIUtil;
import com.buzzfeed.toolkit.util.VersionUtil;
import com.pinterest.pinit.PinIt;
import com.pinterest.pinit.PinItListener;
import java.lang.ref.WeakReference;
import java.util.Stack;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.json.JSONObject;

public class ShareManager {
    protected static String PINTEREST_CLIENT_ID;
    public static final String PLAY_STORE_REDIRECT_LINK = "http://bzfd.it/bfmobileapps";
    private static final int SHARE_TEXT_PREFIX_INDEX = 0;
    private static final int SHARE_URL_INDEX = 1;
    private static final String TAG;
    private static final String TYPE_EMAIL = "email";
    public static final String TYPE_FACEBOOK = "facebook";
    private static final String TYPE_LINKEDIN = "linkedin";
    private static final String TYPE_PINTEREST = "pinterest";
    private static final String TYPE_SMS = "sms";
    private static final String TYPE_TWITTER = "twitter";
    private static final String TYPE_WHATSAPP = "whatsapp";
    private static PoundEnabledProvider mPoundProvider;
    private static WeakReference<ShareActionListener> sShareActionListenerWeakReference;

    static {
        TAG = LogUtil.makeLogTag(ShareManager.class);
        PINTEREST_CLIENT_ID = null;
    }

    /*
     * Enabled aggressive block sorting
     */
    public static String addPoundHash(Context object, String string2) {
        String string3 = TAG + ".addPoundHash";
        boolean bl = mPoundProvider == null || mPoundProvider.isOptOut();
        object = new Tenderizer((Context)object, bl).createPoundUri(Uri.parse((String)string2)).toString();
        LogUtil.d(string3, "Share url: " + (String)object);
        return object;
    }

    @TargetApi(value=22)
    public static Intent buildPendingShareIntent(Context context, String string2, String string3, @Nullable Uri uri, ShareActionListener shareActionListener) {
        sShareActionListenerWeakReference = new WeakReference<ShareActionListener>(shareActionListener);
        shareActionListener = new Intent("android.intent.action.SEND");
        shareActionListener.setType("text/plain");
        if (uri != null) {
            shareActionListener.setType("image/*");
            shareActionListener.putExtra("android.intent.extra.STREAM", (Parcelable)uri);
            shareActionListener.addFlags(1);
        }
        shareActionListener.putExtra("android.intent.extra.SUBJECT", string2);
        shareActionListener.putExtra("android.intent.extra.TEXT", string3);
        return Intent.createChooser((Intent)shareActionListener, (CharSequence)null, (IntentSender)PendingIntent.getBroadcast((Context)context, (int)0, (Intent)new Intent(context, (Class)ShareReceiver.class), (int)134217728).getIntentSender());
    }

    public static Intent buildShareIntent(Context context, String string2, String string3, @Nullable Uri uri) {
        Intent intent = new Intent();
        intent.setAction("android.intent.action.SEND");
        intent.setType("text/plain");
        if (uri != null) {
            intent.setType("image/*");
            intent.putExtra("android.intent.extra.STREAM", (Parcelable)uri);
            intent.addFlags(1);
        }
        intent.putExtra("android.intent.extra.SUBJECT", string2);
        intent.putExtra("android.intent.extra.TEXT", string3);
        return Intent.createChooser((Intent)intent, (CharSequence)context.getString(R.string.share));
    }

    private static String finalizeShareText(@NonNull Context context, @NonNull String string2, @Nullable String string3, @NonNull String string4) {
        if (string3 != null) {
            return String.format(context.getString(R.string.shared_text_with_extra_text), string2, string3, string4);
        }
        return String.format(context.getString(R.string.shared_text), string2, string4);
    }

    public static boolean isEmailShare(String string2) {
        return string2.contains("mailto:");
    }

    public static void sendShareApp(@Nullable String string2) {
        ShareActionListener shareActionListener;
        if (sShareActionListenerWeakReference != null && (shareActionListener = sShareActionListenerWeakReference.get()) != null) {
            shareActionListener.onShareAction(string2);
        }
    }

    public static void setPoundEnabledProvider(PoundEnabledProvider poundEnabledProvider) {
        mPoundProvider = poundEnabledProvider;
    }

    public static void setupPinterest(String string2) {
        PINTEREST_CLIENT_ID = string2;
    }

    public static void share(Context context, Shareable shareable) {
        ShareManager.share(context, shareable, null);
    }

    public static void share(Context context, Shareable shareable, @Nullable Uri uri) {
        ShareManager.share(context, shareable.getSubject(), shareable.getText(), uri);
    }

    public static void share(Context context, String string2, String string3) {
        ShareManager.share(context, string2, string3, null);
    }

    public static void share(Context context, String string2, String string3, @Nullable Uri uri) {
        context.startActivity(ShareManager.buildShareIntent(context, string2, string3, uri));
    }

    public static void shareContent(Activity activity, @NonNull PostContent postContent, @NonNull String string2, @Nullable ShareItemType shareItemType) {
        if (shareItemType == null) {
            ShareManager.shareWithListener(activity, postContent, shareItemType, null);
            return;
        }
        string2 = ShareManager.addPoundHash((Context)activity, string2);
        String string3 = postContent.getTitle();
        switch (shareItemType) {
            default: {
                ShareManager.shareWithListener(activity, string3, string2, shareItemType, null);
                return;
            }
            case Pinterest: 
        }
        ShareManager.sharePinterest(activity, postContent.getImageStack(UIUtil.getScreenDensityDpi()).pop(), string3, string2);
    }

    private static void shareEmail(Activity activity, String string2, String string3) {
        Resources resources = activity.getResources();
        Intent intent = new Intent("android.intent.action.SEND");
        intent.setType("message/rfc822");
        intent.putExtra("android.intent.extra.SUBJECT", string2);
        intent.putExtra("android.intent.extra.TEXT", string3);
        try {
            activity.startActivity(Intent.createChooser((Intent)intent, (CharSequence)resources.getString(R.string.email)));
            return;
        }
        catch (ActivityNotFoundException var1_2) {
            LogUtil.e(TAG, "No activity found on device to handle type 'message/rfc822", (Throwable)var1_2);
            Toast.makeText((Context)activity, (CharSequence)resources.getString(R.string.error_msg_no_app), (int)0).show();
            return;
        }
    }

    public static void shareEmail(Context context, String string2) {
        string2 = new Intent("android.intent.action.VIEW", Uri.parse((String)string2));
        string2.putExtra("com.android.browser.application_id", context.getPackageName());
        context.startActivity((Intent)string2);
    }

    private static void shareEmailFromJSON(Activity activity, JSONObject arrstring) {
        String string2 = JSONUtil.optString((JSONObject)arrstring, "subject");
        arrstring = JSONUtil.optString((JSONObject)arrstring, "body");
        if (string2 != null && arrstring != null) {
            arrstring = ShareManager.split((String)arrstring);
            arrstring[1] = ShareManager.addPoundHash(activity.getApplicationContext(), arrstring[1]);
            ShareManager.shareEmail(activity, string2, arrstring[0] + arrstring[1]);
            return;
        }
        LogUtil.e(TAG, "Invalid share email subject or body");
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    public static void shareFromWeb(Activity var0, String var1_1, @Nullable JSONObject var2_2) {
        var3_3 = ShareManager.TAG + ".shareFromWeb";
        if (var0 == null) {
            LogUtil.e(var3_3, "Can't perform share. Activity was null.");
            return;
        }
        if (TextUtils.isEmpty((CharSequence)var1_1) || var2_2 == null) ** GOTO lbl57
        LogUtil.d(var3_3, "type=" + var1_1 + ", json=" + (Object)var2_2);
        var4_4 = -1;
        switch (var1_1.hashCode()) {
            case 96619420: {
                if (var1_1.equals("email")) {
                    var4_4 = 0;
                    ** break;
                }
                ** GOTO lbl32
            }
            case 1194692862: {
                if (var1_1.equals("linkedin")) {
                    var4_4 = 1;
                    ** break;
                }
                ** GOTO lbl32
            }
            case -1034342: {
                if (var1_1.equals("pinterest")) {
                    var4_4 = 2;
                    ** break;
                }
                ** GOTO lbl32
            }
            case 114009: {
                if (var1_1.equals("sms")) {
                    var4_4 = 3;
                    ** break;
                }
                ** GOTO lbl32
            }
            case -916346253: {
                if (var1_1.equals("twitter")) {
                    var4_4 = 4;
                }
            }
lbl32: // 12 sources:
            default: {
                ** GOTO lbl37
            }
            case 1934780818: 
        }
        if (var1_1.equals("whatsapp")) {
            var4_4 = 5;
        }
lbl37: // 4 sources:
        switch (var4_4) {
            default: {
                return;
            }
            case 0: {
                ShareManager.shareEmailFromJSON(var0, var2_2);
                return;
            }
            case 1: {
                ShareManager.shareLinkedInFromJSON(var0, var2_2);
                return;
            }
            case 2: {
                ShareManager.sharePinterestFromJSON(var0, var2_2);
            }
            case 3: {
                ShareManager.shareSMSFromJSON(var0, var2_2);
                return;
            }
            case 4: {
                ShareManager.shareTwitterFromJSON(var0, var2_2);
                return;
            }
            case 5: 
        }
        ShareManager.shareWhatsAppFromJSON(var0, var2_2);
        return;
lbl57: // 1 sources:
        LogUtil.e(var3_3, "Invalid share type, or data: type=" + var1_1 + ", json=" + (Object)var2_2);
    }

    private static void shareLinkedIn(Activity activity, String string2, String string3, String string4, String string5, String string6) {
        Uri.Builder builder = new Uri.Builder();
        builder.scheme("https").authority("www.linkedin.com").appendPath("shareArticle").appendQueryParameter("title", string2).appendQueryParameter("summary", string3).appendQueryParameter("url", string4).appendQueryParameter("source", string5).appendQueryParameter("mini", string6);
        string2 = builder.build().toString();
        string3 = new Intent("android.intent.action.VIEW");
        string3.setData(Uri.parse((String)string2));
        activity.startActivity((Intent)string3);
    }

    private static void shareLinkedInFromJSON(Activity activity, JSONObject object) {
        String string2 = JSONUtil.optString((JSONObject)object, "title");
        String string3 = JSONUtil.optString((JSONObject)object, "summary");
        String string4 = JSONUtil.optString((JSONObject)object, "url");
        String string5 = JSONUtil.optString((JSONObject)object, "source");
        object = JSONUtil.optString((JSONObject)object, "mini");
        string4 = ShareManager.addPoundHash(activity.getApplicationContext(), string4);
        if (string2 != null && string3 != null && string4 != null && object != null) {
            ShareManager.shareLinkedIn(activity, string2, string3, string4, string5, (String)object);
            return;
        }
        LogUtil.e(TAG, "Invalid share linkedin model");
    }

    private static void sharePinterest(Activity activity, String string2, String string3, String string4) {
        if (PinIt.meetsRequirements()) {
            PinIt pinIt = new PinIt();
            PinIt.setPartnerId((String)PINTEREST_CLIENT_ID);
            pinIt.setDescription(string3);
            pinIt.setImageUrl(string2);
            pinIt.setUrl(string4);
            pinIt.setListener(new PinItListener(){

                public void onComplete(boolean bl) {
                    LogUtil.d(TAG, "pinn completed = " + bl);
                    super.onComplete(bl);
                }

                public void onException(Exception exception) {
                    LogUtil.e(TAG, "failed to pin buzz module", exception);
                    super.onException(exception);
                }

                public void onStart() {
                    LogUtil.d(TAG, "Starting the Pinterest Share");
                    super.onStart();
                }
            });
            pinIt.doPinIt((Context)activity);
        }
    }

    private static void sharePinterestFromJSON(Activity activity, JSONObject object) {
        if (PINTEREST_CLIENT_ID == null) {
            LogUtil.e(TAG, "Pinterest client id not set");
            return;
        }
        String string2 = JSONUtil.optString((JSONObject)object, "media");
        String string3 = JSONUtil.optString((JSONObject)object, "url");
        object = JSONUtil.optString((JSONObject)object, "description");
        string3 = ShareManager.addPoundHash(activity.getApplicationContext(), string3);
        if (string2 != null && string3 != null && object != null) {
            ShareManager.sharePinterest(activity, string2, (String)object, string3);
            return;
        }
        LogUtil.e(TAG, "Invalid share pinterest media, url or description");
    }

    private static void shareSMS(Activity activity, String string2) {
        if (VersionUtil.hasKitKat()) {
            ShareManager.shareSMSKitKat(activity, string2);
            return;
        }
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.setData(Uri.parse((String)"sms:"));
        intent.putExtra("sms_body", string2);
        activity.startActivity(intent);
    }

    private static void shareSMSFromJSON(Activity activity, JSONObject arrstring) {
        if ((arrstring = JSONUtil.optString((JSONObject)arrstring, "text")) != null) {
            arrstring = ShareManager.split((String)arrstring);
            arrstring[1] = ShareManager.addPoundHash(activity.getApplicationContext(), arrstring[1]);
            ShareManager.shareSMS(activity, arrstring[0] + arrstring[1]);
            return;
        }
        LogUtil.e(TAG, "Invalid share linkedin model");
    }

    @TargetApi(value=19)
    private static void shareSMSKitKat(Activity activity, String string2) {
        String string3 = Telephony.Sms.getDefaultSmsPackage((Context)activity);
        Intent intent = new Intent("android.intent.action.SEND");
        intent.setType("text/plain");
        intent.putExtra("android.intent.extra.TEXT", string2);
        if (string3 != null) {
            intent.setPackage(string3);
        }
        activity.startActivity(intent);
    }

    private static void shareTwitter(Activity activity, String string2, String string3) {
        string2 = "http://twitter.com/intent/tweet?url=" + EZUtil.encodeURL(string3) + "&text=" + EZUtil.encodeURL(string2);
        string3 = new Intent("android.intent.action.VIEW");
        string3.setData(Uri.parse((String)string2));
        activity.startActivity(Intent.createChooser((Intent)string3, (CharSequence)activity.getResources().getString(R.string.tweet)));
    }

    private static void shareTwitterFromJSON(Activity activity, JSONObject object) {
        String string2 = JSONUtil.optString((JSONObject)object, "text");
        object = JSONUtil.optString((JSONObject)object, "url");
        if (string2 != null && object != null) {
            ShareManager.shareTwitter(activity, string2, ShareManager.addPoundHash(activity.getApplicationContext(), (String)object));
            return;
        }
        LogUtil.e(TAG, "Invalid share twitter text or url");
    }

    private static void shareWhatsApp(Activity activity, String string2) {
        if (DeviceUtil.isAppInstalled((Context)activity, "com.whatsapp")) {
            Uri.Builder builder = new Uri.Builder();
            builder.scheme("whatsapp").authority("send").appendQueryParameter("text", string2);
            string2 = builder.build().toString();
            builder = new Intent("android.intent.action.VIEW");
            builder.setData(Uri.parse((String)string2));
            activity.startActivity((Intent)builder);
            return;
        }
        activity.startActivity(new Intent("android.intent.action.VIEW", Uri.parse((String)"market://details?id=com.whatsapp")));
        LogUtil.d(TAG, "Whatsapp not installed");
    }

    private static void shareWhatsAppFromJSON(Activity activity, JSONObject object) {
        String string2 = JSONUtil.optString((JSONObject)object, "text");
        if (string2 != null) {
            object = JSONUtil.optString((JSONObject)object, "url");
            String string3 = ShareManager.addPoundHash(activity.getApplicationContext(), (String)object);
            object = string2;
            if (string3 != null) {
                object = string2 + " " + string3;
            }
            ShareManager.shareWhatsApp(activity, (String)object);
            return;
        }
        LogUtil.e(TAG, "Invalid share whatsapp model");
    }

    public static void shareWithListener(Activity activity, Shareable shareable, ShareItemType shareItemType, ShareActionListener shareActionListener) {
        ShareManager.shareWithListener(activity, shareable.getSubject(), shareable.getShareUrl(), shareItemType, shareActionListener);
    }

    public static void shareWithListener(Activity activity, String string2, String string3, ShareActionListener shareActionListener) {
        ShareManager.shareWithListener(activity, string2, null, string3, null, null, shareActionListener);
    }

    public static void shareWithListener(Activity activity, String string2, @Nullable String string3, @Nullable ShareItemType shareItemType, ShareActionListener shareActionListener) {
        ShareManager.shareWithListener(activity, string2, null, string3, null, shareItemType, shareActionListener);
    }

    public static void shareWithListener(Activity activity, String string2, String string3, String string4, @Nullable Uri uri, @Nullable ShareItemType shareItemType, ShareActionListener shareActionListener) {
        String string5 = string4;
        if (EZUtil.isBuzzFeedUrl(string4)) {
            string5 = ShareManager.addPoundHash((Context)activity, string4);
        }
        string3 = ShareManager.finalizeShareText((Context)activity, string2, string3, string5);
        if (shareItemType == null) {
            ShareManager.shareWithoutShortenedUrl((Context)activity, string2, string3, uri, shareActionListener);
            return;
        }
        switch (.$SwitchMap$com$buzzfeed$toolkit$util$ShareItemType[shareItemType.ordinal()]) {
            default: {
                ShareManager.shareWithoutShortenedUrl((Context)activity, string2, string5, uri, shareActionListener);
                return;
            }
            case 2: {
                ShareManager.shareEmail(activity, string2, string3);
                return;
            }
            case 3: {
                ShareManager.shareTwitter(activity, string2, string3);
                return;
            }
            case 4: {
                ShareManager.shareSMS(activity, string3);
                return;
            }
            case 5: 
        }
        ShareManager.shareWhatsApp(activity, string3);
    }

    public static void shareWithListenerWithComment(Activity activity, String string2, String string3, String string4, ShareActionListener shareActionListener) {
        ShareManager.shareWithListener(activity, string2, string3, string4, null, null, shareActionListener);
    }

    private static void shareWithoutShortenedUrl(Context context, String string2, String string3, @Nullable Uri uri, ShareActionListener shareActionListener) {
        if (Build.VERSION.SDK_INT < 22) {
            ShareManager.share(context, string2, string3, null);
            shareActionListener.onShareAction(null);
            return;
        }
        context.startActivity(ShareManager.buildPendingShareIntent(context, string2, string3, uri, shareActionListener));
    }

    /*
     * Enabled aggressive block sorting
     */
    private static String[] split(String string2) {
        String[] arrstring = new String[2];
        Matcher matcher = Pattern.compile("https?://").matcher(string2);
        int n2 = 0;
        while (matcher.find()) {
            n2 = matcher.start();
        }
        if (n2 > 0) {
            arrstring[0] = string2.substring(0, n2);
            arrstring[1] = string2.substring(n2);
        } else {
            arrstring[0] = "";
            arrstring[1] = string2;
        }
        LogUtil.d(TAG, "Share text prefix: " + arrstring[0] + "Share text url: " + arrstring[1]);
        return arrstring;
    }

    public static interface PoundEnabledProvider {
        public boolean isOptOut();
    }

    public static interface ShareActionListener {
        public void onShareAction(@Nullable String var1);
    }

}

