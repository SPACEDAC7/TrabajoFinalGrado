.class public final Lcom/buzzfeed/android/vcr/util/VCRBitrateLimitingReceiver;
.super Ljava/lang/Object;
.source "VCRBitrateLimitingReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/buzzfeed/android/vcr/util/VCRBitrateLimitingReceiver$ConnectivityReceiver;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const-string v0, "Context must not be null."

    invoke-static {p1, v0}, Lcom/buzzfeed/toolkit/util/EZUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/buzzfeed/android/vcr/util/VCRBitrateLimitingReceiver;->mContext:Landroid/content/Context;

    .line 27
    new-instance v0, Lcom/buzzfeed/android/vcr/util/VCRBitrateLimitingReceiver$ConnectivityReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/buzzfeed/android/vcr/util/VCRBitrateLimitingReceiver$ConnectivityReceiver;-><init>(Lcom/buzzfeed/android/vcr/util/VCRBitrateLimitingReceiver;Lcom/buzzfeed/android/vcr/util/VCRBitrateLimitingReceiver$1;)V

    iput-object v0, p0, Lcom/buzzfeed/android/vcr/util/VCRBitrateLimitingReceiver;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 28
    return-void
.end method


# virtual methods
.method public register()V
    .registers 5

    .prologue
    .line 35
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/util/VCRBitrateLimitingReceiver;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/buzzfeed/android/vcr/util/VCRBitrateLimitingReceiver;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 36
    return-void
.end method

.method public unregister()V
    .registers 3

    .prologue
    .line 42
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/util/VCRBitrateLimitingReceiver;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/buzzfeed/android/vcr/util/VCRBitrateLimitingReceiver;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 43
    return-void
.end method
