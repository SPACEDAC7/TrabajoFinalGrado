.class synthetic Lcom/google/ads/interactivemedia/v3/impl/ab$2;
.super Ljava/lang/Object;
.source "IMASDK"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/interactivemedia/v3/impl/ab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic a:[I

.field static final synthetic b:[I

.field static final synthetic c:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 764
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/impl/data/CompanionData$a;->values()[Lcom/google/ads/interactivemedia/v3/impl/data/CompanionData$a;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/ads/interactivemedia/v3/impl/ab$2;->c:[I

    :try_start_9
    sget-object v0, Lcom/google/ads/interactivemedia/v3/impl/ab$2;->c:[I

    sget-object v1, Lcom/google/ads/interactivemedia/v3/impl/data/CompanionData$a;->Html:Lcom/google/ads/interactivemedia/v3/impl/data/CompanionData$a;

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/impl/data/CompanionData$a;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_275

    :goto_14
    :try_start_14
    sget-object v0, Lcom/google/ads/interactivemedia/v3/impl/ab$2;->c:[I

    sget-object v1, Lcom/google/ads/interactivemedia/v3/impl/data/CompanionData$a;->IFrame:Lcom/google/ads/interactivemedia/v3/impl/data/CompanionData$a;

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/impl/data/CompanionData$a;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_272

    :goto_1f
    :try_start_1f
    sget-object v0, Lcom/google/ads/interactivemedia/v3/impl/ab$2;->c:[I

    sget-object v1, Lcom/google/ads/interactivemedia/v3/impl/data/CompanionData$a;->Static:Lcom/google/ads/interactivemedia/v3/impl/data/CompanionData$a;

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/impl/data/CompanionData$a;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_26f

    .line 372
    :goto_2a
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/impl/aa$c;->values()[Lcom/google/ads/interactivemedia/v3/impl/aa$c;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/ads/interactivemedia/v3/impl/ab$2;->b:[I

    :try_start_33
    sget-object v0, Lcom/google/ads/interactivemedia/v3/impl/ab$2;->b:[I

    sget-object v1, Lcom/google/ads/interactivemedia/v3/impl/aa$c;->initialized:Lcom/google/ads/interactivemedia/v3/impl/aa$c;

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/impl/aa$c;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_3e} :catch_26c

    :goto_3e
    :try_start_3e
    sget-object v0, Lcom/google/ads/interactivemedia/v3/impl/ab$2;->b:[I

    sget-object v1, Lcom/google/ads/interactivemedia/v3/impl/aa$c;->log:Lcom/google/ads/interactivemedia/v3/impl/aa$c;

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/impl/aa$c;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_49
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_49} :catch_269

    :goto_49
    :try_start_49
    sget-object v0, Lcom/google/ads/interactivemedia/v3/impl/ab$2;->b:[I

    sget-object v1, Lcom/google/ads/interactivemedia/v3/impl/aa$c;->displayCompanions:Lcom/google/ads/interactivemedia/v3/impl/aa$c;

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/impl/aa$c;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_54
    .catch Ljava/lang/NoSuchFieldError; {:try_start_49 .. :try_end_54} :catch_266

    :goto_54
    :try_start_54
    sget-object v0, Lcom/google/ads/interactivemedia/v3/impl/ab$2;->b:[I

    sget-object v1, Lcom/google/ads/interactivemedia/v3/impl/aa$c;->adsLoaded:Lcom/google/ads/interactivemedia/v3/impl/aa$c;

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/impl/aa$c;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_5f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_54 .. :try_end_5f} :catch_263

    :goto_5f
    :try_start_5f
    sget-object v0, Lcom/google/ads/interactivemedia/v3/impl/ab$2;->b:[I

    sget-object v1, Lcom/google/ads/interactivemedia/v3/impl/aa$c;->streamInitialized:Lcom/google/ads/interactivemedia/v3/impl/aa$c;

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/impl/aa$c;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_6a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5f .. :try_end_6a} :catch_260

    :goto_6a
    :try_start_6a
    sget-object v0, Lcom/google/ads/interactivemedia/v3/impl/ab$2;->b:[I

    sget-object v1, Lcom/google/ads/interactivemedia/v3/impl/aa$c;->error:Lcom/google/ads/interactivemedia/v3/impl/aa$c;

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/impl/aa$c;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_75
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6a .. :try_end_75} :catch_25d

    :goto_75
    :try_start_75
    sget-object v0, Lcom/google/ads/interactivemedia/v3/impl/ab$2;->b:[I

    sget-object v1, Lcom/google/ads/interactivemedia/v3/impl/aa$c;->adMetadata:Lcom/google/ads/interactivemedia/v3/impl/aa$c;

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/impl/aa$c;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_80
    .catch Ljava/lang/NoSuchFieldError; {:try_start_75 .. :try_end_80} :catch_25a

    :goto_80
    :try_start_80
    sget-object v0, Lcom/google/ads/interactivemedia/v3/impl/ab$2;->b:[I

    sget-object v1, Lcom/google/ads/interactivemedia/v3/impl/aa$c;->loaded:Lcom/google/ads/interactivemedia/v3/impl/aa$c;

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/impl/aa$c;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_8c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_80 .. :try_end_8c} :catch_257

    :goto_8c
    :try_start_8c
    sget-object v0, Lcom/google/ads/interactivemedia/v3/impl/ab$2;->b:[I

    sget-object v1, Lcom/google/ads/interactivemedia/v3/impl/aa$c;->contentPauseRequested:Lcom/google/ads/interactivemedia/v3/impl/aa$c;

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/impl/aa$c;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_98
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8c .. :try_end_98} :catch_254

    :goto_98
    :try_start_98
    sget-object v0, Lcom/google/ads/interactivemedia/v3/impl/ab$2;->b:[I

    sget-object v1, Lcom/google/ads/interactivemedia/v3/impl/aa$c;->contentResumeRequested:Lcom/google/ads/interactivemedia/v3/impl/aa$c;

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/impl/aa$c;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_a4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_98 .. :try_end_a4} :catch_251

    :goto_a4
    :try_start_a4
    sget-object v0, Lcom/google/ads/interactivemedia/v3/impl/ab$2;->b:[I

    sget-object v1, Lcom/google/ads/interactivemedia/v3/impl/aa$c;->complete:Lcom/google/ads/interactivemedia/v3/impl/aa$c;

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/impl/aa$c;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_b0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a4 .. :try_end_b0} :catch_24e

    :goto_b0
    :try_start_b0
    sget-object v0, Lcom/google/ads/interactivemedia/v3/impl/ab$2;->b:[I

    sget-object v1, Lcom/google/ads/interactivemedia/v3/impl/aa$c;->allAdsCompleted:Lcom/google/ads/interactivemedia/v3/impl/aa$c;

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/impl/aa$c;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_bc
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b0 .. :try_end_bc} :catch_24b

    :goto_bc
    :try_start_bc
    sget-object v0, Lcom/google/ads/interactivemedia/v3/impl/ab$2;->b:[I

    sget-object v1, Lcom/google/ads/interactivemedia/v3/impl/aa$c;->cuepointsChanged:Lcom/google/ads/interactivemedia/v3/impl/aa$c;

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/impl/aa$c;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_c8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_bc .. :try_end_c8} :catch_248

    :goto_c8
    :try_start_c8
    sget-object v0, Lcom/google/ads/interactivemedia/v3/impl/ab$2;->b:[I

    sget-object v1, Lcom/google/ads/interactivemedia/v3/impl/aa$c;->skip:Lcom/google/ads/interactivemedia/v3/impl/aa$c;

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/impl/aa$c;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_d4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c8 .. :try_end_d4} :catch_245

    :goto_d4
    :try_start_d4
    sget-object v0, Lcom/google/ads/interactivemedia/v3/impl/ab$2;->b:[I

    sget-object v1, Lcom/google/ads/interactivemedia/v3/impl/aa$c;->start:Lcom/google/ads/interactivemedia/v3/impl/aa$c;

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/impl/aa$c;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_e0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d4 .. :try_end_e0} :catch_242

    :goto_e0
    :try_start_e0
    sget-object v0, Lcom/google/ads/interactivemedia/v3/impl/ab$2;->b:[I

    sget-object v1, Lcom/google/ads/interactivemedia/v3/impl/aa$c;->pause:Lcom/google/ads/interactivemedia/v3/impl/aa$c;

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/impl/aa$c;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_ec
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e0 .. :try_end_ec} :catch_23f

    :goto_ec
    :try_start_ec
    sget-object v0, Lcom/google/ads/interactivemedia/v3/impl/ab$2;->b:[I

    sget-object v1, Lcom/google/ads/interactivemedia/v3/impl/aa$c;->resume:Lcom/google/ads/interactivemedia/v3/impl/aa$c;

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/impl/aa$c;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_f8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_ec .. :try_end_f8} :catch_23c

    :goto_f8
    :try_start_f8
    sget-object v0, Lcom/google/ads/interactivemedia/v3/impl/ab$2;->b:[I

    sget-object v1, Lcom/google/ads/interactivemedia/v3/impl/aa$c;->firstquartile:Lcom/google/ads/interactivemedia/v3/impl/aa$c;

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/impl/aa$c;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_104
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f8 .. :try_end_104} :catch_239

    :goto_104
    :try_start_104
    sget-object v0, Lcom/google/ads/interactivemedia/v3/impl/ab$2;->b:[I

    sget-object v1, Lcom/google/ads/interactivemedia/v3/impl/aa$c;->midpoint:Lcom/google/ads/interactivemedia/v3/impl/aa$c;

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/impl/aa$c;->ordinal()I

    move-result v1

    const/16 v2, 0x13

    aput v2, v0, v1
    :try_end_110
    .catch Ljava/lang/NoSuchFieldError; {:try_start_104 .. :try_end_110} :catch_236

    :goto_110
    :try_start_110
    sget-object v0, Lcom/google/ads/interactivemedia/v3/impl/ab$2;->b:[I

    sget-object v1, Lcom/google/ads/interactivemedia/v3/impl/aa$c;->thirdquartile:Lcom/google/ads/interactivemedia/v3/impl/aa$c;

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/impl/aa$c;->ordinal()I

    move-result v1

    const/16 v2, 0x14

    aput v2, v0, v1
    :try_end_11c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_110 .. :try_end_11c} :catch_233

    :goto_11c
    :try_start_11c
    sget-object v0, Lcom/google/ads/interactivemedia/v3/impl/ab$2;->b:[I

    sget-object v1, Lcom/google/ads/interactivemedia/v3/impl/aa$c;->click:Lcom/google/ads/interactivemedia/v3/impl/aa$c;

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/impl/aa$c;->ordinal()I

    move-result v1

    const/16 v2, 0x15

    aput v2, v0, v1
    :try_end_128
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11c .. :try_end_128} :catch_230

    :goto_128
    :try_start_128
    sget-object v0, Lcom/google/ads/interactivemedia/v3/impl/ab$2;->b:[I

    sget-object v1, Lcom/google/ads/interactivemedia/v3/impl/aa$c;->impression:Lcom/google/ads/interactivemedia/v3/impl/aa$c;

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/impl/aa$c;->ordinal()I

    move-result v1

    const/16 v2, 0x16

    aput v2, v0, v1
    :try_end_134
    .catch Ljava/lang/NoSuchFieldError; {:try_start_128 .. :try_end_134} :catch_22d

    :goto_134
    :try_start_134
    sget-object v0, Lcom/google/ads/interactivemedia/v3/impl/ab$2;->b:[I

    sget-object v1, Lcom/google/ads/interactivemedia/v3/impl/aa$c;->skippableStateChanged:Lcom/google/ads/interactivemedia/v3/impl/aa$c;

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/impl/aa$c;->ordinal()I

    move-result v1

    const/16 v2, 0x17

    aput v2, v0, v1
    :try_end_140
    .catch Ljava/lang/NoSuchFieldError; {:try_start_134 .. :try_end_140} :catch_22a

    :goto_140
    :try_start_140
    sget-object v0, Lcom/google/ads/interactivemedia/v3/impl/ab$2;->b:[I

    sget-object v1, Lcom/google/ads/interactivemedia/v3/impl/aa$c;->videoClicked:Lcom/google/ads/interactivemedia/v3/impl/aa$c;

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/impl/aa$c;->ordinal()I

    move-result v1

    const/16 v2, 0x18

    aput v2, v0, v1
    :try_end_14c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_140 .. :try_end_14c} :catch_227

    :goto_14c
    :try_start_14c
    sget-object v0, Lcom/google/ads/interactivemedia/v3/impl/ab$2;->b:[I

    sget-object v1, Lcom/google/ads/interactivemedia/v3/impl/aa$c;->videoIconClicked:Lcom/google/ads/interactivemedia/v3/impl/aa$c;

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/impl/aa$c;->ordinal()I

    move-result v1

    const/16 v2, 0x19

    aput v2, v0, v1
    :try_end_158
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14c .. :try_end_158} :catch_224

    :goto_158
    :try_start_158
    sget-object v0, Lcom/google/ads/interactivemedia/v3/impl/ab$2;->b:[I

    sget-object v1, Lcom/google/ads/interactivemedia/v3/impl/aa$c;->adProgress:Lcom/google/ads/interactivemedia/v3/impl/aa$c;

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/impl/aa$c;->ordinal()I

    move-result v1

    const/16 v2, 0x1a

    aput v2, v0, v1
    :try_end_164
    .catch Ljava/lang/NoSuchFieldError; {:try_start_158 .. :try_end_164} :catch_221

    :goto_164
    :try_start_164
    sget-object v0, Lcom/google/ads/interactivemedia/v3/impl/ab$2;->b:[I

    sget-object v1, Lcom/google/ads/interactivemedia/v3/impl/aa$c;->adBreakReady:Lcom/google/ads/interactivemedia/v3/impl/aa$c;

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/impl/aa$c;->ordinal()I

    move-result v1

    const/16 v2, 0x1b

    aput v2, v0, v1
    :try_end_170
    .catch Ljava/lang/NoSuchFieldError; {:try_start_164 .. :try_end_170} :catch_21e

    :goto_170
    :try_start_170
    sget-object v0, Lcom/google/ads/interactivemedia/v3/impl/ab$2;->b:[I

    sget-object v1, Lcom/google/ads/interactivemedia/v3/impl/aa$c;->adBreakStarted:Lcom/google/ads/interactivemedia/v3/impl/aa$c;

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/impl/aa$c;->ordinal()I

    move-result v1

    const/16 v2, 0x1c

    aput v2, v0, v1
    :try_end_17c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_170 .. :try_end_17c} :catch_21b

    :goto_17c
    :try_start_17c
    sget-object v0, Lcom/google/ads/interactivemedia/v3/impl/ab$2;->b:[I

    sget-object v1, Lcom/google/ads/interactivemedia/v3/impl/aa$c;->adBreakEnded:Lcom/google/ads/interactivemedia/v3/impl/aa$c;

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/impl/aa$c;->ordinal()I

    move-result v1

    const/16 v2, 0x1d

    aput v2, v0, v1
    :try_end_188
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17c .. :try_end_188} :catch_218

    :goto_188
    :try_start_188
    sget-object v0, Lcom/google/ads/interactivemedia/v3/impl/ab$2;->b:[I

    sget-object v1, Lcom/google/ads/interactivemedia/v3/impl/aa$c;->getViewability:Lcom/google/ads/interactivemedia/v3/impl/aa$c;

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/impl/aa$c;->ordinal()I

    move-result v1

    const/16 v2, 0x1e

    aput v2, v0, v1
    :try_end_194
    .catch Ljava/lang/NoSuchFieldError; {:try_start_188 .. :try_end_194} :catch_215

    :goto_194
    :try_start_194
    sget-object v0, Lcom/google/ads/interactivemedia/v3/impl/ab$2;->b:[I

    sget-object v1, Lcom/google/ads/interactivemedia/v3/impl/aa$c;->reportVastEvent:Lcom/google/ads/interactivemedia/v3/impl/aa$c;

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/impl/aa$c;->ordinal()I

    move-result v1

    const/16 v2, 0x1f

    aput v2, v0, v1
    :try_end_1a0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_194 .. :try_end_1a0} :catch_213

    .line 342
    :goto_1a0
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/impl/aa$b;->values()[Lcom/google/ads/interactivemedia/v3/impl/aa$b;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/ads/interactivemedia/v3/impl/ab$2;->a:[I

    :try_start_1a9
    sget-object v0, Lcom/google/ads/interactivemedia/v3/impl/ab$2;->a:[I

    sget-object v1, Lcom/google/ads/interactivemedia/v3/impl/aa$b;->adsManager:Lcom/google/ads/interactivemedia/v3/impl/aa$b;

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/impl/aa$b;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1b4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a9 .. :try_end_1b4} :catch_211

    :goto_1b4
    :try_start_1b4
    sget-object v0, Lcom/google/ads/interactivemedia/v3/impl/ab$2;->a:[I

    sget-object v1, Lcom/google/ads/interactivemedia/v3/impl/aa$b;->activityMonitor:Lcom/google/ads/interactivemedia/v3/impl/aa$b;

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/impl/aa$b;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1bf
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1b4 .. :try_end_1bf} :catch_20f

    :goto_1bf
    :try_start_1bf
    sget-object v0, Lcom/google/ads/interactivemedia/v3/impl/ab$2;->a:[I

    sget-object v1, Lcom/google/ads/interactivemedia/v3/impl/aa$b;->videoDisplay:Lcom/google/ads/interactivemedia/v3/impl/aa$b;

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/impl/aa$b;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_1ca
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1bf .. :try_end_1ca} :catch_20d

    :goto_1ca
    :try_start_1ca
    sget-object v0, Lcom/google/ads/interactivemedia/v3/impl/ab$2;->a:[I

    sget-object v1, Lcom/google/ads/interactivemedia/v3/impl/aa$b;->adsLoader:Lcom/google/ads/interactivemedia/v3/impl/aa$b;

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/impl/aa$b;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_1d5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1ca .. :try_end_1d5} :catch_20b

    :goto_1d5
    :try_start_1d5
    sget-object v0, Lcom/google/ads/interactivemedia/v3/impl/ab$2;->a:[I

    sget-object v1, Lcom/google/ads/interactivemedia/v3/impl/aa$b;->displayContainer:Lcom/google/ads/interactivemedia/v3/impl/aa$b;

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/impl/aa$b;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_1e0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d5 .. :try_end_1e0} :catch_209

    :goto_1e0
    :try_start_1e0
    sget-object v0, Lcom/google/ads/interactivemedia/v3/impl/ab$2;->a:[I

    sget-object v1, Lcom/google/ads/interactivemedia/v3/impl/aa$b;->i18n:Lcom/google/ads/interactivemedia/v3/impl/aa$b;

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/impl/aa$b;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_1eb
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e0 .. :try_end_1eb} :catch_207

    :goto_1eb
    :try_start_1eb
    sget-object v0, Lcom/google/ads/interactivemedia/v3/impl/ab$2;->a:[I

    sget-object v1, Lcom/google/ads/interactivemedia/v3/impl/aa$b;->webViewLoaded:Lcom/google/ads/interactivemedia/v3/impl/aa$b;

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/impl/aa$b;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_1f6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1eb .. :try_end_1f6} :catch_205

    :goto_1f6
    :try_start_1f6
    sget-object v0, Lcom/google/ads/interactivemedia/v3/impl/ab$2;->a:[I

    sget-object v1, Lcom/google/ads/interactivemedia/v3/impl/aa$b;->log:Lcom/google/ads/interactivemedia/v3/impl/aa$b;

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/impl/aa$b;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_202
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f6 .. :try_end_202} :catch_203

    :goto_202
    return-void

    :catch_203
    move-exception v0

    goto :goto_202

    :catch_205
    move-exception v0

    goto :goto_1f6

    :catch_207
    move-exception v0

    goto :goto_1eb

    :catch_209
    move-exception v0

    goto :goto_1e0

    :catch_20b
    move-exception v0

    goto :goto_1d5

    :catch_20d
    move-exception v0

    goto :goto_1ca

    :catch_20f
    move-exception v0

    goto :goto_1bf

    :catch_211
    move-exception v0

    goto :goto_1b4

    .line 372
    :catch_213
    move-exception v0

    goto :goto_1a0

    :catch_215
    move-exception v0

    goto/16 :goto_194

    :catch_218
    move-exception v0

    goto/16 :goto_188

    :catch_21b
    move-exception v0

    goto/16 :goto_17c

    :catch_21e
    move-exception v0

    goto/16 :goto_170

    :catch_221
    move-exception v0

    goto/16 :goto_164

    :catch_224
    move-exception v0

    goto/16 :goto_158

    :catch_227
    move-exception v0

    goto/16 :goto_14c

    :catch_22a
    move-exception v0

    goto/16 :goto_140

    :catch_22d
    move-exception v0

    goto/16 :goto_134

    :catch_230
    move-exception v0

    goto/16 :goto_128

    :catch_233
    move-exception v0

    goto/16 :goto_11c

    :catch_236
    move-exception v0

    goto/16 :goto_110

    :catch_239
    move-exception v0

    goto/16 :goto_104

    :catch_23c
    move-exception v0

    goto/16 :goto_f8

    :catch_23f
    move-exception v0

    goto/16 :goto_ec

    :catch_242
    move-exception v0

    goto/16 :goto_e0

    :catch_245
    move-exception v0

    goto/16 :goto_d4

    :catch_248
    move-exception v0

    goto/16 :goto_c8

    :catch_24b
    move-exception v0

    goto/16 :goto_bc

    :catch_24e
    move-exception v0

    goto/16 :goto_b0

    :catch_251
    move-exception v0

    goto/16 :goto_a4

    :catch_254
    move-exception v0

    goto/16 :goto_98

    :catch_257
    move-exception v0

    goto/16 :goto_8c

    :catch_25a
    move-exception v0

    goto/16 :goto_80

    :catch_25d
    move-exception v0

    goto/16 :goto_75

    :catch_260
    move-exception v0

    goto/16 :goto_6a

    :catch_263
    move-exception v0

    goto/16 :goto_5f

    :catch_266
    move-exception v0

    goto/16 :goto_54

    :catch_269
    move-exception v0

    goto/16 :goto_49

    :catch_26c
    move-exception v0

    goto/16 :goto_3e

    .line 764
    :catch_26f
    move-exception v0

    goto/16 :goto_2a

    :catch_272
    move-exception v0

    goto/16 :goto_1f

    :catch_275
    move-exception v0

    goto/16 :goto_14
.end method
