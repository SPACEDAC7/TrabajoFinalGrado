.class public Lcom/buzzfeed/android/vcr/util/VCRApplicationBitrateLimiter;
.super Lcom/buzzfeed/toolkit/util/ApplicationStateCallbacks;
.source "VCRApplicationBitrateLimiter.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mLimitingReceiver:Lcom/buzzfeed/android/vcr/util/VCRBitrateLimitingReceiver;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 15
    const-class v0, Lcom/buzzfeed/android/vcr/util/VCRApplicationBitrateLimiter;

    invoke-static {v0}, Lcom/buzzfeed/toolkit/util/LogUtil;->makeLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/buzzfeed/android/vcr/util/VCRApplicationBitrateLimiter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Application;)V
    .registers 3
    .param p1, "application"    # Landroid/app/Application;

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/buzzfeed/toolkit/util/ApplicationStateCallbacks;-><init>()V

    .line 20
    new-instance v0, Lcom/buzzfeed/android/vcr/util/VCRBitrateLimitingReceiver;

    invoke-direct {v0, p1}, Lcom/buzzfeed/android/vcr/util/VCRBitrateLimitingReceiver;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/buzzfeed/android/vcr/util/VCRApplicationBitrateLimiter;->mLimitingReceiver:Lcom/buzzfeed/android/vcr/util/VCRBitrateLimitingReceiver;

    .line 21
    return-void
.end method


# virtual methods
.method public onApplicationEnterBackground()V
    .registers 3

    .prologue
    .line 31
    sget-object v0, Lcom/buzzfeed/android/vcr/util/VCRApplicationBitrateLimiter;->TAG:Ljava/lang/String;

    const-string v1, "Un-registering VCR bitrate limiting receiver."

    invoke-static {v0, v1}, Lcom/buzzfeed/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/util/VCRApplicationBitrateLimiter;->mLimitingReceiver:Lcom/buzzfeed/android/vcr/util/VCRBitrateLimitingReceiver;

    invoke-virtual {v0}, Lcom/buzzfeed/android/vcr/util/VCRBitrateLimitingReceiver;->unregister()V

    .line 33
    return-void
.end method

.method public onApplicationEnterForeground()V
    .registers 3

    .prologue
    .line 25
    sget-object v0, Lcom/buzzfeed/android/vcr/util/VCRApplicationBitrateLimiter;->TAG:Ljava/lang/String;

    const-string v1, "Registering VCR bitrate limiting receiver."

    invoke-static {v0, v1}, Lcom/buzzfeed/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/util/VCRApplicationBitrateLimiter;->mLimitingReceiver:Lcom/buzzfeed/android/vcr/util/VCRBitrateLimitingReceiver;

    invoke-virtual {v0}, Lcom/buzzfeed/android/vcr/util/VCRBitrateLimitingReceiver;->register()V

    .line 27
    return-void
.end method
