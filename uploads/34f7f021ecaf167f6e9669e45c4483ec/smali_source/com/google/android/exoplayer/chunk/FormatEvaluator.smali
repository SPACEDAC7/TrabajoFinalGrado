.class public interface abstract Lcom/google/android/exoplayer/chunk/FormatEvaluator;
.super Ljava/lang/Object;
.source "FormatEvaluator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer/chunk/FormatEvaluator$AdaptiveEvaluator;,
        Lcom/google/android/exoplayer/chunk/FormatEvaluator$RandomEvaluator;,
        Lcom/google/android/exoplayer/chunk/FormatEvaluator$FixedEvaluator;,
        Lcom/google/android/exoplayer/chunk/FormatEvaluator$Evaluation;
    }
.end annotation


# virtual methods
.method public abstract disable()V
.end method

.method public abstract enable()V
.end method

.method public abstract evaluate(Ljava/util/List;J[Lcom/google/android/exoplayer/chunk/Format;Lcom/google/android/exoplayer/chunk/FormatEvaluator$Evaluation;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/google/android/exoplayer/chunk/MediaChunk;",
            ">;J[",
            "Lcom/google/android/exoplayer/chunk/Format;",
            "Lcom/google/android/exoplayer/chunk/FormatEvaluator$Evaluation;",
            ")V"
        }
    .end annotation
.end method
