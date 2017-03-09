.class public Lcom/buzzfeed/android/ui/debugsettings/UATestPushPreference;
.super Landroid/preference/Preference;
.source "UATestPushPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/buzzfeed/android/ui/debugsettings/UATestPushPreference$TestPush;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "UATestPushPreference"


# instance fields
.field private mAlertDialog:Landroid/support/v7/app/AlertDialog;

.field private mUAApiHelper:Lcom/buzzfeed/toolkit/networking/urbanairship/UAApiHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 73
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 74
    invoke-direct {p0}, Lcom/buzzfeed/android/ui/debugsettings/UATestPushPreference;->initialize()V

    .line 75
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 68
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 69
    invoke-direct {p0}, Lcom/buzzfeed/android/ui/debugsettings/UATestPushPreference;->initialize()V

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 63
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 64
    invoke-direct {p0}, Lcom/buzzfeed/android/ui/debugsettings/UATestPushPreference;->initialize()V

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I
    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0x15
    .end annotation

    .prologue
    .line 58
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 59
    invoke-direct {p0}, Lcom/buzzfeed/android/ui/debugsettings/UATestPushPreference;->initialize()V

    .line 60
    return-void
.end method

.method static synthetic access$000(Lcom/buzzfeed/android/ui/debugsettings/UATestPushPreference;)Landroid/support/v7/app/AlertDialog;
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/android/ui/debugsettings/UATestPushPreference;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/buzzfeed/android/ui/debugsettings/UATestPushPreference;->mAlertDialog:Landroid/support/v7/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$002(Lcom/buzzfeed/android/ui/debugsettings/UATestPushPreference;Landroid/support/v7/app/AlertDialog;)Landroid/support/v7/app/AlertDialog;
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/android/ui/debugsettings/UATestPushPreference;
    .param p1, "x1"    # Landroid/support/v7/app/AlertDialog;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/buzzfeed/android/ui/debugsettings/UATestPushPreference;->mAlertDialog:Landroid/support/v7/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$100(Lcom/buzzfeed/android/ui/debugsettings/UATestPushPreference;Lcom/buzzfeed/android/ui/debugsettings/UATestPushPreference$TestPush;)V
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/android/ui/debugsettings/UATestPushPreference;
    .param p1, "x1"    # Lcom/buzzfeed/android/ui/debugsettings/UATestPushPreference$TestPush;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/buzzfeed/android/ui/debugsettings/UATestPushPreference;->onTestPushSelected(Lcom/buzzfeed/android/ui/debugsettings/UATestPushPreference$TestPush;)V

    return-void
.end method

