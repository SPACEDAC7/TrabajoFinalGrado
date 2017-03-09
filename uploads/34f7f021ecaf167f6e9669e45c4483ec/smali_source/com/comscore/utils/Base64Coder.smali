.class public Lcom/comscore/utils/Base64Coder;
.super Ljava/lang/Object;


# static fields
.field private static a:[C

.field private static b:[B


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const/16 v5, 0x40

    const/4 v1, 0x0

    new-array v0, v5, [C

    sput-object v0, Lcom/comscore/utils/Base64Coder;->a:[C

    const/16 v0, 0x41

    move v2, v1

    :goto_a
    const/16 v3, 0x5a

    if-gt v0, v3, :cond_19

    sget-object v4, Lcom/comscore/utils/Base64Coder;->a:[C

    add-int/lit8 v3, v2, 0x1

    aput-char v0, v4, v2

    add-int/lit8 v0, v0, 0x1

    int-to-char v0, v0

    move v2, v3

    goto :goto_a

    :cond_19
    const/16 v0, 0x61

    :goto_1b
    const/16 v3, 0x7a

    if-gt v0, v3, :cond_2a

    sget-object v4, Lcom/comscore/utils/Base64Coder;->a:[C

    add-int/lit8 v3, v2, 0x1

    aput-char v0, v4, v2

    add-int/lit8 v0, v0, 0x1

    int-to-char v0, v0

    move v2, v3

    goto :goto_1b

    :cond_2a
    const/16 v0, 0x30

    :goto_2c
    const/16 v3, 0x39

    if-gt v0, v3, :cond_3b

    sget-object v4, Lcom/comscore/utils/Base64Coder;->a:[C

    add-int/lit8 v3, v2, 0x1

    aput-char v0, v4, v2

    add-int/lit8 v0, v0, 0x1

    int-to-char v0, v0

    move v2, v3

    goto :goto_2c

    :cond_3b
    sget-object v0, Lcom/comscore/utils/Base64Coder;->a:[C

    add-int/lit8 v3, v2, 0x1

    const/16 v4, 0x2b

    aput-char v4, v0, v2

    sget-object v0, Lcom/comscore/utils/Base64Coder;->a:[C

    add-int/lit8 v2, v3, 0x1

    const/16 v2, 0x2f

    aput-char v2, v0, v3

    const/16 v0, 0x80

    new-array v0, v0, [B

    sput-object v0, Lcom/comscore/utils/Base64Coder;->b:[B

    move v0, v1

    :goto_52
    sget-object v2, Lcom/comscore/utils/Base64Coder;->b:[B

    array-length v2, v2

    if-ge v0, v2, :cond_5f

    sget-object v2, Lcom/comscore/utils/Base64Coder;->b:[B

    const/4 v3, -0x1

    aput-byte v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_52

    :cond_5f
    :goto_5f
    if-ge v1, v5, :cond_6d

    sget-object v0, Lcom/comscore/utils/Base64Coder;->b:[B

    sget-object v2, Lcom/comscore/utils/Base64Coder;->a:[C

    aget-char v2, v2, v1

    int-to-byte v3, v1

    aput-byte v3, v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_5f

    :cond_6d
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode(Ljava/lang/String;)[B
    .registers 2

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-static {v0}, Lcom/comscore/utils/Base64Coder;->decode([C)[B

    move-result-object v0

    return-object v0
.end method

.method public static decode([C)[B
    .registers 13

    const/16 v2, 0x41

    const/4 v0, 0x0

    const/16 v11, 0x7f

    array-length v1, p0

    rem-int/lit8 v3, v1, 0x4

    if-eqz v3, :cond_a1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Length of Base64 encoded input string is not a multiple of 4."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_12
    if-lez v6, :cond_20

    add-int/lit8 v1, v6, -0x1

    aget-char v1, p0, v1

    const/16 v3, 0x3d

    if-ne v1, v3, :cond_20

    add-int/lit8 v1, v6, -0x1

    move v6, v1

    goto :goto_12

    :cond_20
    mul-int/lit8 v1, v6, 0x3

    div-int/lit8 v7, v1, 0x4

    new-array v8, v7, [B

    move v5, v0

    :goto_27
    if-ge v0, v6, :cond_9c

    add-int/lit8 v1, v0, 0x1

    aget-char v9, p0, v0

    add-int/lit8 v0, v1, 0x1

    aget-char v10, p0, v1

    if-ge v0, v6, :cond_50

    add-int/lit8 v1, v0, 0x1

    aget-char v0, p0, v0

    move v4, v0

    move v0, v1

    :goto_39
    if-ge v0, v6, :cond_52

    add-int/lit8 v1, v0, 0x1

    aget-char v0, p0, v0

    move v3, v1

    :goto_40
    if-gt v9, v11, :cond_48

    if-gt v10, v11, :cond_48

    if-gt v4, v11, :cond_48

    if-le v0, v11, :cond_55

    :cond_48
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal character in Base64 encoded data."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_50
    move v4, v2

    goto :goto_39

    :cond_52
    move v3, v0

    move v0, v2

    goto :goto_40

    :cond_55
    sget-object v1, Lcom/comscore/utils/Base64Coder;->b:[B

    aget-byte v1, v1, v9

    sget-object v9, Lcom/comscore/utils/Base64Coder;->b:[B

    aget-byte v9, v9, v10

    sget-object v10, Lcom/comscore/utils/Base64Coder;->b:[B

    aget-byte v4, v10, v4

    sget-object v10, Lcom/comscore/utils/Base64Coder;->b:[B

    aget-byte v0, v10, v0

    if-ltz v1, :cond_6d

    if-ltz v9, :cond_6d

    if-ltz v4, :cond_6d

    if-gez v0, :cond_75

    :cond_6d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal character in Base64 encoded data."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_75
    shl-int/lit8 v1, v1, 0x2

    ushr-int/lit8 v10, v9, 0x4

    or-int/2addr v1, v10

    and-int/lit8 v9, v9, 0xf

    shl-int/lit8 v9, v9, 0x4

    ushr-int/lit8 v10, v4, 0x2

    or-int/2addr v9, v10

    and-int/lit8 v4, v4, 0x3

    shl-int/lit8 v4, v4, 0x6

    or-int/2addr v4, v0

    add-int/lit8 v0, v5, 0x1

    int-to-byte v1, v1

    aput-byte v1, v8, v5

    if-ge v0, v7, :cond_9f

    add-int/lit8 v1, v0, 0x1

    int-to-byte v5, v9

    aput-byte v5, v8, v0

    :goto_92
    if-ge v1, v7, :cond_9d

    add-int/lit8 v0, v1, 0x1

    int-to-byte v4, v4

    aput-byte v4, v8, v1

    :goto_99
    move v5, v0

    move v0, v3

    goto :goto_27

    :cond_9c
    return-object v8

    :cond_9d
    move v0, v1

    goto :goto_99

    :cond_9f
    move v1, v0

    goto :goto_92

    :cond_a1
    move v6, v1

    goto/16 :goto_12
.end method

.method public static decodeString(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/String;

    invoke-static {p0}, Lcom/comscore/utils/Base64Coder;->decode(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static encode([B)[C
    .registers 2

    array-length v0, p0

    invoke-static {p0, v0}, Lcom/comscore/utils/Base64Coder;->encode([BI)[C

    move-result-object v0

    return-object v0
.end method

.method public static encode([BI)[C
    .registers 14

    const/16 v3, 0x3d

    const/4 v1, 0x0

    mul-int/lit8 v0, p1, 0x4

    add-int/lit8 v0, v0, 0x2

    div-int/lit8 v6, v0, 0x3

    add-int/lit8 v0, p1, 0x2

    div-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x4

    new-array v7, v0, [C

    move v5, v1

    move v2, v1

    :goto_13
    if-ge v2, p1, :cond_6e

    add-int/lit8 v0, v2, 0x1

    aget-byte v2, p0, v2

    and-int/lit16 v8, v2, 0xff

    if-ge v0, p1, :cond_65

    add-int/lit8 v2, v0, 0x1

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    move v4, v0

    move v0, v2

    :goto_25
    if-ge v0, p1, :cond_67

    add-int/lit8 v2, v0, 0x1

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    :goto_2d
    ushr-int/lit8 v9, v8, 0x2

    and-int/lit8 v8, v8, 0x3

    shl-int/lit8 v8, v8, 0x4

    ushr-int/lit8 v10, v4, 0x4

    or-int/2addr v8, v10

    and-int/lit8 v4, v4, 0xf

    shl-int/lit8 v4, v4, 0x2

    ushr-int/lit8 v10, v0, 0x6

    or-int/2addr v4, v10

    and-int/lit8 v10, v0, 0x3f

    add-int/lit8 v0, v5, 0x1

    sget-object v11, Lcom/comscore/utils/Base64Coder;->a:[C

    aget-char v9, v11, v9

    aput-char v9, v7, v5

    add-int/lit8 v5, v0, 0x1

    sget-object v9, Lcom/comscore/utils/Base64Coder;->a:[C

    aget-char v8, v9, v8

    aput-char v8, v7, v0

    if-ge v5, v6, :cond_6a

    sget-object v0, Lcom/comscore/utils/Base64Coder;->a:[C

    aget-char v0, v0, v4

    :goto_55
    aput-char v0, v7, v5

    add-int/lit8 v4, v5, 0x1

    if-ge v4, v6, :cond_6c

    sget-object v0, Lcom/comscore/utils/Base64Coder;->a:[C

    aget-char v0, v0, v10

    :goto_5f
    aput-char v0, v7, v4

    add-int/lit8 v0, v4, 0x1

    move v5, v0

    goto :goto_13

    :cond_65
    move v4, v1

    goto :goto_25

    :cond_67
    move v2, v0

    move v0, v1

    goto :goto_2d

    :cond_6a
    move v0, v3

    goto :goto_55

    :cond_6c
    move v0, v3

    goto :goto_5f

    :cond_6e
    return-object v7
.end method

.method public static encodeString(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lcom/comscore/utils/Base64Coder;->encode([B)[C

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method
