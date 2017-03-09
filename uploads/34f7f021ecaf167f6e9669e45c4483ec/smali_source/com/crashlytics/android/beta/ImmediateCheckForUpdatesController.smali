.class Lcom/crashlytics/android/beta/ImmediateCheckForUpdatesController;
.super Lcom/crashlytics/android/beta/AbstractCheckForUpdatesController;
.source "ImmediateCheckForUpdatesController.java"


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 9
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/crashlytics/android/beta/AbstractCheckForUpdatesController;-><init>(Z)V

    .line 10
    return-void
.end method


# virtual methods
.method public isActivityLifecycleTriggered()Z
    .registers 2

    .prologue
    .line 14
    const/4 v0, 0x0

    return v0
.end method
