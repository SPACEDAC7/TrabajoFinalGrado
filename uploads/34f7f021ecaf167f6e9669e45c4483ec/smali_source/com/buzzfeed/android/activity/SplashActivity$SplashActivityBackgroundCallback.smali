.class public Lcom/buzzfeed/android/activity/SplashActivity$SplashActivityBackgroundCallback;
.super Lcom/buzzfeed/toolkit/util/ApplicationStateCallbacks;
.source "SplashActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/buzzfeed/android/activity/SplashActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SplashActivityBackgroundCallback"
.end annotation


# static fields
.field private static sIsFromBackground:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 298
    invoke-direct {p0}, Lcom/buzzfeed/toolkit/util/ApplicationStateCallbacks;-><init>()V

    return-void
.end method

.method static synthetic access$200()Z
    .registers 1

    .prologue
    .line 298
    sget-boolean v0, Lcom/buzzfeed/android/activity/SplashActivity$SplashActivityBackgroundCallback;->sIsFromBackground:Z

    return v0
.end method


# virtual methods
.method public onApplicationEnterBackground()V
    .registers 2

    .prologue
    .line 309
    const/4 v0, 0x1

    sput-boolean v0, Lcom/buzzfeed/android/activity/SplashActivity$SplashActivityBackgroundCallback;->sIsFromBackground:Z

    .line 310
    return-void
.end method

.method public onApplicationEnterForeground()V
    .registers 1

    .prologue
    .line 305
    return-void
.end method
