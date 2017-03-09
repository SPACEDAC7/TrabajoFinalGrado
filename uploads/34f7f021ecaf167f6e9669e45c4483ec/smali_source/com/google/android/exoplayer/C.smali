.class public final Lcom/google/android/exoplayer/C;
.super Ljava/lang/Object;
.source "C.java"


# static fields
.field public static final CHANNEL_OUT_7POINT1_SURROUND:I

.field public static final CRYPTO_MODE_AES_CTR:I = 0x1

.field public static final ENCODING_AC3:I = 0x5

.field public static final ENCODING_DTS:I = 0x7

.field public static final ENCODING_DTS_HD:I = 0x8

.field public static final ENCODING_E_AC3:I = 0x6

.field public static final ENCODING_INVALID:I = 0x0

.field public static final ENCODING_PCM_16BIT:I = 0x2

.field public static final ENCODING_PCM_24BIT:I = -0x80000000

.field public static final ENCODING_PCM_32BIT:I = 0x40000000

.field public static final ENCODING_PCM_8BIT:I = 0x3

.field public static final LENGTH_UNBOUNDED:I = -0x1

.field public static final MATCH_LONGEST_US:J = -0x2L

.field public static final MICROS_PER_SECOND:J = 0xf4240L

.field public static final RESULT_END_OF_INPUT:I = -0x1

.field public static final RESULT_MAX_LENGTH_EXCEEDED:I = -0x2

.field public static final SAMPLE_FLAG_DECODE_ONLY:I = 0x8000000

.field public static final SAMPLE_FLAG_ENCRYPTED:I = 0x2

.field public static final SAMPLE_FLAG_SYNC:I = 0x1

.field public static final STEREO_MODE_LEFT_RIGHT:I = 0x2

.field public static final STEREO_MODE_MONO:I = 0x0

.field public static final STEREO_MODE_TOP_BOTTOM:I = 0x1

.field public static final UNKNOWN_TIME_US:J = -0x1L

.field public static final UTF8_NAME:Ljava/lang/String; = "UTF-8"


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 113
    sget v0, Lcom/google/android/exoplayer/util/Util;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_b

    const/16 v0, 0x3fc

    :goto_8
    sput v0, Lcom/google/android/exoplayer/C;->CHANNEL_OUT_7POINT1_SURROUND:I

    return-void

    :cond_b
    const/16 v0, 0x18fc

    goto :goto_8
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
