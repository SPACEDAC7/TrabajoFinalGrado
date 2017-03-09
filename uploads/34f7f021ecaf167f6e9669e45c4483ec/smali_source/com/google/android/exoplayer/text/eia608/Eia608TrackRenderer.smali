.class public final Lcom/google/android/exoplayer/text/eia608/Eia608TrackRenderer;
.super Lcom/google/android/exoplayer/SampleSourceTrackRenderer;
.source "Eia608TrackRenderer.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field private static final CC_MODE_PAINT_ON:I = 0x3

.field private static final CC_MODE_POP_ON:I = 0x2

.field private static final CC_MODE_ROLL_UP:I = 0x1

.field private static final CC_MODE_UNKNOWN:I = 0x0

.field private static final DEFAULT_CAPTIONS_ROW_COUNT:I = 0x4

.field private static final MAX_SAMPLE_READAHEAD_US:I = 0x4c4b40

.field private static final MSG_INVOKE_RENDERER:I


# instance fields
.field private caption:Ljava/lang/String;

.field private captionMode:I

.field private captionRowCount:I

.field private final captionStringBuilder:Ljava/lang/StringBuilder;

.field private final eia608Parser:Lcom/google/android/exoplayer/text/eia608/Eia608Parser;

.field private final formatHolder:Lcom/google/android/exoplayer/MediaFormatHolder;

.field private inputStreamEnded:Z

.field private lastRenderedCaption:Ljava/lang/String;

.field private final pendingCaptionLists:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet",
            "<",
            "Lcom/google/android/exoplayer/text/eia608/ClosedCaptionList;",
            ">;"
        }
    .end annotation
.end field

.field private repeatableControl:Lcom/google/android/exoplayer/text/eia608/ClosedCaptionCtrl;

.field private final sampleHolder:Lcom/google/android/exoplayer/SampleHolder;

.field private final textRenderer:Lcom/google/android/exoplayer/text/TextRenderer;

