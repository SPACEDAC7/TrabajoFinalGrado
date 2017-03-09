.class public abstract Lcom/twitter/sdk/android/core/AuthToken;
.super Ljava/lang/Object;
.source "AuthToken.java"

# interfaces
.implements Lcom/twitter/sdk/android/core/internal/oauth/AuthHeaders;


# instance fields
.field protected final createdAt:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "created_at"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/twitter/sdk/android/core/AuthToken;->createdAt:J

    .line 37
    return-void
.end method

.method protected constructor <init>(J)V
    .registers 4
    .param p1, "createdAt"    # J

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-wide p1, p0, Lcom/twitter/sdk/android/core/AuthToken;->createdAt:J

    .line 41
    return-void
.end method


# virtual methods
.method public abstract isExpired()Z
.end method
