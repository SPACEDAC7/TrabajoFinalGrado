.class public final Lcom/buzzfeed/android/activity/ShowPageActivity;
.super Lcom/buzzfeed/showx/showpage/BaseShowPageActivity;
.source "ShowPageActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/buzzfeed/android/activity/ShowPageActivity$ShowPageFragment;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 48
    const-class v0, Lcom/buzzfeed/android/activity/ShowPageActivity;

    invoke-static {v0}, Lcom/buzzfeed/toolkit/util/LogUtil;->makeLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/buzzfeed/android/activity/ShowPageActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/buzzfeed/showx/showpage/BaseShowPageActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .prologue
    .line 47
    sget-object v0, Lcom/buzzfeed/android/activity/ShowPageActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static getIntent(Landroid/content/Context;Lcom/buzzfeed/toolkit/content/WeaverEmbed$Show;)Landroid/content/Intent;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "show"    # Lcom/buzzfeed/toolkit/content/WeaverEmbed$Show;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 81
    if-eqz p1, :cond_13

    .line 82
    invoke-virtual {p1}, Lcom/buzzfeed/toolkit/content/WeaverEmbed$Show;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/buzzfeed/toolkit/content/WeaverEmbed$Show;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/buzzfeed/toolkit/content/WeaverEmbed$Show;->getBackgroundImageUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v0, v1, v2}, Lcom/buzzfeed/android/activity/ShowPageActivity;->getIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 84
    :goto_12
    return-object v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public static getIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "showId"    # Ljava/lang/String;
    .param p2, "showTitle"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "showCoverImageUri"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 96
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1d

    .line 97
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/buzzfeed/android/activity/ShowPageActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 98
    .local v0, "starter":Landroid/content/Intent;
    const-string v1, "SELECTED_SHOW_ID"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 99
    const-string v1, "SELECTED_SHOW_TITLE"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 100
    const-string v1, "SELECTED_SHOW_COVER_URI"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 103
    .end local v0    # "starter":Landroid/content/Intent;
    :goto_1c
    return-object v0

    :cond_1d
    const/4 v0, 0x0

    goto :goto_1c
.end method

.method public static startIntent(Landroid/content/Context;Lcom/buzzfeed/toolkit/content/WeaverEmbed$Show;)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "show"    # Lcom/buzzfeed/toolkit/content/WeaverEmbed$Show;

    .prologue
    .line 54
    if-eqz p1, :cond_12

    .line 55
    invoke-virtual {p1}, Lcom/buzzfeed/toolkit/content/WeaverEmbed$Show;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/buzzfeed/toolkit/content/WeaverEmbed$Show;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/buzzfeed/toolkit/content/WeaverEmbed$Show;->getBackgroundImageUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v0, v1, v2}, Lcom/buzzfeed/android/activity/ShowPageActivity;->startIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    :goto_11
    return-void

    .line 57
    :cond_12
    sget-object v0, Lcom/buzzfeed/android/activity/ShowPageActivity;->TAG:Ljava/lang/String;

    const-string v1, "Show is not available. Unable to start Activity."

    invoke-static {v0, v1}, Lcom/buzzfeed/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11
.end method

.method public static startIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "showId"    # Ljava/lang/String;
    .param p2, "showTitle"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "showCoverImageUri"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 68
    invoke-static {p0, p1, p2, p3}, Lcom/buzzfeed/android/activity/ShowPageActivity;->getIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 69
    .local v0, "starter":Landroid/content/Intent;
    if-eqz v0, :cond_a

    .line 70
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 74
    :goto_9
    return-void

    .line 72
    :cond_a
    sget-object v1, Lcom/buzzfeed/android/activity/ShowPageActivity;->TAG:Ljava/lang/String;

    const-string v2, "Required content is not available. Unable to start Activity."

    invoke-static {v1, v2}, Lcom/buzzfeed/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9
.end method


# virtual methods
.method protected getUseShowSettingsActionForNetworkError()Z
    .registers 2

    .prologue
    .line 132
    const/4 v0, 0x1

    return v0
