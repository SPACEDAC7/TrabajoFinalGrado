.class Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$InternalTrackOutput;
.super Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;
.source "ExtractorSampleSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InternalTrackOutput"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;Lcom/google/android/exoplayer/upstream/Allocator;)V
    .registers 3
    .param p2, "allocator"    # Lcom/google/android/exoplayer/upstream/Allocator;

    .prologue
    .line 766
    iput-object p1, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$InternalTrackOutput;->this$0:Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;

    .line 767
    invoke-direct {p0, p2}, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;-><init>(Lcom/google/android/exoplayer/upstream/Allocator;)V

    .line 768
    return-void
.end method


# virtual methods
.method public sampleMetadata(JIII[B)V
    .registers 8
    .param p1, "timeUs"    # J
    .param p3, "flags"    # I
    .param p4, "size"    # I
    .param p5, "offset"    # I
    .param p6, "encryptionKey"    # [B

    .prologue
    .line 772
    invoke-super/range {p0 .. p6}, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->sampleMetadata(JIII[B)V

    .line 773
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$InternalTrackOutput;->this$0:Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;

    # operator++ for: Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->extractedSampleCount:I
    invoke-static {v0}, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->access$308(Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;)I

    .line 774
    return-void
.end method
