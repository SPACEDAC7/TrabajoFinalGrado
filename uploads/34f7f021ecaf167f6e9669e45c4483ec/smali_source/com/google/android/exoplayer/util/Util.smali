.class public final Lcom/google/android/exoplayer/util/Util;
.super Ljava/lang/Object;
.source "Util.java"


# static fields
.field private static final CRC32_BYTES_MSBF:[I

.field public static final DEVICE:Ljava/lang/String;

.field private static final ESCAPED_CHARACTER_PATTERN:Ljava/util/regex/Pattern;

.field public static final MANUFACTURER:Ljava/lang/String;

.field private static final MAX_BYTES_TO_DRAIN:J = 0x800L

.field public static final MODEL:Ljava/lang/String;

.field public static final SDK_INT:I

.field private static final TAG:Ljava/lang/String; = "Util"

.field public static final TYPE_DASH:I = 0x0

.field public static final TYPE_HLS:I = 0x2

.field public static final TYPE_OTHER:I = 0x3

.field public static final TYPE_SS:I = 0x1

.field private static final XS_DATE_TIME_PATTERN:Ljava/util/regex/Pattern;

.field private static final XS_DURATION_PATTERN:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 68
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ne v0, v1, :cond_43

    sget-object v0, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    const/4 v1, 0x0

    .line 69
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x4e

    if-ne v0, v1, :cond_43

    const/16 v0, 0x18

    :goto_13
    sput v0, Lcom/google/android/exoplayer/util/Util;->SDK_INT:I

    .line 76
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    sput-object v0, Lcom/google/android/exoplayer/util/Util;->DEVICE:Ljava/lang/String;

    .line 82
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    sput-object v0, Lcom/google/android/exoplayer/util/Util;->MANUFACTURER:Ljava/lang/String;

    .line 88
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sput-object v0, Lcom/google/android/exoplayer/util/Util;->MODEL:Ljava/lang/String;

    .line 112
    const-string v0, "(\\d\\d\\d\\d)\\-(\\d\\d)\\-(\\d\\d)[Tt](\\d\\d):(\\d\\d):(\\d\\d)(\\.(\\d+))?([Zz]|((\\+|\\-)(\\d\\d):(\\d\\d)))?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer/util/Util;->XS_DATE_TIME_PATTERN:Ljava/util/regex/Pattern;

    .line 116
    const-string v0, "^(-)?P(([0-9]*)Y)?(([0-9]*)M)?(([0-9]*)D)?(T(([0-9]*)H)?(([0-9]*)M)?(([0-9.]*)S)?)?$"

    .line 117
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer/util/Util;->XS_DURATION_PATTERN:Ljava/util/regex/Pattern;

    .line 119
    const-string v0, "%([A-Fa-f0-9]{2})"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer/util/Util;->ESCAPED_CHARACTER_PATTERN:Ljava/util/regex/Pattern;

    .line 1019
    const/16 v0, 0x100

    new-array v0, v0, [I

    fill-array-data v0, :array_46

    sput-object v0, Lcom/google/android/exoplayer/util/Util;->CRC32_BYTES_MSBF:[I

    return-void

    .line 69
    :cond_43
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    goto :goto_13

    .line 1019
    :array_46
    .array-data 4
        0x0
        0x4c11db7
        0x9823b6e
        0xd4326d9
        0x130476dc
        0x17c56b6b
        0x1a864db2
        0x1e475005
        0x2608edb8
        0x22c9f00f
        0x2f8ad6d6
        0x2b4bcb61
        0x350c9b64
        0x31cd86d3
        0x3c8ea00a
        0x384fbdbd
        0x4c11db70
        0x48d0c6c7
        0x4593e01e
        0x4152fda9
        0x5f15adac
        0x5bd4b01b
        0x569796c2
        0x52568b75
        0x6a1936c8
        0x6ed82b7f
        0x639b0da6
        0x675a1011
        0x791d4014
        0x7ddc5da3
        0x709f7b7a
        0x745e66cd
        -0x67dc4920
        -0x631d54a9
        -0x6e5e7272
        -0x6a9f6fc7
        -0x74d83fc4
        -0x70192275
        -0x7d5a04ae
        -0x799b191b
        -0x41d4a4a8
        -0x4515b911
        -0x48569fca
        -0x4c97827f
        -0x52d0d27c
        -0x5611cfcd
        -0x5b52e916
        -0x5f93f4a3
        -0x2bcd9270
        -0x2f0c8fd9
        -0x224fa902
        -0x268eb4b7
        -0x38c9e4b4
        -0x3c08f905
        -0x314bdfde
        -0x358ac26b
        -0xdc57fd8
        -0x9046261
        -0x44744ba
        -0x86590f
        -0x1ec1090c
        -0x1a0014bd
        -0x17433266
        -0x13822fd3
        0x34867077
        0x30476dc0
        0x3d044b19
        0x39c556ae
        0x278206ab
        0x23431b1c
        0x2e003dc5
        0x2ac12072
        0x128e9dcf
        0x164f8078
        0x1b0ca6a1
        0x1fcdbb16
        0x18aeb13
        0x54bf6a4
        0x808d07d
        0xcc9cdca
        0x7897ab07
        0x7c56b6b0
        0x71159069
        0x75d48dde
        0x6b93dddb
        0x6f52c06c
        0x6211e6b5
        0x66d0fb02
        0x5e9f46bf
        0x5a5e5b08
        0x571d7dd1
        0x53dc6066
        0x4d9b3063
        0x495a2dd4
        0x44190b0d
        0x40d816ba
        -0x535a3969
        -0x579b24e0
        -0x5ad80207
        -0x5e191fb2
        -0x405e4fb5
        -0x449f5204
        -0x49dc74db
        -0x4d1d696e
        -0x7552d4d1
        -0x7193c968
        -0x7cd0efbf
        -0x7811f20a
        -0x6656a20d
        -0x6297bfbc
        -0x6fd49963
        -0x6b1584d6
        -0x1f4be219
        -0x1b8affb0
        -0x16c9d977
        -0x1208c4c2
        -0xc4f94c5
        -0x88e8974
        -0x5cdafab
        -0x10cb21e
        -0x39430fa1
        -0x3d821218
        -0x30c134cf
        -0x3400297a
        -0x2a47797d
        -0x2e8664cc
        -0x23c54213
        -0x27045fa6
        0x690ce0ee
        0x6dcdfd59
        0x608edb80
        0x644fc637
        0x7a089632
        0x7ec98b85
        0x738aad5c
        0x774bb0eb
        0x4f040d56
        0x4bc510e1
        0x46863638
        0x42472b8f
        0x5c007b8a
        0x58c1663d
        0x558240e4
        0x51435d53
        0x251d3b9e
        0x21dc2629
        0x2c9f00f0
        0x285e1d47
        0x36194d42
        0x32d850f5
        0x3f9b762c
        0x3b5a6b9b
        0x315d626
        0x7d4cb91
        0xa97ed48
        0xe56f0ff
        0x1011a0fa
        0x14d0bd4d
        0x19939b94
        0x1d528623
        -0xed0a9f2
        -0xa11b447
        -0x75292a0
        -0x3938f29
        -0x1dd4df2e
        -0x1915c29b
        -0x1456e444
        -0x1097f9f5
        -0x28d8444a
        -0x2c1959ff
        -0x215a7f28
        -0x259b6291
        -0x3bdc3296
        -0x3f1d2f23
        -0x325e09fc
        -0x369f144d
        -0x42c17282
        -0x46006f37
        -0x4b4349f0
        -0x4f825459
        -0x51c5045e
        -0x550419eb
        -0x58473f34
        -0x5c862285
        -0x64c99f3a
        -0x6008828f
        -0x6d4ba458
        -0x698ab9e1
        -0x77cde9e6
        -0x730cf453
        -0x7e4fd28c
        -0x7a8ecf3d
        0x5d8a9099
        0x594b8d2e
        0x5408abf7
        0x50c9b640
        0x4e8ee645
        0x4a4ffbf2
        0x470cdd2b
        0x43cdc09c
        0x7b827d21
        0x7f436096
        0x7200464f
        0x76c15bf8
        0x68860bfd
        0x6c47164a
        0x61043093
        0x65c52d24
        0x119b4be9
        0x155a565e
        0x18197087
        0x1cd86d30
        0x29f3d35
        0x65e2082
        0xb1d065b
        0xfdc1bec
        0x3793a651
        0x3352bbe6
        0x3e119d3f
        0x3ad08088
        0x2497d08d
        0x2056cd3a
        0x2d15ebe3
        0x29d4f654
        -0x3a56d987
        -0x3e97c432
        -0x33d4e2e9
        -0x3715ff60
        -0x2952af5b
        -0x2d93b2ee
        -0x20d09435
        -0x24118984
        -0x1c5e343f
        -0x189f298a
        -0x15dc0f51
        -0x111d12e8
        -0xf5a42e3
        -0xb9b5f56
        -0x6d8798d
        -0x219643c
        -0x764702f7
        -0x72861f42
        -0x7fc53999
        -0x7b042430
        -0x6543742b
        -0x6182699e
        -0x6cc14f45
        -0x680052f4
        -0x504fef4f
        -0x548ef2fa
        -0x59cdd421
        -0x5d0cc998
        -0x434b9993
        -0x478a8426
        -0x4ac9a2fd
        -0x4e08bf4c
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 3
    .param p0, "o1"    # Ljava/lang/Object;
    .param p1, "o2"    # Ljava/lang/Object;

    .prologue
    .line 172
    if-nez p0, :cond_8

    if-nez p1, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5

    :cond_8
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_5
.end method

.method public static binarySearchCeil(Ljava/util/List;Ljava/lang/Object;ZZ)I
    .registers 6
    .param p2, "inclusive"    # Z
    .param p3, "stayInBounds"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<+",
            "Ljava/lang/Comparable",
            "<-TT;>;>;TT;ZZ)I"
        }
    .end annotation

    .prologue
    .line 361
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<+Ljava/lang/Comparable<-TT;>;>;"
    .local p1, "key":Ljava/lang/Object;, "TT;"
    invoke-static {p0, p1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v0

    .line 362
    .local v0, "index":I
    if-gez v0, :cond_15

    xor-int/lit8 v0, v0, -0x1

    .line 363
    :cond_8
    :goto_8
    if-eqz p3, :cond_14

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .end local v0    # "index":I
    :cond_14
    return v0

    .line 362
    .restart local v0    # "index":I
    :cond_15
    if-nez p2, :cond_8

    add-int/lit8 v0, v0, 0x1

    goto :goto_8
.end method

.method public static binarySearchCeil([JJZZ)I
    .registers 8
    .param p0, "a"    # [J
    .param p1, "key"    # J
    .param p3, "inclusive"    # Z
    .param p4, "stayInBounds"    # Z

    .prologue
    .line 318
    invoke-static {p0, p1, p2}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v0

    .line 319
    .local v0, "index":I
    if-gez v0, :cond_12

    xor-int/lit8 v0, v0, -0x1

    .line 320
    :cond_8
    :goto_8
    if-eqz p4, :cond_11

    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .end local v0    # "index":I
    :cond_11
    return v0

    .line 319
    .restart local v0    # "index":I
    :cond_12
    if-nez p3, :cond_8

    add-int/lit8 v0, v0, 0x1

    goto :goto_8
.end method

.method public static binarySearchFloor(Ljava/util/List;Ljava/lang/Object;ZZ)I
    .registers 6
    .param p2, "inclusive"    # Z
    .param p3, "stayInBounds"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<+",
            "Ljava/lang/Comparable",
            "<-TT;>;>;TT;ZZ)I"
        }
    .end annotation

    .prologue
    .line 339
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<+Ljava/lang/Comparable<-TT;>;>;"
    .local p1, "key":Ljava/lang/Object;, "TT;"
    invoke-static {p0, p1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v0

    .line 340
    .local v0, "index":I
    if-gez v0, :cond_11

    add-int/lit8 v1, v0, 0x2

    neg-int v0, v1

    .line 341
    :cond_9
    :goto_9
    if-eqz p3, :cond_10

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .end local v0    # "index":I
    :cond_10
    return v0

    .line 340
    .restart local v0    # "index":I
    :cond_11
    if-nez p2, :cond_9

    add-int/lit8 v0, v0, -0x1

    goto :goto_9
.end method

.method public static binarySearchFloor([JJZZ)I
    .registers 8
    .param p0, "a"    # [J
    .param p1, "key"    # J
    .param p3, "inclusive"    # Z
    .param p4, "stayInBounds"    # Z

    .prologue
    .line 297
    invoke-static {p0, p1, p2}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v0

    .line 298
    .local v0, "index":I
    if-gez v0, :cond_11

    add-int/lit8 v1, v0, 0x2

    neg-int v0, v1

    .line 299
    :cond_9
    :goto_9
    if-eqz p4, :cond_10

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .end local v0    # "index":I
    :cond_10
    return v0

    .line 298
    .restart local v0    # "index":I
    :cond_11
    if-nez p3, :cond_9

    add-int/lit8 v0, v0, -0x1

    goto :goto_9
.end method

.method public static ceilDivide(II)I
    .registers 3
    .param p0, "numerator"    # I
    .param p1, "denominator"    # I

    .prologue
    .line 268
    add-int v0, p0, p1

    add-int/lit8 v0, v0, -0x1

    div-int/2addr v0, p1

    return v0
.end method

.method public static ceilDivide(JJ)J
    .registers 8
    .param p0, "numerator"    # J
    .param p2, "denominator"    # J

    .prologue
    .line 279
    add-long v0, p0, p2

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    div-long/2addr v0, p2

    return-wide v0
.end method

.method public static closeQuietly(Lcom/google/android/exoplayer/upstream/DataSource;)V
    .registers 2
    .param p0, "dataSource"    # Lcom/google/android/exoplayer/upstream/DataSource;

    .prologue
    .line 231
    :try_start_0
    invoke-interface {p0}, Lcom/google/android/exoplayer/upstream/DataSource;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_4

    .line 235
    :goto_3
    return-void

    .line 232
    :catch_4
    move-exception v0

    goto :goto_3
.end method

.method public static closeQuietly(Ljava/io/OutputStream;)V
    .registers 2
    .param p0, "outputStream"    # Ljava/io/OutputStream;

    .prologue
    .line 244
    :try_start_0
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_4

    .line 248
    :goto_3
    return-void

    .line 245
    :catch_4
    move-exception v0

    goto :goto_3
.end method

.method public static contains([Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4
    .param p0, "items"    # [Ljava/lang/Object;
    .param p1, "item"    # Ljava/lang/Object;

    .prologue
    .line 186
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_11

    .line 187
    aget-object v1, p0, v0

    invoke-static {v1, p1}, Lcom/google/android/exoplayer/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 188
    const/4 v1, 0x1

    .line 191
    :goto_d
    return v1

    .line 186
    :cond_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 191
    :cond_11
    const/4 v1, 0x0

    goto :goto_d
.end method

.method public static crc([BIII)I
    .registers 9
    .param p0, "bytes"    # [B
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "initialValue"    # I

    .prologue
    .line 927
    move v0, p1

    .local v0, "i":I
    :goto_1
    if-ge v0, p2, :cond_17

    .line 928
    shl-int/lit8 v1, p3, 0x8

    sget-object v2, Lcom/google/android/exoplayer/util/Util;->CRC32_BYTES_MSBF:[I

    ushr-int/lit8 v3, p3, 0x18

    aget-byte v4, p0, v0

    and-int/lit16 v4, v4, 0xff

    xor-int/2addr v3, v4

    and-int/lit16 v3, v3, 0xff

    aget v2, v2, v3

    xor-int p3, v1, v2

    .line 927
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 931
    :cond_17
    return p3
.end method

.method public static escapeFileName(Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    .line 830
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    .line 831
    .local v5, "length":I
    const/4 v2, 0x0

    .line 832
    .local v2, "charactersToEscapeCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_6
    if-ge v3, v5, :cond_17

    .line 833
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lcom/google/android/exoplayer/util/Util;->shouldEscapeCharacter(C)Z

    move-result v6

    if-eqz v6, :cond_14

    .line 834
    add-int/lit8 v2, v2, 0x1

    .line 832
    :cond_14
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 837
    :cond_17
    if-nez v2, :cond_1a

    .line 855
    .end local p0    # "fileName":Ljava/lang/String;
    :goto_19
    return-object p0

    .line 841
    .restart local p0    # "fileName":Ljava/lang/String;
    :cond_1a
    const/4 v3, 0x0

    .line 842
    new-instance v0, Ljava/lang/StringBuilder;

    mul-int/lit8 v6, v2, 0x2

    add-int/2addr v6, v5

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .local v0, "builder":Ljava/lang/StringBuilder;
    move v4, v3

    .line 843
    .end local v3    # "i":I
    .local v4, "i":I
    :goto_24
    if-lez v2, :cond_47

    .line 844
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "i":I
    .restart local v3    # "i":I
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 845
    .local v1, "c":C
    invoke-static {v1}, Lcom/google/android/exoplayer/util/Util;->shouldEscapeCharacter(C)Z

    move-result v6

    if-eqz v6, :cond_43

    .line 846
    const/16 v6, 0x25

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 847
    add-int/lit8 v2, v2, -0x1

    :goto_41
    move v4, v3

    .line 851
    .end local v3    # "i":I
    .restart local v4    # "i":I
    goto :goto_24

    .line 849
    .end local v4    # "i":I
    .restart local v3    # "i":I
    :cond_43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_41

    .line 852
    .end local v1    # "c":C
    .end local v3    # "i":I
    .restart local v4    # "i":I
    :cond_47
    if-ge v4, v5, :cond_4c

    .line 853
    invoke-virtual {v0, p0, v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 855
    :cond_4c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .end local p0    # "fileName":Ljava/lang/String;
    move v3, v4

    .end local v4    # "i":I
    .restart local v3    # "i":I
    goto :goto_19
.end method

.method public static executePost(Ljava/lang/String;[BLjava/util/Map;)[B
    .registers 11
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p2, "requestProperties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v6, 0x1

    .line 739
    const/4 v4, 0x0

    .line 741
    .local v4, "urlConnection":Ljava/net/HttpURLConnection;
    :try_start_2
    new-instance v5, Ljava/net/URL;

    invoke-direct {v5, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v4, v0

    .line 742
    const-string v5, "POST"

    invoke-virtual {v4, v5}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 743
    if-eqz p1, :cond_4b

    move v5, v6

    :goto_17
    invoke-virtual {v4, v5}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 744
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 745
    if-eqz p2, :cond_4d

    .line 746
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_28
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4d

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 747
    .local v3, "requestProperty":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_43
    .catchall {:try_start_2 .. :try_end_43} :catchall_44

    goto :goto_28

    .line 767
    .end local v3    # "requestProperty":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :catchall_44
    move-exception v5

    if-eqz v4, :cond_4a

    .line 768
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_4a
    throw v5

    .line 743
    :cond_4b
    const/4 v5, 0x0

    goto :goto_17

    .line 751
    :cond_4d
    if-eqz p1, :cond_59

    .line 752
    :try_start_4f
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;
    :try_end_52
    .catchall {:try_start_4f .. :try_end_52} :catchall_44

    move-result-object v2

    .line 754
    .local v2, "out":Ljava/io/OutputStream;
    :try_start_53
    invoke-virtual {v2, p1}, Ljava/io/OutputStream;->write([B)V
    :try_end_56
    .catchall {:try_start_53 .. :try_end_56} :catchall_6a

    .line 756
    :try_start_56
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 760
    .end local v2    # "out":Ljava/io/OutputStream;
    :cond_59
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_5c
    .catchall {:try_start_56 .. :try_end_5c} :catchall_44

    move-result-object v1

    .line 762
    .local v1, "inputStream":Ljava/io/InputStream;
    :try_start_5d
    invoke-static {v1}, Lcom/google/android/exoplayer/util/Util;->toByteArray(Ljava/io/InputStream;)[B
    :try_end_60
    .catchall {:try_start_5d .. :try_end_60} :catchall_6f

    move-result-object v5

    .line 764
    :try_start_61
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_64
    .catchall {:try_start_61 .. :try_end_64} :catchall_44

    .line 767
    if-eqz v4, :cond_69

    .line 768
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 762
    :cond_69
    return-object v5

    .line 756
    .end local v1    # "inputStream":Ljava/io/InputStream;
    .restart local v2    # "out":Ljava/io/OutputStream;
    :catchall_6a
    move-exception v5

    :try_start_6b
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    throw v5

    .line 764
    .end local v2    # "out":Ljava/io/OutputStream;
    .restart local v1    # "inputStream":Ljava/io/InputStream;
    :catchall_6f
    move-exception v5

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    throw v5
    :try_end_74
    .catchall {:try_start_6b .. :try_end_74} :catchall_44
.end method

.method public static firstIntegersArray(I)[I
    .registers 3
    .param p0, "length"    # I

    .prologue
    .line 373
    new-array v0, p0, [I

    .line 374
    .local v0, "firstIntegers":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    if-ge v1, p0, :cond_a

    .line 375
    aput v1, v0, v1

    .line 374
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 377
    :cond_a
    return-object v0
.end method

.method public static getBottomInt(J)I
    .registers 4
    .param p0, "value"    # J

    .prologue
    .line 648
    long-to-int v0, p0

    return v0
.end method

.method public static getBytesFromHexString(Ljava/lang/String;)[B
    .registers 7
    .param p0, "hexString"    # Ljava/lang/String;

    .prologue
    const/16 v5, 0x10

    .line 681
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    new-array v0, v3, [B

    .line 682
    .local v0, "data":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    array-length v3, v0

    if-ge v1, v3, :cond_2b

    .line 683
    mul-int/lit8 v2, v1, 0x2

    .line 684
    .local v2, "stringOffset":I
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v3

    shl-int/lit8 v3, v3, 0x4

    add-int/lit8 v4, v2, 0x1

    .line 685
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    add-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    .line 682
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 687
    .end local v2    # "stringOffset":I
    :cond_2b
    return-object v0
.end method

.method public static getCommaDelimitedSimpleClassNames([Ljava/lang/Object;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 697
    .local p0, "objects":[Ljava/lang/Object;, "[TT;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 698
    .local v1, "stringBuilder":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6
    array-length v2, p0

    if-ge v0, v2, :cond_23

    .line 699
    aget-object v2, p0, v0

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 700
    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_20

    .line 701
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 698
    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 704
    :cond_23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static getDisplaySizeV16(Landroid/view/Display;Landroid/graphics/Point;)V
    .registers 2
    .param p0, "display"    # Landroid/view/Display;
    .param p1, "outSize"    # Landroid/graphics/Point;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 1006
    invoke-virtual {p0, p1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 1007
    return-void
.end method

.method private static getDisplaySizeV17(Landroid/view/Display;Landroid/graphics/Point;)V
    .registers 2
    .param p0, "display"    # Landroid/view/Display;
    .param p1, "outSize"    # Landroid/graphics/Point;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .prologue
    .line 1001
    invoke-virtual {p0, p1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 1002
    return-void
.end method

.method private static getDisplaySizeV23(Landroid/view/Display;Landroid/graphics/Point;)V
    .registers 4
    .param p0, "display"    # Landroid/view/Display;
    .param p1, "outSize"    # Landroid/graphics/Point;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .prologue
    .line 994
    invoke-virtual {p0}, Landroid/view/Display;->getMode()Landroid/view/Display$Mode;

    move-result-object v0

    .line 995
    .local v0, "mode":Landroid/view/Display$Mode;
    invoke-virtual {v0}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v1

    iput v1, p1, Landroid/graphics/Point;->x:I

    .line 996
    invoke-virtual {v0}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v1

    iput v1, p1, Landroid/graphics/Point;->y:I

    .line 997
    return-void
.end method

.method private static getDisplaySizeV9(Landroid/view/Display;Landroid/graphics/Point;)V
    .registers 3
    .param p0, "display"    # Landroid/view/Display;
    .param p1, "outSize"    # Landroid/graphics/Point;

    .prologue
    .line 1011
    invoke-virtual {p0}, Landroid/view/Display;->getWidth()I

    move-result v0

    iput v0, p1, Landroid/graphics/Point;->x:I

    .line 1012
    invoke-virtual {p0}, Landroid/view/Display;->getHeight()I

    move-result v0

    iput v0, p1, Landroid/graphics/Point;->y:I

    .line 1013
    return-void
.end method

.method public static getHexStringFromBytes([BII)Ljava/lang/String;
    .registers 10
    .param p0, "data"    # [B
    .param p1, "beginIndex"    # I
    .param p2, "endIndex"    # I

    .prologue
    .line 667
    new-instance v0, Ljava/lang/StringBuilder;

    sub-int v2, p2, p1

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 668
    .local v0, "dataStringBuilder":Ljava/lang/StringBuilder;
    move v1, p1

    .local v1, "i":I
    :goto_8
    if-ge v1, p2, :cond_24

    .line 669
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "%02X"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aget-byte v6, p0, v1

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 668
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 671
    :cond_24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getIntegerCodeForString(Ljava/lang/String;)I
    .registers 5
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    .line 627
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 628
    .local v1, "length":I
    const/4 v3, 0x4

    if-gt v1, v3, :cond_19

    const/4 v3, 0x1

    :goto_8
    invoke-static {v3}, Lcom/google/android/exoplayer/util/Assertions;->checkArgument(Z)V

    .line 629
    const/4 v2, 0x0

    .line 630
    .local v2, "result":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_d
    if-ge v0, v1, :cond_1b

    .line 631
    shl-int/lit8 v2, v2, 0x8

    .line 632
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    or-int/2addr v2, v3

    .line 630
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 628
    .end local v0    # "i":I
    .end local v2    # "result":I
    :cond_19
    const/4 v3, 0x0

    goto :goto_8

    .line 634
    .restart local v0    # "i":I
    .restart local v2    # "result":I
    :cond_1b
    return v2
.end method

.method public static getLong(II)J
    .registers 8
    .param p0, "topInteger"    # I
    .param p1, "bottomInteger"    # I

    .prologue
    .line 655
    int-to-long v0, p0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    int-to-long v2, p1

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public static getPcmEncoding(I)I
    .registers 2
    .param p0, "bitDepth"    # I

    .prologue
    .line 783
    sparse-switch p0, :sswitch_data_10

    .line 793
    const/4 v0, 0x0

    :goto_4
    return v0

    .line 785
    :sswitch_5
    const/4 v0, 0x3

    goto :goto_4

    .line 787
    :sswitch_7
    const/4 v0, 0x2

    goto :goto_4

    .line 789
    :sswitch_9
    const/high16 v0, -0x80000000

    goto :goto_4

    .line 791
    :sswitch_c
    const/high16 v0, 0x40000000

    goto :goto_4

    .line 783
    nop

    :sswitch_data_10
    .sparse-switch
        0x8 -> :sswitch_5
        0x10 -> :sswitch_7
        0x18 -> :sswitch_9
        0x20 -> :sswitch_c
    .end sparse-switch
.end method

.method public static getPhysicalDisplaySize(Landroid/content/Context;)Landroid/graphics/Point;
    .registers 16
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 943
    sget v11, Lcom/google/android/exoplayer/util/Util;->SDK_INT:I

    const/16 v12, 0x19

    if-ge v11, v12, :cond_b8

    .line 944
    const-string v11, "Sony"

    sget-object v12, Lcom/google/android/exoplayer/util/Util;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_34

    sget-object v11, Lcom/google/android/exoplayer/util/Util;->MODEL:Ljava/lang/String;

    if-eqz v11, :cond_34

    sget-object v11, Lcom/google/android/exoplayer/util/Util;->MODEL:Ljava/lang/String;

    const-string v12, "BRAVIA"

    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_34

    .line 945
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    const-string v12, "com.sony.dtv.hardware.panel.qfhd"

    invoke-virtual {v11, v12}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_34

    .line 946
    new-instance v2, Landroid/graphics/Point;

    const/16 v11, 0xf00

    const/16 v12, 0x870

    invoke-direct {v2, v11, v12}, Landroid/graphics/Point;-><init>(II)V

    .line 989
    :goto_33
    return-object v2

    .line 947
    :cond_34
    const-string v11, "NVIDIA"

    sget-object v12, Lcom/google/android/exoplayer/util/Util;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_b8

    sget-object v11, Lcom/google/android/exoplayer/util/Util;->MODEL:Ljava/lang/String;

    if-eqz v11, :cond_b8

    sget-object v11, Lcom/google/android/exoplayer/util/Util;->MODEL:Ljava/lang/String;

    const-string v12, "SHIELD"

    .line 948
    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_b8

    .line 950
    const/4 v6, 0x0

    .line 952
    .local v6, "sysDisplaySize":Ljava/lang/String;
    :try_start_4d
    const-string v11, "android.os.SystemProperties"

    invoke-static {v11}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    .line 953
    .local v8, "systemProperties":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v11, "get"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Class;

    const/4 v13, 0x0

    const-class v14, Ljava/lang/String;

    aput-object v14, v12, v13

    invoke-virtual {v8, v11, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 954
    .local v4, "getMethod":Ljava/lang/reflect/Method;
    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const-string/jumbo v13, "sys.display-size"

    aput-object v13, v11, v12

    invoke-virtual {v4, v8, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    move-object v0, v11

    check-cast v0, Ljava/lang/String;

    move-object v6, v0
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_72} :catch_d5

    .line 959
    .end local v4    # "getMethod":Ljava/lang/reflect/Method;
    .end local v8    # "systemProperties":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_72
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_b8

    .line 961
    :try_start_78
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "x"

    invoke-virtual {v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 962
    .local v7, "sysDisplaySizeParts":[Ljava/lang/String;
    array-length v11, v7

    const/4 v12, 0x2

    if-ne v11, v12, :cond_a0

    .line 963
    const/4 v11, 0x0

    aget-object v11, v7, v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 964
    .local v9, "width":I
    const/4 v11, 0x1

    aget-object v11, v7, v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 965
    .local v5, "height":I
    if-lez v9, :cond_a0

    if-lez v5, :cond_a0

    .line 966
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2, v9, v5}, Landroid/graphics/Point;-><init>(II)V
    :try_end_9e
    .catch Ljava/lang/NumberFormatException; {:try_start_78 .. :try_end_9e} :catch_9f

    goto :goto_33

    .line 969
    .end local v5    # "height":I
    .end local v7    # "sysDisplaySizeParts":[Ljava/lang/String;
    .end local v9    # "width":I
    :catch_9f
    move-exception v11

    .line 972
    :cond_a0
    const-string v11, "Util"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Invalid sys.display-size: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 977
    .end local v6    # "sysDisplaySize":Ljava/lang/String;
    :cond_b8
    const-string/jumbo v11, "window"

    invoke-virtual {p0, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/WindowManager;

    .line 978
    .local v10, "windowManager":Landroid/view/WindowManager;
    invoke-interface {v10}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 979
    .local v1, "display":Landroid/view/Display;
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 980
    .local v2, "displaySize":Landroid/graphics/Point;
    sget v11, Lcom/google/android/exoplayer/util/Util;->SDK_INT:I

    const/16 v12, 0x17

    if-lt v11, v12, :cond_de

    .line 981
    invoke-static {v1, v2}, Lcom/google/android/exoplayer/util/Util;->getDisplaySizeV23(Landroid/view/Display;Landroid/graphics/Point;)V

    goto/16 :goto_33

    .line 955
    .end local v1    # "display":Landroid/view/Display;
    .end local v2    # "displaySize":Landroid/graphics/Point;
    .end local v10    # "windowManager":Landroid/view/WindowManager;
    .restart local v6    # "sysDisplaySize":Ljava/lang/String;
    :catch_d5
    move-exception v3

    .line 956
    .local v3, "e":Ljava/lang/Exception;
    const-string v11, "Util"

    const-string v12, "Failed to read sys.display-size"

    invoke-static {v11, v12, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_72

    .line 982
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v6    # "sysDisplaySize":Ljava/lang/String;
    .restart local v1    # "display":Landroid/view/Display;
    .restart local v2    # "displaySize":Landroid/graphics/Point;
    .restart local v10    # "windowManager":Landroid/view/WindowManager;
    :cond_de
    sget v11, Lcom/google/android/exoplayer/util/Util;->SDK_INT:I

    const/16 v12, 0x11

    if-lt v11, v12, :cond_e9

    .line 983
    invoke-static {v1, v2}, Lcom/google/android/exoplayer/util/Util;->getDisplaySizeV17(Landroid/view/Display;Landroid/graphics/Point;)V

    goto/16 :goto_33

    .line 984
    :cond_e9
    sget v11, Lcom/google/android/exoplayer/util/Util;->SDK_INT:I

    const/16 v12, 0x10

    if-lt v11, v12, :cond_f4

    .line 985
    invoke-static {v1, v2}, Lcom/google/android/exoplayer/util/Util;->getDisplaySizeV16(Landroid/view/Display;Landroid/graphics/Point;)V

    goto/16 :goto_33

    .line 987
    :cond_f4
    invoke-static {v1, v2}, Lcom/google/android/exoplayer/util/Util;->getDisplaySizeV9(Landroid/view/Display;Landroid/graphics/Point;)V

    goto/16 :goto_33
.end method

.method public static getRemainderDataSpec(Lcom/google/android/exoplayer/upstream/DataSpec;I)Lcom/google/android/exoplayer/upstream/DataSpec;
    .registers 10
    .param p0, "dataSpec"    # Lcom/google/android/exoplayer/upstream/DataSpec;
    .param p1, "bytesLoaded"    # I

    .prologue
    const-wide/16 v4, -0x1

    .line 612
    if-nez p1, :cond_5

    .line 617
    .end local p0    # "dataSpec":Lcom/google/android/exoplayer/upstream/DataSpec;
    :goto_4
    return-object p0

    .line 615
    .restart local p0    # "dataSpec":Lcom/google/android/exoplayer/upstream/DataSpec;
    :cond_5
    iget-wide v0, p0, Lcom/google/android/exoplayer/upstream/DataSpec;->length:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_1c

    .line 617
    .local v4, "remainingLength":J
    :goto_b
    new-instance v0, Lcom/google/android/exoplayer/upstream/DataSpec;

    iget-object v1, p0, Lcom/google/android/exoplayer/upstream/DataSpec;->uri:Landroid/net/Uri;

    iget-wide v2, p0, Lcom/google/android/exoplayer/upstream/DataSpec;->position:J

    int-to-long v6, p1

    add-long/2addr v2, v6

    iget-object v6, p0, Lcom/google/android/exoplayer/upstream/DataSpec;->key:Ljava/lang/String;

    iget v7, p0, Lcom/google/android/exoplayer/upstream/DataSpec;->flags:I

    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer/upstream/DataSpec;-><init>(Landroid/net/Uri;JJLjava/lang/String;I)V

    move-object p0, v0

    goto :goto_4

    .line 615
    .end local v4    # "remainingLength":J
    :cond_1c
    iget-wide v0, p0, Lcom/google/android/exoplayer/upstream/DataSpec;->length:J

    int-to-long v2, p1

    sub-long v4, v0, v2

    goto :goto_b
.end method

.method public static getTopInt(J)I
    .registers 4
    .param p0, "value"    # J

    .prologue
    .line 641
    const/16 v0, 0x20

    ushr-long v0, p0, v0

    long-to-int v0, v0

    return v0
.end method

.method public static getUserAgent(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "applicationName"    # Ljava/lang/String;

    .prologue
    .line 717
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 718
    .local v2, "packageName":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v2, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 719
    .local v1, "info":Landroid/content/pm/PackageInfo;
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_f} :catch_3f

    .line 723
    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    .end local v2    # "packageName":Ljava/lang/String;
    .local v3, "versionName":Ljava/lang/String;
    :goto_f
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " (Linux;Android "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") ExoPlayerLib/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "1.5.11"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 720
    .end local v3    # "versionName":Ljava/lang/String;
    :catch_3f
    move-exception v0

    .line 721
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "?"

    .restart local v3    # "versionName":Ljava/lang/String;
    goto :goto_f
.end method

.method public static inferContentType(Ljava/lang/String;)I
    .registers 3
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x3

    .line 804
    if-nez p0, :cond_4

    .line 813
    :cond_3
    :goto_3
    return v0

    .line 806
    :cond_4
    const-string v1, ".mpd"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 807
    const/4 v0, 0x0

    goto :goto_3

    .line 808
    :cond_e
    const-string v1, ".ism"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 809
    const/4 v0, 0x1

    goto :goto_3

    .line 810
    :cond_18
    const-string v1, ".m3u8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 811
    const/4 v0, 0x2

    goto :goto_3
.end method

.method public static isAndroidTv(Landroid/content/Context;)Z
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .prologue
    .line 132
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.software.leanback"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isLocalFileUri(Landroid/net/Uri;)Z
    .registers 3
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 159
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 160
    .local v0, "scheme":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_12

    const-string v1, "file"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    :cond_12
    const/4 v1, 0x1

    :goto_13
    return v1

    :cond_14
    const/4 v1, 0x0

    goto :goto_13
.end method

.method public static maybeTerminateInputStream(Ljava/net/HttpURLConnection;J)V
    .registers 10
    .param p0, "connection"    # Ljava/net/HttpURLConnection;
    .param p1, "bytesRemaining"    # J

    .prologue
    .line 571
    sget v4, Lcom/google/android/exoplayer/util/Util;->SDK_INT:I

    const/16 v5, 0x13

    if-eq v4, v5, :cond_d

    sget v4, Lcom/google/android/exoplayer/util/Util;->SDK_INT:I

    const/16 v5, 0x14

    if-eq v4, v5, :cond_d

    .line 601
    :cond_c
    :goto_c
    return-void

    .line 576
    :cond_d
    :try_start_d
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 577
    .local v1, "inputStream":Ljava/io/InputStream;
    const-wide/16 v4, -0x1

    cmp-long v4, p1, v4

    if-nez v4, :cond_55

    .line 579
    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_c

    .line 587
    :cond_1e
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 588
    .local v0, "className":Ljava/lang/String;
    const-string v4, "com.android.okhttp.internal.http.HttpTransport$ChunkedInputStream"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_36

    const-string v4, "com.android.okhttp.internal.http.HttpTransport$FixedLengthInputStream"

    .line 589
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 591
    :cond_36
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    .line 592
    .local v2, "superclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v4, "unexpectedEndOfInput"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 593
    .local v3, "unexpectedEndOfInput":Ljava/lang/reflect/Method;
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 594
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v3, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_52
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_52} :catch_53
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_52} :catch_5c

    goto :goto_c

    .line 596
    .end local v0    # "className":Ljava/lang/String;
    .end local v1    # "inputStream":Ljava/io/InputStream;
    .end local v2    # "superclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "unexpectedEndOfInput":Ljava/lang/reflect/Method;
    :catch_53
    move-exception v4

    goto :goto_c

    .line 582
    .restart local v1    # "inputStream":Ljava/io/InputStream;
    :cond_55
    const-wide/16 v4, 0x800

    cmp-long v4, p1, v4

    if-gtz v4, :cond_1e

    goto :goto_c

    .line 598
    .end local v1    # "inputStream":Ljava/io/InputStream;
    :catch_5c
    move-exception v4

    goto :goto_c
.end method

.method public static newSingleThreadExecutor(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;
    .registers 2
    .param p0, "threadName"    # Ljava/lang/String;

    .prologue
    .line 201
    new-instance v0, Lcom/google/android/exoplayer/util/Util$1;

    invoke-direct {v0, p0}, Lcom/google/android/exoplayer/util/Util$1;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method

.method public static newSingleThreadScheduledExecutor(Ljava/lang/String;)Ljava/util/concurrent/ScheduledExecutorService;
    .registers 2
    .param p0, "threadName"    # Ljava/lang/String;

    .prologue
    .line 216
    new-instance v0, Lcom/google/android/exoplayer/util/Util$2;

    invoke-direct {v0, p0}, Lcom/google/android/exoplayer/util/Util$2;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    return-object v0
.end method

.method public static parseXsDateTime(Ljava/lang/String;)J
    .registers 15
    .param p0, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    const/16 v2, 0x9

    const/16 v13, 0x8

    const/4 v12, 0x3

    .line 419
    sget-object v1, Lcom/google/android/exoplayer/util/Util;->XS_DATE_TIME_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    .line 420
    .local v8, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v8}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-nez v1, :cond_2b

    .line 421
    new-instance v1, Ljava/text/ParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid date/time format: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 425
    :cond_2b
    invoke-virtual {v8, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_ba

    .line 427
    const/4 v9, 0x0

    .line 438
    .local v9, "timezoneShift":I
    :cond_32
    :goto_32
    new-instance v0, Ljava/util/GregorianCalendar;

    const-string v1, "GMT"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 440
    .local v0, "dateTime":Ljava/util/Calendar;
    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    .line 442
    const/4 v1, 0x1

    invoke-virtual {v8, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x2

    .line 443
    invoke-virtual {v8, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .line 444
    invoke-virtual {v8, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x4

    .line 445
    invoke-virtual {v8, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x5

    .line 446
    invoke-virtual {v8, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x6

    .line 447
    invoke-virtual {v8, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 442
    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    .line 448
    invoke-virtual {v8, v13}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_ad

    .line 449
    new-instance v7, Ljava/math/BigDecimal;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8, v13}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v7, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 451
    .local v7, "bd":Ljava/math/BigDecimal;
    const/16 v1, 0xe

    invoke-virtual {v7, v12}, Ljava/math/BigDecimal;->movePointRight(I)Ljava/math/BigDecimal;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigDecimal;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 454
    .end local v7    # "bd":Ljava/math/BigDecimal;
    :cond_ad
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v10

    .line 455
    .local v10, "time":J
    if-eqz v9, :cond_b9

    .line 456
    const v1, 0xea60

    mul-int/2addr v1, v9

    int-to-long v2, v1

    sub-long/2addr v10, v2

    .line 459
    :cond_b9
    return-wide v10

    .line 428
    .end local v0    # "dateTime":Ljava/util/Calendar;
    .end local v9    # "timezoneShift":I
    .end local v10    # "time":J
    :cond_ba
    invoke-virtual {v8, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Z"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c9

    .line 429
    const/4 v9, 0x0

    .restart local v9    # "timezoneShift":I
    goto/16 :goto_32

    .line 431
    .end local v9    # "timezoneShift":I
    :cond_c9
    const/16 v1, 0xc

    invoke-virtual {v8, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x3c

    const/16 v2, 0xd

    .line 432
    invoke-virtual {v8, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    add-int v9, v1, v2

    .line 433
    .restart local v9    # "timezoneShift":I
    const/16 v1, 0xb

    invoke-virtual {v8, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_32

    .line 434
    mul-int/lit8 v9, v9, -0x1

    goto/16 :goto_32
.end method

.method public static parseXsDuration(Ljava/lang/String;)J
    .registers 19
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 387
    sget-object v14, Lcom/google/android/exoplayer/util/Util;->XS_DURATION_PATTERN:Ljava/util/regex/Pattern;

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    .line 388
    .local v8, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v8}, Ljava/util/regex/Matcher;->matches()Z

    move-result v14

    if-eqz v14, :cond_a3

    .line 389
    const/4 v14, 0x1

    invoke-virtual {v8, v14}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_8f

    const/4 v11, 0x1

    .line 392
    .local v11, "negated":Z
    :goto_1a
    const/4 v14, 0x3

    invoke-virtual {v8, v14}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v13

    .line 393
    .local v13, "years":Ljava/lang/String;
    if-eqz v13, :cond_91

    invoke-static {v13}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v14

    const-wide v16, 0x417e1852c0000000L

    mul-double v6, v14, v16

    .line 394
    .local v6, "durationSeconds":D
    :goto_2c
    const/4 v14, 0x5

    invoke-virtual {v8, v14}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    .line 395
    .local v10, "months":Ljava/lang/String;
    if-eqz v10, :cond_94

    invoke-static {v10}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v14

    const-wide v16, 0x4144103580000000L

    mul-double v14, v14, v16

    :goto_3e
    add-double/2addr v6, v14

    .line 396
    const/4 v14, 0x7

    invoke-virtual {v8, v14}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 397
    .local v2, "days":Ljava/lang/String;
    if-eqz v2, :cond_97

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v14

    const-wide v16, 0x40f5180000000000L

    mul-double v14, v14, v16

    :goto_51
    add-double/2addr v6, v14

    .line 398
    const/16 v14, 0xa

    invoke-virtual {v8, v14}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    .line 399
    .local v3, "hours":Ljava/lang/String;
    if-eqz v3, :cond_9a

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v14

    const-wide v16, 0x40ac200000000000L

    mul-double v14, v14, v16

    :goto_65
    add-double/2addr v6, v14

    .line 400
    const/16 v14, 0xc

    invoke-virtual {v8, v14}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    .line 401
    .local v9, "minutes":Ljava/lang/String;
    if-eqz v9, :cond_9d

    invoke-static {v9}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v14

    const-wide/high16 v16, 0x404e000000000000L

    mul-double v14, v14, v16

    :goto_76
    add-double/2addr v6, v14

    .line 402
    const/16 v14, 0xe

    invoke-virtual {v8, v14}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v12

    .line 403
    .local v12, "seconds":Ljava/lang/String;
    if-eqz v12, :cond_a0

    invoke-static {v12}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v14

    :goto_83
    add-double/2addr v6, v14

    .line 404
    const-wide v14, 0x408f400000000000L

    mul-double/2addr v14, v6

    double-to-long v4, v14

    .line 405
    .local v4, "durationMillis":J
    if-eqz v11, :cond_8e

    neg-long v4, v4

    .line 407
    .end local v2    # "days":Ljava/lang/String;
    .end local v3    # "hours":Ljava/lang/String;
    .end local v4    # "durationMillis":J
    .end local v6    # "durationSeconds":D
    .end local v9    # "minutes":Ljava/lang/String;
    .end local v10    # "months":Ljava/lang/String;
    .end local v11    # "negated":Z
    .end local v12    # "seconds":Ljava/lang/String;
    .end local v13    # "years":Ljava/lang/String;
    :cond_8e
    :goto_8e
    return-wide v4

    .line 389
    :cond_8f
    const/4 v11, 0x0

    goto :goto_1a

    .line 393
    .restart local v11    # "negated":Z
    .restart local v13    # "years":Ljava/lang/String;
    :cond_91
    const-wide/16 v6, 0x0

    goto :goto_2c

    .line 395
    .restart local v6    # "durationSeconds":D
    .restart local v10    # "months":Ljava/lang/String;
    :cond_94
    const-wide/16 v14, 0x0

    goto :goto_3e

    .line 397
    .restart local v2    # "days":Ljava/lang/String;
    :cond_97
    const-wide/16 v14, 0x0

    goto :goto_51

    .line 399
    .restart local v3    # "hours":Ljava/lang/String;
    :cond_9a
    const-wide/16 v14, 0x0

    goto :goto_65

    .line 401
    .restart local v9    # "minutes":Ljava/lang/String;
    :cond_9d
    const-wide/16 v14, 0x0

    goto :goto_76

    .line 403
    .restart local v12    # "seconds":Ljava/lang/String;
    :cond_a0
    const-wide/16 v14, 0x0

    goto :goto_83

    .line 407
    .end local v2    # "days":Ljava/lang/String;
    .end local v3    # "hours":Ljava/lang/String;
    .end local v6    # "durationSeconds":D
    .end local v9    # "minutes":Ljava/lang/String;
    .end local v10    # "months":Ljava/lang/String;
    .end local v11    # "negated":Z
    .end local v12    # "seconds":Ljava/lang/String;
    .end local v13    # "years":Ljava/lang/String;
    :cond_a3
    invoke-static/range {p0 .. p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v14

    const-wide v16, 0x40ac200000000000L

    mul-double v14, v14, v16

    const-wide v16, 0x408f400000000000L

    mul-double v14, v14, v16

    double-to-long v4, v14

    goto :goto_8e
.end method

.method public static scaleLargeTimestamp(JJJ)J
    .registers 14
    .param p0, "timestamp"    # J
    .param p2, "multiplier"    # J
    .param p4, "divisor"    # J

    .prologue
    const-wide/16 v6, 0x0

    .line 474
    cmp-long v4, p4, p2

    if-ltz v4, :cond_11

    rem-long v4, p4, p2

    cmp-long v4, v4, v6

    if-nez v4, :cond_11

    .line 475
    div-long v0, p4, p2

    .line 476
    .local v0, "divisionFactor":J
    div-long v4, p0, v0

    .line 482
    .end local v0    # "divisionFactor":J
    :goto_10
    return-wide v4

    .line 477
    :cond_11
    cmp-long v4, p4, p2

    if-gez v4, :cond_20

    rem-long v4, p2, p4

    cmp-long v4, v4, v6

    if-nez v4, :cond_20

    .line 478
    div-long v2, p2, p4

    .line 479
    .local v2, "multiplicationFactor":J
    mul-long v4, p0, v2

    goto :goto_10

    .line 481
    .end local v2    # "multiplicationFactor":J
    :cond_20
    long-to-double v4, p2

    long-to-double v6, p4

    div-double v2, v4, v6

    .line 482
    .local v2, "multiplicationFactor":D
    long-to-double v4, p0

    mul-double/2addr v4, v2

    double-to-long v4, v4

    goto :goto_10
.end method

.method public static scaleLargeTimestamps(Ljava/util/List;JJ)[J
    .registers 16
    .param p1, "multiplier"    # J
    .param p3, "divisor"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;JJ)[J"
        }
    .end annotation

    .prologue
    .local p0, "timestamps":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    const-wide/16 v8, 0x0

    .line 495
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v6

    new-array v3, v6, [J

    .line 496
    .local v3, "scaledTimestamps":[J
    cmp-long v6, p3, p1

    if-ltz v6, :cond_28

    rem-long v6, p3, p1

    cmp-long v6, v6, v8

    if-nez v6, :cond_28

    .line 497
    div-long v0, p3, p1

    .line 498
    .local v0, "divisionFactor":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_15
    array-length v6, v3

    if-ge v2, v6, :cond_62

    .line 499
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    div-long/2addr v6, v0

    aput-wide v6, v3, v2

    .line 498
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 501
    .end local v0    # "divisionFactor":J
    .end local v2    # "i":I
    :cond_28
    cmp-long v6, p3, p1

    if-gez v6, :cond_48

    rem-long v6, p1, p3

    cmp-long v6, v6, v8

    if-nez v6, :cond_48

    .line 502
    div-long v4, p1, p3

    .line 503
    .local v4, "multiplicationFactor":J
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_35
    array-length v6, v3

    if-ge v2, v6, :cond_62

    .line 504
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    mul-long/2addr v6, v4

    aput-wide v6, v3, v2

    .line 503
    add-int/lit8 v2, v2, 0x1

    goto :goto_35

    .line 507
    .end local v2    # "i":I
    .end local v4    # "multiplicationFactor":J
    :cond_48
    long-to-double v6, p1

    long-to-double v8, p3

    div-double v4, v6, v8

    .line 508
    .local v4, "multiplicationFactor":D
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_4d
    array-length v6, v3

    if-ge v2, v6, :cond_62

    .line 509
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    long-to-double v6, v6

    mul-double/2addr v6, v4

    double-to-long v6, v6

    aput-wide v6, v3, v2

    .line 508
    add-int/lit8 v2, v2, 0x1

    goto :goto_4d

    .line 512
    .end local v4    # "multiplicationFactor":D
    :cond_62
    return-object v3
.end method

.method public static scaleLargeTimestampsInPlace([JJJ)V
    .registers 16
    .param p0, "timestamps"    # [J
    .param p1, "multiplier"    # J
    .param p3, "divisor"    # J

    .prologue
    const-wide/16 v8, 0x0

    .line 523
    cmp-long v3, p3, p1

    if-ltz v3, :cond_1a

    rem-long v6, p3, p1

    cmp-long v3, v6, v8

    if-nez v3, :cond_1a

    .line 524
    div-long v0, p3, p1

    .line 525
    .local v0, "divisionFactor":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_f
    array-length v3, p0

    if-ge v2, v3, :cond_44

    .line 526
    aget-wide v6, p0, v2

    div-long/2addr v6, v0

    aput-wide v6, p0, v2

    .line 525
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 528
    .end local v0    # "divisionFactor":J
    .end local v2    # "i":I
    :cond_1a
    cmp-long v3, p3, p1

    if-gez v3, :cond_32

    rem-long v6, p1, p3

    cmp-long v3, v6, v8

    if-nez v3, :cond_32

    .line 529
    div-long v4, p1, p3

    .line 530
    .local v4, "multiplicationFactor":J
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_27
    array-length v3, p0

    if-ge v2, v3, :cond_44

    .line 531
    aget-wide v6, p0, v2

    mul-long/2addr v6, v4

    aput-wide v6, p0, v2

    .line 530
    add-int/lit8 v2, v2, 0x1

    goto :goto_27

    .line 534
    .end local v2    # "i":I
    .end local v4    # "multiplicationFactor":J
    :cond_32
    long-to-double v6, p1

    long-to-double v8, p3

    div-double v4, v6, v8

    .line 535
    .local v4, "multiplicationFactor":D
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_37
    array-length v3, p0

    if-ge v2, v3, :cond_44

    .line 536
    aget-wide v6, p0, v2

    long-to-double v6, v6

    mul-double/2addr v6, v4

    double-to-long v6, v6

    aput-wide v6, p0, v2

    .line 535
    add-int/lit8 v2, v2, 0x1

    goto :goto_37

    .line 539
    .end local v4    # "multiplicationFactor":D
    :cond_44
    return-void
.end method

.method private static shouldEscapeCharacter(C)Z
    .registers 2
    .param p0, "c"    # C

    .prologue
    .line 859
    sparse-switch p0, :sswitch_data_8

    .line 872
    const/4 v0, 0x0

    :goto_4
    return v0

    .line 870
    :sswitch_5
    const/4 v0, 0x1

    goto :goto_4

    .line 859
    nop

    :sswitch_data_8
    .sparse-switch
        0x22 -> :sswitch_5
        0x25 -> :sswitch_5
        0x2a -> :sswitch_5
        0x2f -> :sswitch_5
        0x3a -> :sswitch_5
        0x3c -> :sswitch_5
        0x3e -> :sswitch_5
        0x3f -> :sswitch_5
        0x5c -> :sswitch_5
        0x7c -> :sswitch_5
    .end sparse-switch
.end method

.method public static toArray(Ljava/util/List;)[I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)[I"
        }
    .end annotation

    .prologue
    .line 548
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-nez p0, :cond_4

    .line 549
    const/4 v1, 0x0

    .line 556
    :cond_3
    return-object v1

    .line 551
    :cond_4
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    .line 552
    .local v2, "length":I
    new-array v1, v2, [I

    .line 553
    .local v1, "intArray":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_b
    if-ge v0, v2, :cond_3

    .line 554
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v1, v0

    .line 553
    add-int/lit8 v0, v0, 0x1

    goto :goto_b
.end method

.method public static toByteArray(Ljava/io/InputStream;)[B
    .registers 5
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 144
    const/16 v3, 0x1000

    new-array v0, v3, [B

    .line 145
    .local v0, "buffer":[B
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 147
    .local v2, "outputStream":Ljava/io/ByteArrayOutputStream;
    :goto_9
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .local v1, "bytesRead":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_15

    .line 148
    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_9

    .line 150
    :cond_15
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    return-object v3
.end method

.method public static toLowerInvariant(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 257
    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method

.method public static unescapeFileName(Ljava/lang/String;)Ljava/lang/String;
    .registers 11
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    .line 886
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .line 887
    .local v4, "length":I
    const/4 v6, 0x0

    .line 888
    .local v6, "percentCharacterCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_6
    if-ge v3, v4, :cond_15

    .line 889
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x25

    if-ne v8, v9, :cond_12

    .line 890
    add-int/lit8 v6, v6, 0x1

    .line 888
    :cond_12
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 893
    :cond_15
    if-nez v6, :cond_18

    .line 913
    .end local p0    # "fileName":Ljava/lang/String;
    :goto_17
    return-object p0

    .line 897
    .restart local p0    # "fileName":Ljava/lang/String;
    :cond_18
    mul-int/lit8 v8, v6, 0x2

    sub-int v2, v4, v8

    .line 898
    .local v2, "expectedLength":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 899
    .local v0, "builder":Ljava/lang/StringBuilder;
    sget-object v8, Lcom/google/android/exoplayer/util/Util;->ESCAPED_CHARACTER_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v8, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 900
    .local v5, "matcher":Ljava/util/regex/Matcher;
    const/4 v1, 0x0

    .line 901
    .local v1, "endOfLastMatch":I
    :goto_28
    if-lez v6, :cond_4e

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v8

    if-eqz v8, :cond_4e

    .line 902
    const/4 v8, 0x1

    invoke-virtual {v5, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x10

    invoke-static {v8, v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v8

    int-to-char v7, v8

    .line 903
    .local v7, "unescapedCharacter":C
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->start()I

    move-result v8

    invoke-virtual {v0, p0, v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 904
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->end()I

    move-result v1

    .line 905
    add-int/lit8 v6, v6, -0x1

    .line 906
    goto :goto_28

    .line 907
    .end local v7    # "unescapedCharacter":C
    :cond_4e
    if-ge v1, v4, :cond_53

    .line 908
    invoke-virtual {v0, p0, v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 910
    :cond_53
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-eq v8, v2, :cond_5b

    .line 911
    const/4 p0, 0x0

    goto :goto_17

    .line 913
    :cond_5b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_17
.end method