.end method

.method public onBindShowId(Landroid/content/Intent;)Ljava/lang/String;
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 128
    const-string v0, "SELECTED_SHOW_ID"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onCreateShowPageFragment()Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;
    .registers 3

    .prologue
    .line 121
    new-instance v0, Lcom/buzzfeed/android/activity/ShowPageActivity$ShowPageFragment;

    invoke-direct {v0}, Lcom/buzzfeed/android/activity/ShowPageActivity$ShowPageFragment;-><init>()V

    .line 122
    .local v0, "fragment":Lcom/buzzfeed/android/activity/ShowPageActivity$ShowPageFragment;
    invoke-virtual {p0}, Lcom/buzzfeed/android/activity/ShowPageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1}, Lcom/buzzfeed/toolkit/util/IntentUtils;->createBundleFromIntent(Landroid/content/Intent;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/buzzfeed/android/activity/ShowPageActivity$ShowPageFragment;->setArguments(Landroid/os/Bundle;)V

    .line 123
    return-object v0
.end method

.method protected onCreateShowPageLoader(Ljava/lang/String;)Lcom/buzzfeed/showx/showpage/data/loader/ShowPageLoader;
    .registers 7
    .param p1, "showId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 110
    invoke-static {}, Lcom/buzzfeed/analytics/client/DustbusterClient;->getInstance()Lcom/buzzfeed/analytics/client/DustbusterClient;

    move-result-object v3

    invoke-virtual {v3}, Lcom/buzzfeed/analytics/client/DustbusterClient;->getUserPoundIdentifier()J

    move-result-wide v0

    .line 111
    .local v0, "clientId":J
    new-instance v3, Lcom/buzzfeed/toolkit/networking/helpers/WeaverServiceHelper$QueryParamsBuilder;

    invoke-direct {v3}, Lcom/buzzfeed/toolkit/networking/helpers/WeaverServiceHelper$QueryParamsBuilder;-><init>()V

    .line 112
    invoke-static {p0}, Lcom/buzzfeed/android/data/EnvironmentConfig;->getWeaverEdition(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/buzzfeed/toolkit/networking/helpers/WeaverServiceHelper$QueryParamsBuilder;->country(Ljava/lang/String;)Lcom/buzzfeed/toolkit/networking/helpers/WeaverServiceHelper$QueryParamsBuilder;

    move-result-object v3

    .line 113
    invoke-static {p0}, Lcom/buzzfeed/android/data/EnvironmentConfig;->getWeaverLanguage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/buzzfeed/toolkit/networking/helpers/WeaverServiceHelper$QueryParamsBuilder;->language(Ljava/lang/String;)Lcom/buzzfeed/toolkit/networking/helpers/WeaverServiceHelper$QueryParamsBuilder;

    move-result-object v3

    .line 114
    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/buzzfeed/toolkit/networking/helpers/WeaverServiceHelper$QueryParamsBuilder;->clientId(Ljava/lang/String;)Lcom/buzzfeed/toolkit/networking/helpers/WeaverServiceHelper$QueryParamsBuilder;

    move-result-object v2

    .line 116
    .local v2, "paramBuilder":Lcom/buzzfeed/toolkit/networking/helpers/WeaverServiceHelper$QueryParamsBuilder;
    new-instance v3, Lcom/buzzfeed/showx/showpage/data/loader/ShowPageLoader;

    invoke-static {}, Lcom/buzzfeed/android/data/EnvironmentConfig;->getEnvironment()Lcom/buzzfeed/toolkit/networking/Environment;

    move-result-object v4

    invoke-direct {v3, p0, p1, v4, v2}, Lcom/buzzfeed/showx/showpage/data/loader/ShowPageLoader;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/buzzfeed/toolkit/networking/Environment;Lcom/buzzfeed/toolkit/networking/helpers/WeaverServiceHelper$QueryParamsBuilder;)V

    return-object v3
.end method