.field private final textRendererHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer/SampleSource;Lcom/google/android/exoplayer/text/TextRenderer;Landroid/os/Looper;)V
    .registers 7
    .param p1, "source"    # Lcom/google/android/exoplayer/SampleSource;
    .param p2, "textRenderer"    # Lcom/google/android/exoplayer/text/TextRenderer;
    .param p3, "textRendererLooper"    # Landroid/os/Looper;

    .prologue
    const/4 v2, 0x1

    .line 80
    new-array v0, v2, [Lcom/google/android/exoplayer/SampleSource;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer/SampleSourceTrackRenderer;-><init>([Lcom/google/android/exoplayer/SampleSource;)V

    .line 81
    invoke-static {p2}, Lcom/google/android/exoplayer/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/text/TextRenderer;

    iput-object v0, p0, Lcom/google/android/exoplayer/text/eia608/Eia608TrackRenderer;->textRenderer:Lcom/google/android/exoplayer/text/TextRenderer;

    .line 82
    if-nez p3, :cond_3a

    const/4 v0, 0x0

    :goto_14
    iput-object v0, p0, Lcom/google/android/exoplayer/text/eia608/Eia608TrackRenderer;->textRendererHandler:Landroid/os/Handler;

    .line 83
    new-instance v0, Lcom/google/android/exoplayer/text/eia608/Eia608Parser;

    invoke-direct {v0}, Lcom/google/android/exoplayer/text/eia608/Eia608Parser;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer/text/eia608/Eia608TrackRenderer;->eia608Parser:Lcom/google/android/exoplayer/text/eia608/Eia608Parser;

    .line 84
    new-instance v0, Lcom/google/android/exoplayer/MediaFormatHolder;

    invoke-direct {v0}, Lcom/google/android/exoplayer/MediaFormatHolder;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer/text/eia608/Eia608TrackRenderer;->formatHolder:Lcom/google/android/exoplayer/MediaFormatHolder;

    .line 85
    new-instance v0, Lcom/google/android/exoplayer/SampleHolder;

    invoke-direct {v0, v2}, Lcom/google/android/exoplayer/SampleHolder;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/exoplayer/text/eia608/Eia608TrackRenderer;->sampleHolder:Lcom/google/android/exoplayer/SampleHolder;

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer/text/eia608/Eia608TrackRenderer;->captionStringBuilder:Ljava/lang/StringBuilder;

    .line 87
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer/text/eia608/Eia608TrackRenderer;->pendingCaptionLists:Ljava/util/TreeSet;

    .line 88
    return-void

    .line 82
    :cond_3a
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p3, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    goto :goto_14
.end method

.method private clearPendingSample()V
    .registers 5

    .prologue
    .line 353
    iget-object v0, p0, Lcom/google/android/exoplayer/text/eia608/Eia608TrackRenderer;->sampleHolder:Lcom/google/android/exoplayer/SampleHolder;

    const-wide/16 v2, -0x1

    iput-wide v2, v0, Lcom/google/android/exoplayer/SampleHolder;->timeUs:J

    .line 354
    iget-object v0, p0, Lcom/google/android/exoplayer/text/eia608/Eia608TrackRenderer;->sampleHolder:Lcom/google/android/exoplayer/SampleHolder;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/SampleHolder;->clearData()V

    .line 355
    return-void
.end method

.method private consumeCaptionList(Lcom/google/android/exoplayer/text/eia608/ClosedCaptionList;)V
    .registers 11
    .param p1, "captionList"    # Lcom/google/android/exoplayer/text/eia608/ClosedCaptionList;

    .prologue
    const/4 v8, 0x0

    const/4 v5, 0x1

    .line 204
    iget-object v6, p1, Lcom/google/android/exoplayer/text/eia608/ClosedCaptionList;->captions:[Lcom/google/android/exoplayer/text/eia608/ClosedCaption;

    array-length v1, v6

    .line 205
    .local v1, "captionBufferSize":I
    if-nez v1, :cond_8

    .line 239
    :cond_7
    :goto_7
    return-void

    .line 209
    :cond_8
    const/4 v4, 0x0

    .line 210
    .local v4, "isRepeatableControl":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_a
    if-ge v3, v1, :cond_5b

    .line 211
    iget-object v6, p1, Lcom/google/android/exoplayer/text/eia608/ClosedCaptionList;->captions:[Lcom/google/android/exoplayer/text/eia608/ClosedCaption;

    aget-object v0, v6, v3

    .line 212
    .local v0, "caption":Lcom/google/android/exoplayer/text/eia608/ClosedCaption;
    iget v6, v0, Lcom/google/android/exoplayer/text/eia608/ClosedCaption;->type:I

    if-nez v6, :cond_55

    move-object v2, v0

    .line 213
    check-cast v2, Lcom/google/android/exoplayer/text/eia608/ClosedCaptionCtrl;

    .line 214
    .local v2, "captionCtrl":Lcom/google/android/exoplayer/text/eia608/ClosedCaptionCtrl;
    if-ne v1, v5, :cond_3b

    invoke-virtual {v2}, Lcom/google/android/exoplayer/text/eia608/ClosedCaptionCtrl;->isRepeatable()Z

    move-result v6

    if-eqz v6, :cond_3b

    move v4, v5

    .line 215
    :goto_20
    if-eqz v4, :cond_3d

    iget-object v6, p0, Lcom/google/android/exoplayer/text/eia608/Eia608TrackRenderer;->repeatableControl:Lcom/google/android/exoplayer/text/eia608/ClosedCaptionCtrl;

    if-eqz v6, :cond_3d

    iget-object v6, p0, Lcom/google/android/exoplayer/text/eia608/Eia608TrackRenderer;->repeatableControl:Lcom/google/android/exoplayer/text/eia608/ClosedCaptionCtrl;

    iget-byte v6, v6, Lcom/google/android/exoplayer/text/eia608/ClosedCaptionCtrl;->cc1:B

    iget-byte v7, v2, Lcom/google/android/exoplayer/text/eia608/ClosedCaptionCtrl;->cc1:B

    if-ne v6, v7, :cond_3d

    iget-object v6, p0, Lcom/google/android/exoplayer/text/eia608/Eia608TrackRenderer;->repeatableControl:Lcom/google/android/exoplayer/text/eia608/ClosedCaptionCtrl;

    iget-byte v6, v6, Lcom/google/android/exoplayer/text/eia608/ClosedCaptionCtrl;->cc2:B

    iget-byte v7, v2, Lcom/google/android/exoplayer/text/eia608/ClosedCaptionCtrl;->cc2:B

    if-ne v6, v7, :cond_3d

    .line 218
    iput-object v8, p0, Lcom/google/android/exoplayer/text/eia608/Eia608TrackRenderer;->repeatableControl:Lcom/google/android/exoplayer/text/eia608/ClosedCaptionCtrl;

    .line 210
    .end local v0    # "caption":Lcom/google/android/exoplayer/text/eia608/ClosedCaption;
    .end local v2    # "captionCtrl":Lcom/google/android/exoplayer/text/eia608/ClosedCaptionCtrl;
    :cond_38
    :goto_38
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 214
    .restart local v0    # "caption":Lcom/google/android/exoplayer/text/eia608/ClosedCaption;
    .restart local v2    # "captionCtrl":Lcom/google/android/exoplayer/text/eia608/ClosedCaptionCtrl;
    :cond_3b
    const/4 v4, 0x0

    goto :goto_20

    .line 220
    :cond_3d
    if-eqz v4, :cond_41

    .line 221
    iput-object v2, p0, Lcom/google/android/exoplayer/text/eia608/Eia608TrackRenderer;->repeatableControl:Lcom/google/android/exoplayer/text/eia608/ClosedCaptionCtrl;

    .line 223
    :cond_41
    invoke-virtual {v2}, Lcom/google/android/exoplayer/text/eia608/ClosedCaptionCtrl;->isMiscCode()Z

    move-result v6

    if-eqz v6, :cond_4b

    .line 224
    invoke-direct {p0, v2}, Lcom/google/android/exoplayer/text/eia608/Eia608TrackRenderer;->handleMiscCode(Lcom/google/android/exoplayer/text/eia608/ClosedCaptionCtrl;)V

    goto :goto_38

    .line 225
    :cond_4b
    invoke-virtual {v2}, Lcom/google/android/exoplayer/text/eia608/ClosedCaptionCtrl;->isPreambleAddressCode()Z

    move-result v6

    if-eqz v6, :cond_38

    .line 226
    invoke-direct {p0}, Lcom/google/android/exoplayer/text/eia608/Eia608TrackRenderer;->handlePreambleAddressCode()V

    goto :goto_38

    .line 229
    .end local v2    # "captionCtrl":Lcom/google/android/exoplayer/text/eia608/ClosedCaptionCtrl;
    :cond_55
    check-cast v0, Lcom/google/android/exoplayer/text/eia608/ClosedCaptionText;

    .end local v0    # "caption":Lcom/google/android/exoplayer/text/eia608/ClosedCaption;
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer/text/eia608/Eia608TrackRenderer;->handleText(Lcom/google/android/exoplayer/text/eia608/ClosedCaptionText;)V

    goto :goto_38

    .line 233
    :cond_5b
    if-nez v4, :cond_5f

    .line 234
    iput-object v8, p0, Lcom/google/android/exoplayer/text/eia608/Eia608TrackRenderer;->repeatableControl:Lcom/google/android/exoplayer/text/eia608/ClosedCaptionCtrl;

    .line 236
    :cond_5f
    iget v6, p0, Lcom/google/android/exoplayer/text/eia608/Eia608TrackRenderer;->captionMode:I

    if-eq v6, v5, :cond_68

    iget v5, p0, Lcom/google/android/exoplayer/text/eia608/Eia608TrackRenderer;->captionMode:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_7

    .line 237
    :cond_68
    invoke-direct {p0}, Lcom/google/android/exoplayer/text/eia608/Eia608TrackRenderer;->getDisplayCaption()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/exoplayer/text/eia608/Eia608TrackRenderer;->caption:Ljava/lang/String;

    goto :goto_7
.end method

.method private getDisplayCaption()Ljava/lang/String;
    .registers 13

    .prologue
    const/4 v6, 0x0

    const/4 v11, -0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 325
    iget-object v9, p0, Lcom/google/android/exoplayer/text/eia608/Eia608TrackRenderer;->captionStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 326
    .local v0, "buildLength":I
    if-nez v0, :cond_d

    .line 349
    :cond_c
    :goto_c
    return-object v6

    .line 330
    :cond_d
    iget-object v9, p0, Lcom/google/android/exoplayer/text/eia608/Eia608TrackRenderer;->captionStringBuilder:Ljava/lang/StringBuilder;

    add-int/lit8 v10, v0, -0x1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v9

    const/16 v10, 0xa

    if-ne v9, v10, :cond_2d

    move v2, v7

    .line 331
    .local v2, "endsWithNewline":Z
    :goto_1a
    if-ne v0, v7, :cond_1e

    if-nez v2, :cond_c

    .line 335
    :cond_1e
    if-eqz v2, :cond_2f

    add-int/lit8 v1, v0, -0x1

    .line 336
    .local v1, "endIndex":I
    :goto_22
    iget v6, p0, Lcom/google/android/exoplayer/text/eia608/Eia608TrackRenderer;->captionMode:I

    if-eq v6, v7, :cond_31

    .line 337
    iget-object v6, p0, Lcom/google/android/exoplayer/text/eia608/Eia608TrackRenderer;->captionStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8, v1}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v6

    goto :goto_c

    .end local v1    # "endIndex":I
    .end local v2    # "endsWithNewline":Z
    :cond_2d
    move v2, v8

    .line 330
    goto :goto_1a

    .restart local v2    # "endsWithNewline":Z
    :cond_2f
    move v1, v0

    .line 335
    goto :goto_22

    .line 340
    .restart local v1    # "endIndex":I
    :cond_31
    const/4 v5, 0x0

    .line 341
    .local v5, "startIndex":I
    move v4, v1

    .line 342
    .local v4, "searchBackwardFromIndex":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_34
    iget v6, p0, Lcom/google/android/exoplayer/text/eia608/Eia608TrackRenderer;->captionRowCount:I

    if-ge v3, v6, :cond_47

    if-eq v4, v11, :cond_47

    .line 343
    iget-object v6, p0, Lcom/google/android/exoplayer/text/eia608/Eia608TrackRenderer;->captionStringBuilder:Ljava/lang/StringBuilder;

    const-string v7, "\n"

    add-int/lit8 v9, v4, -0x1

    invoke-virtual {v6, v7, v9}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;I)I

    move-result v4

    .line 342
    add-int/lit8 v3, v3, 0x1

    goto :goto_34

    .line 345
    :cond_47
    if-eq v4, v11, :cond_4b

    .line 346
    add-int/lit8 v5, v4, 0x1

    .line 348
    :cond_4b
    iget-object v6, p0, Lcom/google/android/exoplayer/text/eia608/Eia608TrackRenderer;->captionStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8, v5}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 349
    iget-object v6, p0, Lcom/google/android/exoplayer/text/eia608/Eia608TrackRenderer;->captionStringBuilder:Ljava/lang/StringBuilder;

    sub-int v7, v1, v5

    invoke-virtual {v6, v8, v7}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v6

    goto :goto_c
.end method

.method private handleMiscCode(Lcom/google/android/exoplayer/text/eia608/ClosedCaptionCtrl;)V
    .registers 7
    .param p1, "captionCtrl"    # Lcom/google/android/exoplayer/text/eia608/ClosedCaptionCtrl;

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x3

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 248
    iget-byte v0, p1, Lcom/google/android/exoplayer/text/eia608/ClosedCaptionCtrl;->cc2:B

    packed-switch v0, :pswitch_data_6c

    .line 269
    :pswitch_9
    iget v0, p0, Lcom/google/android/exoplayer/text/eia608/Eia608TrackRenderer;->captionMode:I

    if-nez v0, :cond_29

    .line 296
    :cond_d
    :goto_d
    return-void

    .line 250
    :pswitch_e
    iput v4, p0, Lcom/google/android/exoplayer/text/eia608/Eia608TrackRenderer;->captionRowCount:I

    .line 251
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer/text/eia608/Eia608TrackRenderer;->setCaptionMode(I)V

    goto :goto_d

    .line 254
    :pswitch_14
    iput v3, p0, Lcom/google/android/exoplayer/text/eia608/Eia608TrackRenderer;->captionRowCount:I

    .line 255
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer/text/eia608/Eia608TrackRenderer;->setCaptionMode(I)V

    goto :goto_d

    .line 258
    :pswitch_1a
    const/4 v0, 0x4

    iput v0, p0, Lcom/google/android/exoplayer/text/eia608/Eia608TrackRenderer;->captionRowCount:I

    .line 259
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer/text/eia608/Eia608TrackRenderer;->setCaptionMode(I)V

    goto :goto_d

    .line 262
    :pswitch_21
    invoke-direct {p0, v4}, Lcom/google/android/exoplayer/text/eia608/Eia608TrackRenderer;->setCaptionMode(I)V

    goto :goto_d

    .line 265
    :pswitch_25
    invoke-direct {p0, v3}, Lcom/google/android/exoplayer/text/eia608/Eia608TrackRenderer;->setCaptionMode(I)V

    goto :goto_d

    .line 273
    :cond_29
    iget-byte v0, p1, Lcom/google/android/exoplayer/text/eia608/ClosedCaptionCtrl;->cc2:B

    sparse-switch v0, :sswitch_data_84

    goto :goto_d

    .line 291
    :sswitch_2f
    iget-object v0, p0, Lcom/google/android/exoplayer/text/eia608/Eia608TrackRenderer;->captionStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_d

    .line 292
    iget-object v0, p0, Lcom/google/android/exoplayer/text/eia608/Eia608TrackRenderer;->captionStringBuilder:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/exoplayer/text/eia608/Eia608TrackRenderer;->captionStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_d

    .line 275
    :sswitch_45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer/text/eia608/Eia608TrackRenderer;->caption:Ljava/lang/String;

    .line 276
    iget v0, p0, Lcom/google/android/exoplayer/text/eia608/Eia608TrackRenderer;->captionMode:I

    if-eq v0, v1, :cond_50

    iget v0, p0, Lcom/google/android/exoplayer/text/eia608/Eia608TrackRenderer;->captionMode:I

    if-ne v0, v3, :cond_d

    .line 277
    :cond_50
    iget-object v0, p0, Lcom/google/android/exoplayer/text/eia608/Eia608TrackRenderer;->captionStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_d

    .line 281
    :sswitch_56
    iget-object v0, p0, Lcom/google/android/exoplayer/text/eia608/Eia608TrackRenderer;->captionStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_d

    .line 284
    :sswitch_5c
    invoke-direct {p0}, Lcom/google/android/exoplayer/text/eia608/Eia608TrackRenderer;->getDisplayCaption()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer/text/eia608/Eia608TrackRenderer;->caption:Ljava/lang/String;

    .line 285
    iget-object v0, p0, Lcom/google/android/exoplayer/text/eia608/Eia608TrackRenderer;->captionStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_d

    .line 288
    :sswitch_68
    invoke-direct {p0}, Lcom/google/android/exoplayer/text/eia608/Eia608TrackRenderer;->maybeAppendNewline()V

    goto :goto_d

    .line 248
    :pswitch_data_6c
    .packed-switch 0x20
        :pswitch_21
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_e
        :pswitch_14
        :pswitch_1a
        :pswitch_9
        :pswitch_25
    .end packed-switch

    .line 273
    :sswitch_data_84
    .sparse-switch
        0x21 -> :sswitch_2f
        0x2c -> :sswitch_45
        0x2d -> :sswitch_68
        0x2e -> :sswitch_56
        0x2f -> :sswitch_5c
    .end sparse-switch
.end method

.method private handlePreambleAddressCode()V
    .registers 1

    .prologue
    .line 300
    invoke-direct {p0}, Lcom/google/android/exoplayer/text/eia608/Eia608TrackRenderer;->maybeAppendNewline()V

    .line 301
    return-void
.end method

.method private handleText(Lcom/google/android/exoplayer/text/eia608/ClosedCaptionText;)V
    .registers 4
    .param p1, "captionText"    # Lcom/google/android/exoplayer/text/eia608/ClosedCaptionText;

    .prologue
    .line 242
    iget v0, p0, Lcom/google/android/exoplayer/text/eia608/Eia608TrackRenderer;->captionMode:I

    if-eqz v0, :cond_b

    .line 243
    iget-object v0, p0, Lcom/google/android/exoplayer/text/eia608/Eia608TrackRenderer;->captionStringBuilder:Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/google/android/exoplayer/text/eia608/ClosedCaptionText;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    :cond_b
    return-void
.end method

.method private invokeRenderer(Ljava/lang/String;)V
    .registers 4
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 160
    iget-object v0, p0, Lcom/google/android/exoplayer/text/eia608/Eia608TrackRenderer;->lastRenderedCaption:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/google/android/exoplayer/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 170
    :goto_8
    return-void

    .line 164
    :cond_9
    iput-object p1, p0, Lcom/google/android/exoplayer/text/eia608/Eia608TrackRenderer;->lastRenderedCaption:Ljava/lang/String;

    .line 165
    iget-object v0, p0, Lcom/google/android/exoplayer/text/eia608/Eia608TrackRenderer;->textRendererHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1a

    .line 166
    iget-object v0, p0, Lcom/google/android/exoplayer/text/eia608/Eia608TrackRenderer;->textRendererHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_8

    .line 168
    :cond_1a
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer/text/eia608/Eia608TrackRenderer;->invokeRendererInternal(Ljava/lang/String;)V

    goto :goto_8
.end method

.method private invokeRendererInternal(Ljava/lang/String;)V
    .registers 4
    .param p1, "cueText"    # Ljava/lang/String;

    .prologue
    .line 184
    if-nez p1, :cond_c

    .line 185
    iget-object v0, p0, Lcom/google/android/exoplayer/text/eia608/Eia608TrackRenderer;->textRenderer:Lcom/google/android/exoplayer/text/TextRenderer;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer/text/TextRenderer;->onCues(Ljava/util/List;)V

    .line 189
    :goto_b
    return-void

    .line 187
    :cond_c
    iget-object v0, p0, Lcom/google/android/exoplayer/text/eia608/Eia608TrackRenderer;->textRenderer:Lcom/google/android/exoplayer/text/TextRenderer;

    new-instance v1, Lcom/google/android/exoplayer/text/Cue;

    invoke-direct {v1, p1}, Lcom/google/android/exoplayer/text/Cue;-><init>(Ljava/lang/CharSequence;)V

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer/text/TextRenderer;->onCues(Ljava/util/List;)V

    goto :goto_b
.end method

.method private isSamplePending()Z
    .registers 5

    .prologue
    .line 358
    iget-object v0, p0, Lcom/google/android/exoplayer/text/eia608/Eia608TrackRenderer;->sampleHolder:Lcom/google/android/exoplayer/SampleHolder;

    iget-wide v0, v0, Lcom/google/android/exoplayer/SampleHolder;->timeUs:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method private maybeAppendNewline()V
    .registers 5

    .prologue
    const/16 v3, 0xa

    .line 318
    iget-object v1, p0, Lcom/google/android/exoplayer/text/eia608/Eia608TrackRenderer;->captionStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 319
    .local v0, "buildLength":I
    if-lez v0, :cond_19

    iget-object v1, p0, Lcom/google/android/exoplayer/text/eia608/Eia608TrackRenderer;->captionStringBuilder:Ljava/lang/StringBuilder;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v1

    if-eq v1, v3, :cond_19

    .line 320
    iget-object v1, p0, Lcom/google/android/exoplayer/text/eia608/Eia608TrackRenderer;->captionStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 322
    :cond_19
    return-void
.end method

.method private maybeParsePendingSample(J)V
    .registers 10
    .param p1, "positionUs"    # J

    .prologue
    .line 192
    iget-object v1, p0, Lcom/google/android/exoplayer/text/eia608/Eia608TrackRenderer;->sampleHolder:Lcom/google/android/exoplayer/SampleHolder;

    iget-wide v2, v1, Lcom/google/android/exoplayer/SampleHolder;->timeUs:J

    const-wide/32 v4, 0x4c4b40

    add-long/2addr v4, p1

    cmp-long v1, v2, v4

    if-lez v1, :cond_d

    .line 201
    :cond_c
    :goto_c
    return-void

    .line 196
    :cond_d
    iget-object v1, p0, Lcom/google/android/exoplayer/text/eia608/Eia608TrackRenderer;->eia608Parser:Lcom/google/android/exoplayer/text/eia608/Eia608Parser;

    iget-object v2, p0, Lcom/google/android/exoplayer/text/eia608/Eia608TrackRenderer;->sampleHolder:Lcom/google/android/exoplayer/SampleHolder;

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer/text/eia608/Eia608Parser;->parse(Lcom/google/android/exoplayer/SampleHolder;)Lcom/google/android/exoplayer/text/eia608/ClosedCaptionList;

    move-result-object v0

    .line 197
    .local v0, "holder":Lcom/google/android/exoplayer/text/eia608/ClosedCaptionList;
    invoke-direct {p0}, Lcom/google/android/exoplayer/text/eia608/Eia608TrackRenderer;->clearPendingSample()V

    .line 198
    if-eqz v0, :cond_c

    .line 199
    iget-object v1, p0, Lcom/google/android/exoplayer/text/eia608/Eia608TrackRenderer;->pendingCaptionLists:Ljava/util/TreeSet;

    invoke-virtual {v1, v0}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    goto :goto_c
.end method

.method private setCaptionMode(I)V
    .registers 4
    .param p1, "captionMode"    # I

    .prologue
    .line 304
    iget v0, p0, Lcom/google/android/exoplayer/text/eia608/Eia608TrackRenderer;->captionMode:I

    if-ne v0, p1, :cond_5

    .line 315
    :cond_4
    :goto_4
    return-void

    .line 308
    :cond_5
    iput p1, p0, Lcom/google/android/exoplayer/text/eia608/Eia608TrackRenderer;->captionMode:I

    .line 310
    iget-object v0, p0, Lcom/google/android/exoplayer/text/eia608/Eia608TrackRenderer;->captionStringBuilder:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 311
    const/4 v0, 0x1

    if-eq p1, v0, :cond_12

    if-nez p1, :cond_4

    .line 313
    :cond_12
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer/text/eia608/Eia608TrackRenderer;->caption:Ljava/lang/String;

    goto :goto_4
.end method


# virtual methods
.method protected doSomeWork(JJZ)V
    .registers 13
    .param p1, "positionUs"    # J
    .param p3, "elapsedRealtimeUs"    # J
    .param p5, "sourceIsReady"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .prologue
    const/4 v2, -0x1

    const/4 v3, -0x3

    .line 115
    invoke-direct {p0}, Lcom/google/android/exoplayer/text/eia608/Eia608TrackRenderer;->isSamplePending()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 116
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer/text/eia608/Eia608TrackRenderer;->maybeParsePendingSample(J)V

    .line 119
    :cond_b
    iget-boolean v4, p0, Lcom/google/android/exoplayer/text/eia608/Eia608TrackRenderer;->inputStreamEnded:Z

    if-eqz v4, :cond_26

    move v1, v2

    .line 120
    .local v1, "result":I
    :cond_10
    :goto_10
    invoke-direct {p0}, Lcom/google/android/exoplayer/text/eia608/Eia608TrackRenderer;->isSamplePending()Z

    move-result v4

    if-nez v4, :cond_42

    if-ne v1, v3, :cond_42

    .line 121
    iget-object v4, p0, Lcom/google/android/exoplayer/text/eia608/Eia608TrackRenderer;->formatHolder:Lcom/google/android/exoplayer/MediaFormatHolder;

    iget-object v5, p0, Lcom/google/android/exoplayer/text/eia608/Eia608TrackRenderer;->sampleHolder:Lcom/google/android/exoplayer/SampleHolder;

    invoke-virtual {p0, p1, p2, v4, v5}, Lcom/google/android/exoplayer/text/eia608/Eia608TrackRenderer;->readSource(JLcom/google/android/exoplayer/MediaFormatHolder;Lcom/google/android/exoplayer/SampleHolder;)I

    move-result v1

    .line 122
    if-ne v1, v3, :cond_28

    .line 123
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer/text/eia608/Eia608TrackRenderer;->maybeParsePendingSample(J)V

    goto :goto_10

    .end local v1    # "result":I
    :cond_26
    move v1, v3

    .line 119
    goto :goto_10

    .line 124
    .restart local v1    # "result":I
    :cond_28
    if-ne v1, v2, :cond_10

    .line 125
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/google/android/exoplayer/text/eia608/Eia608TrackRenderer;->inputStreamEnded:Z

    goto :goto_10

    .line 135
    :cond_2e
    iget-object v2, p0, Lcom/google/android/exoplayer/text/eia608/Eia608TrackRenderer;->pendingCaptionLists:Ljava/util/TreeSet;

    invoke-virtual {v2}, Ljava/util/TreeSet;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/text/eia608/ClosedCaptionList;

    .line 136
    .local v0, "nextCaptionList":Lcom/google/android/exoplayer/text/eia608/ClosedCaptionList;
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer/text/eia608/Eia608TrackRenderer;->consumeCaptionList(Lcom/google/android/exoplayer/text/eia608/ClosedCaptionList;)V

    .line 138
    iget-boolean v2, v0, Lcom/google/android/exoplayer/text/eia608/ClosedCaptionList;->decodeOnly:Z

    if-nez v2, :cond_42

    .line 139
    iget-object v2, p0, Lcom/google/android/exoplayer/text/eia608/Eia608TrackRenderer;->caption:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/google/android/exoplayer/text/eia608/Eia608TrackRenderer;->invokeRenderer(Ljava/lang/String;)V

    .line 129
    .end local v0    # "nextCaptionList":Lcom/google/android/exoplayer/text/eia608/ClosedCaptionList;
    :cond_42
    iget-object v2, p0, Lcom/google/android/exoplayer/text/eia608/Eia608TrackRenderer;->pendingCaptionLists:Ljava/util/TreeSet;

    invoke-virtual {v2}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_58

    .line 130
    iget-object v2, p0, Lcom/google/android/exoplayer/text/eia608/Eia608TrackRenderer;->pendingCaptionLists:Ljava/util/TreeSet;

    invoke-virtual {v2}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer/text/eia608/ClosedCaptionList;

    iget-wide v2, v2, Lcom/google/android/exoplayer/text/eia608/ClosedCaptionList;->timeUs:J

    cmp-long v2, v2, p1

    if-lez v2, :cond_2e

    .line 142
    :cond_58
    return-void
.end method

.method protected getBufferedPositionUs()J
    .registers 3

    .prologue
    .line 146
    const-wide/16 v0, -0x3

    return-wide v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .registers 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 175
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_10

    .line 180
    const/4 v0, 0x0

    :goto_6
    return v0

    .line 177
    :pswitch_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer/text/eia608/Eia608TrackRenderer;->invokeRendererInternal(Ljava/lang/String;)V

    .line 178
    const/4 v0, 0x1

    goto :goto_6

    .line 175
    :pswitch_data_10
    .packed-switch 0x0
        :pswitch_7
    .end packed-switch
.end method

.method protected handlesTrack(Lcom/google/android/exoplayer/MediaFormat;)Z
    .registers 4
    .param p1, "mediaFormat"    # Lcom/google/android/exoplayer/MediaFormat;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/google/android/exoplayer/text/eia608/Eia608TrackRenderer;->eia608Parser:Lcom/google/android/exoplayer/text/eia608/Eia608Parser;

    iget-object v1, p1, Lcom/google/android/exoplayer/MediaFormat;->mimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer/text/eia608/Eia608Parser;->canParse(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected isEnded()Z
    .registers 2

    .prologue
    .line 151
    iget-boolean v0, p0, Lcom/google/android/exoplayer/text/eia608/Eia608TrackRenderer;->inputStreamEnded:Z

    return v0
.end method

.method protected isReady()Z
    .registers 2

    .prologue
    .line 156
    const/4 v0, 0x1

    return v0
.end method

.method protected onDiscontinuity(J)V
    .registers 6
    .param p1, "positionUs"    # J

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 103
    iput-boolean v1, p0, Lcom/google/android/exoplayer/text/eia608/Eia608TrackRenderer;->inputStreamEnded:Z

    .line 104
    iput-object v2, p0, Lcom/google/android/exoplayer/text/eia608/Eia608TrackRenderer;->repeatableControl:Lcom/google/android/exoplayer/text/eia608/ClosedCaptionCtrl;

    .line 105
    iget-object v0, p0, Lcom/google/android/exoplayer/text/eia608/Eia608TrackRenderer;->pendingCaptionLists:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->clear()V

    .line 106
    invoke-direct {p0}, Lcom/google/android/exoplayer/text/eia608/Eia608TrackRenderer;->clearPendingSample()V

    .line 107
    const/4 v0, 0x4

    iput v0, p0, Lcom/google/android/exoplayer/text/eia608/Eia608TrackRenderer;->captionRowCount:I

    .line 108
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer/text/eia608/Eia608TrackRenderer;->setCaptionMode(I)V

    .line 109
    invoke-direct {p0, v2}, Lcom/google/android/exoplayer/text/eia608/Eia608TrackRenderer;->invokeRenderer(Ljava/lang/String;)V

    .line 110
    return-void
.end method

.method protected onEnabled(IJZ)V
    .registers 5
    .param p1, "track"    # I
    .param p2, "positionUs"    # J
    .param p4, "joining"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 98
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer/SampleSourceTrackRenderer;->onEnabled(IJZ)V

    .line 99
    return-void
.end method
