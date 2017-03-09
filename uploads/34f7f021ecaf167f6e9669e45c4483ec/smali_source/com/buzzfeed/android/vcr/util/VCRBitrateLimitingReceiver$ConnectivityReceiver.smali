.class final Lcom/buzzfeed/android/vcr/util/VCRBitrateLimitingReceiver$ConnectivityReceiver;
.super Landroid/content/BroadcastReceiver;
.source "VCRBitrateLimitingReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/buzzfeed/android/vcr/util/VCRBitrateLimitingReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ConnectivityReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/buzzfeed/android/vcr/util/VCRBitrateLimitingReceiver;


# direct methods
.method private constructor <init>(Lcom/buzzfeed/android/vcr/util/VCRBitrateLimitingReceiver;)V
    .registers 2

    .prologue
    .line 45
    iput-object p1, p0, Lcom/buzzfeed/android/vcr/util/VCRBitrateLimitingReceiver$ConnectivityReceiver;->this$0:Lcom/buzzfeed/android/vcr/util/VCRBitrateLimitingReceiver;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/buzzfeed/android/vcr/util/VCRBitrateLimitingReceiver;Lcom/buzzfeed/android/vcr/util/VCRBitrateLimitingReceiver$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/buzzfeed/android/vcr/util/VCRBitrateLimitingReceiver;
    .param p2, "x1"    # Lcom/buzzfeed/android/vcr/util/VCRBitrateLimitingReceiver$1;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/buzzfeed/android/vcr/util/VCRBitrateLimitingReceiver$ConnectivityReceiver;-><init>(Lcom/buzzfeed/android/vcr/util/VCRBitrateLimitingReceiver;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 49
    invoke-static {}, Lcom/buzzfeed/android/vcr/VCRConfig;->getInstance()Lcom/buzzfeed/android/vcr/VCRConfig;

    move-result-object v0

    .line 50
    .local v0, "config":Lcom/buzzfeed/android/vcr/VCRConfig;
    invoke-virtual {v0, p1}, Lcom/buzzfeed/android/vcr/VCRConfig;->setAdaptiveBitrateLimitForConnection(Landroid/content/Context;)V

    .line 51
    return-void
.end method
