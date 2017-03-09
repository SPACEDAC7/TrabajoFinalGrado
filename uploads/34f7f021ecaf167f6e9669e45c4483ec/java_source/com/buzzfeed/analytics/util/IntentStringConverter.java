/*
 * Decompiled with CFR 0_115.
 * 
 * Could not load the following classes:
 *  android.text.TextUtils
 */
package com.buzzfeed.analytics.util;

import android.text.TextUtils;

public class IntentStringConverter {
    public static final String EMAIL_SIMPLE_NAME = "email";
    public static final String FACEBOOK_INTENT_PACKAGE = "com.facebook.composer.shareintent.ImplicitShareIntentHandlerDefaultAlias";
    public static final String FACEBOOK_SIMPLE_NAME = "facebook";
    public static final String GMAIL_INTENT_PACKAGE = "com.google.android.gm.ComposeActivityGmail";
    public static final String HANGOUTS_INTENT_PACKAGE = "com.google.android.apps.hangouts.phone.ShareIntentActivity";
    public static final String INBOX_INTENT_PACKAGE = "com.google.android.apps.bigtop.activities.ComposeMessageActivity";
    public static final String PINTEREST_INTENT_PACKAGE = "com.pinterest.activity.create.PinItActivity";
    public static final String PINTEREST_SIMPLE_NAME = "pinterest";
    public static final String SMS_SIMPLE_NAME = "sms";
    public static final String TUMBLR_INTENT_PACKAGE = "com.tumblr.creation.receiver.ShareActivity";
    public static final String TUMBLR_SIMPLE_NAME = "tumblr";
    public static final String TWITTER_INTENT_PACKAGE = "com.twitter.android.composer.ComposerActivity";
    public static final String TWITTER_SIMPLE_NAME = "twitter";
    public static final String WHATSAPP_INTENT_PACKAGE = "com.whatsapp.ContactPicker";
    public static final String WHATSAPP_SIMPLE_NAME = "whatsapp";

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    public static String convertIntentToApp(String var0) {
        if (TextUtils.isEmpty((CharSequence)var0)) {
            return null;
        }
        var1_1 = -1;
        switch (var0.hashCode()) {
            case 149693385: {
                if (var0.equals("com.facebook.composer.shareintent.ImplicitShareIntentHandlerDefaultAlias")) {
                    var1_1 = 0;
                    ** break;
                }
                ** GOTO lbl38
            }
            case -288697386: {
                if (var0.equals("com.twitter.android.composer.ComposerActivity")) {
                    var1_1 = 1;
                    ** break;
                }
                ** GOTO lbl38
            }
            case -2031700485: {
                if (var0.equals("com.pinterest.activity.create.PinItActivity")) {
                    var1_1 = 2;
                    ** break;
                }
                ** GOTO lbl38
            }
            case -296477858: {
                if (var0.equals("com.google.android.gm.ComposeActivityGmail")) {
                    var1_1 = 3;
                    ** break;
                }
                ** GOTO lbl38
            }
            case 284910145: {
                if (var0.equals("com.google.android.apps.bigtop.activities.ComposeMessageActivity")) {
                    var1_1 = 4;
                    ** break;
                }
                ** GOTO lbl38
            }
            case 127931487: {
                if (var0.equals("com.whatsapp.ContactPicker")) {
                    var1_1 = 5;
                    ** break;
                }
                ** GOTO lbl38
            }
            case -1462758119: {
                if (var0.equals("com.tumblr.creation.receiver.ShareActivity")) {
                    var1_1 = 6;
                }
            }
lbl38: // 16 sources:
            default: {
                ** GOTO lbl43
            }
            case -1496477720: 
        }
        if (var0.equals("com.google.android.apps.hangouts.phone.ShareIntentActivity")) {
            var1_1 = 7;
        }
lbl43: // 4 sources:
        switch (var1_1) {
            default: {
                return var0;
            }
            case 0: {
                return "facebook";
            }
            case 1: {
                return "twitter";
            }
            case 2: {
                return "pinterest";
            }
            case 3: 
            case 4: {
                return "email";
            }
            case 5: {
                return "whatsapp";
            }
            case 6: {
                return "tumblr";
            }
            case 7: 
        }
        return "sms";
    }
}

