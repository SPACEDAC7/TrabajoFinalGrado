.class public final Landroid/support/v4/net/ConnectivityManagerCompat;
.super Ljava/lang/Object;
.source "ConnectivityManagerCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/net/ConnectivityManagerCompat$Api24ConnectivityManagerCompatImpl;,
        Landroid/support/v4/net/ConnectivityManagerCompat$JellyBeanConnectivityManagerCompatImpl;,
        Landroid/support/v4/net/ConnectivityManagerCompat$HoneycombMR2ConnectivityManagerCompatImpl;,
        Landroid/support/v4/net/ConnectivityManagerCompat$BaseConnectivityManagerCompatImpl;,
        Landroid/support/v4/net/ConnectivityManagerCompat$RestrictBackgroundStatus;,
        Landroid/support/v4/net/ConnectivityManagerCompat$ConnectivityManagerCompatImpl;
    }
.end annotation


# static fields
.field private static final IMPL:Landroid/support/v4/net/ConnectivityManagerCompat$ConnectivityManagerCompatImpl;

.field public static final RESTRICT_BACKGROUND_STATUS_DISABLED:I = 0x1

.field public static final RESTRICT_BACKGROUND_STATUS_ENABLED:I = 0x3

.field public static final RESTRICT_BACKGROUND_STATUS_WHITELISTED:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 145
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_e

    .line 146
    new-instance v0, Landroid/support/v4/net/ConnectivityManagerCompat$Api24ConnectivityManagerCompatImpl;

    invoke-direct {v0}, Landroid/support/v4/net/ConnectivityManagerCompat$Api24ConnectivityManagerCompatImpl;-><init>()V

    sput-object v0, Landroid/support/v4/net/ConnectivityManagerCompat;->IMPL:Landroid/support/v4/net/ConnectivityManagerCompat$ConnectivityManagerCompatImpl;

    .line 154
    :goto_d
    return-void

    .line 147
    :cond_e
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1c

    .line 148
    new-instance v0, Landroid/support/v4/net/ConnectivityManagerCompat$JellyBeanConnectivityManagerCompatImpl;

    invoke-direct {v0}, Landroid/support/v4/net/ConnectivityManagerCompat$JellyBeanConnectivityManagerCompatImpl;-><init>()V

    sput-object v0, Landroid/support/v4/net/ConnectivityManagerCompat;->IMPL:Landroid/support/v4/net/ConnectivityManagerCompat$ConnectivityManagerCompatImpl;

    goto :goto_d

    .line 149
    :cond_1c
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xd

    if-lt v0, v1, :cond_2a

    .line 150
    new-instance v0, Landroid/support/v4/net/ConnectivityManagerCompat$HoneycombMR2ConnectivityManagerCompatImpl;

    invoke-direct {v0}, Landroid/support/v4/net/ConnectivityManagerCompat$HoneycombMR2ConnectivityManagerCompatImpl;-><init>()V

    sput-object v0, Landroid/support/v4/net/ConnectivityManagerCompat;->IMPL:Landroid/support/v4/net/ConnectivityManagerCompat$ConnectivityManagerCompatImpl;

    goto :goto_d

    .line 152
    :cond_2a
    new-instance v0, Landroid/support/v4/net/ConnectivityManagerCompat$BaseConnectivityManagerCompatImpl;

    invoke-direct {v0}, Landroid/support/v4/net/ConnectivityManagerCompat$BaseConnectivityManagerCompatImpl;-><init>()V

    sput-object v0, Landroid/support/v4/net/ConnectivityManagerCompat;->IMPL:Landroid/support/v4/net/ConnectivityManagerCompat$ConnectivityManagerCompatImpl;

    goto :goto_d
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getNetworkInfoFromBroadcast(Landroid/net/ConnectivityManager;Landroid/content/Intent;)Landroid/net/NetworkInfo;
    .registers 4
    .param p0, "cm"    # Landroid/net/ConnectivityManager;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 181
    const-string v1, "networkInfo"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    .line 182
    .local v0, "info":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_13

    .line 183
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 185
    :goto_12
    return-object v1

    :cond_13
    const/4 v1, 0x0

    goto :goto_12
.end method

.method public static getRestrictBackgroundStatus(Landroid/net/ConnectivityManager;)I
    .registers 2
    .param p0, "cm"    # Landroid/net/ConnectivityManager;

    .prologue
    .line 199
    sget-object v0, Landroid/support/v4/net/ConnectivityManagerCompat;->IMPL:Landroid/support/v4/net/ConnectivityManagerCompat$ConnectivityManagerCompatImpl;

    invoke-interface {v0, p0}, Landroid/support/v4/net/ConnectivityManagerCompat$ConnectivityManagerCompatImpl;->getRestrictBackgroundStatus(Landroid/net/ConnectivityManager;)I

    move-result v0

    return v0
.end method

.method public static isActiveNetworkMetered(Landroid/net/ConnectivityManager;)Z
    .registers 2
    .param p0, "cm"    # Landroid/net/ConnectivityManager;

    .prologue
    .line 170
    sget-object v0, Landroid/support/v4/net/ConnectivityManagerCompat;->IMPL:Landroid/support/v4/net/ConnectivityManagerCompat$ConnectivityManagerCompatImpl;

    invoke-interface {v0, p0}, Landroid/support/v4/net/ConnectivityManagerCompat$ConnectivityManagerCompatImpl;->isActiveNetworkMetered(Landroid/net/ConnectivityManager;)Z

    move-result v0

    return v0
.end method
