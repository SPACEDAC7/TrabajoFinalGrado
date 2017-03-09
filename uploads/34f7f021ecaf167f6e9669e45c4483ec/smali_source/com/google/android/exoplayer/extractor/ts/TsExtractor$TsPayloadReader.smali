.class abstract Lcom/google/android/exoplayer/extractor/ts/TsExtractor$TsPayloadReader;
.super Ljava/lang/Object;
.source "TsExtractor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer/extractor/ts/TsExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "TsPayloadReader"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 236
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer/extractor/ts/TsExtractor$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/google/android/exoplayer/extractor/ts/TsExtractor$1;

    .prologue
    .line 236
    invoke-direct {p0}, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$TsPayloadReader;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract consume(Lcom/google/android/exoplayer/util/ParsableByteArray;ZLcom/google/android/exoplayer/extractor/ExtractorOutput;)V
.end method

.method public abstract seek()V
.end method
