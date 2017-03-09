.class public final Lcom/google/android/exoplayer/MediaFormat;
.super Ljava/lang/Object;
.source "MediaFormat.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/exoplayer/MediaFormat;",
            ">;"
        }
    .end annotation
.end field

.field public static final NO_VALUE:I = -0x1

.field public static final OFFSET_SAMPLE_RELATIVE:J = 0x7fffffffffffffffL


# instance fields
.field public final adaptive:Z

.field public final bitrate:I

.field public final channelCount:I

.field public final durationUs:J

.field public final encoderDelay:I

.field public final encoderPadding:I

.field private frameworkMediaFormat:Landroid/media/MediaFormat;

.field private hashCode:I

.field public final height:I

.field public final initializationData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation
.end field

.field public final language:Ljava/lang/String;

.field public final maxHeight:I

.field public final maxInputSize:I

.field public final maxWidth:I

.field public final mimeType:Ljava/lang/String;

.field public final pcmEncoding:I

.field public final pixelWidthHeightRatio:F

.field public final projectionData:[B

.field public final rotationDegrees:I

.field public final sampleRate:I

.field public final stereoMode:I

.field public final subsampleOffsetUs:J

.field public final trackId:Ljava/lang/String;

.field public final width:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 526
    new-instance v0, Lcom/google/android/exoplayer/MediaFormat$1;

    invoke-direct {v0}, Lcom/google/android/exoplayer/MediaFormat$1;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer/MediaFormat;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 10
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 243
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 244
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/exoplayer/MediaFormat;->trackId:Ljava/lang/String;

    .line 245
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/exoplayer/MediaFormat;->mimeType:Ljava/lang/String;

    .line 246
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/google/android/exoplayer/MediaFormat;->bitrate:I

    .line 247
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/google/android/exoplayer/MediaFormat;->maxInputSize:I

    .line 248
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/google/android/exoplayer/MediaFormat;->durationUs:J

    .line 249
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/google/android/exoplayer/MediaFormat;->width:I

    .line 250
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/google/android/exoplayer/MediaFormat;->height:I

    .line 251
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/google/android/exoplayer/MediaFormat;->rotationDegrees:I

    .line 252
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/google/android/exoplayer/MediaFormat;->pixelWidthHeightRatio:F

    .line 253
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/google/android/exoplayer/MediaFormat;->channelCount:I

    .line 254
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/google/android/exoplayer/MediaFormat;->sampleRate:I

    .line 255
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/exoplayer/MediaFormat;->language:Ljava/lang/String;

    .line 256
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/google/android/exoplayer/MediaFormat;->subsampleOffsetUs:J

    .line 257
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/android/exoplayer/MediaFormat;->initializationData:Ljava/util/List;

    .line 258
    iget-object v1, p0, Lcom/google/android/exoplayer/MediaFormat;->initializationData:Ljava/util/List;

    invoke-virtual {p1, v1, v4}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 259
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v2, :cond_9d

    move v1, v2

    :goto_67
    iput-boolean v1, p0, Lcom/google/android/exoplayer/MediaFormat;->adaptive:Z

    .line 260
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/google/android/exoplayer/MediaFormat;->maxWidth:I

    .line 261
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/google/android/exoplayer/MediaFormat;->maxHeight:I

    .line 262
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/google/android/exoplayer/MediaFormat;->pcmEncoding:I

    .line 263
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/google/android/exoplayer/MediaFormat;->encoderDelay:I

    .line 264
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/google/android/exoplayer/MediaFormat;->encoderPadding:I

    .line 265
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_9f

    move v0, v2

    .line 266
    .local v0, "hasProjectionData":Z
    :goto_8e
    if-eqz v0, :cond_a1

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    :goto_94
    iput-object v1, p0, Lcom/google/android/exoplayer/MediaFormat;->projectionData:[B

    .line 267
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/google/android/exoplayer/MediaFormat;->stereoMode:I

    .line 268
    return-void

    .end local v0    # "hasProjectionData":Z
    :cond_9d
    move v1, v3

    .line 259
    goto :goto_67

    :cond_9f
    move v0, v3

    .line 265
    goto :goto_8e

    .restart local v0    # "hasProjectionData":Z
    :cond_a1
    move-object v1, v4

    .line 266
    goto :goto_94
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;IIJIIIFIILjava/lang/String;JLjava/util/List;ZIIIII[BI)V
    .registers 28
    .param p1, "trackId"    # Ljava/lang/String;
    .param p2, "mimeType"    # Ljava/lang/String;
    .param p3, "bitrate"    # I
    .param p4, "maxInputSize"    # I
    .param p5, "durationUs"    # J
    .param p7, "width"    # I
    .param p8, "height"    # I
    .param p9, "rotationDegrees"    # I
    .param p10, "pixelWidthHeightRatio"    # F
    .param p11, "channelCount"    # I
    .param p12, "sampleRate"    # I
    .param p13, "language"    # Ljava/lang/String;
    .param p14, "subsampleOffsetUs"    # J
    .param p17, "adaptive"    # Z
    .param p18, "maxWidth"    # I
    .param p19, "maxHeight"    # I
    .param p20, "pcmEncoding"    # I
    .param p21, "encoderDelay"    # I
    .param p22, "encoderPadding"    # I
    .param p23, "projectionData"    # [B
    .param p24, "stereoMode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIJIIIFII",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/List",
            "<[B>;ZIIIII[BI)V"
        }
    .end annotation

    .prologue
    .line 275
    .local p16, "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 276
    iput-object p1, p0, Lcom/google/android/exoplayer/MediaFormat;->trackId:Ljava/lang/String;

    .line 277
    invoke-static {p2}, Lcom/google/android/exoplayer/util/Assertions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/exoplayer/MediaFormat;->mimeType:Ljava/lang/String;

    .line 278
    iput p3, p0, Lcom/google/android/exoplayer/MediaFormat;->bitrate:I

    .line 279
    iput p4, p0, Lcom/google/android/exoplayer/MediaFormat;->maxInputSize:I

    .line 280
    iput-wide p5, p0, Lcom/google/android/exoplayer/MediaFormat;->durationUs:J

    .line 281
    iput p7, p0, Lcom/google/android/exoplayer/MediaFormat;->width:I

    .line 282
    iput p8, p0, Lcom/google/android/exoplayer/MediaFormat;->height:I

    .line 283
    iput p9, p0, Lcom/google/android/exoplayer/MediaFormat;->rotationDegrees:I

    .line 284
    iput p10, p0, Lcom/google/android/exoplayer/MediaFormat;->pixelWidthHeightRatio:F

    .line 285
    iput p11, p0, Lcom/google/android/exoplayer/MediaFormat;->channelCount:I

    .line 286
    iput p12, p0, Lcom/google/android/exoplayer/MediaFormat;->sampleRate:I

    .line 287
    move-object/from16 v0, p13

    iput-object v0, p0, Lcom/google/android/exoplayer/MediaFormat;->language:Ljava/lang/String;

    .line 288
    move-wide/from16 v0, p14

    iput-wide v0, p0, Lcom/google/android/exoplayer/MediaFormat;->subsampleOffsetUs:J

    .line 289
    if-nez p16, :cond_2b

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p16

    .end local p16    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    :cond_2b
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/google/android/exoplayer/MediaFormat;->initializationData:Ljava/util/List;

    .line 291
    move/from16 v0, p17

    iput-boolean v0, p0, Lcom/google/android/exoplayer/MediaFormat;->adaptive:Z

    .line 292
    move/from16 v0, p18

    iput v0, p0, Lcom/google/android/exoplayer/MediaFormat;->maxWidth:I

    .line 293
    move/from16 v0, p19

    iput v0, p0, Lcom/google/android/exoplayer/MediaFormat;->maxHeight:I

    .line 294
    move/from16 v0, p20

    iput v0, p0, Lcom/google/android/exoplayer/MediaFormat;->pcmEncoding:I

    .line 295
    move/from16 v0, p21

    iput v0, p0, Lcom/google/android/exoplayer/MediaFormat;->encoderDelay:I

    .line 296
    move/from16 v0, p22

    iput v0, p0, Lcom/google/android/exoplayer/MediaFormat;->encoderPadding:I

    .line 297
    move-object/from16 v0, p23

    iput-object v0, p0, Lcom/google/android/exoplayer/MediaFormat;->projectionData:[B

    .line 298
    move/from16 v0, p24

    iput v0, p0, Lcom/google/android/exoplayer/MediaFormat;->stereoMode:I

    .line 299
    return-void
.end method

.method public static createAudioFormat(Ljava/lang/String;Ljava/lang/String;IIJIILjava/util/List;Ljava/lang/String;)Lcom/google/android/exoplayer/MediaFormat;
    .registers 22
    .param p0, "trackId"    # Ljava/lang/String;
    .param p1, "mimeType"    # Ljava/lang/String;
    .param p2, "bitrate"    # I
    .param p3, "maxInputSize"    # I
    .param p4, "durationUs"    # J
    .param p6, "channelCount"    # I
    .param p7, "sampleRate"    # I
    .param p9, "language"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIJII",
            "Ljava/util/List",
            "<[B>;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/exoplayer/MediaFormat;"
        }
    .end annotation

    .prologue
    .line 197
    .local p8, "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    const/4 v10, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-wide/from16 v4, p4

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    invoke-static/range {v0 .. v10}, Lcom/google/android/exoplayer/MediaFormat;->createAudioFormat(Ljava/lang/String;Ljava/lang/String;IIJIILjava/util/List;Ljava/lang/String;I)Lcom/google/android/exoplayer/MediaFormat;

    move-result-object v0

    return-object v0
.end method

.method public static createAudioFormat(Ljava/lang/String;Ljava/lang/String;IIJIILjava/util/List;Ljava/lang/String;I)Lcom/google/android/exoplayer/MediaFormat;
    .registers 37
    .param p0, "trackId"    # Ljava/lang/String;
    .param p1, "mimeType"    # Ljava/lang/String;
    .param p2, "bitrate"    # I
    .param p3, "maxInputSize"    # I
    .param p4, "durationUs"    # J
    .param p6, "channelCount"    # I
    .param p7, "sampleRate"    # I
    .param p9, "language"    # Ljava/lang/String;
    .param p10, "pcmEncoding"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIJII",
            "Ljava/util/List",
            "<[B>;",
            "Ljava/lang/String;",
            "I)",
            "Lcom/google/android/exoplayer/MediaFormat;"
        }
    .end annotation

    .prologue
    .line 204
    .local p8, "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    new-instance v0, Lcom/google/android/exoplayer/MediaFormat;

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/4 v9, -0x1

    const/high16 v10, -0x40800000

    const-wide v14, 0x7fffffffffffffffL

    const/16 v17, 0x0

    const/16 v18, -0x1

    const/16 v19, -0x1

    const/16 v21, -0x1

    const/16 v22, -0x1

    const/16 v23, 0x0

    const/16 v24, -0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move-wide/from16 v5, p4

    move/from16 v11, p6

    move/from16 v12, p7

    move-object/from16 v13, p9

    move-object/from16 v16, p8

    move/from16 v20, p10

    invoke-direct/range {v0 .. v24}, Lcom/google/android/exoplayer/MediaFormat;-><init>(Ljava/lang/String;Ljava/lang/String;IIJIIIFIILjava/lang/String;JLjava/util/List;ZIIIII[BI)V

    return-object v0
.end method

.method public static createFormatForMimeType(Ljava/lang/String;Ljava/lang/String;IJ)Lcom/google/android/exoplayer/MediaFormat;
    .registers 30
    .param p0, "trackId"    # Ljava/lang/String;
    .param p1, "mimeType"    # Ljava/lang/String;
    .param p2, "bitrate"    # I
    .param p3, "durationUs"    # J

    .prologue
    .line 233
    new-instance v0, Lcom/google/android/exoplayer/MediaFormat;

    const/4 v4, -0x1

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/4 v9, -0x1

    const/high16 v10, -0x40800000

    const/4 v11, -0x1

    const/4 v12, -0x1

    const/4 v13, 0x0

    const-wide v14, 0x7fffffffffffffffL

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, -0x1

    const/16 v19, -0x1

    const/16 v20, -0x1

    const/16 v21, -0x1

    const/16 v22, -0x1

    const/16 v23, 0x0

    const/16 v24, -0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-wide/from16 v5, p3

    invoke-direct/range {v0 .. v24}, Lcom/google/android/exoplayer/MediaFormat;-><init>(Ljava/lang/String;Ljava/lang/String;IIJIIIFIILjava/lang/String;JLjava/util/List;ZIIIII[BI)V

    return-object v0
.end method

.method public static createId3Format()Lcom/google/android/exoplayer/MediaFormat;
    .registers 6

    .prologue
    .line 239
    const/4 v0, 0x0

    const-string v1, "application/id3"

    const/4 v2, -0x1

    const-wide/16 v4, -0x1

    invoke-static {v0, v1, v2, v4, v5}, Lcom/google/android/exoplayer/MediaFormat;->createFormatForMimeType(Ljava/lang/String;Ljava/lang/String;IJ)Lcom/google/android/exoplayer/MediaFormat;

    move-result-object v0

    return-object v0
.end method

.method public static createImageFormat(Ljava/lang/String;Ljava/lang/String;IJLjava/util/List;Ljava/lang/String;)Lcom/google/android/exoplayer/MediaFormat;
    .registers 32
    .param p0, "trackId"    # Ljava/lang/String;
    .param p1, "mimeType"    # Ljava/lang/String;
    .param p2, "bitrate"    # I
    .param p3, "durationUs"    # J
    .param p6, "language"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IJ",
            "Ljava/util/List",
            "<[B>;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/exoplayer/MediaFormat;"
        }
    .end annotation

    .prologue
    .line 225
    .local p5, "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    new-instance v0, Lcom/google/android/exoplayer/MediaFormat;

    const/4 v4, -0x1

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/4 v9, -0x1

    const/high16 v10, -0x40800000

    const/4 v11, -0x1

    const/4 v12, -0x1

    const-wide v14, 0x7fffffffffffffffL

    const/16 v17, 0x0

    const/16 v18, -0x1

    const/16 v19, -0x1

    const/16 v20, -0x1

    const/16 v21, -0x1

    const/16 v22, -0x1

    const/16 v23, 0x0

    const/16 v24, -0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-wide/from16 v5, p3

    move-object/from16 v13, p6

    move-object/from16 v16, p5

    invoke-direct/range {v0 .. v24}, Lcom/google/android/exoplayer/MediaFormat;-><init>(Ljava/lang/String;Ljava/lang/String;IIJIIIFIILjava/lang/String;JLjava/util/List;ZIIIII[BI)V

    return-object v0
.end method

.method public static createTextFormat(Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;)Lcom/google/android/exoplayer/MediaFormat;
    .registers 15
    .param p0, "trackId"    # Ljava/lang/String;
    .param p1, "mimeType"    # Ljava/lang/String;
    .param p2, "bitrate"    # I
    .param p3, "durationUs"    # J
    .param p5, "language"    # Ljava/lang/String;

    .prologue
    .line 212
    const-wide v6, 0x7fffffffffffffffL

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    move-object v5, p5

    invoke-static/range {v0 .. v7}, Lcom/google/android/exoplayer/MediaFormat;->createTextFormat(Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;J)Lcom/google/android/exoplayer/MediaFormat;

    move-result-object v0

    return-object v0
.end method

.method public static createTextFormat(Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;J)Lcom/google/android/exoplayer/MediaFormat;
    .registers 33
    .param p0, "trackId"    # Ljava/lang/String;
    .param p1, "mimeType"    # Ljava/lang/String;
    .param p2, "bitrate"    # I
    .param p3, "durationUs"    # J
    .param p5, "language"    # Ljava/lang/String;
    .param p6, "subsampleOffsetUs"    # J

    .prologue
    .line 218
    new-instance v0, Lcom/google/android/exoplayer/MediaFormat;

    const/4 v4, -0x1

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/4 v9, -0x1

    const/high16 v10, -0x40800000

    const/4 v11, -0x1

    const/4 v12, -0x1

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, -0x1

    const/16 v19, -0x1

    const/16 v20, -0x1

    const/16 v21, -0x1

    const/16 v22, -0x1

    const/16 v23, 0x0

    const/16 v24, -0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-wide/from16 v5, p3

    move-object/from16 v13, p5

    move-wide/from16 v14, p6

    invoke-direct/range {v0 .. v24}, Lcom/google/android/exoplayer/MediaFormat;-><init>(Ljava/lang/String;Ljava/lang/String;IIJIIIFIILjava/lang/String;JLjava/util/List;ZIIIII[BI)V

    return-object v0
.end method

.method public static createVideoFormat(Ljava/lang/String;Ljava/lang/String;IIJIILjava/util/List;)Lcom/google/android/exoplayer/MediaFormat;
    .registers 23
    .param p0, "trackId"    # Ljava/lang/String;
    .param p1, "mimeType"    # Ljava/lang/String;
    .param p2, "bitrate"    # I
    .param p3, "maxInputSize"    # I
    .param p4, "durationUs"    # J
    .param p6, "width"    # I
    .param p7, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIJII",
            "Ljava/util/List",
            "<[B>;)",
            "Lcom/google/android/exoplayer/MediaFormat;"
        }
    .end annotation

    .prologue
    .line 171
    .local p8, "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    const/4 v9, -0x1

    const/high16 v10, -0x40800000

    const/4 v11, 0x0

    const/4 v12, -0x1

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-wide/from16 v4, p4

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    invoke-static/range {v0 .. v12}, Lcom/google/android/exoplayer/MediaFormat;->createVideoFormat(Ljava/lang/String;Ljava/lang/String;IIJIILjava/util/List;IF[BI)Lcom/google/android/exoplayer/MediaFormat;

    move-result-object v0

    return-object v0
.end method

.method public static createVideoFormat(Ljava/lang/String;Ljava/lang/String;IIJIILjava/util/List;IF)Lcom/google/android/exoplayer/MediaFormat;
    .registers 37
    .param p0, "trackId"    # Ljava/lang/String;
    .param p1, "mimeType"    # Ljava/lang/String;
    .param p2, "bitrate"    # I
    .param p3, "maxInputSize"    # I
    .param p4, "durationUs"    # J
    .param p6, "width"    # I
    .param p7, "height"    # I
    .param p9, "rotationDegrees"    # I
    .param p10, "pixelWidthHeightRatio"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIJII",
            "Ljava/util/List",
            "<[B>;IF)",
            "Lcom/google/android/exoplayer/MediaFormat;"
        }
    .end annotation

    .prologue
    .line 178
    .local p8, "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    new-instance v0, Lcom/google/android/exoplayer/MediaFormat;

    const/4 v11, -0x1

    const/4 v12, -0x1

    const/4 v13, 0x0

    const-wide v14, 0x7fffffffffffffffL

    const/16 v17, 0x0

    const/16 v18, -0x1

    const/16 v19, -0x1

    const/16 v20, -0x1

    const/16 v21, -0x1

    const/16 v22, -0x1

    const/16 v23, 0x0

    const/16 v24, -0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move-wide/from16 v5, p4

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p9

    move/from16 v10, p10

    move-object/from16 v16, p8

    invoke-direct/range {v0 .. v24}, Lcom/google/android/exoplayer/MediaFormat;-><init>(Ljava/lang/String;Ljava/lang/String;IIJIIIFIILjava/lang/String;JLjava/util/List;ZIIIII[BI)V

    return-object v0
.end method

.method public static createVideoFormat(Ljava/lang/String;Ljava/lang/String;IIJIILjava/util/List;IF[BI)Lcom/google/android/exoplayer/MediaFormat;
    .registers 39
    .param p0, "trackId"    # Ljava/lang/String;
    .param p1, "mimeType"    # Ljava/lang/String;
    .param p2, "bitrate"    # I
    .param p3, "maxInputSize"    # I
    .param p4, "durationUs"    # J
    .param p6, "width"    # I
    .param p7, "height"    # I
    .param p9, "rotationDegrees"    # I
    .param p10, "pixelWidthHeightRatio"    # F
    .param p11, "projectionData"    # [B
    .param p12, "stereoMode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIJII",
            "Ljava/util/List",
            "<[B>;IF[BI)",
            "Lcom/google/android/exoplayer/MediaFormat;"
        }
    .end annotation

    .prologue
    .line 188
    .local p8, "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    new-instance v0, Lcom/google/android/exoplayer/MediaFormat;

    const/4 v11, -0x1

    const/4 v12, -0x1

    const/4 v13, 0x0

    const-wide v14, 0x7fffffffffffffffL

    const/16 v17, 0x0

    const/16 v18, -0x1

    const/16 v19, -0x1

    const/16 v20, -0x1

    const/16 v21, -0x1

    const/16 v22, -0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move-wide/from16 v5, p4

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p9

    move/from16 v10, p10

    move-object/from16 v16, p8

    move-object/from16 v23, p11

    move/from16 v24, p12

    invoke-direct/range {v0 .. v24}, Lcom/google/android/exoplayer/MediaFormat;-><init>(Ljava/lang/String;Ljava/lang/String;IIJIIIFIILjava/lang/String;JLjava/util/List;ZIIIII[BI)V

    return-object v0
.end method

.method private static final maybeSetIntegerV16(Landroid/media/MediaFormat;Ljava/lang/String;I)V
    .registers 4
    .param p0, "format"    # Landroid/media/MediaFormat;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 485
    const/4 v0, -0x1

    if-eq p2, v0, :cond_6

    .line 486
    invoke-virtual {p0, p1, p2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 488
    :cond_6
    return-void
.end method

.method private static final maybeSetStringV16(Landroid/media/MediaFormat;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p0, "format"    # Landroid/media/MediaFormat;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 477
    if-eqz p2, :cond_5

    .line 478
    invoke-virtual {p0, p1, p2}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    :cond_5
    return-void
.end method


# virtual methods
.method public copyAsAdaptive(Ljava/lang/String;)Lcom/google/android/exoplayer/MediaFormat;
    .registers 28
    .param p1, "trackId"    # Ljava/lang/String;

    .prologue
    .line 345
    new-instance v1, Lcom/google/android/exoplayer/MediaFormat;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer/MediaFormat;->mimeType:Ljava/lang/String;

    const/4 v4, -0x1

    const/4 v5, -0x1

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/google/android/exoplayer/MediaFormat;->durationUs:J

    const/4 v8, -0x1

    const/4 v9, -0x1

    const/4 v10, -0x1

    const/high16 v11, -0x40800000

    const/4 v12, -0x1

    const/4 v13, -0x1

    const/4 v14, 0x0

    const-wide v15, 0x7fffffffffffffffL

    const/16 v17, 0x0

    const/16 v18, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer/MediaFormat;->maxWidth:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer/MediaFormat;->maxHeight:I

    move/from16 v20, v0

    const/16 v21, -0x1

    const/16 v22, -0x1

    const/16 v23, -0x1

    const/16 v24, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer/MediaFormat;->stereoMode:I

    move/from16 v25, v0

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v25}, Lcom/google/android/exoplayer/MediaFormat;-><init>(Ljava/lang/String;Ljava/lang/String;IIJIIIFIILjava/lang/String;JLjava/util/List;ZIIIII[BI)V

    return-object v1
.end method

.method public copyWithDurationUs(J)Lcom/google/android/exoplayer/MediaFormat;
    .registers 30
    .param p1, "durationUs"    # J

    .prologue
    .line 323
    new-instance v1, Lcom/google/android/exoplayer/MediaFormat;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer/MediaFormat;->trackId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer/MediaFormat;->mimeType:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/exoplayer/MediaFormat;->bitrate:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/google/android/exoplayer/MediaFormat;->maxInputSize:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/google/android/exoplayer/MediaFormat;->width:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/google/android/exoplayer/MediaFormat;->height:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/google/android/exoplayer/MediaFormat;->rotationDegrees:I

    move-object/from16 v0, p0

    iget v11, v0, Lcom/google/android/exoplayer/MediaFormat;->pixelWidthHeightRatio:F

    move-object/from16 v0, p0

    iget v12, v0, Lcom/google/android/exoplayer/MediaFormat;->channelCount:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/google/android/exoplayer/MediaFormat;->sampleRate:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/exoplayer/MediaFormat;->language:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/google/android/exoplayer/MediaFormat;->subsampleOffsetUs:J

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/MediaFormat;->initializationData:Ljava/util/List;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/exoplayer/MediaFormat;->adaptive:Z

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer/MediaFormat;->maxWidth:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer/MediaFormat;->maxHeight:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer/MediaFormat;->pcmEncoding:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer/MediaFormat;->encoderDelay:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer/MediaFormat;->encoderPadding:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/MediaFormat;->projectionData:[B

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer/MediaFormat;->stereoMode:I

    move/from16 v25, v0

    move-wide/from16 v6, p1

    invoke-direct/range {v1 .. v25}, Lcom/google/android/exoplayer/MediaFormat;-><init>(Ljava/lang/String;Ljava/lang/String;IIJIIIFIILjava/lang/String;JLjava/util/List;ZIIIII[BI)V

    return-object v1
.end method

.method public copyWithFixedTrackInfo(Ljava/lang/String;IIILjava/lang/String;)Lcom/google/android/exoplayer/MediaFormat;
    .registers 32
    .param p1, "trackId"    # Ljava/lang/String;
    .param p2, "bitrate"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "language"    # Ljava/lang/String;

    .prologue
    .line 338
    new-instance v1, Lcom/google/android/exoplayer/MediaFormat;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer/MediaFormat;->mimeType:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/google/android/exoplayer/MediaFormat;->maxInputSize:I

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/google/android/exoplayer/MediaFormat;->durationUs:J

    move-object/from16 v0, p0

    iget v10, v0, Lcom/google/android/exoplayer/MediaFormat;->rotationDegrees:I

    move-object/from16 v0, p0

    iget v11, v0, Lcom/google/android/exoplayer/MediaFormat;->pixelWidthHeightRatio:F

    move-object/from16 v0, p0

    iget v12, v0, Lcom/google/android/exoplayer/MediaFormat;->channelCount:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/google/android/exoplayer/MediaFormat;->sampleRate:I

    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/google/android/exoplayer/MediaFormat;->subsampleOffsetUs:J

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/MediaFormat;->initializationData:Ljava/util/List;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/exoplayer/MediaFormat;->adaptive:Z

    move/from16 v18, v0

    const/16 v19, -0x1

    const/16 v20, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer/MediaFormat;->pcmEncoding:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer/MediaFormat;->encoderDelay:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer/MediaFormat;->encoderPadding:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/MediaFormat;->projectionData:[B

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer/MediaFormat;->stereoMode:I

    move/from16 v25, v0

    move-object/from16 v2, p1

    move/from16 v4, p2

    move/from16 v8, p3

    move/from16 v9, p4

    move-object/from16 v14, p5

    invoke-direct/range {v1 .. v25}, Lcom/google/android/exoplayer/MediaFormat;-><init>(Ljava/lang/String;Ljava/lang/String;IIJIIIFIILjava/lang/String;JLjava/util/List;ZIIIII[BI)V

    return-object v1
.end method

.method public copyWithGaplessInfo(II)Lcom/google/android/exoplayer/MediaFormat;
    .registers 29
    .param p1, "encoderDelay"    # I
    .param p2, "encoderPadding"    # I

    .prologue
    .line 351
    new-instance v1, Lcom/google/android/exoplayer/MediaFormat;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer/MediaFormat;->trackId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer/MediaFormat;->mimeType:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/exoplayer/MediaFormat;->bitrate:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/google/android/exoplayer/MediaFormat;->maxInputSize:I

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/google/android/exoplayer/MediaFormat;->durationUs:J

    move-object/from16 v0, p0

    iget v8, v0, Lcom/google/android/exoplayer/MediaFormat;->width:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/google/android/exoplayer/MediaFormat;->height:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/google/android/exoplayer/MediaFormat;->rotationDegrees:I

    move-object/from16 v0, p0

    iget v11, v0, Lcom/google/android/exoplayer/MediaFormat;->pixelWidthHeightRatio:F

    move-object/from16 v0, p0

    iget v12, v0, Lcom/google/android/exoplayer/MediaFormat;->channelCount:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/google/android/exoplayer/MediaFormat;->sampleRate:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/exoplayer/MediaFormat;->language:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/google/android/exoplayer/MediaFormat;->subsampleOffsetUs:J

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/MediaFormat;->initializationData:Ljava/util/List;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/exoplayer/MediaFormat;->adaptive:Z

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer/MediaFormat;->maxWidth:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer/MediaFormat;->maxHeight:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer/MediaFormat;->pcmEncoding:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/MediaFormat;->projectionData:[B

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer/MediaFormat;->stereoMode:I

    move/from16 v25, v0

    move/from16 v22, p1

    move/from16 v23, p2

    invoke-direct/range {v1 .. v25}, Lcom/google/android/exoplayer/MediaFormat;-><init>(Ljava/lang/String;Ljava/lang/String;IIJIIIFIILjava/lang/String;JLjava/util/List;ZIIIII[BI)V

    return-object v1
.end method

.method public copyWithLanguage(Ljava/lang/String;)Lcom/google/android/exoplayer/MediaFormat;
    .registers 28
    .param p1, "language"    # Ljava/lang/String;

    .prologue
    .line 330
    new-instance v1, Lcom/google/android/exoplayer/MediaFormat;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer/MediaFormat;->trackId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer/MediaFormat;->mimeType:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/exoplayer/MediaFormat;->bitrate:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/google/android/exoplayer/MediaFormat;->maxInputSize:I

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/google/android/exoplayer/MediaFormat;->durationUs:J

    move-object/from16 v0, p0

    iget v8, v0, Lcom/google/android/exoplayer/MediaFormat;->width:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/google/android/exoplayer/MediaFormat;->height:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/google/android/exoplayer/MediaFormat;->rotationDegrees:I

    move-object/from16 v0, p0

    iget v11, v0, Lcom/google/android/exoplayer/MediaFormat;->pixelWidthHeightRatio:F

    move-object/from16 v0, p0

    iget v12, v0, Lcom/google/android/exoplayer/MediaFormat;->channelCount:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/google/android/exoplayer/MediaFormat;->sampleRate:I

    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/google/android/exoplayer/MediaFormat;->subsampleOffsetUs:J

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/MediaFormat;->initializationData:Ljava/util/List;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/exoplayer/MediaFormat;->adaptive:Z

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer/MediaFormat;->maxWidth:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer/MediaFormat;->maxHeight:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer/MediaFormat;->pcmEncoding:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer/MediaFormat;->encoderDelay:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer/MediaFormat;->encoderPadding:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/MediaFormat;->projectionData:[B

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer/MediaFormat;->stereoMode:I

    move/from16 v25, v0

    move-object/from16 v14, p1

    invoke-direct/range {v1 .. v25}, Lcom/google/android/exoplayer/MediaFormat;-><init>(Ljava/lang/String;Ljava/lang/String;IIJIIIFIILjava/lang/String;JLjava/util/List;ZIIIII[BI)V

    return-object v1
.end method

.method public copyWithMaxInputSize(I)Lcom/google/android/exoplayer/MediaFormat;
    .registers 28
    .param p1, "maxInputSize"    # I

    .prologue
    .line 302
    new-instance v1, Lcom/google/android/exoplayer/MediaFormat;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer/MediaFormat;->trackId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer/MediaFormat;->mimeType:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/exoplayer/MediaFormat;->bitrate:I

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/google/android/exoplayer/MediaFormat;->durationUs:J

    move-object/from16 v0, p0

    iget v8, v0, Lcom/google/android/exoplayer/MediaFormat;->width:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/google/android/exoplayer/MediaFormat;->height:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/google/android/exoplayer/MediaFormat;->rotationDegrees:I

    move-object/from16 v0, p0

    iget v11, v0, Lcom/google/android/exoplayer/MediaFormat;->pixelWidthHeightRatio:F

    move-object/from16 v0, p0

    iget v12, v0, Lcom/google/android/exoplayer/MediaFormat;->channelCount:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/google/android/exoplayer/MediaFormat;->sampleRate:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/exoplayer/MediaFormat;->language:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/google/android/exoplayer/MediaFormat;->subsampleOffsetUs:J

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/MediaFormat;->initializationData:Ljava/util/List;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/exoplayer/MediaFormat;->adaptive:Z

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer/MediaFormat;->maxWidth:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer/MediaFormat;->maxHeight:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer/MediaFormat;->pcmEncoding:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer/MediaFormat;->encoderDelay:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer/MediaFormat;->encoderPadding:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/MediaFormat;->projectionData:[B

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer/MediaFormat;->stereoMode:I

    move/from16 v25, v0

    move/from16 v5, p1

    invoke-direct/range {v1 .. v25}, Lcom/google/android/exoplayer/MediaFormat;-><init>(Ljava/lang/String;Ljava/lang/String;IIJIIIFIILjava/lang/String;JLjava/util/List;ZIIIII[BI)V

    return-object v1
.end method

.method public copyWithMaxVideoDimensions(II)Lcom/google/android/exoplayer/MediaFormat;
    .registers 29
    .param p1, "maxWidth"    # I
    .param p2, "maxHeight"    # I

    .prologue
    .line 309
    new-instance v1, Lcom/google/android/exoplayer/MediaFormat;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer/MediaFormat;->trackId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer/MediaFormat;->mimeType:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/exoplayer/MediaFormat;->bitrate:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/google/android/exoplayer/MediaFormat;->maxInputSize:I

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/google/android/exoplayer/MediaFormat;->durationUs:J

    move-object/from16 v0, p0

    iget v8, v0, Lcom/google/android/exoplayer/MediaFormat;->width:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/google/android/exoplayer/MediaFormat;->height:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/google/android/exoplayer/MediaFormat;->rotationDegrees:I

    move-object/from16 v0, p0

    iget v11, v0, Lcom/google/android/exoplayer/MediaFormat;->pixelWidthHeightRatio:F

    move-object/from16 v0, p0

    iget v12, v0, Lcom/google/android/exoplayer/MediaFormat;->channelCount:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/google/android/exoplayer/MediaFormat;->sampleRate:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/exoplayer/MediaFormat;->language:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/google/android/exoplayer/MediaFormat;->subsampleOffsetUs:J

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/MediaFormat;->initializationData:Ljava/util/List;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/exoplayer/MediaFormat;->adaptive:Z

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer/MediaFormat;->pcmEncoding:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer/MediaFormat;->encoderDelay:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer/MediaFormat;->encoderPadding:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/MediaFormat;->projectionData:[B

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer/MediaFormat;->stereoMode:I

    move/from16 v25, v0

    move/from16 v19, p1

    move/from16 v20, p2

    invoke-direct/range {v1 .. v25}, Lcom/google/android/exoplayer/MediaFormat;-><init>(Ljava/lang/String;Ljava/lang/String;IIJIIIFIILjava/lang/String;JLjava/util/List;ZIIIII[BI)V

    return-object v1
.end method

.method public copyWithSubsampleOffsetUs(J)Lcom/google/android/exoplayer/MediaFormat;
    .registers 30
    .param p1, "subsampleOffsetUs"    # J

    .prologue
    .line 316
    new-instance v1, Lcom/google/android/exoplayer/MediaFormat;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer/MediaFormat;->trackId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer/MediaFormat;->mimeType:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/exoplayer/MediaFormat;->bitrate:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/google/android/exoplayer/MediaFormat;->maxInputSize:I

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/google/android/exoplayer/MediaFormat;->durationUs:J

    move-object/from16 v0, p0

    iget v8, v0, Lcom/google/android/exoplayer/MediaFormat;->width:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/google/android/exoplayer/MediaFormat;->height:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/google/android/exoplayer/MediaFormat;->rotationDegrees:I

    move-object/from16 v0, p0

    iget v11, v0, Lcom/google/android/exoplayer/MediaFormat;->pixelWidthHeightRatio:F

    move-object/from16 v0, p0

    iget v12, v0, Lcom/google/android/exoplayer/MediaFormat;->channelCount:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/google/android/exoplayer/MediaFormat;->sampleRate:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/exoplayer/MediaFormat;->language:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/MediaFormat;->initializationData:Ljava/util/List;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/exoplayer/MediaFormat;->adaptive:Z

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer/MediaFormat;->maxWidth:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer/MediaFormat;->maxHeight:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer/MediaFormat;->pcmEncoding:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer/MediaFormat;->encoderDelay:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer/MediaFormat;->encoderPadding:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/MediaFormat;->projectionData:[B

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer/MediaFormat;->stereoMode:I

    move/from16 v25, v0

    move-wide/from16 v15, p1

    invoke-direct/range {v1 .. v25}, Lcom/google/android/exoplayer/MediaFormat;-><init>(Ljava/lang/String;Ljava/lang/String;IIJIIIFIILjava/lang/String;JLjava/util/List;ZIIIII[BI)V

    return-object v1
.end method

.method public describeContents()I
    .registers 2

    .prologue
    .line 494
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 10
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 444
    if-ne p0, p1, :cond_6

    move v2, v4

    .line 471
    :goto_5
    return v2

    .line 447
    :cond_6
    if-eqz p1, :cond_12

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_14

    :cond_12
    move v2, v5

    .line 448
    goto :goto_5

    :cond_14
    move-object v1, p1

    .line 450
    check-cast v1, Lcom/google/android/exoplayer/MediaFormat;

    .line 451
    .local v1, "other":Lcom/google/android/exoplayer/MediaFormat;
    iget-boolean v2, p0, Lcom/google/android/exoplayer/MediaFormat;->adaptive:Z

    iget-boolean v3, v1, Lcom/google/android/exoplayer/MediaFormat;->adaptive:Z

    if-ne v2, v3, :cond_b9

    iget v2, p0, Lcom/google/android/exoplayer/MediaFormat;->bitrate:I

    iget v3, v1, Lcom/google/android/exoplayer/MediaFormat;->bitrate:I

    if-ne v2, v3, :cond_b9

    iget v2, p0, Lcom/google/android/exoplayer/MediaFormat;->maxInputSize:I

    iget v3, v1, Lcom/google/android/exoplayer/MediaFormat;->maxInputSize:I

    if-ne v2, v3, :cond_b9

    iget-wide v2, p0, Lcom/google/android/exoplayer/MediaFormat;->durationUs:J

    iget-wide v6, v1, Lcom/google/android/exoplayer/MediaFormat;->durationUs:J

    cmp-long v2, v2, v6

    if-nez v2, :cond_b9

    iget v2, p0, Lcom/google/android/exoplayer/MediaFormat;->width:I

    iget v3, v1, Lcom/google/android/exoplayer/MediaFormat;->width:I

    if-ne v2, v3, :cond_b9

    iget v2, p0, Lcom/google/android/exoplayer/MediaFormat;->height:I

    iget v3, v1, Lcom/google/android/exoplayer/MediaFormat;->height:I

    if-ne v2, v3, :cond_b9

    iget v2, p0, Lcom/google/android/exoplayer/MediaFormat;->rotationDegrees:I

    iget v3, v1, Lcom/google/android/exoplayer/MediaFormat;->rotationDegrees:I

    if-ne v2, v3, :cond_b9

    iget v2, p0, Lcom/google/android/exoplayer/MediaFormat;->pixelWidthHeightRatio:F

    iget v3, v1, Lcom/google/android/exoplayer/MediaFormat;->pixelWidthHeightRatio:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_b9

    iget v2, p0, Lcom/google/android/exoplayer/MediaFormat;->maxWidth:I

    iget v3, v1, Lcom/google/android/exoplayer/MediaFormat;->maxWidth:I

    if-ne v2, v3, :cond_b9

    iget v2, p0, Lcom/google/android/exoplayer/MediaFormat;->maxHeight:I

    iget v3, v1, Lcom/google/android/exoplayer/MediaFormat;->maxHeight:I

    if-ne v2, v3, :cond_b9

    iget v2, p0, Lcom/google/android/exoplayer/MediaFormat;->channelCount:I

    iget v3, v1, Lcom/google/android/exoplayer/MediaFormat;->channelCount:I

    if-ne v2, v3, :cond_b9

    iget v2, p0, Lcom/google/android/exoplayer/MediaFormat;->sampleRate:I

    iget v3, v1, Lcom/google/android/exoplayer/MediaFormat;->sampleRate:I

    if-ne v2, v3, :cond_b9

    iget v2, p0, Lcom/google/android/exoplayer/MediaFormat;->pcmEncoding:I

    iget v3, v1, Lcom/google/android/exoplayer/MediaFormat;->pcmEncoding:I

    if-ne v2, v3, :cond_b9

    iget v2, p0, Lcom/google/android/exoplayer/MediaFormat;->encoderDelay:I

    iget v3, v1, Lcom/google/android/exoplayer/MediaFormat;->encoderDelay:I

    if-ne v2, v3, :cond_b9

    iget v2, p0, Lcom/google/android/exoplayer/MediaFormat;->encoderPadding:I

    iget v3, v1, Lcom/google/android/exoplayer/MediaFormat;->encoderPadding:I

    if-ne v2, v3, :cond_b9

    iget-wide v2, p0, Lcom/google/android/exoplayer/MediaFormat;->subsampleOffsetUs:J

    iget-wide v6, v1, Lcom/google/android/exoplayer/MediaFormat;->subsampleOffsetUs:J

    cmp-long v2, v2, v6

    if-nez v2, :cond_b9

    iget-object v2, p0, Lcom/google/android/exoplayer/MediaFormat;->trackId:Ljava/lang/String;

    iget-object v3, v1, Lcom/google/android/exoplayer/MediaFormat;->trackId:Ljava/lang/String;

    .line 459
    invoke-static {v2, v3}, Lcom/google/android/exoplayer/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b9

    iget-object v2, p0, Lcom/google/android/exoplayer/MediaFormat;->language:Ljava/lang/String;

    iget-object v3, v1, Lcom/google/android/exoplayer/MediaFormat;->language:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/exoplayer/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b9

    iget-object v2, p0, Lcom/google/android/exoplayer/MediaFormat;->mimeType:Ljava/lang/String;

    iget-object v3, v1, Lcom/google/android/exoplayer/MediaFormat;->mimeType:Ljava/lang/String;

    .line 460
    invoke-static {v2, v3}, Lcom/google/android/exoplayer/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b9

    iget-object v2, p0, Lcom/google/android/exoplayer/MediaFormat;->initializationData:Ljava/util/List;

    .line 461
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget-object v3, v1, Lcom/google/android/exoplayer/MediaFormat;->initializationData:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ne v2, v3, :cond_b9

    iget-object v2, p0, Lcom/google/android/exoplayer/MediaFormat;->projectionData:[B

    iget-object v3, v1, Lcom/google/android/exoplayer/MediaFormat;->projectionData:[B

    .line 462
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_b9

    iget v2, p0, Lcom/google/android/exoplayer/MediaFormat;->stereoMode:I

    iget v3, v1, Lcom/google/android/exoplayer/MediaFormat;->stereoMode:I

    if-eq v2, v3, :cond_bc

    :cond_b9
    move v2, v5

    .line 464
    goto/16 :goto_5

    .line 466
    :cond_bc
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_bd
    iget-object v2, p0, Lcom/google/android/exoplayer/MediaFormat;->initializationData:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_e1

    .line 467
    iget-object v2, p0, Lcom/google/android/exoplayer/MediaFormat;->initializationData:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    iget-object v3, v1, Lcom/google/android/exoplayer/MediaFormat;->initializationData:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_de

    move v2, v5

    .line 468
    goto/16 :goto_5

    .line 466
    :cond_de
    add-int/lit8 v0, v0, 0x1

    goto :goto_bd

    :cond_e1
    move v2, v4

    .line 471
    goto/16 :goto_5
.end method

.method public final getFrameworkMediaFormatV16()Landroid/media/MediaFormat;
    .registers 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 363
    iget-object v2, p0, Lcom/google/android/exoplayer/MediaFormat;->frameworkMediaFormat:Landroid/media/MediaFormat;

    if-nez v2, :cond_9d

    .line 364
    new-instance v0, Landroid/media/MediaFormat;

    invoke-direct {v0}, Landroid/media/MediaFormat;-><init>()V

    .line 365
    .local v0, "format":Landroid/media/MediaFormat;
    const-string v2, "mime"

    iget-object v3, p0, Lcom/google/android/exoplayer/MediaFormat;->mimeType:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    const-string v2, "language"

    iget-object v3, p0, Lcom/google/android/exoplayer/MediaFormat;->language:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lcom/google/android/exoplayer/MediaFormat;->maybeSetStringV16(Landroid/media/MediaFormat;Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    const-string v2, "max-input-size"

    iget v3, p0, Lcom/google/android/exoplayer/MediaFormat;->maxInputSize:I

    invoke-static {v0, v2, v3}, Lcom/google/android/exoplayer/MediaFormat;->maybeSetIntegerV16(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 368
    const-string/jumbo v2, "width"

    iget v3, p0, Lcom/google/android/exoplayer/MediaFormat;->width:I

    invoke-static {v0, v2, v3}, Lcom/google/android/exoplayer/MediaFormat;->maybeSetIntegerV16(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 369
    const-string v2, "height"

    iget v3, p0, Lcom/google/android/exoplayer/MediaFormat;->height:I

    invoke-static {v0, v2, v3}, Lcom/google/android/exoplayer/MediaFormat;->maybeSetIntegerV16(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 370
    const-string v2, "rotation-degrees"

    iget v3, p0, Lcom/google/android/exoplayer/MediaFormat;->rotationDegrees:I

    invoke-static {v0, v2, v3}, Lcom/google/android/exoplayer/MediaFormat;->maybeSetIntegerV16(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 371
    const-string v2, "max-width"

    iget v3, p0, Lcom/google/android/exoplayer/MediaFormat;->maxWidth:I

    invoke-static {v0, v2, v3}, Lcom/google/android/exoplayer/MediaFormat;->maybeSetIntegerV16(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 372
    const-string v2, "max-height"

    iget v3, p0, Lcom/google/android/exoplayer/MediaFormat;->maxHeight:I

    invoke-static {v0, v2, v3}, Lcom/google/android/exoplayer/MediaFormat;->maybeSetIntegerV16(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 373
    const-string v2, "channel-count"

    iget v3, p0, Lcom/google/android/exoplayer/MediaFormat;->channelCount:I

    invoke-static {v0, v2, v3}, Lcom/google/android/exoplayer/MediaFormat;->maybeSetIntegerV16(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 374
    const-string v2, "sample-rate"

    iget v3, p0, Lcom/google/android/exoplayer/MediaFormat;->sampleRate:I

    invoke-static {v0, v2, v3}, Lcom/google/android/exoplayer/MediaFormat;->maybeSetIntegerV16(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 375
    const-string v2, "encoder-delay"

    iget v3, p0, Lcom/google/android/exoplayer/MediaFormat;->encoderDelay:I

    invoke-static {v0, v2, v3}, Lcom/google/android/exoplayer/MediaFormat;->maybeSetIntegerV16(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 376
    const-string v2, "encoder-padding"

    iget v3, p0, Lcom/google/android/exoplayer/MediaFormat;->encoderPadding:I

    invoke-static {v0, v2, v3}, Lcom/google/android/exoplayer/MediaFormat;->maybeSetIntegerV16(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 377
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5f
    iget-object v2, p0, Lcom/google/android/exoplayer/MediaFormat;->initializationData:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_8c

    .line 378
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "csd-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v2, p0, Lcom/google/android/exoplayer/MediaFormat;->initializationData:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroid/media/MediaFormat;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    .line 377
    add-int/lit8 v1, v1, 0x1

    goto :goto_5f

    .line 380
    :cond_8c
    iget-wide v2, p0, Lcom/google/android/exoplayer/MediaFormat;->durationUs:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_9b

    .line 381
    const-string v2, "durationUs"

    iget-wide v4, p0, Lcom/google/android/exoplayer/MediaFormat;->durationUs:J

    invoke-virtual {v0, v2, v4, v5}, Landroid/media/MediaFormat;->setLong(Ljava/lang/String;J)V

    .line 383
    :cond_9b
    iput-object v0, p0, Lcom/google/android/exoplayer/MediaFormat;->frameworkMediaFormat:Landroid/media/MediaFormat;

    .line 385
    .end local v0    # "format":Landroid/media/MediaFormat;
    .end local v1    # "i":I
    :cond_9d
    iget-object v2, p0, Lcom/google/android/exoplayer/MediaFormat;->frameworkMediaFormat:Landroid/media/MediaFormat;

    return-object v2
.end method

.method public hashCode()I
    .registers 7

    .prologue
    const/4 v3, 0x0

    .line 411
    iget v2, p0, Lcom/google/android/exoplayer/MediaFormat;->hashCode:I

    if-nez v2, :cond_d1

    .line 412
    const/16 v1, 0x11

    .line 413
    .local v1, "result":I
    iget-object v2, p0, Lcom/google/android/exoplayer/MediaFormat;->trackId:Ljava/lang/String;

    if-nez v2, :cond_a5

    move v2, v3

    :goto_c
    add-int/lit16 v1, v2, 0x20f

    .line 414
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/google/android/exoplayer/MediaFormat;->mimeType:Ljava/lang/String;

    if-nez v2, :cond_ad

    move v2, v3

    :goto_15
    add-int v1, v4, v2

    .line 415
    mul-int/lit8 v2, v1, 0x1f

    iget v4, p0, Lcom/google/android/exoplayer/MediaFormat;->bitrate:I

    add-int v1, v2, v4

    .line 416
    mul-int/lit8 v2, v1, 0x1f

    iget v4, p0, Lcom/google/android/exoplayer/MediaFormat;->maxInputSize:I

    add-int v1, v2, v4

    .line 417
    mul-int/lit8 v2, v1, 0x1f

    iget v4, p0, Lcom/google/android/exoplayer/MediaFormat;->width:I

    add-int v1, v2, v4

    .line 418
    mul-int/lit8 v2, v1, 0x1f

    iget v4, p0, Lcom/google/android/exoplayer/MediaFormat;->height:I

    add-int v1, v2, v4

    .line 419
    mul-int/lit8 v2, v1, 0x1f

    iget v4, p0, Lcom/google/android/exoplayer/MediaFormat;->rotationDegrees:I

    add-int v1, v2, v4

    .line 420
    mul-int/lit8 v2, v1, 0x1f

    iget v4, p0, Lcom/google/android/exoplayer/MediaFormat;->pixelWidthHeightRatio:F

    invoke-static {v4}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v4

    add-int v1, v2, v4

    .line 421
    mul-int/lit8 v2, v1, 0x1f

    iget-wide v4, p0, Lcom/google/android/exoplayer/MediaFormat;->durationUs:J

    long-to-int v4, v4

    add-int v1, v2, v4

    .line 422
    mul-int/lit8 v4, v1, 0x1f

    iget-boolean v2, p0, Lcom/google/android/exoplayer/MediaFormat;->adaptive:Z

    if-eqz v2, :cond_b5

    const/16 v2, 0x4cf

    :goto_4e
    add-int v1, v4, v2

    .line 423
    mul-int/lit8 v2, v1, 0x1f

    iget v4, p0, Lcom/google/android/exoplayer/MediaFormat;->maxWidth:I

    add-int v1, v2, v4

    .line 424
    mul-int/lit8 v2, v1, 0x1f

    iget v4, p0, Lcom/google/android/exoplayer/MediaFormat;->maxHeight:I

    add-int v1, v2, v4

    .line 425
    mul-int/lit8 v2, v1, 0x1f

    iget v4, p0, Lcom/google/android/exoplayer/MediaFormat;->channelCount:I

    add-int v1, v2, v4

    .line 426
    mul-int/lit8 v2, v1, 0x1f

    iget v4, p0, Lcom/google/android/exoplayer/MediaFormat;->sampleRate:I

    add-int v1, v2, v4

    .line 427
    mul-int/lit8 v2, v1, 0x1f

    iget v4, p0, Lcom/google/android/exoplayer/MediaFormat;->pcmEncoding:I

    add-int v1, v2, v4

    .line 428
    mul-int/lit8 v2, v1, 0x1f

    iget v4, p0, Lcom/google/android/exoplayer/MediaFormat;->encoderDelay:I

    add-int v1, v2, v4

    .line 429
    mul-int/lit8 v2, v1, 0x1f

    iget v4, p0, Lcom/google/android/exoplayer/MediaFormat;->encoderPadding:I

    add-int v1, v2, v4

    .line 430
    mul-int/lit8 v2, v1, 0x1f

    iget-object v4, p0, Lcom/google/android/exoplayer/MediaFormat;->language:Ljava/lang/String;

    if-nez v4, :cond_b8

    :goto_80
    add-int v1, v2, v3

    .line 431
    mul-int/lit8 v2, v1, 0x1f

    iget-wide v4, p0, Lcom/google/android/exoplayer/MediaFormat;->subsampleOffsetUs:J

    long-to-int v3, v4

    add-int v1, v2, v3

    .line 432
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_8a
    iget-object v2, p0, Lcom/google/android/exoplayer/MediaFormat;->initializationData:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_bf

    .line 433
    mul-int/lit8 v3, v1, 0x1f

    iget-object v2, p0, Lcom/google/android/exoplayer/MediaFormat;->initializationData:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    add-int v1, v3, v2

    .line 432
    add-int/lit8 v0, v0, 0x1

    goto :goto_8a

    .line 413
    .end local v0    # "i":I
    :cond_a5
    iget-object v2, p0, Lcom/google/android/exoplayer/MediaFormat;->trackId:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_c

    .line 414
    :cond_ad
    iget-object v2, p0, Lcom/google/android/exoplayer/MediaFormat;->mimeType:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_15

    .line 422
    :cond_b5
    const/16 v2, 0x4d5

    goto :goto_4e

    .line 430
    :cond_b8
    iget-object v3, p0, Lcom/google/android/exoplayer/MediaFormat;->language:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_80

    .line 435
    .restart local v0    # "i":I
    :cond_bf
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lcom/google/android/exoplayer/MediaFormat;->projectionData:[B

    invoke-static {v3}, Ljava/util/Arrays;->hashCode([B)I

    move-result v3

    add-int v1, v2, v3

    .line 436
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Lcom/google/android/exoplayer/MediaFormat;->stereoMode:I

    add-int v1, v2, v3

    .line 437
    iput v1, p0, Lcom/google/android/exoplayer/MediaFormat;->hashCode:I

    .line 439
    .end local v0    # "i":I
    .end local v1    # "result":I
    :cond_d1
    iget v2, p0, Lcom/google/android/exoplayer/MediaFormat;->hashCode:I

    return v2
.end method

.method final setFrameworkFormatV16(Landroid/media/MediaFormat;)V
    .registers 2
    .param p1, "format"    # Landroid/media/MediaFormat;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 397
    iput-object p1, p0, Lcom/google/android/exoplayer/MediaFormat;->frameworkMediaFormat:Landroid/media/MediaFormat;

    .line 398
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 402
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MediaFormat("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer/MediaFormat;->trackId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer/MediaFormat;->mimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/exoplayer/MediaFormat;->bitrate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/exoplayer/MediaFormat;->maxInputSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/exoplayer/MediaFormat;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/exoplayer/MediaFormat;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/exoplayer/MediaFormat;->rotationDegrees:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/exoplayer/MediaFormat;->pixelWidthHeightRatio:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/exoplayer/MediaFormat;->channelCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/exoplayer/MediaFormat;->sampleRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer/MediaFormat;->language:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/google/android/exoplayer/MediaFormat;->durationUs:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/exoplayer/MediaFormat;->adaptive:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/exoplayer/MediaFormat;->maxWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/exoplayer/MediaFormat;->maxHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/exoplayer/MediaFormat;->pcmEncoding:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/exoplayer/MediaFormat;->encoderDelay:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/exoplayer/MediaFormat;->encoderPadding:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 9
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 499
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaFormat;->trackId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 500
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaFormat;->mimeType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 501
    iget v0, p0, Lcom/google/android/exoplayer/MediaFormat;->bitrate:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 502
    iget v0, p0, Lcom/google/android/exoplayer/MediaFormat;->maxInputSize:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 503
    iget-wide v4, p0, Lcom/google/android/exoplayer/MediaFormat;->durationUs:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 504
    iget v0, p0, Lcom/google/android/exoplayer/MediaFormat;->width:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 505
    iget v0, p0, Lcom/google/android/exoplayer/MediaFormat;->height:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 506
    iget v0, p0, Lcom/google/android/exoplayer/MediaFormat;->rotationDegrees:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 507
    iget v0, p0, Lcom/google/android/exoplayer/MediaFormat;->pixelWidthHeightRatio:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 508
    iget v0, p0, Lcom/google/android/exoplayer/MediaFormat;->channelCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 509
    iget v0, p0, Lcom/google/android/exoplayer/MediaFormat;->sampleRate:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 510
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaFormat;->language:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 511
    iget-wide v4, p0, Lcom/google/android/exoplayer/MediaFormat;->subsampleOffsetUs:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 512
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaFormat;->initializationData:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 513
    iget-boolean v0, p0, Lcom/google/android/exoplayer/MediaFormat;->adaptive:Z

    if-eqz v0, :cond_7f

    move v0, v1

    :goto_4d
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 514
    iget v0, p0, Lcom/google/android/exoplayer/MediaFormat;->maxWidth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 515
    iget v0, p0, Lcom/google/android/exoplayer/MediaFormat;->maxHeight:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 516
    iget v0, p0, Lcom/google/android/exoplayer/MediaFormat;->pcmEncoding:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 517
    iget v0, p0, Lcom/google/android/exoplayer/MediaFormat;->encoderDelay:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 518
    iget v0, p0, Lcom/google/android/exoplayer/MediaFormat;->encoderPadding:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 519
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaFormat;->projectionData:[B

    if-eqz v0, :cond_81

    :goto_6d
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 520
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaFormat;->projectionData:[B

    if-eqz v0, :cond_79

    .line 521
    iget-object v0, p0, Lcom/google/android/exoplayer/MediaFormat;->projectionData:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 523
    :cond_79
    iget v0, p0, Lcom/google/android/exoplayer/MediaFormat;->stereoMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 524
    return-void

    :cond_7f
    move v0, v2

    .line 513
    goto :goto_4d

    :cond_81
    move v1, v2

    .line 519
    goto :goto_6d
.end method
