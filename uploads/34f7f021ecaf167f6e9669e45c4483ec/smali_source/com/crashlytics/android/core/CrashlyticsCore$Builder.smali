.class public Lcom/crashlytics/android/core/CrashlyticsCore$Builder;
.super Ljava/lang/Object;
.source "CrashlyticsCore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/crashlytics/android/core/CrashlyticsCore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private delay:F

.field private disabled:Z

.field private listener:Lcom/crashlytics/android/core/CrashlyticsListener;

.field private pinningInfoProvider:Lcom/crashlytics/android/core/PinningInfoProvider;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    const/high16 v0, -0x40800000

    iput v0, p0, Lcom/crashlytics/android/core/CrashlyticsCore$Builder;->delay:F

    .line 129
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/crashlytics/android/core/CrashlyticsCore$Builder;->disabled:Z

    return-void
.end method


# virtual methods
.method public build()Lcom/crashlytics/android/core/CrashlyticsCore;
    .registers 6

    .prologue
    .line 192
    iget v0, p0, Lcom/crashlytics/android/core/CrashlyticsCore$Builder;->delay:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_b

    .line 193
    const/high16 v0, 0x3f800000

    iput v0, p0, Lcom/crashlytics/android/core/CrashlyticsCore$Builder;->delay:F

    .line 195
    :cond_b
    new-instance v0, Lcom/crashlytics/android/core/CrashlyticsCore;

    iget v1, p0, Lcom/crashlytics/android/core/CrashlyticsCore$Builder;->delay:F

    iget-object v2, p0, Lcom/crashlytics/android/core/CrashlyticsCore$Builder;->listener:Lcom/crashlytics/android/core/CrashlyticsListener;

    iget-object v3, p0, Lcom/crashlytics/android/core/CrashlyticsCore$Builder;->pinningInfoProvider:Lcom/crashlytics/android/core/PinningInfoProvider;

    iget-boolean v4, p0, Lcom/crashlytics/android/core/CrashlyticsCore$Builder;->disabled:Z

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/crashlytics/android/core/CrashlyticsCore;-><init>(FLcom/crashlytics/android/core/CrashlyticsListener;Lcom/crashlytics/android/core/PinningInfoProvider;Z)V

    return-object v0
.end method

.method public delay(F)Lcom/crashlytics/android/core/CrashlyticsCore$Builder;
    .registers 4
    .param p1, "delay"    # F

    .prologue
    const/4 v1, 0x0

    .line 135
    cmpg-float v0, p1, v1

    if-gtz v0, :cond_d

    .line 136
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "delay must be greater than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 139
    :cond_d
    iget v0, p0, Lcom/crashlytics/android/core/CrashlyticsCore$Builder;->delay:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1b

    .line 140
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "delay already set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 143
    :cond_1b
    iput p1, p0, Lcom/crashlytics/android/core/CrashlyticsCore$Builder;->delay:F

    .line 144
    return-object p0
.end method

.method public disabled(Z)Lcom/crashlytics/android/core/CrashlyticsCore$Builder;
    .registers 2
    .param p1, "isDisabled"    # Z

    .prologue
    .line 187
    iput-boolean p1, p0, Lcom/crashlytics/android/core/CrashlyticsCore$Builder;->disabled:Z

    .line 188
    return-object p0
.end method

.method public listener(Lcom/crashlytics/android/core/CrashlyticsListener;)Lcom/crashlytics/android/core/CrashlyticsCore$Builder;
    .registers 4
    .param p1, "listener"    # Lcom/crashlytics/android/core/CrashlyticsListener;

    .prologue
    .line 150
    if-nez p1, :cond_a

    .line 151
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 154
    :cond_a
    iget-object v0, p0, Lcom/crashlytics/android/core/CrashlyticsCore$Builder;->listener:Lcom/crashlytics/android/core/CrashlyticsListener;

    if-eqz v0, :cond_16

    .line 155
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "listener already set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 158
    :cond_16
    iput-object p1, p0, Lcom/crashlytics/android/core/CrashlyticsCore$Builder;->listener:Lcom/crashlytics/android/core/CrashlyticsListener;

    .line 159
    return-object p0
.end method

.method public pinningInfo(Lcom/crashlytics/android/core/PinningInfoProvider;)Lcom/crashlytics/android/core/CrashlyticsCore$Builder;
    .registers 4
    .param p1, "pinningInfoProvider"    # Lcom/crashlytics/android/core/PinningInfoProvider;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 168
    if-nez p1, :cond_a

    .line 169
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "pinningInfoProvider must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 172
    :cond_a
    iget-object v0, p0, Lcom/crashlytics/android/core/CrashlyticsCore$Builder;->pinningInfoProvider:Lcom/crashlytics/android/core/PinningInfoProvider;

    if-eqz v0, :cond_16

    .line 173
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "pinningInfoProvider already set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 176
    :cond_16
    iput-object p1, p0, Lcom/crashlytics/android/core/CrashlyticsCore$Builder;->pinningInfoProvider:Lcom/crashlytics/android/core/PinningInfoProvider;

    .line 177
    return-object p0
.end method
