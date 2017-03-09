.class final Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$ExtractorHolder;
.super Ljava/lang/Object;
.source "ExtractorSampleSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ExtractorHolder"
.end annotation


# instance fields
.field private extractor:Lcom/google/android/exoplayer/extractor/Extractor;

.field private final extractorOutput:Lcom/google/android/exoplayer/extractor/ExtractorOutput;

.field private final extractors:[Lcom/google/android/exoplayer/extractor/Extractor;


# direct methods
.method public constructor <init>([Lcom/google/android/exoplayer/extractor/Extractor;Lcom/google/android/exoplayer/extractor/ExtractorOutput;)V
    .registers 3
    .param p1, "extractors"    # [Lcom/google/android/exoplayer/extractor/Extractor;
    .param p2, "extractorOutput"    # Lcom/google/android/exoplayer/extractor/ExtractorOutput;

    .prologue
    .line 866
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 867
    iput-object p1, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$ExtractorHolder;->extractors:[Lcom/google/android/exoplayer/extractor/Extractor;

    .line 868
    iput-object p2, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$ExtractorHolder;->extractorOutput:Lcom/google/android/exoplayer/extractor/ExtractorOutput;

    .line 869
    return-void
.end method


# virtual methods
.method public release()V
    .registers 2

    .prologue
    .line 905
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$ExtractorHolder;->extractor:Lcom/google/android/exoplayer/extractor/Extractor;

    if-eqz v0, :cond_c

    .line 906
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$ExtractorHolder;->extractor:Lcom/google/android/exoplayer/extractor/Extractor;

    invoke-interface {v0}, Lcom/google/android/exoplayer/extractor/Extractor;->release()V

    .line 907
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$ExtractorHolder;->extractor:Lcom/google/android/exoplayer/extractor/Extractor;

    .line 909
    :cond_c
    return-void
.end method

.method public selectExtractor(Lcom/google/android/exoplayer/extractor/ExtractorInput;)Lcom/google/android/exoplayer/extractor/Extractor;
    .registers 7
    .param p1, "input"    # Lcom/google/android/exoplayer/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$UnrecognizedInputFormatException;,
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 882
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$ExtractorHolder;->extractor:Lcom/google/android/exoplayer/extractor/Extractor;

    if-eqz v1, :cond_7

    .line 883
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$ExtractorHolder;->extractor:Lcom/google/android/exoplayer/extractor/Extractor;

    .line 901
    :goto_6
    return-object v1

    .line 885
    :cond_7
    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$ExtractorHolder;->extractors:[Lcom/google/android/exoplayer/extractor/Extractor;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_b
    if-ge v1, v3, :cond_1a

    aget-object v0, v2, v1

    .line 887
    .local v0, "extractor":Lcom/google/android/exoplayer/extractor/Extractor;
    :try_start_f
    invoke-interface {v0, p1}, Lcom/google/android/exoplayer/extractor/Extractor;->sniff(Lcom/google/android/exoplayer/extractor/ExtractorInput;)Z

    move-result v4

    if-eqz v4, :cond_26

    .line 888
    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$ExtractorHolder;->extractor:Lcom/google/android/exoplayer/extractor/Extractor;
    :try_end_17
    .catch Ljava/io/EOFException; {:try_start_f .. :try_end_17} :catch_2c
    .catchall {:try_start_f .. :try_end_17} :catchall_31

    .line 894
    invoke-interface {p1}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->resetPeekPosition()V

    .line 897
    .end local v0    # "extractor":Lcom/google/android/exoplayer/extractor/Extractor;
    :cond_1a
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$ExtractorHolder;->extractor:Lcom/google/android/exoplayer/extractor/Extractor;

    if-nez v1, :cond_36

    .line 898
    new-instance v1, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$UnrecognizedInputFormatException;

    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$ExtractorHolder;->extractors:[Lcom/google/android/exoplayer/extractor/Extractor;

    invoke-direct {v1, v2}, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$UnrecognizedInputFormatException;-><init>([Lcom/google/android/exoplayer/extractor/Extractor;)V

    throw v1

    .line 894
    .restart local v0    # "extractor":Lcom/google/android/exoplayer/extractor/Extractor;
    :cond_26
    invoke-interface {p1}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->resetPeekPosition()V

    .line 885
    :goto_29
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 891
    :catch_2c
    move-exception v4

    .line 894
    invoke-interface {p1}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->resetPeekPosition()V

    goto :goto_29

    :catchall_31
    move-exception v1

    invoke-interface {p1}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->resetPeekPosition()V

    throw v1

    .line 900
    .end local v0    # "extractor":Lcom/google/android/exoplayer/extractor/Extractor;
    :cond_36
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$ExtractorHolder;->extractor:Lcom/google/android/exoplayer/extractor/Extractor;

    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$ExtractorHolder;->extractorOutput:Lcom/google/android/exoplayer/extractor/ExtractorOutput;

    invoke-interface {v1, v2}, Lcom/google/android/exoplayer/extractor/Extractor;->init(Lcom/google/android/exoplayer/extractor/ExtractorOutput;)V

    .line 901
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$ExtractorHolder;->extractor:Lcom/google/android/exoplayer/extractor/Extractor;

    goto :goto_6
.end method
