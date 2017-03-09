.class public abstract Lcom/buzzfeed/analytics/adjust/AdjustConfiguration;
.super Ljava/lang/Object;
.source "AdjustConfiguration.java"


# instance fields
.field protected mAdjustProduction:Z

.field protected mAdjustToken:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .registers 3
    .param p1, "adjustToken"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "adjustProduction"    # Z

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/buzzfeed/analytics/adjust/AdjustConfiguration;->mAdjustToken:Ljava/lang/String;

    .line 17
    iput-boolean p2, p0, Lcom/buzzfeed/analytics/adjust/AdjustConfiguration;->mAdjustProduction:Z

    .line 18
    return-void
.end method


# virtual methods
.method public abstract configure(Landroid/content/Context;)V
.end method

.method public abstract onPause()V
.end method

.method public abstract onResume()V
.end method

.method public abstract trackAdjustEvent(Ljava/lang/String;)V
.end method
