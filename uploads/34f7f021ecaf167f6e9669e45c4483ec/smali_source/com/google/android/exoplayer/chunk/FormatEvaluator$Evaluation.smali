.class public final Lcom/google/android/exoplayer/chunk/FormatEvaluator$Evaluation;
.super Ljava/lang/Object;
.source "FormatEvaluator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer/chunk/FormatEvaluator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Evaluation"
.end annotation


# instance fields
.field public format:Lcom/google/android/exoplayer/chunk/Format;

.field public queueSize:I

.field public trigger:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer/chunk/FormatEvaluator$Evaluation;->trigger:I

    .line 79
    return-void
.end method
