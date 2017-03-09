.class public abstract Lcom/buzzfeed/toolkit/util/ApplicationStateCallbacks;
.super Lcom/buzzfeed/toolkit/util/AbstractActivityLifecycleCallbacks;
.source "ApplicationStateCallbacks.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/buzzfeed/toolkit/util/AbstractActivityLifecycleCallbacks;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onApplicationEnterBackground()V
.end method

.method public abstract onApplicationEnterForeground()V
.end method
