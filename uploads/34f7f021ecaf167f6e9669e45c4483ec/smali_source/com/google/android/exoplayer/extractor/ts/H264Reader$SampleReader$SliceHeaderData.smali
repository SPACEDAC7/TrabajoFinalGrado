.class final Lcom/google/android/exoplayer/extractor/ts/H264Reader$SampleReader$SliceHeaderData;
.super Ljava/lang/Object;
.source "H264Reader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer/extractor/ts/H264Reader$SampleReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SliceHeaderData"
.end annotation


# static fields
.field private static final SLICE_TYPE_ALL_I:I = 0x7

.field private static final SLICE_TYPE_I:I = 0x2


# instance fields
.field private bottomFieldFlag:Z

.field private bottomFieldFlagPresent:Z

.field private deltaPicOrderCnt0:I

.field private deltaPicOrderCnt1:I

.field private deltaPicOrderCntBottom:I

.field private fieldPicFlag:Z

.field private frameNum:I

.field private hasSliceType:Z

.field private idrPicFlag:Z

.field private idrPicId:I

.field private isComplete:Z

.field private nalRefIdc:I

.field private picOrderCntLsb:I

.field private picParameterSetId:I

.field private sliceType:I

.field private spsData:Lcom/google/android/exoplayer/util/NalUnitUtil$SpsData;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 438
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer/extractor/ts/H264Reader$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/google/android/exoplayer/extractor/ts/H264Reader$1;

    .prologue
    .line 438
    invoke-direct {p0}, Lcom/google/android/exoplayer/extractor/ts/H264Reader$SampleReader$SliceHeaderData;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/exoplayer/extractor/ts/H264Reader$SampleReader$SliceHeaderData;Lcom/google/android/exoplayer/extractor/ts/H264Reader$SampleReader$SliceHeaderData;)Z
    .registers 3
    .param p0, "x0"    # Lcom/google/android/exoplayer/extractor/ts/H264Reader$SampleReader$SliceHeaderData;
    .param p1, "x1"    # Lcom/google/android/exoplayer/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

    .prologue
    .line 438
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->isFirstVclNalUnitOfPicture(Lcom/google/android/exoplayer/extractor/ts/H264Reader$SampleReader$SliceHeaderData;)Z

    move-result v0

    return v0
.end method

.method private isFirstVclNalUnitOfPicture(Lcom/google/android/exoplayer/extractor/ts/H264Reader$SampleReader$SliceHeaderData;)Z
    .registers 5
    .param p1, "other"    # Lcom/google/android/exoplayer/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

    .prologue
    const/4 v0, 0x1

    .line 499
    iget-boolean v1, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->isComplete:Z

    if-eqz v1, :cond_7c

    iget-boolean v1, p1, Lcom/google/android/exoplayer/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->isComplete:Z

    if-eqz v1, :cond_7b

    iget v1, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->frameNum:I

    iget v2, p1, Lcom/google/android/exoplayer/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->frameNum:I

    if-ne v1, v2, :cond_7b

    iget v1, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->picParameterSetId:I

    iget v2, p1, Lcom/google/android/exoplayer/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->picParameterSetId:I

    if-ne v1, v2, :cond_7b

    iget-boolean v1, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->fieldPicFlag:Z

    iget-boolean v2, p1, Lcom/google/android/exoplayer/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->fieldPicFlag:Z

    if-ne v1, v2, :cond_7b

    iget-boolean v1, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->bottomFieldFlagPresent:Z

    if-eqz v1, :cond_29

    iget-boolean v1, p1, Lcom/google/android/exoplayer/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->bottomFieldFlagPresent:Z

    if-eqz v1, :cond_29

    iget-boolean v1, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->bottomFieldFlag:Z

    iget-boolean v2, p1, Lcom/google/android/exoplayer/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->bottomFieldFlag:Z

    if-ne v1, v2, :cond_7b

    :cond_29
    iget v1, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->nalRefIdc:I

    iget v2, p1, Lcom/google/android/exoplayer/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->nalRefIdc:I

    if-eq v1, v2, :cond_37

    iget v1, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->nalRefIdc:I

    if-eqz v1, :cond_7b

    iget v1, p1, Lcom/google/android/exoplayer/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->nalRefIdc:I

    if-eqz v1, :cond_7b

    :cond_37
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->spsData:Lcom/google/android/exoplayer/util/NalUnitUtil$SpsData;

    iget v1, v1, Lcom/google/android/exoplayer/util/NalUnitUtil$SpsData;->picOrderCountType:I

    if-nez v1, :cond_4f

    iget-object v1, p1, Lcom/google/android/exoplayer/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->spsData:Lcom/google/android/exoplayer/util/NalUnitUtil$SpsData;

    iget v1, v1, Lcom/google/android/exoplayer/util/NalUnitUtil$SpsData;->picOrderCountType:I

    if-nez v1, :cond_4f

    iget v1, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->picOrderCntLsb:I

    iget v2, p1, Lcom/google/android/exoplayer/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->picOrderCntLsb:I

    if-ne v1, v2, :cond_7b

    iget v1, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->deltaPicOrderCntBottom:I

    iget v2, p1, Lcom/google/android/exoplayer/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->deltaPicOrderCntBottom:I

    if-ne v1, v2, :cond_7b

    :cond_4f
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->spsData:Lcom/google/android/exoplayer/util/NalUnitUtil$SpsData;

    iget v1, v1, Lcom/google/android/exoplayer/util/NalUnitUtil$SpsData;->picOrderCountType:I

    if-ne v1, v0, :cond_67

    iget-object v1, p1, Lcom/google/android/exoplayer/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->spsData:Lcom/google/android/exoplayer/util/NalUnitUtil$SpsData;

    iget v1, v1, Lcom/google/android/exoplayer/util/NalUnitUtil$SpsData;->picOrderCountType:I

    if-ne v1, v0, :cond_67

    iget v1, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->deltaPicOrderCnt0:I

    iget v2, p1, Lcom/google/android/exoplayer/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->deltaPicOrderCnt0:I

    if-ne v1, v2, :cond_7b

    iget v1, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->deltaPicOrderCnt1:I

    iget v2, p1, Lcom/google/android/exoplayer/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->deltaPicOrderCnt1:I

    if-ne v1, v2, :cond_7b

    :cond_67
    iget-boolean v1, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->idrPicFlag:Z

    iget-boolean v2, p1, Lcom/google/android/exoplayer/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->idrPicFlag:Z

    if-ne v1, v2, :cond_7b

    iget-boolean v1, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->idrPicFlag:Z

    if-eqz v1, :cond_7c

    iget-boolean v1, p1, Lcom/google/android/exoplayer/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->idrPicFlag:Z

    if-eqz v1, :cond_7c

    iget v1, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->idrPicId:I

    iget v2, p1, Lcom/google/android/exoplayer/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->idrPicId:I

    if-eq v1, v2, :cond_7c

    :cond_7b
    :goto_7b
    return v0

    :cond_7c
    const/4 v0, 0x0

    goto :goto_7b
