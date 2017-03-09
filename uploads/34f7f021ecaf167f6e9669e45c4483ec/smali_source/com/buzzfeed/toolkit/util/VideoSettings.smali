.class public Lcom/buzzfeed/toolkit/util/VideoSettings;
.super Ljava/lang/Object;
.source "VideoSettings.java"


# static fields
.field public static final ALWAYS:Ljava/lang/String; = "Always"

.field private static final NEVER:Ljava/lang/String; = "Never"

.field private static final ON_WIFI_ONLY:Ljava/lang/String; = "On Wi-Fi Only"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAutoplaySetting(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .registers 3
    .param p0, "autoplayValue"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 19
    sget v0, Lcom/buzzfeed/toolkit/R$string;->autoplay_always:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 20
    const-string v0, "Always"

    .line 24
    :goto_e
    return-object v0

    .line 21
    :cond_f
    sget v0, Lcom/buzzfeed/toolkit/R$string;->autoplay_on_wifi_only:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 22
    const-string v0, "On Wi-Fi Only"

    goto :goto_e

    .line 24
    :cond_1e
    const-string v0, "Never"

    goto :goto_e
.end method

.method public static isInAutoplayMode(Landroid/content/Context;)Z
    .registers 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 35
    .local v3, "sharedPreferences":Landroid/content/SharedPreferences;
    sget v4, Lcom/buzzfeed/toolkit/R$string;->preference_key_autoplay_mode_select:I

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 36
    .local v1, "autoplayPreferenceKey":Ljava/lang/String;
    sget v4, Lcom/buzzfeed/toolkit/R$string;->default_autoplay_mode:I

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 37
    .local v0, "autoplayDefaultMode":Ljava/lang/String;
    invoke-interface {v3, v1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 38
    .local v2, "autoplayValue":Ljava/lang/String;
    const-string v4, "Always"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2a

    const-string v4, "On Wi-Fi Only"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2c

    invoke-static {p0}, Lcom/buzzfeed/toolkit/util/NetworkUtil;->isConnectedToWifi(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_2c

    :cond_2a
    const/4 v4, 0x1

    :goto_2b
    return v4

    :cond_2c
    const/4 v4, 0x0

    goto :goto_2b
.end method
