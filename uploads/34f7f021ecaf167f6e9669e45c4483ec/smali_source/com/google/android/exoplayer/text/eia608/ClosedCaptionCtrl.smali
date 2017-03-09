.class final Lcom/google/android/exoplayer/text/eia608/ClosedCaptionCtrl;
.super Lcom/google/android/exoplayer/text/eia608/ClosedCaption;
.source "ClosedCaptionCtrl.java"


# static fields
.field public static final BACKSPACE:B = 0x21t

.field public static final CARRIAGE_RETURN:B = 0x2dt

.field public static final END_OF_CAPTION:B = 0x2ft

.field public static final ERASE_DISPLAYED_MEMORY:B = 0x2ct

.field public static final ERASE_NON_DISPLAYED_MEMORY:B = 0x2et

.field public static final MID_ROW_CHAN_1:B = 0x11t

.field public static final MID_ROW_CHAN_2:B = 0x19t

.field public static final MISC_CHAN_1:B = 0x14t

.field public static final MISC_CHAN_2:B = 0x1ct

.field public static final RESUME_CAPTION_LOADING:B = 0x20t

.field public static final RESUME_DIRECT_CAPTIONING:B = 0x29t

.field public static final ROLL_UP_CAPTIONS_2_ROWS:B = 0x25t

.field public static final ROLL_UP_CAPTIONS_3_ROWS:B = 0x26t

.field public static final ROLL_UP_CAPTIONS_4_ROWS:B = 0x27t

.field public static final TAB_OFFSET_CHAN_1:B = 0x17t

.field public static final TAB_OFFSET_CHAN_2:B = 0x1ft


# instance fields
.field public final cc1:B

.field public final cc2:B


# direct methods
.method protected constructor <init>(BB)V
    .registers 4
    .param p1, "cc1"    # B
    .param p2, "cc2"    # B

    .prologue
    .line 76
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer/text/eia608/ClosedCaption;-><init>(I)V

    .line 77
    iput-byte p1, p0, Lcom/google/android/exoplayer/text/eia608/ClosedCaptionCtrl;->cc1:B

    .line 78
    iput-byte p2, p0, Lcom/google/android/exoplayer/text/eia608/ClosedCaptionCtrl;->cc2:B

    .line 79
    return-void
.end method


# virtual methods
.method public isMidRowCode()Z
    .registers 3

    .prologue
    .line 82
    iget-byte v0, p0, Lcom/google/android/exoplayer/text/eia608/ClosedCaptionCtrl;->cc1:B

    const/16 v1, 0x11

    if-eq v0, v1, :cond_c

    iget-byte v0, p0, Lcom/google/android/exoplayer/text/eia608/ClosedCaptionCtrl;->cc1:B

    const/16 v1, 0x19

    if-ne v0, v1, :cond_1a

    :cond_c
    iget-byte v0, p0, Lcom/google/android/exoplayer/text/eia608/ClosedCaptionCtrl;->cc2:B

    const/16 v1, 0x20

    if-lt v0, v1, :cond_1a

    iget-byte v0, p0, Lcom/google/android/exoplayer/text/eia608/ClosedCaptionCtrl;->cc2:B

    const/16 v1, 0x2f

    if-gt v0, v1, :cond_1a

    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method public isMiscCode()Z
    .registers 3

    .prologue
    .line 86
    iget-byte v0, p0, Lcom/google/android/exoplayer/text/eia608/ClosedCaptionCtrl;->cc1:B

    const/16 v1, 0x14

    if-eq v0, v1, :cond_c

    iget-byte v0, p0, Lcom/google/android/exoplayer/text/eia608/ClosedCaptionCtrl;->cc1:B

    const/16 v1, 0x1c

    if-ne v0, v1, :cond_1a

    :cond_c
    iget-byte v0, p0, Lcom/google/android/exoplayer/text/eia608/ClosedCaptionCtrl;->cc2:B

    const/16 v1, 0x20

    if-lt v0, v1, :cond_1a

    iget-byte v0, p0, Lcom/google/android/exoplayer/text/eia608/ClosedCaptionCtrl;->cc2:B

    const/16 v1, 0x2f

    if-gt v0, v1, :cond_1a

    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method public isPreambleAddressCode()Z
    .registers 3

    .prologue
    .line 94
    iget-byte v0, p0, Lcom/google/android/exoplayer/text/eia608/ClosedCaptionCtrl;->cc1:B

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1a

    iget-byte v0, p0, Lcom/google/android/exoplayer/text/eia608/ClosedCaptionCtrl;->cc1:B

    const/16 v1, 0x1f

    if-gt v0, v1, :cond_1a

    iget-byte v0, p0, Lcom/google/android/exoplayer/text/eia608/ClosedCaptionCtrl;->cc2:B

    const/16 v1, 0x40

    if-lt v0, v1, :cond_1a

    iget-byte v0, p0, Lcom/google/android/exoplayer/text/eia608/ClosedCaptionCtrl;->cc2:B

    const/16 v1, 0x7f

    if-gt v0, v1, :cond_1a

    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method public isRepeatable()Z
    .registers 3

    .prologue
    .line 98
    iget-byte v0, p0, Lcom/google/android/exoplayer/text/eia608/ClosedCaptionCtrl;->cc1:B

    const/16 v1, 0x10

    if-lt v0, v1, :cond_e

    iget-byte v0, p0, Lcom/google/android/exoplayer/text/eia608/ClosedCaptionCtrl;->cc1:B

    const/16 v1, 0x1f

    if-gt v0, v1, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public isTabOffsetCode()Z
    .registers 3

    .prologue
    .line 90
    iget-byte v0, p0, Lcom/google/android/exoplayer/text/eia608/ClosedCaptionCtrl;->cc1:B

    const/16 v1, 0x17

    if-eq v0, v1, :cond_c

    iget-byte v0, p0, Lcom/google/android/exoplayer/text/eia608/ClosedCaptionCtrl;->cc1:B

    const/16 v1, 0x1f

    if-ne v0, v1, :cond_1a

    :cond_c
    iget-byte v0, p0, Lcom/google/android/exoplayer/text/eia608/ClosedCaptionCtrl;->cc2:B

    const/16 v1, 0x21

    if-lt v0, v1, :cond_1a

    iget-byte v0, p0, Lcom/google/android/exoplayer/text/eia608/ClosedCaptionCtrl;->cc2:B

    const/16 v1, 0x23

    if-gt v0, v1, :cond_1a

    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method
