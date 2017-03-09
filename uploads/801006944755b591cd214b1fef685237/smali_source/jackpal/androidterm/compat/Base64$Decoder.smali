.class Ljackpal/androidterm/compat/Base64$Decoder;
.super Ljackpal/androidterm/compat/Base64$Coder;
.source "Base64.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljackpal/androidterm/compat/Base64;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Decoder"
.end annotation


# static fields
.field private static final DECODE:[I

.field private static final DECODE_WEBSAFE:[I

.field private static final EQUALS:I = -0x2

.field private static final SKIP:I = -0x1


# instance fields
.field private final alphabet:[I

.field private state:I

.field private value:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/16 v1, 0x100

    .line 190
    new-array v0, v1, [I

    fill-array-data v0, :array_12

    sput-object v0, Ljackpal/androidterm/compat/Base64$Decoder;->DECODE:[I

    .line 213
    new-array v0, v1, [I

    fill-array-data v0, :array_216

    sput-object v0, Ljackpal/androidterm/compat/Base64$Decoder;->DECODE_WEBSAFE:[I

    return-void

    .line 190
    nop

    :array_12
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x3e
        -0x1
        -0x1
        -0x1
        0x3f
        0x34
        0x35
        0x36
        0x37
        0x38
        0x39
        0x3a
        0x3b
        0x3c
        0x3d
        -0x1
        -0x1
        -0x1
        -0x2
        -0x1
        -0x1
        -0x1
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
        0x10
        0x11
        0x12
        0x13
        0x14
        0x15
        0x16
        0x17
        0x18
        0x19
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x1a
        0x1b
        0x1c
        0x1d
        0x1e
        0x1f
        0x20
        0x21
        0x22
        0x23
        0x24
        0x25
        0x26
        0x27
        0x28
        0x29
        0x2a
        0x2b
        0x2c
        0x2d
        0x2e
        0x2f
        0x30
        0x31
        0x32
        0x33
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    .line 213
    :array_216
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x3e
        -0x1
        -0x1
        0x34
        0x35
        0x36
        0x37
        0x38
        0x39
        0x3a
        0x3b
        0x3c
        0x3d
        -0x1
        -0x1
        -0x1
        -0x2
        -0x1
        -0x1
        -0x1
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
        0x10
        0x11
        0x12
        0x13
        0x14
        0x15
        0x16
        0x17
        0x18
        0x19
        -0x1
        -0x1
        -0x1
        -0x1
        0x3f
        -0x1
        0x1a
        0x1b
        0x1c
        0x1d
        0x1e
        0x1f
        0x20
        0x21
        0x22
        0x23
        0x24
        0x25
        0x26
        0x27
        0x28
        0x29
        0x2a
        0x2b
        0x2c
        0x2d
        0x2e
        0x2f
        0x30
        0x31
        0x32
        0x33
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data
.end method

.method public constructor <init>(I[B)V
    .registers 5
    .param p1, "flags"    # I
    .param p2, "output"    # [B

    .prologue
    const/4 v1, 0x0

    .line 250
    invoke-direct {p0}, Ljackpal/androidterm/compat/Base64$Coder;-><init>()V

    .line 251
    iput-object p2, p0, Ljackpal/androidterm/compat/Base64$Decoder;->output:[B

    .line 253
    and-int/lit8 v0, p1, 0x8

    if-nez v0, :cond_13

    sget-object v0, Ljackpal/androidterm/compat/Base64$Decoder;->DECODE:[I

    :goto_c
    iput-object v0, p0, Ljackpal/androidterm/compat/Base64$Decoder;->alphabet:[I

    .line 254
    iput v1, p0, Ljackpal/androidterm/compat/Base64$Decoder;->state:I

    .line 255
    iput v1, p0, Ljackpal/androidterm/compat/Base64$Decoder;->value:I

    .line 256
    return-void

    .line 253
    :cond_13
    sget-object v0, Ljackpal/androidterm/compat/Base64$Decoder;->DECODE_WEBSAFE:[I

    goto :goto_c
.end method


# virtual methods
.method public maxOutputSize(I)I
    .registers 3
    .param p1, "len"    # I

    .prologue
    .line 263
    mul-int/lit8 v0, p1, 0x3

    div-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0xa

    return v0
.end method

.method public process([BIIZ)Z
    .registers 16
    .param p1, "input"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .param p4, "finish"    # Z

    .prologue
    .line 273
    iget v9, p0, Ljackpal/androidterm/compat/Base64$Decoder;->state:I

    const/4 v10, 0x6

    if-ne v9, v10, :cond_7

    const/4 v9, 0x0

    .line 446
    :goto_6
    return v9

    .line 275
    :cond_7
    move v5, p2

    .line 276
    .local v5, "p":I
    add-int/2addr p3, p2

    .line 283
    iget v7, p0, Ljackpal/androidterm/compat/Base64$Decoder;->state:I

    .line 284
    .local v7, "state":I
    iget v8, p0, Ljackpal/androidterm/compat/Base64$Decoder;->value:I

    .line 285
    .local v8, "value":I
    const/4 v2, 0x0

    .line 286
    .local v2, "op":I
    iget-object v4, p0, Ljackpal/androidterm/compat/Base64$Decoder;->output:[B

    .line 287
    .local v4, "output":[B
    iget-object v0, p0, Ljackpal/androidterm/compat/Base64$Decoder;->alphabet:[I

    .line 289
    .local v0, "alphabet":[I
    :goto_12
    if-ge v5, p3, :cond_133

    .line 304
    if-nez v7, :cond_67

    .line 305
    :goto_16
    add-int/lit8 v9, v5, 0x4

    if-gt v9, p3, :cond_5a

    aget-byte v9, p1, v5

    and-int/lit16 v9, v9, 0xff

    aget v9, v0, v9

    shl-int/lit8 v9, v9, 0x12

    add-int/lit8 v10, v5, 0x1

    aget-byte v10, p1, v10

    and-int/lit16 v10, v10, 0xff

    aget v10, v0, v10

    shl-int/lit8 v10, v10, 0xc

    or-int/2addr v9, v10

    add-int/lit8 v10, v5, 0x2

    aget-byte v10, p1, v10

    and-int/lit16 v10, v10, 0xff

    aget v10, v0, v10

    shl-int/lit8 v10, v10, 0x6

    or-int/2addr v9, v10

    add-int/lit8 v10, v5, 0x3

    aget-byte v10, p1, v10

    and-int/lit16 v10, v10, 0xff

    aget v10, v0, v10

    or-int v8, v9, v10

    if-ltz v8, :cond_5a

    .line 310
    add-int/lit8 v9, v2, 0x2

    int-to-byte v10, v8

    aput-byte v10, v4, v9

    .line 311
    add-int/lit8 v9, v2, 0x1

    shr-int/lit8 v10, v8, 0x8

    int-to-byte v10, v10

    aput-byte v10, v4, v9

    .line 312
    shr-int/lit8 v9, v8, 0x10

    int-to-byte v9, v9

    aput-byte v9, v4, v2

    .line 313
    add-int/lit8 v2, v2, 0x3

    .line 314
    add-int/lit8 v5, v5, 0x4

    goto :goto_16

    .line 316
    :cond_5a
    if-lt v5, p3, :cond_67

    move v3, v2

    .line 402
    .end local v2    # "op":I
    .local v3, "op":I
    :goto_5d
    if-nez p4, :cond_102

    .line 405
    iput v7, p0, Ljackpal/androidterm/compat/Base64$Decoder;->state:I

    .line 406
    iput v8, p0, Ljackpal/androidterm/compat/Base64$Decoder;->value:I

    .line 407
    iput v3, p0, Ljackpal/androidterm/compat/Base64$Decoder;->op:I

    .line 408
    const/4 v9, 0x1

    goto :goto_6

    .line 324
    .end local v3    # "op":I
    .restart local v2    # "op":I
    :cond_67
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "p":I
    .local v6, "p":I
    aget-byte v9, p1, v5

    and-int/lit16 v9, v9, 0xff

    aget v1, v0, v9

    .line 326
    .local v1, "d":I
    packed-switch v7, :pswitch_data_136

    :cond_72
    :goto_72
    move v5, v6

    .line 400
    .end local v6    # "p":I
    .restart local v5    # "p":I
    goto :goto_12

    .line 328
    .end local v5    # "p":I
    .restart local v6    # "p":I
    :pswitch_74
    if-ltz v1, :cond_7a

    .line 329
    move v8, v1

    .line 330
    add-int/lit8 v7, v7, 0x1

    goto :goto_72

    .line 331
    :cond_7a
    const/4 v9, -0x1

    if-eq v1, v9, :cond_72

    .line 332
    const/4 v9, 0x6

    iput v9, p0, Ljackpal/androidterm/compat/Base64$Decoder;->state:I

    .line 333
    const/4 v9, 0x0

    goto :goto_6

    .line 338
    :pswitch_82
    if-ltz v1, :cond_8b

    .line 339
    shl-int/lit8 v9, v8, 0x6

    or-int v8, v9, v1

    .line 340
    add-int/lit8 v7, v7, 0x1

    goto :goto_72

    .line 341
    :cond_8b
    const/4 v9, -0x1

    if-eq v1, v9, :cond_72

    .line 342
    const/4 v9, 0x6

    iput v9, p0, Ljackpal/androidterm/compat/Base64$Decoder;->state:I

    .line 343
    const/4 v9, 0x0

    goto/16 :goto_6

    .line 348
    :pswitch_94
    if-ltz v1, :cond_9d

    .line 349
    shl-int/lit8 v9, v8, 0x6

    or-int v8, v9, v1

    .line 350
    add-int/lit8 v7, v7, 0x1

    goto :goto_72

    .line 351
    :cond_9d
    const/4 v9, -0x2

    if-ne v1, v9, :cond_aa

    .line 354
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "op":I
    .restart local v3    # "op":I
    shr-int/lit8 v9, v8, 0x4

    int-to-byte v9, v9

    aput-byte v9, v4, v2

    .line 355
    const/4 v7, 0x4

    move v2, v3

    .end local v3    # "op":I
    .restart local v2    # "op":I
    goto :goto_72

    .line 356
    :cond_aa
    const/4 v9, -0x1

    if-eq v1, v9, :cond_72

    .line 357
    const/4 v9, 0x6

    iput v9, p0, Ljackpal/androidterm/compat/Base64$Decoder;->state:I

    .line 358
    const/4 v9, 0x0

    goto/16 :goto_6

    .line 363
    :pswitch_b3
    if-ltz v1, :cond_ce

    .line 365
    shl-int/lit8 v9, v8, 0x6

    or-int v8, v9, v1

    .line 366
    add-int/lit8 v9, v2, 0x2

    int-to-byte v10, v8

    aput-byte v10, v4, v9

    .line 367
    add-int/lit8 v9, v2, 0x1

    shr-int/lit8 v10, v8, 0x8

    int-to-byte v10, v10

    aput-byte v10, v4, v9

    .line 368
    shr-int/lit8 v9, v8, 0x10

    int-to-byte v9, v9

    aput-byte v9, v4, v2

    .line 369
    add-int/lit8 v2, v2, 0x3

    .line 370
    const/4 v7, 0x0

    goto :goto_72

    .line 371
    :cond_ce
    const/4 v9, -0x2

    if-ne v1, v9, :cond_e1

    .line 374
    add-int/lit8 v9, v2, 0x1

    shr-int/lit8 v10, v8, 0x2

    int-to-byte v10, v10

    aput-byte v10, v4, v9

    .line 375
    shr-int/lit8 v9, v8, 0xa

    int-to-byte v9, v9

    aput-byte v9, v4, v2

    .line 376
    add-int/lit8 v2, v2, 0x2

    .line 377
    const/4 v7, 0x5

    goto :goto_72

    .line 378
    :cond_e1
    const/4 v9, -0x1

    if-eq v1, v9, :cond_72

    .line 379
    const/4 v9, 0x6

    iput v9, p0, Ljackpal/androidterm/compat/Base64$Decoder;->state:I

    .line 380
    const/4 v9, 0x0

    goto/16 :goto_6

    .line 385
    :pswitch_ea
    const/4 v9, -0x2

    if-ne v1, v9, :cond_f0

    .line 386
    add-int/lit8 v7, v7, 0x1

    goto :goto_72

    .line 387
    :cond_f0
    const/4 v9, -0x1

    if-eq v1, v9, :cond_72

    .line 388
    const/4 v9, 0x6

    iput v9, p0, Ljackpal/androidterm/compat/Base64$Decoder;->state:I

    .line 389
    const/4 v9, 0x0

    goto/16 :goto_6

    .line 394
    :pswitch_f9
    const/4 v9, -0x1

    if-eq v1, v9, :cond_72

    .line 395
    const/4 v9, 0x6

    iput v9, p0, Ljackpal/androidterm/compat/Base64$Decoder;->state:I

    .line 396
    const/4 v9, 0x0

    goto/16 :goto_6

    .line 414
    .end local v1    # "d":I
    .end local v2    # "op":I
    .end local v6    # "p":I
    .restart local v3    # "op":I
    .restart local v5    # "p":I
    :cond_102
    packed-switch v7, :pswitch_data_146

    move v2, v3

    .line 444
    .end local v3    # "op":I
    .restart local v2    # "op":I
    :goto_106
    iput v7, p0, Ljackpal/androidterm/compat/Base64$Decoder;->state:I

    .line 445
    iput v2, p0, Ljackpal/androidterm/compat/Base64$Decoder;->op:I

    .line 446
    const/4 v9, 0x1

    goto/16 :goto_6

    .end local v2    # "op":I
    .restart local v3    # "op":I
    :pswitch_10d
    move v2, v3

    .line 417
    .end local v3    # "op":I
    .restart local v2    # "op":I
    goto :goto_106

    .line 421
    .end local v2    # "op":I
    .restart local v3    # "op":I
    :pswitch_10f
    const/4 v9, 0x6

    iput v9, p0, Ljackpal/androidterm/compat/Base64$Decoder;->state:I

    .line 422
    const/4 v9, 0x0

    goto/16 :goto_6

    .line 426
    :pswitch_115
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "op":I
    .restart local v2    # "op":I
    shr-int/lit8 v9, v8, 0x4

    int-to-byte v9, v9

    aput-byte v9, v4, v3

    goto :goto_106

    .line 431
    .end local v2    # "op":I
    .restart local v3    # "op":I
    :pswitch_11d
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "op":I
    .restart local v2    # "op":I
    shr-int/lit8 v9, v8, 0xa

    int-to-byte v9, v9

    aput-byte v9, v4, v3

    .line 432
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "op":I
    .restart local v3    # "op":I
    shr-int/lit8 v9, v8, 0x2

    int-to-byte v9, v9

    aput-byte v9, v4, v2

    move v2, v3

    .line 433
    .end local v3    # "op":I
    .restart local v2    # "op":I
    goto :goto_106

    .line 436
    .end local v2    # "op":I
    .restart local v3    # "op":I
    :pswitch_12d
    const/4 v9, 0x6

    iput v9, p0, Ljackpal/androidterm/compat/Base64$Decoder;->state:I

    .line 437
    const/4 v9, 0x0

    goto/16 :goto_6

    .end local v3    # "op":I
    .restart local v2    # "op":I
    :cond_133
    move v3, v2

    .end local v2    # "op":I
    .restart local v3    # "op":I
    goto/16 :goto_5d

    .line 326
    :pswitch_data_136
    .packed-switch 0x0
        :pswitch_74
        :pswitch_82
        :pswitch_94
        :pswitch_b3
        :pswitch_ea
        :pswitch_f9
    .end packed-switch

    .line 414
    :pswitch_data_146
    .packed-switch 0x0
        :pswitch_10d
        :pswitch_10f
        :pswitch_115
        :pswitch_11d
        :pswitch_12d
    .end packed-switch
.end method