.end method


# virtual methods
.method public clear()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 462
    iput-boolean v0, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->hasSliceType:Z

    .line 463
    iput-boolean v0, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->isComplete:Z

    .line 464
    return-void
.end method

.method public isISlice()Z
    .registers 3

    .prologue
    .line 494
    iget-boolean v0, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->hasSliceType:Z

    if-eqz v0, :cond_10

    iget v0, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->sliceType:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_e

    iget v0, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->sliceType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_10

    :cond_e
    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public setAll(Lcom/google/android/exoplayer/util/NalUnitUtil$SpsData;IIIIZZZZIIIII)V
    .registers 16
    .param p1, "spsData"    # Lcom/google/android/exoplayer/util/NalUnitUtil$SpsData;
    .param p2, "nalRefIdc"    # I
    .param p3, "sliceType"    # I
    .param p4, "frameNum"    # I
    .param p5, "picParameterSetId"    # I
    .param p6, "fieldPicFlag"    # Z
    .param p7, "bottomFieldFlagPresent"    # Z
    .param p8, "bottomFieldFlag"    # Z
    .param p9, "idrPicFlag"    # Z
    .param p10, "idrPicId"    # I
    .param p11, "picOrderCntLsb"    # I
    .param p12, "deltaPicOrderCntBottom"    # I
    .param p13, "deltaPicOrderCnt0"    # I
    .param p14, "deltaPicOrderCnt1"    # I

    .prologue
    const/4 v0, 0x1

    .line 475
    iput-object p1, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->spsData:Lcom/google/android/exoplayer/util/NalUnitUtil$SpsData;

    .line 476
    iput p2, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->nalRefIdc:I

    .line 477
    iput p3, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->sliceType:I

    .line 478
    iput p4, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->frameNum:I

    .line 479
    iput p5, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->picParameterSetId:I

    .line 480
    iput-boolean p6, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->fieldPicFlag:Z

    .line 481
    iput-boolean p7, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->bottomFieldFlagPresent:Z

    .line 482
    iput-boolean p8, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->bottomFieldFlag:Z

    .line 483
    iput-boolean p9, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->idrPicFlag:Z

    .line 484
    iput p10, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->idrPicId:I

    .line 485
    iput p11, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->picOrderCntLsb:I

    .line 486
    iput p12, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->deltaPicOrderCntBottom:I

    .line 487
    iput p13, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->deltaPicOrderCnt0:I

    .line 488
    iput p14, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->deltaPicOrderCnt1:I

    .line 489
    iput-boolean v0, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->isComplete:Z

    .line 490
    iput-boolean v0, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->hasSliceType:Z

    .line 491
    return-void
.end method

.method public setSliceType(I)V
    .registers 3
    .param p1, "sliceType"    # I

    .prologue
    .line 467
    iput p1, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->sliceType:I

    .line 468
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->hasSliceType:Z

    .line 469
    return-void
.end method
