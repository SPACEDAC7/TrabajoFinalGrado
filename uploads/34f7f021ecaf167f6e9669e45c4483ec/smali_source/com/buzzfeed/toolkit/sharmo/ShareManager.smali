.class public Lcom/buzzfeed/toolkit/sharmo/ShareManager;
.super Ljava/lang/Object;
.source "ShareManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/buzzfeed/toolkit/sharmo/ShareManager$PoundEnabledProvider;,
        Lcom/buzzfeed/toolkit/sharmo/ShareManager$ShareActionListener;
    }
.end annotation


# static fields
.field protected static PINTEREST_CLIENT_ID:Ljava/lang/String; = null

.field public static final PLAY_STORE_REDIRECT_LINK:Ljava/lang/String; = "http://bzfd.it/bfmobileapps"

.field private static final SHARE_TEXT_PREFIX_INDEX:I = 0x0

.field private static final SHARE_URL_INDEX:I = 0x1

.field private static final TAG:Ljava/lang/String;

.field private static final TYPE_EMAIL:Ljava/lang/String; = "email"

.field public static final TYPE_FACEBOOK:Ljava/lang/String; = "facebook"

.field private static final TYPE_LINKEDIN:Ljava/lang/String; = "linkedin"

.field private static final TYPE_PINTEREST:Ljava/lang/String; = "pinterest"

.field private static final TYPE_SMS:Ljava/lang/String; = "sms"

.field private static final TYPE_TWITTER:Ljava/lang/String; = "twitter"

.field private static final TYPE_WHATSAPP:Ljava/lang/String; = "whatsapp"

.field private static mPoundProvider:Lcom/buzzfeed/toolkit/sharmo/ShareManager$PoundEnabledProvider;

