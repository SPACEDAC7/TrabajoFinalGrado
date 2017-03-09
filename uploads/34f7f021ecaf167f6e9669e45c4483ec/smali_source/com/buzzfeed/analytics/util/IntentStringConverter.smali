.class public Lcom/buzzfeed/analytics/util/IntentStringConverter;
.super Ljava/lang/Object;
.source "IntentStringConverter.java"


# static fields
.field public static final EMAIL_SIMPLE_NAME:Ljava/lang/String; = "email"

.field public static final FACEBOOK_INTENT_PACKAGE:Ljava/lang/String; = "com.facebook.composer.shareintent.ImplicitShareIntentHandlerDefaultAlias"

.field public static final FACEBOOK_SIMPLE_NAME:Ljava/lang/String; = "facebook"

.field public static final GMAIL_INTENT_PACKAGE:Ljava/lang/String; = "com.google.android.gm.ComposeActivityGmail"

.field public static final HANGOUTS_INTENT_PACKAGE:Ljava/lang/String; = "com.google.android.apps.hangouts.phone.ShareIntentActivity"

.field public static final INBOX_INTENT_PACKAGE:Ljava/lang/String; = "com.google.android.apps.bigtop.activities.ComposeMessageActivity"

.field public static final PINTEREST_INTENT_PACKAGE:Ljava/lang/String; = "com.pinterest.activity.create.PinItActivity"

.field public static final PINTEREST_SIMPLE_NAME:Ljava/lang/String; = "pinterest"

.field public static final SMS_SIMPLE_NAME:Ljava/lang/String; = "sms"

.field public static final TUMBLR_INTENT_PACKAGE:Ljava/lang/String; = "com.tumblr.creation.receiver.ShareActivity"

.field public static final TUMBLR_SIMPLE_NAME:Ljava/lang/String; = "tumblr"

.field public static final TWITTER_INTENT_PACKAGE:Ljava/lang/String; = "com.twitter.android.composer.ComposerActivity"

.field public static final TWITTER_SIMPLE_NAME:Ljava/lang/String; = "twitter"

.field public static final WHATSAPP_INTENT_PACKAGE:Ljava/lang/String; = "com.whatsapp.ContactPicker"

.field public static final WHATSAPP_SIMPLE_NAME:Ljava/lang/String; = "whatsapp"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertIntentToApp(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "intentName"    # Ljava/lang/String;

    .prologue
    .line 55
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 56
    const/4 v0, 0x0

    .line 88
    :goto_7
    return-object v0

    .line 60
    :cond_8
    const/4 v1, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_7e

    :cond_10
    :goto_10
    packed-switch v1, :pswitch_data_a0

    .line 84
    move-object v0, p0

    .local v0, "appName":Ljava/lang/String;
    goto :goto_7

    .line 60
    .end local v0    # "appName":Ljava/lang/String;
    :sswitch_15
    const-string v2, "com.facebook.composer.shareintent.ImplicitShareIntentHandlerDefaultAlias"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    const/4 v1, 0x0

    goto :goto_10

    :sswitch_1f
    const-string v2, "com.twitter.android.composer.ComposerActivity"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    const/4 v1, 0x1

    goto :goto_10

    :sswitch_29
    const-string v2, "com.pinterest.activity.create.PinItActivity"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    const/4 v1, 0x2

    goto :goto_10

    :sswitch_33
    const-string v2, "com.google.android.gm.ComposeActivityGmail"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    const/4 v1, 0x3

    goto :goto_10

    :sswitch_3d
    const-string v2, "com.google.android.apps.bigtop.activities.ComposeMessageActivity"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    const/4 v1, 0x4

    goto :goto_10

    :sswitch_47
    const-string v2, "com.whatsapp.ContactPicker"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    const/4 v1, 0x5

    goto :goto_10

    :sswitch_51
    const-string v2, "com.tumblr.creation.receiver.ShareActivity"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    const/4 v1, 0x6

    goto :goto_10

    :sswitch_5b
    const-string v2, "com.google.android.apps.hangouts.phone.ShareIntentActivity"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    const/4 v1, 0x7

    goto :goto_10

    .line 62
    :pswitch_65
    const-string v0, "facebook"

    .line 63
    .restart local v0    # "appName":Ljava/lang/String;
    goto :goto_7

    .line 65
    .end local v0    # "appName":Ljava/lang/String;
    :pswitch_68
    const-string/jumbo v0, "twitter"

    .line 66
    .restart local v0    # "appName":Ljava/lang/String;
    goto :goto_7

    .line 68
    .end local v0    # "appName":Ljava/lang/String;
    :pswitch_6c
    const-string v0, "pinterest"

    .line 69
    .restart local v0    # "appName":Ljava/lang/String;
    goto :goto_7

    .line 72
    .end local v0    # "appName":Ljava/lang/String;
    :pswitch_6f
    const-string v0, "email"

    .line 73
    .restart local v0    # "appName":Ljava/lang/String;
    goto :goto_7

    .line 75
    .end local v0    # "appName":Ljava/lang/String;
    :pswitch_72
    const-string/jumbo v0, "whatsapp"

    .line 76
    .restart local v0    # "appName":Ljava/lang/String;
    goto :goto_7

    .line 78
    .end local v0    # "appName":Ljava/lang/String;
    :pswitch_76
    const-string/jumbo v0, "tumblr"

    .line 79
    .restart local v0    # "appName":Ljava/lang/String;
    goto :goto_7

    .line 81
    .end local v0    # "appName":Ljava/lang/String;
    :pswitch_7a
    const-string v0, "sms"

    .line 82
    .restart local v0    # "appName":Ljava/lang/String;
    goto :goto_7

    .line 60
    nop

    :sswitch_data_7e
    .sparse-switch
        -0x79194a05 -> :sswitch_29
        -0x59327018 -> :sswitch_5b
        -0x572feae7 -> :sswitch_51
        -0x11abe4a2 -> :sswitch_33
        -0x11352c2a -> :sswitch_1f
        0x7a0145f -> :sswitch_47
        0x8ec23c9 -> :sswitch_15
        0x10fb6241 -> :sswitch_3d
    .end sparse-switch

    :pswitch_data_a0
    .packed-switch 0x0
        :pswitch_65
        :pswitch_68
        :pswitch_6c
        :pswitch_6f
        :pswitch_6f
        :pswitch_72
        :pswitch_76
        :pswitch_7a
    .end packed-switch
.end method
