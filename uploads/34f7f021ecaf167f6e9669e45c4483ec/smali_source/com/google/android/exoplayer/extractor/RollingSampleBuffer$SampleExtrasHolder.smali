.class final Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$SampleExtrasHolder;
.super Ljava/lang/Object;
.source "RollingSampleBuffer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SampleExtrasHolder"
.end annotation


# instance fields
.field public encryptionKeyId:[B

.field public offset:J


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 666
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$1;

    .prologue
    .line 666
    invoke-direct {p0}, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$SampleExtrasHolder;-><init>()V

    return-void
.end method
