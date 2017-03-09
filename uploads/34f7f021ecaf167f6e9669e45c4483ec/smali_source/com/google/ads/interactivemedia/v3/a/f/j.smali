.class public final Lcom/google/ads/interactivemedia/v3/a/f/j;
.super Ljava/lang/Object;
.source "IMASDK"


# static fields
.field private static final h:[Ljava/lang/String;

.field private static final i:[I

.field private static final j:[I

.field private static final k:[I

.field private static final l:[I

.field private static final m:[I

.field private static final n:[I


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x3

    const/16 v3, 0xe

    .line 31
    new-array v0, v4, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "audio/mpeg-L1"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "audio/mpeg-L2"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "audio/mpeg"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/ads/interactivemedia/v3/a/f/j;->h:[Ljava/lang/String;

    .line 33
    new-array v0, v4, [I

    fill-array-data v0, :array_42

    sput-object v0, Lcom/google/ads/interactivemedia/v3/a/f/j;->i:[I

    .line 34
    new-array v0, v3, [I

    fill-array-data v0, :array_4c

    sput-object v0, Lcom/google/ads/interactivemedia/v3/a/f/j;->j:[I

    .line 36
    new-array v0, v3, [I

    fill-array-data v0, :array_6c

    sput-object v0, Lcom/google/ads/interactivemedia/v3/a/f/j;->k:[I

    .line 38
    new-array v0, v3, [I

    fill-array-data v0, :array_8c

    sput-object v0, Lcom/google/ads/interactivemedia/v3/a/f/j;->l:[I

    .line 40
    new-array v0, v3, [I

    fill-array-data v0, :array_ac

    sput-object v0, Lcom/google/ads/interactivemedia/v3/a/f/j;->m:[I

    .line 42
    new-array v0, v3, [I

    fill-array-data v0, :array_cc

    sput-object v0, Lcom/google/ads/interactivemedia/v3/a/f/j;->n:[I

    return-void

    .line 33
    nop

    :array_42
    .array-data 4
        0xac44
        0xbb80
        0x7d00
    .end array-data

    .line 34
    :array_4c
    .array-data 4
        0x20
        0x40
        0x60
        0x80
        0xa0
        0xc0
        0xe0
        0x100
        0x120
        0x140
        0x160
        0x180
        0x1a0
        0x1c0
    .end array-data

    .line 36
    :array_6c
    .array-data 4
        0x20
        0x30
        0x38
        0x40
        0x50
        0x60
        0x70
        0x80
        0x90
        0xa0
        0xb0
        0xc0
        0xe0
        0x100
    .end array-data

    .line 38
    :array_8c
    .array-data 4
        0x20
        0x30
        0x38
        0x40
        0x50
        0x60
        0x70
        0x80
        0xa0
        0xc0
        0xe0
        0x100
        0x140
        0x180
    .end array-data

    .line 40
    :array_ac
    .array-data 4
        0x20
        0x28
        0x30
        0x38
        0x40
        0x50
        0x60
        0x70
        0x80
        0xa0
        0xc0
        0xe0
        0x100
        0x140
    .end array-data

    .line 42
    :array_cc
    .array-data 4
        0x8
        0x10
        0x18
        0x20
        0x28
        0x30
        0x38
        0x40
        0x50
        0x60
        0x70
        0x80
        0x90
        0xa0
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(I)I
    .registers 10

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/high16 v2, -0x200000

    const/4 v6, 0x3

    const/4 v0, -0x1

    .line 49
    and-int v1, p0, v2

    if-eq v1, v2, :cond_b

    .line 104
    :cond_a
    :goto_a
    return v0

    .line 53
    :cond_b
    ushr-int/lit8 v1, p0, 0x13

    and-int/lit8 v3, v1, 0x3

    .line 54
    if-eq v3, v7, :cond_a

    .line 58
    ushr-int/lit8 v1, p0, 0x11

    and-int/lit8 v4, v1, 0x3

    .line 59
    if-eqz v4, :cond_a

    .line 63
    ushr-int/lit8 v1, p0, 0xc

    and-int/lit8 v1, v1, 0xf

    .line 64
    if-eqz v1, :cond_a

    const/16 v2, 0xf

    if-eq v1, v2, :cond_a

    .line 69
    ushr-int/lit8 v2, p0, 0xa

    and-int/lit8 v2, v2, 0x3

    .line 70
    if-eq v2, v6, :cond_a

    .line 74
    sget-object v0, Lcom/google/ads/interactivemedia/v3/a/f/j;->i:[I

    aget v0, v0, v2

    .line 75
    if-ne v3, v8, :cond_45

    .line 77
    div-int/lit8 v0, v0, 0x2

    move v2, v0

    .line 84
    :goto_30
    ushr-int/lit8 v0, p0, 0x9

    and-int/lit8 v5, v0, 0x1

    .line 85
    if-ne v4, v6, :cond_52

    .line 87
    if-ne v3, v6, :cond_4b

    sget-object v0, Lcom/google/ads/interactivemedia/v3/a/f/j;->j:[I

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    .line 88
    :goto_3e
    mul-int/lit16 v0, v0, 0x2ee0

    div-int/2addr v0, v2

    add-int/2addr v0, v5

    mul-int/lit8 v0, v0, 0x4

    goto :goto_a

    .line 78
    :cond_45
    if-nez v3, :cond_82

    .line 80
    div-int/lit8 v0, v0, 0x4

    move v2, v0

    goto :goto_30

    .line 87
    :cond_4b
    sget-object v0, Lcom/google/ads/interactivemedia/v3/a/f/j;->k:[I

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    goto :goto_3e

    .line 91
    :cond_52
    if-ne v3, v6, :cond_6d

    .line 92
    if-ne v4, v8, :cond_66

    sget-object v0, Lcom/google/ads/interactivemedia/v3/a/f/j;->l:[I

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    :goto_5c
    move v1, v0

    .line 99
    :goto_5d
    if-ne v3, v6, :cond_75

    .line 101
    const v0, 0x23280

    mul-int/2addr v0, v1

    div-int/2addr v0, v2

    add-int/2addr v0, v5

    goto :goto_a

    .line 92
    :cond_66
    sget-object v0, Lcom/google/ads/interactivemedia/v3/a/f/j;->m:[I

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    goto :goto_5c

    .line 95
    :cond_6d
    sget-object v0, Lcom/google/ads/interactivemedia/v3/a/f/j;->n:[I

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    move v1, v0

    goto :goto_5d

    .line 104
    :cond_75
    if-ne v4, v7, :cond_7e

    const v0, 0x11940

    :goto_7a
    mul-int/2addr v0, v1

    div-int/2addr v0, v2

    add-int/2addr v0, v5

    goto :goto_a

    :cond_7e
    const v0, 0x23280

    goto :goto_7a

    :cond_82
    move v2, v0

    goto :goto_30
.end method

.method private a(ILjava/lang/String;IIIII)V
    .registers 8

    .prologue
    .line 197
    iput p1, p0, Lcom/google/ads/interactivemedia/v3/a/f/j;->a:I

    .line 198
    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/a/f/j;->b:Ljava/lang/String;

    .line 199
    iput p3, p0, Lcom/google/ads/interactivemedia/v3/a/f/j;->c:I

    .line 200
    iput p4, p0, Lcom/google/ads/interactivemedia/v3/a/f/j;->d:I

    .line 201
    iput p5, p0, Lcom/google/ads/interactivemedia/v3/a/f/j;->e:I

    .line 202
    iput p6, p0, Lcom/google/ads/interactivemedia/v3/a/f/j;->f:I

    .line 203
    iput p7, p0, Lcom/google/ads/interactivemedia/v3/a/f/j;->g:I

    .line 204
    return-void
.end method

.method public static a(ILcom/google/ads/interactivemedia/v3/a/f/j;)Z
    .registers 12

    .prologue
    const/high16 v2, -0x200000

    const/4 v5, 0x2

    const/4 v9, 0x3

    const/4 v8, 0x1

    const/4 v0, 0x0

    .line 117
    and-int v1, p0, v2

    if-eq v1, v2, :cond_c

    move v8, v0

    .line 177
    :goto_b
    return v8

    .line 121
    :cond_c
    ushr-int/lit8 v1, p0, 0x13

    and-int/lit8 v1, v1, 0x3

    .line 122
    if-ne v1, v8, :cond_14

    move v8, v0

    .line 123
    goto :goto_b

    .line 126
    :cond_14
    ushr-int/lit8 v2, p0, 0x11

    and-int/lit8 v6, v2, 0x3

    .line 127
    if-nez v6, :cond_1c

    move v8, v0

    .line 128
    goto :goto_b

    .line 131
    :cond_1c
    ushr-int/lit8 v2, p0, 0xc

    and-int/lit8 v2, v2, 0xf

    .line 132
    if-eqz v2, :cond_26

    const/16 v3, 0xf

    if-ne v2, v3, :cond_28

    :cond_26
    move v8, v0

    .line 134
    goto :goto_b

    .line 137
    :cond_28
    ushr-int/lit8 v3, p0, 0xa

    and-int/lit8 v3, v3, 0x3

    .line 138
    if-ne v3, v9, :cond_30

    move v8, v0

    .line 139
    goto :goto_b

    .line 142
    :cond_30
    sget-object v0, Lcom/google/ads/interactivemedia/v3/a/f/j;->i:[I

    aget v4, v0, v3

    .line 143
    if-ne v1, v5, :cond_62

    .line 145
    div-int/lit8 v4, v4, 0x2

    .line 151
    :cond_38
    :goto_38
    ushr-int/lit8 v0, p0, 0x9

    and-int/lit8 v3, v0, 0x1

    .line 153
    if-ne v6, v9, :cond_6e

    .line 155
    if-ne v1, v9, :cond_67

    sget-object v0, Lcom/google/ads/interactivemedia/v3/a/f/j;->j:[I

    add-int/lit8 v2, v2, -0x1

    aget v0, v0, v2

    .line 156
    :goto_46
    mul-int/lit16 v2, v0, 0x2ee0

    div-int/2addr v2, v4

    add-int/2addr v2, v3

    mul-int/lit8 v3, v2, 0x4

    .line 157
    const/16 v7, 0x180

    .line 173
    :goto_4e
    sget-object v2, Lcom/google/ads/interactivemedia/v3/a/f/j;->h:[Ljava/lang/String;

    rsub-int/lit8 v6, v6, 0x3

    aget-object v2, v2, v6

    .line 174
    shr-int/lit8 v6, p0, 0x6

    and-int/lit8 v6, v6, 0x3

    if-ne v6, v9, :cond_5b

    move v5, v8

    .line 175
    :cond_5b
    mul-int/lit16 v6, v0, 0x3e8

    move-object v0, p1

    invoke-direct/range {v0 .. v7}, Lcom/google/ads/interactivemedia/v3/a/f/j;->a(ILjava/lang/String;IIIII)V

    goto :goto_b

    .line 146
    :cond_62
    if-nez v1, :cond_38

    .line 148
    div-int/lit8 v4, v4, 0x4

    goto :goto_38

    .line 155
    :cond_67
    sget-object v0, Lcom/google/ads/interactivemedia/v3/a/f/j;->k:[I

    add-int/lit8 v2, v2, -0x1

    aget v0, v0, v2

    goto :goto_46

    .line 160
    :cond_6e
    if-ne v1, v9, :cond_88

    .line 162
    if-ne v6, v5, :cond_81

    sget-object v0, Lcom/google/ads/interactivemedia/v3/a/f/j;->l:[I

    add-int/lit8 v2, v2, -0x1

    aget v0, v0, v2

    .line 163
    :goto_78
    const/16 v7, 0x480

    .line 164
    const v2, 0x23280

    mul-int/2addr v2, v0

    div-int/2addr v2, v4

    add-int/2addr v3, v2

    goto :goto_4e

    .line 162
    :cond_81
    sget-object v0, Lcom/google/ads/interactivemedia/v3/a/f/j;->m:[I

    add-int/lit8 v2, v2, -0x1

    aget v0, v0, v2

    goto :goto_78

    .line 167
    :cond_88
    sget-object v0, Lcom/google/ads/interactivemedia/v3/a/f/j;->n:[I

    add-int/lit8 v2, v2, -0x1

    aget v2, v0, v2

    .line 168
    if-ne v6, v8, :cond_9c

    const/16 v7, 0x240

    .line 169
    :goto_92
    if-ne v6, v8, :cond_9f

    const v0, 0x11940

    :goto_97
    mul-int/2addr v0, v2

    div-int/2addr v0, v4

    add-int/2addr v3, v0

    move v0, v2

    goto :goto_4e

    .line 168
    :cond_9c
    const/16 v7, 0x480

    goto :goto_92

    .line 169
    :cond_9f
    const v0, 0x23280

    goto :goto_97
.end method