.method private createPushNotificationBody(Lcom/buzzfeed/android/ui/debugsettings/UATestPushPreference$TestPush;Ljava/lang/String;)Lcom/buzzfeed/toolkit/networking/urbanairship/UAPostNotificationBody;
    .registers 6
    .param p1, "testPush"    # Lcom/buzzfeed/android/ui/debugsettings/UATestPushPreference$TestPush;
    .param p2, "channelId"    # Ljava/lang/String;

    .prologue
    .line 154
    sget-object v0, Lcom/buzzfeed/android/ui/debugsettings/UATestPushPreference$6;->$SwitchMap$com$buzzfeed$android$ui$debugsettings$UATestPushPreference$TestPush:[I

    invoke-virtual {p1}, Lcom/buzzfeed/android/ui/debugsettings/UATestPushPreference$TestPush;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_7c

    .line 184
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No case for type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 157
    :pswitch_24
    new-instance v0, Lcom/buzzfeed/toolkit/networking/urbanairship/UAPostNotificationBody$Builder;

    invoke-direct {v0, p2}, Lcom/buzzfeed/toolkit/networking/urbanairship/UAPostNotificationBody$Builder;-><init>(Ljava/lang/String;)V

    const-string v1, "Test Native Bpage: Magical Ice Cream"

    .line 158
    invoke-virtual {v0, v1}, Lcom/buzzfeed/toolkit/networking/urbanairship/UAPostNotificationBody$Builder;->setAlert(Ljava/lang/String;)Lcom/buzzfeed/toolkit/networking/urbanairship/UAPostNotificationBody$Builder;

    move-result-object v0

    const-string v1, "deep_link"

    const-string v2, "buzzfeed://buzz/michelleno/these-magical-ice-cream-flowers-are-all-over-instagram"

    .line 159
    invoke-virtual {v0, v1, v2}, Lcom/buzzfeed/toolkit/networking/urbanairship/UAPostNotificationBody$Builder;->setOpenAction(Ljava/lang/String;Ljava/lang/String;)Lcom/buzzfeed/toolkit/networking/urbanairship/UAPostNotificationBody$Builder;

    move-result-object v0

    .line 161
    invoke-virtual {v0}, Lcom/buzzfeed/toolkit/networking/urbanairship/UAPostNotificationBody$Builder;->build()Lcom/buzzfeed/toolkit/networking/urbanairship/UAPostNotificationBody;

    move-result-object v0

    .line 181
    :goto_3b
    return-object v0

    .line 164
    :pswitch_3c
    new-instance v0, Lcom/buzzfeed/toolkit/networking/urbanairship/UAPostNotificationBody$Builder;

    invoke-direct {v0, p2}, Lcom/buzzfeed/toolkit/networking/urbanairship/UAPostNotificationBody$Builder;-><init>(Ljava/lang/String;)V

    const-string v1, "Test Fallback Bpage: Jello Shots"

    .line 165
    invoke-virtual {v0, v1}, Lcom/buzzfeed/toolkit/networking/urbanairship/UAPostNotificationBody$Builder;->setAlert(Ljava/lang/String;)Lcom/buzzfeed/toolkit/networking/urbanairship/UAPostNotificationBody$Builder;

    move-result-object v0

    const-string v1, "deep_link"

    const-string v2, "buzzfeed://buzz/christinebyrne/xxl-watermelon-jell-o-shots"

    .line 166
    invoke-virtual {v0, v1, v2}, Lcom/buzzfeed/toolkit/networking/urbanairship/UAPostNotificationBody$Builder;->setOpenAction(Ljava/lang/String;Ljava/lang/String;)Lcom/buzzfeed/toolkit/networking/urbanairship/UAPostNotificationBody$Builder;

    move-result-object v0

    .line 168
    invoke-virtual {v0}, Lcom/buzzfeed/toolkit/networking/urbanairship/UAPostNotificationBody$Builder;->build()Lcom/buzzfeed/toolkit/networking/urbanairship/UAPostNotificationBody;

    move-result-object v0

    goto :goto_3b

    .line 170
    :pswitch_54
    new-instance v0, Lcom/buzzfeed/toolkit/networking/urbanairship/UAPostNotificationBody$Builder;

    invoke-direct {v0, p2}, Lcom/buzzfeed/toolkit/networking/urbanairship/UAPostNotificationBody$Builder;-><init>(Ljava/lang/String;)V

    const-string v1, "Test Show: Tasty"

    .line 171
    invoke-virtual {v0, v1}, Lcom/buzzfeed/toolkit/networking/urbanairship/UAPostNotificationBody$Builder;->setAlert(Ljava/lang/String;)Lcom/buzzfeed/toolkit/networking/urbanairship/UAPostNotificationBody$Builder;

    move-result-object v0

    const-string/jumbo v1, "tasty"

    .line 172
    invoke-virtual {v0, v1}, Lcom/buzzfeed/toolkit/networking/urbanairship/UAPostNotificationBody$Builder;->setTag(Ljava/lang/String;)Lcom/buzzfeed/toolkit/networking/urbanairship/UAPostNotificationBody$Builder;

    move-result-object v0

    const-string v1, "deep_link"

    const-string v2, "buzzfeed://show/tasty"

    .line 173
    invoke-virtual {v0, v1, v2}, Lcom/buzzfeed/toolkit/networking/urbanairship/UAPostNotificationBody$Builder;->setOpenAction(Ljava/lang/String;Ljava/lang/String;)Lcom/buzzfeed/toolkit/networking/urbanairship/UAPostNotificationBody$Builder;

    move-result-object v0

    new-instance v1, Lcom/buzzfeed/android/ui/debugsettings/UATestPushPreference$5;

    invoke-direct {v1, p0}, Lcom/buzzfeed/android/ui/debugsettings/UATestPushPreference$5;-><init>(Lcom/buzzfeed/android/ui/debugsettings/UATestPushPreference;)V

    .line 175
    invoke-virtual {v0, v1}, Lcom/buzzfeed/toolkit/networking/urbanairship/UAPostNotificationBody$Builder;->setExtras(Ljava/util/HashMap;)Lcom/buzzfeed/toolkit/networking/urbanairship/UAPostNotificationBody$Builder;

    move-result-object v0

    .line 181
    invoke-virtual {v0}, Lcom/buzzfeed/toolkit/networking/urbanairship/UAPostNotificationBody$Builder;->build()Lcom/buzzfeed/toolkit/networking/urbanairship/UAPostNotificationBody;

    move-result-object v0

    goto :goto_3b

    .line 154
    :pswitch_data_7c
    .packed-switch 0x1
        :pswitch_24
        :pswitch_3c
        :pswitch_54
    .end packed-switch
.end method

.method private initialize()V
    .registers 5

    .prologue
    .line 78
    const-string v1, "UA Request Push Notification"

    invoke-virtual {p0, v1}, Lcom/buzzfeed/android/ui/debugsettings/UATestPushPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 79
    const-string v1, "Request a push notification to this device (UA Dev Server only)."

    invoke-virtual {p0, v1}, Lcom/buzzfeed/android/ui/debugsettings/UATestPushPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 80
    invoke-static {}, Lcom/buzzfeed/toolkit/util/BFVault;->getInstance()Lcom/buzzfeed/toolkit/util/BFVault;

    move-result-object v0

    .line 81
    .local v0, "vault":Lcom/buzzfeed/toolkit/util/BFVault;
    new-instance v1, Lcom/buzzfeed/toolkit/networking/urbanairship/UAApiHelper;

    invoke-virtual {v0}, Lcom/buzzfeed/toolkit/util/BFVault;->getUrbanAirshipAppAlphaKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/buzzfeed/toolkit/util/BFVault;->getUrbanAirshipMasterAlphaSecret()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/buzzfeed/toolkit/networking/urbanairship/UAApiHelper;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/buzzfeed/android/ui/debugsettings/UATestPushPreference;->mUAApiHelper:Lcom/buzzfeed/toolkit/networking/urbanairship/UAApiHelper;

    .line 82
    return-void
.end method

.method private onTestPushSelected(Lcom/buzzfeed/android/ui/debugsettings/UATestPushPreference$TestPush;)V
    .registers 7
    .param p1, "testPush"    # Lcom/buzzfeed/android/ui/debugsettings/UATestPushPreference$TestPush;

    .prologue
    .line 136
    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v2

    invoke-virtual {v2}, Lcom/urbanairship/UAirship;->getPushManager()Lcom/urbanairship/push/PushManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/urbanairship/push/PushManager;->getChannelId()Ljava/lang/String;

    move-result-object v1

    .line 137
    .local v1, "channelId":Ljava/lang/String;
    invoke-direct {p0, p1, v1}, Lcom/buzzfeed/android/ui/debugsettings/UATestPushPreference;->createPushNotificationBody(Lcom/buzzfeed/android/ui/debugsettings/UATestPushPreference$TestPush;Ljava/lang/String;)Lcom/buzzfeed/toolkit/networking/urbanairship/UAPostNotificationBody;

    move-result-object v0

    .line 138
    .local v0, "body":Lcom/buzzfeed/toolkit/networking/urbanairship/UAPostNotificationBody;
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/buzzfeed/android/ui/debugsettings/UATestPushPreference;->setEnabled(Z)V

    .line 139
    const-string v2, "UATestPushPreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Requesting Push Notification for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/buzzfeed/toolkit/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    iget-object v2, p0, Lcom/buzzfeed/android/ui/debugsettings/UATestPushPreference;->mUAApiHelper:Lcom/buzzfeed/toolkit/networking/urbanairship/UAApiHelper;

    new-instance v3, Lcom/buzzfeed/android/ui/debugsettings/UATestPushPreference$4;

    invoke-direct {v3, p0}, Lcom/buzzfeed/android/ui/debugsettings/UATestPushPreference$4;-><init>(Lcom/buzzfeed/android/ui/debugsettings/UATestPushPreference;)V

    invoke-virtual {v2, v0, v3}, Lcom/buzzfeed/toolkit/networking/urbanairship/UAApiHelper;->postNotification(Lcom/buzzfeed/toolkit/networking/urbanairship/UAPostNotificationBody;Lretrofit2/Callback;)V

    .line 151
    return-void
.end method

.method private showDialog()V
    .registers 6

    .prologue
    .line 101
    new-instance v0, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/buzzfeed/android/ui/debugsettings/UATestPushPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 102
    .local v0, "builder":Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;
    invoke-virtual {p0}, Lcom/buzzfeed/android/ui/debugsettings/UATestPushPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;

    .line 103
    invoke-static {}, Lcom/buzzfeed/android/ui/debugsettings/UATestPushPreference$TestPush;->values()[Lcom/buzzfeed/android/ui/debugsettings/UATestPushPreference$TestPush;

    move-result-object v1

    .line 104
    .local v1, "values":[Lcom/buzzfeed/android/ui/debugsettings/UATestPushPreference$TestPush;
    invoke-static {}, Lcom/buzzfeed/android/ui/debugsettings/UATestPushPreference$TestPush;->stringValues()[Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/buzzfeed/android/ui/debugsettings/UATestPushPreference$3;

    invoke-direct {v3, p0, v1}, Lcom/buzzfeed/android/ui/debugsettings/UATestPushPreference$3;-><init>(Lcom/buzzfeed/android/ui/debugsettings/UATestPushPreference;[Lcom/buzzfeed/android/ui/debugsettings/UATestPushPreference$TestPush;)V

    invoke-virtual {v0, v2, v3}, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;->setStackedListItems([Ljava/lang/String;Landroid/widget/AdapterView$OnItemClickListener;)Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;

    move-result-object v2

    .line 114
    invoke-virtual {p0}, Lcom/buzzfeed/android/ui/debugsettings/UATestPushPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x1040000

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/buzzfeed/android/ui/debugsettings/UATestPushPreference$2;

    invoke-direct {v4, p0}, Lcom/buzzfeed/android/ui/debugsettings/UATestPushPreference$2;-><init>(Lcom/buzzfeed/android/ui/debugsettings/UATestPushPreference;)V

    invoke-virtual {v2, v3, v4}, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/buzzfeed/android/ui/debugsettings/UATestPushPreference$1;

    invoke-direct {v3, p0}, Lcom/buzzfeed/android/ui/debugsettings/UATestPushPreference$1;-><init>(Lcom/buzzfeed/android/ui/debugsettings/UATestPushPreference;)V

    .line 122
    invoke-virtual {v2, v3}, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 130
    invoke-virtual {v0}, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/buzzfeed/android/ui/debugsettings/UATestPushPreference;->mAlertDialog:Landroid/support/v7/app/AlertDialog;

    .line 131
    iget-object v2, p0, Lcom/buzzfeed/android/ui/debugsettings/UATestPushPreference;->mAlertDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v2}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 132
    return-void
.end method


# virtual methods
.method protected onClick()V
    .registers 4

    .prologue
    .line 86
    invoke-super {p0}, Landroid/preference/Preference;->onClick()V

    .line 87
    const-string v0, "UATestPushPreference.onClick"

    .line 88
    .local v0, "TAG":Ljava/lang/String;
    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v2

    invoke-virtual {v2}, Lcom/urbanairship/UAirship;->getPushManager()Lcom/urbanairship/push/PushManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/urbanairship/push/PushManager;->getChannelId()Ljava/lang/String;

    move-result-object v1

    .line 89
    .local v1, "channelId":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2d

    .line 90
    invoke-static {}, Lcom/urbanairship/UAirship;->shared()Lcom/urbanairship/UAirship;

    move-result-object v2

    invoke-virtual {v2}, Lcom/urbanairship/UAirship;->getAirshipConfigOptions()Lcom/urbanairship/AirshipConfigOptions;

    move-result-object v2

    iget-boolean v2, v2, Lcom/urbanairship/AirshipConfigOptions;->inProduction:Z

    if-nez v2, :cond_27

    .line 91
    invoke-direct {p0}, Lcom/buzzfeed/android/ui/debugsettings/UATestPushPreference;->showDialog()V

    .line 98
    :goto_26
    return-void

    .line 93
    :cond_27
    const-string v2, "Error requesting push notification, must be on UA development server"

    invoke-static {v0, v2}, Lcom/buzzfeed/toolkit/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_26

    .line 96
    :cond_2d
    const-string v2, "Error requesting push notification, invalid channel id"

    invoke-static {v0, v2}, Lcom/buzzfeed/toolkit/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_26
.end method
