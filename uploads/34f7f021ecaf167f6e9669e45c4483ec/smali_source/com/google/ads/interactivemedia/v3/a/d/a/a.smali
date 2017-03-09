.class public final Lcom/google/ads/interactivemedia/v3/a/d/a/a;
.super Ljava/lang/Object;
.source "IMASDK"


# static fields
.field private static final a:[I

.field private static final b:[I

.field private static final c:[I

.field private static final d:[I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/16 v1, 0x20

    .line 37
    const/16 v0, 0x60

    new-array v0, v0, [I

    fill-array-data v0, :array_24

    sput-object v0, Lcom/google/ads/interactivemedia/v3/a/d/a/a;->a:[I

    .line 65
    const/16 v0, 0x10

    new-array v0, v0, [I

    fill-array-data v0, :array_e8

    sput-object v0, Lcom/google/ads/interactivemedia/v3/a/d/a/a;->b:[I

    .line 85
    new-array v0, v1, [I

    fill-array-data v0, :array_10c

    sput-object v0, Lcom/google/ads/interactivemedia/v3/a/d/a/a;->c:[I

    .line 95
    new-array v0, v1, [I

    fill-array-data v0, :array_150

    sput-object v0, Lcom/google/ads/interactivemedia/v3/a/d/a/a;->d:[I

    return-void

    .line 37
    nop

    :array_24
    .array-data 4
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
        0xe1
        0x2b
        0x2c
        0x2d
        0x2e
        0x2f
        0x30
        0x31
        0x32
        0x33
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
        0x3e
        0x3f
        0x40
        0x41
        0x42
        0x43
        0x44
        0x45
        0x46
        0x47
        0x48
        0x49
        0x4a
        0x4b
        0x4c
        0x4d
        0x4e
        0x4f
        0x50
        0x51
        0x52
        0x53
        0x54
        0x55
        0x56
        0x57
        0x58
        0x59
        0x5a
        0x5b
        0xe9
        0x5d
        0xed
        0xf3
        0xfa
        0x61
        0x62
        0x63
        0x64
        0x65
        0x66
        0x67
        0x68
        0x69
        0x6a
        0x6b
        0x6c
        0x6d
        0x6e
        0x6f
        0x70
        0x71
        0x72
        0x73
        0x74
        0x75
        0x76
        0x77
        0x78
        0x79
        0x7a
        0xe7
        0xf7
        0xd1
        0xf1
        0x25a0
    .end array-data

    .line 65
    :array_e8
    .array-data 4
        0xae
        0xb0
        0xbd
        0xbf
        0x2122
        0xa2
        0xa3
        0x266a
        0xe0
        0x20
        0xe8
        0xe2
        0xea
        0xee
        0xf4
        0xfb
    .end array-data

    .line 85
    :array_10c
    .array-data 4
        0xc1
        0xc9
        0xd3
        0xda
        0xdc
        0xfc
        0x2018
        0xa1
        0x2a
        0x27
        0x2014
        0xa9
        0x2120
        0x2022
        0x201c
        0x201d
        0xc0
        0xc2
        0xc7
        0xc8
        0xca
        0xcb
        0xeb
        0xce
        0xcf
        0xef
        0xd4
        0xd9
        0xf9
        0xdb
        0xab
        0xbb
    .end array-data

    .line 95
    :array_150
    .array-data 4
        0xc3
        0xe3
        0xcd
        0xcc
        0xec
        0xd2
        0xf2
        0xd5
        0xf5
        0x7b
        0x7d
        0x5c
        0x5e
        0x5f
        0x7c
        0x7e
        0xc4
        0xe4
        0xd6
        0xf6
        0xdf
        0xa5
        0xa4
        0x2502
        0xc5
        0xe5
        0xd8
        0xf8
        0x250c
        0x2510
        0x2514
        0x2518
    .end array-data
.end method

.method public static a(IILcom/google/ads/interactivemedia/v3/a/f/m;)Z
    .registers 9

    .prologue
    const/4 v0, 0x0

    .line 253
    const/4 v1, 0x4

    if-ne p0, v1, :cond_8

    const/16 v1, 0x8

    if-ge p1, v1, :cond_9

    .line 262
    :cond_8
    :goto_8
    return v0

    .line 256
    :cond_9
    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/a/f/m;->d()I

    move-result v1

    .line 257
    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/a/f/m;->f()I

    move-result v2

    .line 258
    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/a/f/m;->g()I

    move-result v3

    .line 259
    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/a/f/m;->m()I

    move-result v4

    .line 260
    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/a/f/m;->f()I

    move-result v5

    .line 261
    invoke-virtual {p2, v1}, Lcom/google/ads/interactivemedia/v3/a/f/m;->c(I)V

    .line 262
    const/16 v1, 0xb5

    if-ne v2, v1, :cond_8

    const/16 v1, 0x31

    if-ne v3, v1, :cond_8

    const v1, 0x47413934

    if-ne v4, v1, :cond_8

    const/4 v1, 0x3

    if-ne v5, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_8
.end method