.field private static sShareActionListenerWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/buzzfeed/toolkit/sharmo/ShareManager$ShareActionListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 47
    const-class v0, Lcom/buzzfeed/toolkit/sharmo/ShareManager;

    invoke-static {v0}, Lcom/buzzfeed/toolkit/util/LogUtil;->makeLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/buzzfeed/toolkit/sharmo/ShareManager;->TAG:Ljava/lang/String;

    .line 63
    const/4 v0, 0x0

    sput-object v0, Lcom/buzzfeed/toolkit/sharmo/ShareManager;->PINTEREST_CLIENT_ID:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .prologue
    .line 46
    sget-object v0, Lcom/buzzfeed/toolkit/sharmo/ShareManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static addPoundHash(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 563
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/buzzfeed/toolkit/sharmo/ShareManager;->TAG:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".addPoundHash"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 564
    .local v0, "TAG":Ljava/lang/String;
    new-instance v2, Lcom/buzzfeed/toolkit/tenderizer/Tenderizer;

    sget-object v3, Lcom/buzzfeed/toolkit/sharmo/ShareManager;->mPoundProvider:Lcom/buzzfeed/toolkit/sharmo/ShareManager$PoundEnabledProvider;

    if-eqz v3, :cond_23

    sget-object v3, Lcom/buzzfeed/toolkit/sharmo/ShareManager;->mPoundProvider:Lcom/buzzfeed/toolkit/sharmo/ShareManager$PoundEnabledProvider;

    invoke-interface {v3}, Lcom/buzzfeed/toolkit/sharmo/ShareManager$PoundEnabledProvider;->isOptOut()Z

    move-result v3

    if-eqz v3, :cond_4a

    :cond_23
    const/4 v3, 0x1

    :goto_24
    invoke-direct {v2, p0, v3}, Lcom/buzzfeed/toolkit/tenderizer/Tenderizer;-><init>(Landroid/content/Context;Z)V

    .line 565
    .local v2, "tenderizer":Lcom/buzzfeed/toolkit/tenderizer/Tenderizer;
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/buzzfeed/toolkit/tenderizer/Tenderizer;->createPoundUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .line 566
    .local v1, "poundUrl":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Share url: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/buzzfeed/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 567
    return-object v1

    .line 564
    .end local v1    # "poundUrl":Ljava/lang/String;
    .end local v2    # "tenderizer":Lcom/buzzfeed/toolkit/tenderizer/Tenderizer;
    :cond_4a
    const/4 v3, 0x0

    goto :goto_24
.end method

.method public static buildPendingShareIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Lcom/buzzfeed/toolkit/sharmo/ShareManager$ShareActionListener;)Landroid/content/Intent;
    .registers 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subject"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "attachment"    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "shareActionListener"    # Lcom/buzzfeed/toolkit/sharmo/ShareManager$ShareActionListener;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x16
    .end annotation

    .prologue
    .line 292
    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, p4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v3, Lcom/buzzfeed/toolkit/sharmo/ShareManager;->sShareActionListenerWeakReference:Ljava/lang/ref/WeakReference;

    .line 293
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.SEND"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 294
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "text/plain"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 295
    if-eqz p3, :cond_24

    .line 296
    const-string v3, "image/*"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 297
    const-string v3, "android.intent.extra.STREAM"

    invoke-virtual {v0, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 298
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 300
    :cond_24
    const-string v3, "android.intent.extra.SUBJECT"

    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 301
    const-string v3, "android.intent.extra.TEXT"

    invoke-virtual {v0, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 302
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/buzzfeed/toolkit/sharmo/ShareReceiver;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 303
    .local v2, "receiver":Landroid/content/Intent;
    const/4 v3, 0x0

    const/high16 v4, 0x8000000

    invoke-static {p0, v3, v2, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 304
    .local v1, "pendingIntent":Landroid/app/PendingIntent;
    const/4 v3, 0x0

    invoke-virtual {v1}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v4

    invoke-static {v0, v3, v4}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;Landroid/content/IntentSender;)Landroid/content/Intent;

    move-result-object v3

    return-object v3
.end method

.method public static buildShareIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Landroid/content/Intent;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subject"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "attachment"    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 272
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 273
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.intent.action.SEND"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 274
    const-string/jumbo v1, "text/plain"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 275
    if-eqz p3, :cond_20

    .line 276
    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 277
    const-string v1, "android.intent.extra.STREAM"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 278
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 280
    :cond_20
    const-string v1, "android.intent.extra.SUBJECT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 281
    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 282
    sget v1, Lcom/buzzfeed/toolkit/R$string;->share:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    return-object v1
.end method

.method private static finalizeShareText(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "name"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "extraText"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "shortUrl"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 610
    if-eqz p2, :cond_19

    .line 611
    sget v0, Lcom/buzzfeed/toolkit/R$string;->shared_text_with_extra_text:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    aput-object p2, v1, v3

    aput-object p3, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 613
    :goto_18
    return-object v0

    :cond_19
    sget v0, Lcom/buzzfeed/toolkit/R$string;->shared_text:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    aput-object p1, v1, v2

    aput-object p3, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_18
.end method

.method public static isEmailShare(Ljava/lang/String;)Z
    .registers 2
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 432
    const-string v0, "mailto:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static sendShareApp(Ljava/lang/String;)V
    .registers 3
    .param p0, "shareApp"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 253
    sget-object v1, Lcom/buzzfeed/toolkit/sharmo/ShareManager;->sShareActionListenerWeakReference:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_11

    .line 254
    sget-object v1, Lcom/buzzfeed/toolkit/sharmo/ShareManager;->sShareActionListenerWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/buzzfeed/toolkit/sharmo/ShareManager$ShareActionListener;

    .line 255
    .local v0, "shareActionListener":Lcom/buzzfeed/toolkit/sharmo/ShareManager$ShareActionListener;
    if-eqz v0, :cond_11

    .line 256
    invoke-interface {v0, p0}, Lcom/buzzfeed/toolkit/sharmo/ShareManager$ShareActionListener;->onShareAction(Ljava/lang/String;)V

    .line 259
    .end local v0    # "shareActionListener":Lcom/buzzfeed/toolkit/sharmo/ShareManager$ShareActionListener;
    :cond_11
    return-void
.end method

.method public static setPoundEnabledProvider(Lcom/buzzfeed/toolkit/sharmo/ShareManager$PoundEnabledProvider;)V
    .registers 1
    .param p0, "provider"    # Lcom/buzzfeed/toolkit/sharmo/ShareManager$PoundEnabledProvider;

    .prologue
    .line 79
    sput-object p0, Lcom/buzzfeed/toolkit/sharmo/ShareManager;->mPoundProvider:Lcom/buzzfeed/toolkit/sharmo/ShareManager$PoundEnabledProvider;

    .line 80
    return-void
.end method

.method public static setupPinterest(Ljava/lang/String;)V
    .registers 1
    .param p0, "clientID"    # Ljava/lang/String;

    .prologue
    .line 72
    sput-object p0, Lcom/buzzfeed/toolkit/sharmo/ShareManager;->PINTEREST_CLIENT_ID:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public static share(Landroid/content/Context;Lcom/buzzfeed/toolkit/sharmo/Shareable;)V
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "shareable"    # Lcom/buzzfeed/toolkit/sharmo/Shareable;

    .prologue
    .line 115
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/buzzfeed/toolkit/sharmo/ShareManager;->share(Landroid/content/Context;Lcom/buzzfeed/toolkit/sharmo/Shareable;Landroid/net/Uri;)V

    .line 116
    return-void
.end method

.method public static share(Landroid/content/Context;Lcom/buzzfeed/toolkit/sharmo/Shareable;Landroid/net/Uri;)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "shareable"    # Lcom/buzzfeed/toolkit/sharmo/Shareable;
    .param p2, "attachment"    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 125
    invoke-interface {p1}, Lcom/buzzfeed/toolkit/sharmo/Shareable;->getSubject()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/buzzfeed/toolkit/sharmo/Shareable;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1, p2}, Lcom/buzzfeed/toolkit/sharmo/ShareManager;->share(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    .line 126
    return-void
.end method

.method public static share(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subject"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 132
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/buzzfeed/toolkit/sharmo/ShareManager;->share(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    .line 133
    return-void
.end method

.method public static share(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subject"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "attachment"    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 265
    invoke-static {p0, p1, p2, p3}, Lcom/buzzfeed/toolkit/sharmo/ShareManager;->buildShareIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 266
    return-void
.end method

.method public static shareContent(Landroid/app/Activity;Lcom/buzzfeed/toolkit/content/PostContent;Ljava/lang/String;Lcom/buzzfeed/toolkit/util/ShareItemType;)V
    .registers 8
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "content"    # Lcom/buzzfeed/toolkit/content/PostContent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "url"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "shareItemType"    # Lcom/buzzfeed/toolkit/util/ShareItemType;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x0

    .line 92
    if-nez p3, :cond_7

    .line 93
    invoke-static {p0, p1, p3, v3}, Lcom/buzzfeed/toolkit/sharmo/ShareManager;->shareWithListener(Landroid/app/Activity;Lcom/buzzfeed/toolkit/sharmo/Shareable;Lcom/buzzfeed/toolkit/util/ShareItemType;Lcom/buzzfeed/toolkit/sharmo/ShareManager$ShareActionListener;)V

    .line 107
    :goto_6
    return-void

    .line 96
    :cond_7
    invoke-static {p0, p2}, Lcom/buzzfeed/toolkit/sharmo/ShareManager;->addPoundHash(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 97
    invoke-interface {p1}, Lcom/buzzfeed/toolkit/content/PostContent;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 99
    .local v0, "subject":Ljava/lang/String;
    sget-object v1, Lcom/buzzfeed/toolkit/sharmo/ShareManager$2;->$SwitchMap$com$buzzfeed$toolkit$util$ShareItemType:[I

    invoke-virtual {p3}, Lcom/buzzfeed/toolkit/util/ShareItemType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_30

    .line 104
    invoke-static {p0, v0, p2, p3, v3}, Lcom/buzzfeed/toolkit/sharmo/ShareManager;->shareWithListener(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/buzzfeed/toolkit/util/ShareItemType;Lcom/buzzfeed/toolkit/sharmo/ShareManager$ShareActionListener;)V

    goto :goto_6

    .line 101
    :pswitch_1e
    invoke-static {}, Lcom/buzzfeed/toolkit/util/UIUtil;->getScreenDensityDpi()F

    move-result v1

    invoke-interface {p1, v1}, Lcom/buzzfeed/toolkit/content/PostContent;->getImageStack(F)Ljava/util/Stack;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {p0, v1, v0, p2}, Lcom/buzzfeed/toolkit/sharmo/ShareManager;->sharePinterest(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 99
    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_1e
    .end packed-switch
.end method

.method private static shareEmail(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "subject"    # Ljava/lang/String;
    .param p2, "body"    # Ljava/lang/String;

    .prologue
    .line 439
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 440
    .local v2, "resources":Landroid/content/res/Resources;
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.SEND"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 441
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "message/rfc822"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 442
    const-string v3, "android.intent.extra.SUBJECT"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 443
    const-string v3, "android.intent.extra.TEXT"

    invoke-virtual {v1, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 445
    :try_start_1a
    sget v3, Lcom/buzzfeed/toolkit/R$string;->email:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_27
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1a .. :try_end_27} :catch_28

    .line 450
    :goto_27
    return-void

    .line 446
    :catch_28
    move-exception v0

    .line 447
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    sget-object v3, Lcom/buzzfeed/toolkit/sharmo/ShareManager;->TAG:Ljava/lang/String;

    const-string v4, "No activity found on device to handle type \'message/rfc822"

    invoke-static {v3, v4, v0}, Lcom/buzzfeed/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 448
    sget v3, Lcom/buzzfeed/toolkit/R$string;->error_msg_no_app:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {p0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_27
.end method

.method public static shareEmail(Landroid/content/Context;Ljava/lang/String;)V
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 425
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 426
    .local v1, "uri":Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 427
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "com.android.browser.application_id"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 428
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 429
    return-void
.end method

.method private static shareEmailFromJSON(Landroid/app/Activity;Lorg/json/JSONObject;)V
    .registers 8
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "shareJson"    # Lorg/json/JSONObject;

    .prologue
    const/4 v5, 0x1

    .line 347
    const-string/jumbo v3, "subject"

    invoke-static {p1, v3}, Lcom/buzzfeed/toolkit/util/JSONUtil;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 348
    .local v2, "subject":Ljava/lang/String;
    const-string v3, "body"

    invoke-static {p1, v3}, Lcom/buzzfeed/toolkit/util/JSONUtil;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 349
    .local v0, "body":Ljava/lang/String;
    if-eqz v2, :cond_3c

    if-eqz v0, :cond_3c

    .line 350
    invoke-static {v0}, Lcom/buzzfeed/toolkit/sharmo/ShareManager;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 351
    .local v1, "shareText":[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    aget-object v4, v1, v5

    invoke-static {v3, v4}, Lcom/buzzfeed/toolkit/sharmo/ShareManager;->addPoundHash(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v5

    .line 352
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    aget-object v4, v1, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v1, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v2, v3}, Lcom/buzzfeed/toolkit/sharmo/ShareManager;->shareEmail(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    .end local v1    # "shareText":[Ljava/lang/String;
    :goto_3b
    return-void

    .line 354
    :cond_3c
    sget-object v3, Lcom/buzzfeed/toolkit/sharmo/ShareManager;->TAG:Ljava/lang/String;

    const-string v4, "Invalid share email subject or body"

    invoke-static {v3, v4}, Lcom/buzzfeed/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3b
.end method

.method public static shareFromWeb(Landroid/app/Activity;Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 6
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "shareJson"    # Lorg/json/JSONObject;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 314
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/buzzfeed/toolkit/sharmo/ShareManager;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".shareFromWeb"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 315
    .local v0, "TAG":Ljava/lang/String;
    if-nez p0, :cond_1d

    .line 316
    const-string v1, "Can\'t perform share. Activity was null."

    invoke-static {v0, v1}, Lcom/buzzfeed/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    :goto_1c
    return-void

    .line 320
    :cond_1d
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_aa

    if-eqz p2, :cond_aa

    .line 321
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", json="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/buzzfeed/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    const/4 v1, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_cc

    :cond_4e
    :goto_4e
    packed-switch v1, :pswitch_data_e6

    goto :goto_1c

    .line 324
    :pswitch_52
    invoke-static {p0, p2}, Lcom/buzzfeed/toolkit/sharmo/ShareManager;->shareEmailFromJSON(Landroid/app/Activity;Lorg/json/JSONObject;)V

    goto :goto_1c

    .line 322
    :sswitch_56
    const-string v2, "email"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4e

    const/4 v1, 0x0

    goto :goto_4e

    :sswitch_60
    const-string v2, "linkedin"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4e

    const/4 v1, 0x1

    goto :goto_4e

    :sswitch_6a
    const-string v2, "pinterest"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4e

    const/4 v1, 0x2

    goto :goto_4e

    :sswitch_74
    const-string v2, "sms"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4e

    const/4 v1, 0x3

    goto :goto_4e

    :sswitch_7e
    const-string/jumbo v2, "twitter"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4e

    const/4 v1, 0x4

    goto :goto_4e

    :sswitch_89
    const-string/jumbo v2, "whatsapp"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4e

    const/4 v1, 0x5

    goto :goto_4e

    .line 327
    :pswitch_94
    invoke-static {p0, p2}, Lcom/buzzfeed/toolkit/sharmo/ShareManager;->shareLinkedInFromJSON(Landroid/app/Activity;Lorg/json/JSONObject;)V

    goto :goto_1c

    .line 330
    :pswitch_98
    invoke-static {p0, p2}, Lcom/buzzfeed/toolkit/sharmo/ShareManager;->sharePinterestFromJSON(Landroid/app/Activity;Lorg/json/JSONObject;)V

    .line 332
    :pswitch_9b
    invoke-static {p0, p2}, Lcom/buzzfeed/toolkit/sharmo/ShareManager;->shareSMSFromJSON(Landroid/app/Activity;Lorg/json/JSONObject;)V

    goto/16 :goto_1c

    .line 335
    :pswitch_a0
    invoke-static {p0, p2}, Lcom/buzzfeed/toolkit/sharmo/ShareManager;->shareTwitterFromJSON(Landroid/app/Activity;Lorg/json/JSONObject;)V

    goto/16 :goto_1c

    .line 338
    :pswitch_a5
    invoke-static {p0, p2}, Lcom/buzzfeed/toolkit/sharmo/ShareManager;->shareWhatsAppFromJSON(Landroid/app/Activity;Lorg/json/JSONObject;)V

    goto/16 :goto_1c

    .line 342
    :cond_aa
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid share type, or data: type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", json="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/buzzfeed/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1c

    .line 322
    :sswitch_data_cc
    .sparse-switch
        -0x369e558d -> :sswitch_7e
        -0xfc866 -> :sswitch_6a
        0x1bd59 -> :sswitch_74
        0x5c24b9c -> :sswitch_56
        0x473590fe -> :sswitch_60
        0x73526992 -> :sswitch_89
    .end sparse-switch

    :pswitch_data_e6
    .packed-switch 0x0
        :pswitch_52
        :pswitch_94
        :pswitch_98
        :pswitch_9b
        :pswitch_a0
        :pswitch_a5
    .end packed-switch
.end method

.method private static shareLinkedIn(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "summary"    # Ljava/lang/String;
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "source"    # Ljava/lang/String;
    .param p5, "mini"    # Ljava/lang/String;

    .prologue
    .line 496
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    .line 497
    .local v0, "builder":Landroid/net/Uri$Builder;
    const-string v3, "https"

    invoke-virtual {v0, v3}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string/jumbo v4, "www.linkedin.com"

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "shareArticle"

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string/jumbo v4, "title"

    .line 498
    invoke-virtual {v3, v4, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string/jumbo v4, "summary"

    .line 499
    invoke-virtual {v3, v4, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string/jumbo v4, "url"

    .line 500
    invoke-virtual {v3, v4, p3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "source"

    .line 501
    invoke-virtual {v3, v4, p4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "mini"

    .line 502
    invoke-virtual {v3, v4, p5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 503
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    .line 504
    .local v2, "linkedinUrl":Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 505
    .local v1, "intent":Landroid/content/Intent;
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 506
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 507
    return-void
.end method

.method private static shareLinkedInFromJSON(Landroid/app/Activity;Lorg/json/JSONObject;)V
    .registers 9
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "shareJson"    # Lorg/json/JSONObject;

    .prologue
    .line 386
    const-string/jumbo v0, "title"

    invoke-static {p1, v0}, Lcom/buzzfeed/toolkit/util/JSONUtil;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 387
    .local v1, "title":Ljava/lang/String;
    const-string/jumbo v0, "summary"

    invoke-static {p1, v0}, Lcom/buzzfeed/toolkit/util/JSONUtil;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 388
    .local v2, "summary":Ljava/lang/String;
    const-string/jumbo v0, "url"

    invoke-static {p1, v0}, Lcom/buzzfeed/toolkit/util/JSONUtil;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 389
    .local v3, "url":Ljava/lang/String;
    const-string v0, "source"

    invoke-static {p1, v0}, Lcom/buzzfeed/toolkit/util/JSONUtil;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 390
    .local v4, "source":Ljava/lang/String;
    const-string v0, "mini"

    invoke-static {p1, v0}, Lcom/buzzfeed/toolkit/util/JSONUtil;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 391
    .local v5, "mini":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/buzzfeed/toolkit/sharmo/ShareManager;->addPoundHash(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 392
    if-eqz v1, :cond_36

    if-eqz v2, :cond_36

    if-eqz v3, :cond_36

    if-eqz v5, :cond_36

    move-object v0, p0

    .line 393
    invoke-static/range {v0 .. v5}, Lcom/buzzfeed/toolkit/sharmo/ShareManager;->shareLinkedIn(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    :goto_35
    return-void

    .line 395
    :cond_36
    sget-object v0, Lcom/buzzfeed/toolkit/sharmo/ShareManager;->TAG:Ljava/lang/String;

    const-string v6, "Invalid share linkedin model"

    invoke-static {v0, v6}, Lcom/buzzfeed/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_35
.end method

.method private static sharePinterest(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "media"    # Ljava/lang/String;
    .param p2, "description"    # Ljava/lang/String;
    .param p3, "url"    # Ljava/lang/String;

    .prologue
    .line 466
    invoke-static {}, Lcom/pinterest/pinit/PinIt;->meetsRequirements()Z

    move-result v1

    if-eqz v1, :cond_24

    .line 467
    new-instance v0, Lcom/pinterest/pinit/PinIt;

    invoke-direct {v0}, Lcom/pinterest/pinit/PinIt;-><init>()V

    .line 468
    .local v0, "pinIt":Lcom/pinterest/pinit/PinIt;
    sget-object v1, Lcom/buzzfeed/toolkit/sharmo/ShareManager;->PINTEREST_CLIENT_ID:Ljava/lang/String;

    invoke-static {v1}, Lcom/pinterest/pinit/PinIt;->setPartnerId(Ljava/lang/String;)V

    .line 469
    invoke-virtual {v0, p2}, Lcom/pinterest/pinit/PinIt;->setDescription(Ljava/lang/String;)V

    .line 470
    invoke-virtual {v0, p1}, Lcom/pinterest/pinit/PinIt;->setImageUrl(Ljava/lang/String;)V

    .line 471
    invoke-virtual {v0, p3}, Lcom/pinterest/pinit/PinIt;->setUrl(Ljava/lang/String;)V

    .line 472
    new-instance v1, Lcom/buzzfeed/toolkit/sharmo/ShareManager$1;

    invoke-direct {v1}, Lcom/buzzfeed/toolkit/sharmo/ShareManager$1;-><init>()V

    invoke-virtual {v0, v1}, Lcom/pinterest/pinit/PinIt;->setListener(Lcom/pinterest/pinit/PinItListener;)V

    .line 491
    invoke-virtual {v0, p0}, Lcom/pinterest/pinit/PinIt;->doPinIt(Landroid/content/Context;)V

    .line 493
    .end local v0    # "pinIt":Lcom/pinterest/pinit/PinIt;
    :cond_24
    return-void
.end method

.method private static sharePinterestFromJSON(Landroid/app/Activity;Lorg/json/JSONObject;)V
    .registers 7
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "shareJson"    # Lorg/json/JSONObject;

    .prologue
    .line 370
    sget-object v3, Lcom/buzzfeed/toolkit/sharmo/ShareManager;->PINTEREST_CLIENT_ID:Ljava/lang/String;

    if-nez v3, :cond_c

    .line 371
    sget-object v3, Lcom/buzzfeed/toolkit/sharmo/ShareManager;->TAG:Ljava/lang/String;

    const-string v4, "Pinterest client id not set"

    invoke-static {v3, v4}, Lcom/buzzfeed/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    :goto_b
    return-void

    .line 374
    :cond_c
    const-string v3, "media"

    invoke-static {p1, v3}, Lcom/buzzfeed/toolkit/util/JSONUtil;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 375
    .local v1, "media":Ljava/lang/String;
    const-string/jumbo v3, "url"

    invoke-static {p1, v3}, Lcom/buzzfeed/toolkit/util/JSONUtil;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 376
    .local v2, "url":Ljava/lang/String;
    const-string v3, "description"

    invoke-static {p1, v3}, Lcom/buzzfeed/toolkit/util/JSONUtil;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 377
    .local v0, "description":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/buzzfeed/toolkit/sharmo/ShareManager;->addPoundHash(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 378
    if-eqz v1, :cond_31

    if-eqz v2, :cond_31

    if-eqz v0, :cond_31

    .line 379
    invoke-static {p0, v1, v0, v2}, Lcom/buzzfeed/toolkit/sharmo/ShareManager;->sharePinterest(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    .line 381
    :cond_31
    sget-object v3, Lcom/buzzfeed/toolkit/sharmo/ShareManager;->TAG:Ljava/lang/String;

    const-string v4, "Invalid share pinterest media, url or description"

    invoke-static {v3, v4}, Lcom/buzzfeed/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b
.end method

.method private static shareSMS(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 4
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 532
    invoke-static {}, Lcom/buzzfeed/toolkit/util/VersionUtil;->hasKitKat()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 533
    invoke-static {p0, p1}, Lcom/buzzfeed/toolkit/sharmo/ShareManager;->shareSMSKitKat(Landroid/app/Activity;Ljava/lang/String;)V

    .line 540
    :goto_9
    return-void

    .line 535
    :cond_a
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 536
    .local v0, "sendIntent":Landroid/content/Intent;
    const-string v1, "sms:"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 537
    const-string v1, "sms_body"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 538
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_9
.end method

.method private static shareSMSFromJSON(Landroid/app/Activity;Lorg/json/JSONObject;)V
    .registers 7
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "shareJson"    # Lorg/json/JSONObject;

    .prologue
    const/4 v4, 0x1

    .line 414
    const-string/jumbo v2, "text"

    invoke-static {p1, v2}, Lcom/buzzfeed/toolkit/util/JSONUtil;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 415
    .local v1, "text":Ljava/lang/String;
    if-eqz v1, :cond_34

    .line 416
    invoke-static {v1}, Lcom/buzzfeed/toolkit/sharmo/ShareManager;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 417
    .local v0, "shareText":[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    aget-object v3, v0, v4

    invoke-static {v2, v3}, Lcom/buzzfeed/toolkit/sharmo/ShareManager;->addPoundHash(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v4

    .line 418
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    aget-object v3, v0, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v0, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/buzzfeed/toolkit/sharmo/ShareManager;->shareSMS(Landroid/app/Activity;Ljava/lang/String;)V

    .line 422
    .end local v0    # "shareText":[Ljava/lang/String;
    :goto_33
    return-void

    .line 420
    :cond_34
    sget-object v2, Lcom/buzzfeed/toolkit/sharmo/ShareManager;->TAG:Ljava/lang/String;

    const-string v3, "Invalid share linkedin model"

    invoke-static {v2, v3}, Lcom/buzzfeed/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_33
.end method

.method private static shareSMSKitKat(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 5
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "text"    # Ljava/lang/String;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .prologue
    .line 547
    invoke-static {p0}, Landroid/provider/Telephony$Sms;->getDefaultSmsPackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 549
    .local v0, "defaultSmsPackageName":Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 550
    .local v1, "sendIntent":Landroid/content/Intent;
    const-string/jumbo v2, "text/plain"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 551
    const-string v2, "android.intent.extra.TEXT"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 553
    if-eqz v0, :cond_1b

    .line 554
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 556
    :cond_1b
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 557
    return-void
.end method

.method private static shareTwitter(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 456
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://twitter.com/intent/tweet?url="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2}, Lcom/buzzfeed/toolkit/util/EZUtil;->encodeURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&text="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/buzzfeed/toolkit/util/EZUtil;->encodeURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 457
    .local v1, "twitterUrl":Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 458
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 459
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/buzzfeed/toolkit/R$string;->tweet:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 460
    return-void
.end method

.method private static shareTwitterFromJSON(Landroid/app/Activity;Lorg/json/JSONObject;)V
    .registers 6
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "shareJson"    # Lorg/json/JSONObject;

    .prologue
    .line 359
    const-string/jumbo v2, "text"

    invoke-static {p1, v2}, Lcom/buzzfeed/toolkit/util/JSONUtil;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 360
    .local v0, "text":Ljava/lang/String;
    const-string/jumbo v2, "url"

    invoke-static {p1, v2}, Lcom/buzzfeed/toolkit/util/JSONUtil;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 361
    .local v1, "url":Ljava/lang/String;
    if-eqz v0, :cond_1e

    if-eqz v1, :cond_1e

    .line 362
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/buzzfeed/toolkit/sharmo/ShareManager;->addPoundHash(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 363
    invoke-static {p0, v0, v1}, Lcom/buzzfeed/toolkit/sharmo/ShareManager;->shareTwitter(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    :goto_1d
    return-void

    .line 365
    :cond_1e
    sget-object v2, Lcom/buzzfeed/toolkit/sharmo/ShareManager;->TAG:Ljava/lang/String;

    const-string v3, "Invalid share twitter text or url"

    invoke-static {v2, v3}, Lcom/buzzfeed/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1d
.end method

.method private static shareWhatsApp(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 8
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 514
    const-string v3, "com.whatsapp"

    invoke-static {p0, v3}, Lcom/buzzfeed/toolkit/util/DeviceUtil;->isAppInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3a

    .line 515
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    .line 516
    .local v0, "builder":Landroid/net/Uri$Builder;
    const-string/jumbo v3, "whatsapp"

    invoke-virtual {v0, v3}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "send"

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string/jumbo v4, "text"

    .line 517
    invoke-virtual {v3, v4, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 518
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    .line 519
    .local v2, "whatsAppUrl":Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 520
    .local v1, "intent":Landroid/content/Intent;
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 521
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 526
    .end local v0    # "builder":Landroid/net/Uri$Builder;
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "whatsAppUrl":Ljava/lang/String;
    :goto_39
    return-void

    .line 523
    :cond_3a
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    const-string v5, "market://details?id=com.whatsapp"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 524
    sget-object v3, Lcom/buzzfeed/toolkit/sharmo/ShareManager;->TAG:Ljava/lang/String;

    const-string v4, "Whatsapp not installed"

    invoke-static {v3, v4}, Lcom/buzzfeed/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_39
.end method

.method private static shareWhatsAppFromJSON(Landroid/app/Activity;Lorg/json/JSONObject;)V
    .registers 6
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "shareJson"    # Lorg/json/JSONObject;

    .prologue
    .line 400
    const-string/jumbo v2, "text"

    invoke-static {p1, v2}, Lcom/buzzfeed/toolkit/util/JSONUtil;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 401
    .local v0, "text":Ljava/lang/String;
    if-eqz v0, :cond_35

    .line 402
    const-string/jumbo v2, "url"

    invoke-static {p1, v2}, Lcom/buzzfeed/toolkit/util/JSONUtil;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 403
    .local v1, "url":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/buzzfeed/toolkit/sharmo/ShareManager;->addPoundHash(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 404
    if-eqz v1, :cond_31

    .line 405
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 407
    :cond_31
    invoke-static {p0, v0}, Lcom/buzzfeed/toolkit/sharmo/ShareManager;->shareWhatsApp(Landroid/app/Activity;Ljava/lang/String;)V

    .line 411
    .end local v1    # "url":Ljava/lang/String;
    :goto_34
    return-void

    .line 409
    :cond_35
    sget-object v2, Lcom/buzzfeed/toolkit/sharmo/ShareManager;->TAG:Ljava/lang/String;

    const-string v3, "Invalid share whatsapp model"

    invoke-static {v2, v3}, Lcom/buzzfeed/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_34
.end method

.method public static shareWithListener(Landroid/app/Activity;Lcom/buzzfeed/toolkit/sharmo/Shareable;Lcom/buzzfeed/toolkit/util/ShareItemType;Lcom/buzzfeed/toolkit/sharmo/ShareManager$ShareActionListener;)V
    .registers 6
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "shareable"    # Lcom/buzzfeed/toolkit/sharmo/Shareable;
    .param p2, "shareItemType"    # Lcom/buzzfeed/toolkit/util/ShareItemType;
    .param p3, "shareActionListener"    # Lcom/buzzfeed/toolkit/sharmo/ShareManager$ShareActionListener;

    .prologue
    .line 146
    invoke-interface {p1}, Lcom/buzzfeed/toolkit/sharmo/Shareable;->getSubject()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/buzzfeed/toolkit/sharmo/Shareable;->getShareUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1, p2, p3}, Lcom/buzzfeed/toolkit/sharmo/ShareManager;->shareWithListener(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/buzzfeed/toolkit/util/ShareItemType;Lcom/buzzfeed/toolkit/sharmo/ShareManager$ShareActionListener;)V

    .line 147
    return-void
.end method

.method public static shareWithListener(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/buzzfeed/toolkit/sharmo/ShareManager$ShareActionListener;)V
    .registers 11
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "subject"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "shareActionListener"    # Lcom/buzzfeed/toolkit/sharmo/ShareManager$ShareActionListener;

    .prologue
    const/4 v2, 0x0

    .line 177
    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, v2

    move-object v5, v2

    move-object v6, p3

    invoke-static/range {v0 .. v6}, Lcom/buzzfeed/toolkit/sharmo/ShareManager;->shareWithListener(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Lcom/buzzfeed/toolkit/util/ShareItemType;Lcom/buzzfeed/toolkit/sharmo/ShareManager$ShareActionListener;)V

    .line 178
    return-void
.end method

.method public static shareWithListener(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/buzzfeed/toolkit/util/ShareItemType;Lcom/buzzfeed/toolkit/sharmo/ShareManager$ShareActionListener;)V
    .registers 12
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "subject"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "shareItemType"    # Lcom/buzzfeed/toolkit/util/ShareItemType;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "shareActionListener"    # Lcom/buzzfeed/toolkit/sharmo/ShareManager$ShareActionListener;

    .prologue
    const/4 v2, 0x0

    .line 162
    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, v2

    move-object v5, p3

    move-object v6, p4

    invoke-static/range {v0 .. v6}, Lcom/buzzfeed/toolkit/sharmo/ShareManager;->shareWithListener(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Lcom/buzzfeed/toolkit/util/ShareItemType;Lcom/buzzfeed/toolkit/sharmo/ShareManager$ShareActionListener;)V

    .line 163
    return-void
.end method

.method public static shareWithListener(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Lcom/buzzfeed/toolkit/util/ShareItemType;Lcom/buzzfeed/toolkit/sharmo/ShareManager$ShareActionListener;)V
    .registers 10
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "subject"    # Ljava/lang/String;
    .param p2, "extraText"    # Ljava/lang/String;
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "attachment"    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p5, "shareItemType"    # Lcom/buzzfeed/toolkit/util/ShareItemType;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p6, "shareActionListener"    # Lcom/buzzfeed/toolkit/sharmo/ShareManager$ShareActionListener;

    .prologue
    .line 212
    invoke-static {p3}, Lcom/buzzfeed/toolkit/util/EZUtil;->isBuzzFeedUrl(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 213
    invoke-static {p0, p3}, Lcom/buzzfeed/toolkit/sharmo/ShareManager;->addPoundHash(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 215
    :cond_a
    invoke-static {p0, p1, p2, p3}, Lcom/buzzfeed/toolkit/sharmo/ShareManager;->finalizeShareText(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 217
    .local v0, "body":Ljava/lang/String;
    if-nez p5, :cond_14

    .line 218
    invoke-static {p0, p1, v0, p4, p6}, Lcom/buzzfeed/toolkit/sharmo/ShareManager;->shareWithoutShortenedUrl(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Lcom/buzzfeed/toolkit/sharmo/ShareManager$ShareActionListener;)V

    .line 239
    :goto_13
    return-void

    .line 222
    :cond_14
    sget-object v1, Lcom/buzzfeed/toolkit/sharmo/ShareManager$2;->$SwitchMap$com$buzzfeed$toolkit$util$ShareItemType:[I

    invoke-virtual {p5}, Lcom/buzzfeed/toolkit/util/ShareItemType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_34

    .line 236
    invoke-static {p0, p1, p3, p4, p6}, Lcom/buzzfeed/toolkit/sharmo/ShareManager;->shareWithoutShortenedUrl(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Lcom/buzzfeed/toolkit/sharmo/ShareManager$ShareActionListener;)V

    goto :goto_13

    .line 224
    :pswitch_23
    invoke-static {p0, p1, v0}, Lcom/buzzfeed/toolkit/sharmo/ShareManager;->shareEmail(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_13

    .line 227
    :pswitch_27
    invoke-static {p0, p1, v0}, Lcom/buzzfeed/toolkit/sharmo/ShareManager;->shareTwitter(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_13

    .line 230
    :pswitch_2b
    invoke-static {p0, v0}, Lcom/buzzfeed/toolkit/sharmo/ShareManager;->shareSMS(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_13

    .line 233
    :pswitch_2f
    invoke-static {p0, v0}, Lcom/buzzfeed/toolkit/sharmo/ShareManager;->shareWhatsApp(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_13

    .line 222
    nop

    :pswitch_data_34
    .packed-switch 0x2
        :pswitch_23
        :pswitch_27
        :pswitch_2b
        :pswitch_2f
    .end packed-switch
.end method

.method public static shareWithListenerWithComment(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/buzzfeed/toolkit/sharmo/ShareManager$ShareActionListener;)V
    .registers 12
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "subject"    # Ljava/lang/String;
    .param p2, "comment"    # Ljava/lang/String;
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "shareActionListener"    # Lcom/buzzfeed/toolkit/sharmo/ShareManager$ShareActionListener;

    .prologue
    const/4 v4, 0x0

    .line 193
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v4

    move-object v6, p4

    invoke-static/range {v0 .. v6}, Lcom/buzzfeed/toolkit/sharmo/ShareManager;->shareWithListener(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Lcom/buzzfeed/toolkit/util/ShareItemType;Lcom/buzzfeed/toolkit/sharmo/ShareManager$ShareActionListener;)V

    .line 194
    return-void
.end method

.method private static shareWithoutShortenedUrl(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Lcom/buzzfeed/toolkit/sharmo/ShareManager$ShareActionListener;)V
    .registers 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subject"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "attachment"    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "shareActionListener"    # Lcom/buzzfeed/toolkit/sharmo/ShareManager$ShareActionListener;

    .prologue
    const/4 v3, 0x0

    .line 243
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x16

    if-ge v1, v2, :cond_e

    .line 244
    invoke-static {p0, p1, p2, v3}, Lcom/buzzfeed/toolkit/sharmo/ShareManager;->share(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    .line 245
    invoke-interface {p4, v3}, Lcom/buzzfeed/toolkit/sharmo/ShareManager$ShareActionListener;->onShareAction(Ljava/lang/String;)V

    .line 250
    :goto_d
    return-void

    .line 247
    :cond_e
    invoke-static {p0, p1, p2, p3, p4}, Lcom/buzzfeed/toolkit/sharmo/ShareManager;->buildPendingShareIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Lcom/buzzfeed/toolkit/sharmo/ShareManager$ShareActionListener;)Landroid/content/Intent;

    move-result-object v0

    .line 248
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_d
.end method

.method private static split(Ljava/lang/String;)[Ljava/lang/String;
    .registers 11
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 574
    const/4 v5, 0x2

    new-array v3, v5, [Ljava/lang/String;

    .line 576
    .local v3, "shareText":[Ljava/lang/String;
    const-string v2, "https?://"

    .line 577
    .local v2, "patternString":Ljava/lang/String;
    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 578
    .local v1, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 579
    .local v0, "matcher":Ljava/util/regex/Matcher;
    const/4 v4, 0x0

    .line 580
    .local v4, "urlStartPosition":I
    :goto_10
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_1b

    .line 581
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    move-result v4

    goto :goto_10

    .line 584
    :cond_1b
    if-lez v4, :cond_50

    .line 585
    invoke-virtual {p0, v8, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v8

    .line 586
    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v9

    .line 592
    :goto_29
    sget-object v5, Lcom/buzzfeed/toolkit/sharmo/ShareManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Share text prefix: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v3, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "Share text url: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v3, v9

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/buzzfeed/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 593
    return-object v3

    .line 588
    :cond_50
    const-string v5, ""

    aput-object v5, v3, v8

    .line 589
    aput-object p0, v3, v9

    goto :goto_29
.end method
