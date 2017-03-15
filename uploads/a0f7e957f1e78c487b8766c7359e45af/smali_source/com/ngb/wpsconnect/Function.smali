.class public Lcom/ngb/wpsconnect/Function;
.super Ljava/lang/Object;
.source "Function.java"


# static fields
.field public static final NOROOT:Ljava/lang/String; = "norootdevice"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static ArcadyanAlgorithm(Ljava/lang/String;)I
    .registers 15
    .param p0, "bssid"    # Ljava/lang/String;

    .prologue
    .line 108
    const-string v10, ":"

    const-string v11, ""

    invoke-virtual {p0, v10, v11}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x8

    const/16 v12, 0xc

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x10

    invoke-static {v10, v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    .line 109
    .local v4, "mac":I
    const-string v10, "%05d"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 110
    .local v8, "serial0":Ljava/lang/String;
    const/16 v10, 0xa

    new-array v9, v10, [I

    .line 111
    .local v9, "sn_int":[I
    const/4 v10, 0x6

    const/4 v11, 0x1

    invoke-virtual {v8, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    and-int/lit8 v11, v11, 0xf

    aput v11, v9, v10

    .line 112
    const/4 v10, 0x7

    const/4 v11, 0x2

    invoke-virtual {v8, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    and-int/lit8 v11, v11, 0xf

    aput v11, v9, v10

    .line 113
    const/16 v10, 0x8

    const/4 v11, 0x3

    invoke-virtual {v8, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    and-int/lit8 v11, v11, 0xf

    aput v11, v9, v10

    .line 114
    const/16 v10, 0x9

    const/4 v11, 0x4

    invoke-virtual {v8, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    and-int/lit8 v11, v11, 0xf

    aput v11, v9, v10

    .line 116
    const-string v10, ":"

    const-string v11, ""

    invoke-virtual {p0, v10, v11}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 118
    .local v6, "mac_str":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v10

    new-array v5, v10, [I

    .line 119
    .local v5, "mac_int":[I
    const/4 v1, 0x0

    .local v1, "i":B
    :goto_63
    array-length v10, v5

    if-lt v1, v10, :cond_132

    .line 122
    const/4 v10, 0x7

    new-array v0, v10, [I

    .line 124
    .local v0, "hpin":[I
    const/4 v10, 0x6

    aget v10, v9, v10

    const/4 v11, 0x7

    aget v11, v9, v11

    add-int/2addr v10, v11

    const/16 v11, 0xa

    aget v11, v5, v11

    add-int/2addr v10, v11

    const/16 v11, 0xb

    aget v11, v5, v11

    add-int/2addr v10, v11

    and-int/lit8 v2, v10, 0xf

    .line 125
    .local v2, "k1":I
    const/16 v10, 0x8

    aget v10, v9, v10

    const/16 v11, 0x9

    aget v11, v9, v11

    add-int/2addr v10, v11

    const/16 v11, 0x8

    aget v11, v5, v11

    add-int/2addr v10, v11

    const/16 v11, 0x9

    aget v11, v5, v11

    add-int/2addr v10, v11

    and-int/lit8 v3, v10, 0xf

    .line 126
    .local v3, "k2":I
    const/4 v10, 0x0

    const/16 v11, 0x9

    aget v11, v9, v11

    xor-int/2addr v11, v2

    aput v11, v0, v10

    .line 127
    const/4 v10, 0x1

    const/16 v11, 0x8

    aget v11, v9, v11

    xor-int/2addr v11, v2

    aput v11, v0, v10

    .line 128
    const/4 v10, 0x2

    const/16 v11, 0x9

    aget v11, v5, v11

    xor-int/2addr v11, v3

    aput v11, v0, v10

    .line 129
    const/4 v10, 0x3

    const/16 v11, 0xa

    aget v11, v5, v11

    xor-int/2addr v11, v3

    aput v11, v0, v10

    .line 130
    const/4 v10, 0x4

    const/16 v11, 0xa

    aget v11, v5, v11

    const/16 v12, 0x9

    aget v12, v9, v12

    xor-int/2addr v11, v12

    aput v11, v0, v10

    .line 131
    const/4 v10, 0x5

    const/16 v11, 0xb

    aget v11, v5, v11

    const/16 v12, 0x8

    aget v12, v9, v12

    xor-int/2addr v11, v12

    aput v11, v0, v10

    .line 132
    const/4 v10, 0x6

    const/4 v11, 0x7

    aget v11, v9, v11

    xor-int/2addr v11, v2

    aput v11, v0, v10

    .line 133
    const-string v10, "%1X%1X%1X%1X%1X%1X%1X"

    const/4 v11, 0x7

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const/4 v13, 0x0

    aget v13, v0, v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    const/4 v13, 0x1

    aget v13, v0, v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x2

    const/4 v13, 0x2

    aget v13, v0, v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x3

    const/4 v13, 0x3

    aget v13, v0, v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x4

    const/4 v13, 0x4

    aget v13, v0, v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x5

    const/4 v13, 0x5

    aget v13, v0, v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x6

    const/4 v13, 0x6

    aget v13, v0, v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x10

    invoke-static {v10, v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v10

    const v11, 0x989680

    rem-int v7, v10, v11

    .line 135
    .local v7, "pin":I
    mul-int/lit8 v10, v7, 0xa

    invoke-static {v7}, Lcom/ngb/wpsconnect/Function;->wpsChecksum(I)I

    move-result v11

    add-int/2addr v10, v11

    return v10

    .line 120
    .end local v0    # "hpin":[I
    .end local v2    # "k1":I
    .end local v3    # "k2":I
    .end local v7    # "pin":I
    :cond_132
    invoke-virtual {v6, v1}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x10

    invoke-static {v10, v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v10

    and-int/lit8 v10, v10, 0xf

    aput v10, v5, v1

    .line 119
    add-int/lit8 v10, v1, 0x1

    int-to-byte v1, v10

    goto/16 :goto_63
.end method

.method private static ArrisDG860AAlgorithm(Ljava/lang/String;)I
    .registers 16
    .param p0, "strMac"    # Ljava/lang/String;

    .prologue
    const/16 v11, 0x10

    const/4 v12, 0x3

    const/4 v14, 0x6

    .line 148
    new-array v3, v14, [J

    .line 149
    .local v3, "fibnum":[J
    const-wide/16 v4, 0x0

    .line 150
    .local v4, "fibsum":J
    const/4 v2, 0x0

    .line 152
    .local v2, "counter":I
    const-string v10, ":"

    invoke-virtual {p0, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 153
    .local v8, "q":[Ljava/lang/String;
    array-length v10, v8

    new-array v0, v10, [I

    .line 154
    .local v0, "arrayMacs":[I
    array-length v10, v8

    new-array v9, v10, [I

    .line 156
    .local v9, "tmp":[I
    const/4 v1, 0x0

    .local v1, "c":I
    :goto_16
    array-length v10, v8

    if-lt v1, v10, :cond_2d

    .line 161
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1a
    if-lt v6, v14, :cond_48

    .line 184
    const/4 v6, 0x0

    :goto_1d
    if-lt v6, v14, :cond_ae

    .line 188
    const-wide/32 v10, 0x989680

    rem-long v10, v4, v10

    long-to-int v7, v10

    .line 190
    .local v7, "int_fibsum":I
    mul-int/lit8 v10, v7, 0xa

    invoke-static {v7}, Lcom/ngb/wpsconnect/Function;->wpsChecksum(I)I

    move-result v11

    add-int/2addr v10, v11

    return v10

    .line 157
    .end local v6    # "i":I
    .end local v7    # "int_fibsum":I
    :cond_2d
    aget-object v10, v8, v1

    invoke-static {v10, v11}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    aput v10, v0, v1

    .line 158
    aget-object v10, v8, v1

    invoke-static {v10, v11}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    aput v10, v9, v1

    .line 156
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    .line 162
    .restart local v6    # "i":I
    :cond_48
    aget v10, v9, v6

    const/16 v11, 0x1e

    if-le v10, v11, :cond_54

    .line 163
    :goto_4e
    aget v10, v9, v6

    const/16 v11, 0x1f

    if-gt v10, v11, :cond_96

    .line 168
    :cond_54
    if-nez v2, :cond_9f

    .line 169
    aget v10, v9, v6

    if-ge v10, v12, :cond_89

    .line 170
    const/4 v10, 0x0

    aget v10, v9, v10

    const/4 v11, 0x1

    aget v11, v9, v11

    add-int/2addr v10, v11

    const/4 v11, 0x2

    aget v11, v9, v11

    add-int/2addr v10, v11

    aget v11, v9, v12

    add-int/2addr v10, v11

    const/4 v11, 0x4

    aget v11, v9, v11

    add-int/2addr v10, v11

    const/4 v11, 0x5

    aget v11, v9, v11

    add-int/2addr v10, v11

    aget v11, v9, v6

    sub-int/2addr v10, v11

    aput v10, v9, v6

    .line 171
    aget v10, v9, v6

    const/16 v11, 0xff

    if-le v10, v11, :cond_81

    .line 172
    aget v10, v9, v6

    and-int/lit16 v10, v10, 0xff

    aput v10, v9, v6

    .line 174
    :cond_81
    aget v10, v9, v6

    rem-int/lit8 v10, v10, 0x1c

    add-int/lit8 v10, v10, 0x3

    aput v10, v9, v6

    .line 177
    :cond_89
    aget v10, v9, v6

    invoke-static {v10}, Lcom/ngb/wpsconnect/Function;->FibGen(I)I

    move-result v10

    int-to-long v10, v10

    aput-wide v10, v3, v6

    .line 181
    :goto_92
    const/4 v2, 0x0

    .line 161
    add-int/lit8 v6, v6, 0x1

    goto :goto_1a

    .line 164
    :cond_96
    aget v10, v9, v6

    add-int/lit8 v10, v10, -0x10

    aput v10, v9, v6

    .line 165
    add-int/lit8 v2, v2, 0x1

    goto :goto_4e

    .line 179
    :cond_9f
    aget v10, v9, v6

    invoke-static {v10}, Lcom/ngb/wpsconnect/Function;->FibGen(I)I

    move-result v10

    invoke-static {v2}, Lcom/ngb/wpsconnect/Function;->FibGen(I)I

    move-result v11

    add-int/2addr v10, v11

    int-to-long v10, v10

    aput-wide v10, v3, v6

    goto :goto_92

    .line 186
    :cond_ae
    aget-wide v10, v3, v6

    add-int/lit8 v12, v6, 0x10

    invoke-static {v12}, Lcom/ngb/wpsconnect/Function;->FibGen(I)I

    move-result v12

    int-to-long v12, v12

    mul-long/2addr v10, v12

    aget v12, v0, v6

    int-to-long v12, v12

    add-long/2addr v10, v12

    add-long/2addr v4, v10

    .line 184
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1d
.end method

.method private static FibGen(I)I
    .registers 3
    .param p0, "n"    # I

    .prologue
    const/4 v0, 0x1

    .line 140
    if-eq p0, v0, :cond_8

    const/4 v1, 0x2

    if-eq p0, v1, :cond_8

    if-nez p0, :cond_9

    .line 143
    :cond_8
    :goto_8
    return v0

    :cond_9
    add-int/lit8 v0, p0, -0x1

    invoke-static {v0}, Lcom/ngb/wpsconnect/Function;->FibGen(I)I

    move-result v0

    add-int/lit8 v1, p0, -0x2

    invoke-static {v1}, Lcom/ngb/wpsconnect/Function;->FibGen(I)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_8
.end method

.method private static ZhaoChunshengAlgorithm(Ljava/lang/String;)I
    .registers 4
    .param p0, "bssid"    # Ljava/lang/String;

    .prologue
    .line 96
    invoke-static {p0}, Lcom/ngb/wpsconnect/Function;->secondFragmentBSSID(Ljava/lang/String;)I

    move-result v1

    const v2, 0x989680

    rem-int v0, v1, v2

    .line 97
    .local v0, "PIN":I
    mul-int/lit8 v1, v0, 0xa

    invoke-static {v0}, Lcom/ngb/wpsconnect/Function;->wpsChecksum(I)I

    move-result v2

    add-int/2addr v1, v2

    return v1
.end method

.method private static ZhaoChunshengAlgorithmWithoutChecksum(Ljava/lang/String;)I
    .registers 3
    .param p0, "bssid"    # Ljava/lang/String;

    .prologue
    .line 102
    invoke-static {p0}, Lcom/ngb/wpsconnect/Function;->secondFragmentBSSID(Ljava/lang/String;)I

    move-result v0

    const v1, 0x989680

    rem-int/2addr v0, v1

    return v0
.end method

.method public static calculePIN(Lcom/ngb/wpsconnect/Network;)[Ljava/lang/String;
    .registers 14
    .param p0, "net"    # Lcom/ngb/wpsconnect/Network;

    .prologue
    const/16 v8, 0x8

    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 223
    new-array v0, v9, [I

    .line 224
    .local v0, "PIN":[I
    invoke-virtual {p0}, Lcom/ngb/wpsconnect/Network;->getBSSID()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/ngb/wpsconnect/Function;->fragmentBSSID(Ljava/lang/String;)I

    move-result v1

    .line 227
    .local v1, "fragmentBSSID":I
    sparse-switch v1, :sswitch_data_478

    .line 839
    new-array v0, v11, [I

    .end local v0    # "PIN":[I
    invoke-virtual {p0}, Lcom/ngb/wpsconnect/Network;->getBSSID()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/ngb/wpsconnect/Function;->ZhaoChunshengAlgorithm(Ljava/lang/String;)I

    move-result v7

    aput v7, v0, v9

    invoke-virtual {p0}, Lcom/ngb/wpsconnect/Network;->getBSSID()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/ngb/wpsconnect/Function;->ArcadyanAlgorithm(Ljava/lang/String;)I

    move-result v7

    aput v7, v0, v10

    .line 844
    .restart local v0    # "PIN":[I
    :cond_29
    :goto_29
    :sswitch_29
    array-length v7, v0

    add-int/lit8 v7, v7, 0x1

    invoke-static {v0, v7}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    .line 845
    array-length v7, v0

    add-int/lit8 v7, v7, -0x1

    const v8, 0xbc6146

    aput v8, v0, v7

    .line 848
    array-length v7, v0

    new-array v6, v7, [Ljava/lang/String;

    .line 849
    .local v6, "sPIN":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":B
    :goto_3c
    array-length v7, v0

    if-lt v2, v7, :cond_46b

    .line 852
    return-object v6

    .line 244
    .end local v2    # "i":B
    .end local v6    # "sPIN":[Ljava/lang/String;
    :sswitch_40
    invoke-virtual {p0}, Lcom/ngb/wpsconnect/Network;->getBSSID()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/ngb/wpsconnect/Function;->ZhaoChunshengAlgorithmWithoutChecksum(Ljava/lang/String;)I

    move-result v5

    .line 247
    .local v5, "pin1":I
    add-int/lit8 v7, v5, 0x8

    mul-int/lit8 v7, v7, 0xa

    add-int/lit8 v8, v5, 0x8

    invoke-static {v8}, Lcom/ngb/wpsconnect/Function;->wpsChecksum(I)I

    move-result v8

    add-int v3, v7, v8

    .line 250
    .local v3, "npin2":I
    add-int/lit8 v7, v5, 0xe

    mul-int/lit8 v7, v7, 0xa

    add-int/lit8 v8, v5, 0xe

    invoke-static {v8}, Lcom/ngb/wpsconnect/Function;->wpsChecksum(I)I

    move-result v8

    add-int v4, v7, v8

    .line 252
    .local v4, "npin3":I
    mul-int/lit8 v7, v5, 0xa

    invoke-static {v5}, Lcom/ngb/wpsconnect/Function;->wpsChecksum(I)I

    move-result v8

    add-int v5, v7, v8

    .line 254
    new-array v0, v12, [I

    .end local v0    # "PIN":[I
    aput v5, v0, v9

    aput v3, v0, v10

    aput v4, v0, v11

    .line 256
    .restart local v0    # "PIN":[I
    goto :goto_29

    .line 260
    .end local v3    # "npin2":I
    .end local v4    # "npin3":I
    .end local v5    # "pin1":I
    :sswitch_71
    new-array v0, v10, [I

    .end local v0    # "PIN":[I
    invoke-virtual {p0}, Lcom/ngb/wpsconnect/Network;->getBSSID()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/ngb/wpsconnect/Function;->ZhaoChunshengAlgorithm(Ljava/lang/String;)I

    move-result v7

    aput v7, v0, v9

    .line 261
    .restart local v0    # "PIN":[I
    goto :goto_29

    .line 267
    :sswitch_7e
    new-array v0, v10, [I

    .end local v0    # "PIN":[I
    invoke-virtual {p0}, Lcom/ngb/wpsconnect/Network;->getBSSID()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/ngb/wpsconnect/Function;->ZhaoChunshengAlgorithm(Ljava/lang/String;)I

    move-result v7

    aput v7, v0, v9

    .line 268
    .restart local v0    # "PIN":[I
    goto :goto_29

    .line 278
    :sswitch_8b
    new-array v0, v10, [I

    .end local v0    # "PIN":[I
    const v7, 0x3ef7ba2

    aput v7, v0, v9

    .line 279
    .restart local v0    # "PIN":[I
    goto :goto_29

    .line 283
    :sswitch_93
    new-array v0, v11, [I

    .end local v0    # "PIN":[I
    fill-array-data v0, :array_732

    .line 284
    .restart local v0    # "PIN":[I
    goto :goto_29

    .line 291
    :sswitch_99
    new-array v0, v10, [I

    .end local v0    # "PIN":[I
    const v7, 0xb5113c

    aput v7, v0, v9

    .line 292
    .restart local v0    # "PIN":[I
    goto :goto_29

    .line 296
    :sswitch_a1
    const/4 v7, 0x4

    new-array v0, v7, [I

    .end local v0    # "PIN":[I
    fill-array-data v0, :array_73a

    .line 297
    .restart local v0    # "PIN":[I
    goto :goto_29

    .line 301
    :sswitch_a8
    new-array v0, v11, [I

    .end local v0    # "PIN":[I
    fill-array-data v0, :array_746

    .line 302
    .restart local v0    # "PIN":[I
    goto/16 :goto_29

    .line 306
    :sswitch_af
    new-array v0, v10, [I

    .end local v0    # "PIN":[I
    const v7, 0x1363521

    aput v7, v0, v9

    .line 307
    .restart local v0    # "PIN":[I
    goto/16 :goto_29

    .line 311
    :sswitch_b8
    new-array v0, v8, [I

    .end local v0    # "PIN":[I
    fill-array-data v0, :array_74e

    .line 312
    .restart local v0    # "PIN":[I
    goto/16 :goto_29

    .line 316
    :sswitch_bf
    new-array v0, v8, [I

    .end local v0    # "PIN":[I
    fill-array-data v0, :array_762

    .line 317
    .restart local v0    # "PIN":[I
    goto/16 :goto_29

    .line 321
    :sswitch_c6
    new-array v0, v8, [I

    .end local v0    # "PIN":[I
    fill-array-data v0, :array_776

    .line 322
    .restart local v0    # "PIN":[I
    goto/16 :goto_29

    .line 327
    :sswitch_cd
    new-array v0, v8, [I

    .end local v0    # "PIN":[I
    fill-array-data v0, :array_78a

    .line 328
    .restart local v0    # "PIN":[I
    goto/16 :goto_29

    .line 375
    :sswitch_d4
    new-array v0, v10, [I

    .end local v0    # "PIN":[I
    invoke-virtual {p0}, Lcom/ngb/wpsconnect/Network;->getBSSID()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/ngb/wpsconnect/Function;->ZhaoChunshengAlgorithm(Ljava/lang/String;)I

    move-result v7

    aput v7, v0, v9

    .line 376
    .restart local v0    # "PIN":[I
    goto/16 :goto_29

    .line 380
    :sswitch_e2
    new-array v0, v10, [I

    .end local v0    # "PIN":[I
    invoke-virtual {p0}, Lcom/ngb/wpsconnect/Network;->getBSSID()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/ngb/wpsconnect/Function;->ZhaoChunshengAlgorithm(Ljava/lang/String;)I

    move-result v7

    aput v7, v0, v9

    .line 381
    .restart local v0    # "PIN":[I
    goto/16 :goto_29

    .line 386
    :sswitch_f0
    new-array v0, v10, [I

    .end local v0    # "PIN":[I
    invoke-virtual {p0}, Lcom/ngb/wpsconnect/Network;->getBSSID()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/ngb/wpsconnect/Function;->ZhaoChunshengAlgorithm(Ljava/lang/String;)I

    move-result v7

    aput v7, v0, v9

    .line 388
    .restart local v0    # "PIN":[I
    goto/16 :goto_29

    .line 393
    :sswitch_fe
    new-array v0, v10, [I

    .end local v0    # "PIN":[I
    invoke-virtual {p0}, Lcom/ngb/wpsconnect/Network;->getBSSID()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/ngb/wpsconnect/Function;->ZhaoChunshengAlgorithm(Ljava/lang/String;)I

    move-result v7

    aput v7, v0, v9

    .line 394
    .restart local v0    # "PIN":[I
    goto/16 :goto_29

    .line 399
    :sswitch_10c
    new-array v0, v10, [I

    .end local v0    # "PIN":[I
    invoke-virtual {p0}, Lcom/ngb/wpsconnect/Network;->getBSSID()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/ngb/wpsconnect/Function;->ZhaoChunshengAlgorithm(Ljava/lang/String;)I

    move-result v7

    aput v7, v0, v9

    .line 400
    .restart local v0    # "PIN":[I
    goto/16 :goto_29

    .line 405
    :sswitch_11a
    new-array v0, v10, [I

    .end local v0    # "PIN":[I
    invoke-virtual {p0}, Lcom/ngb/wpsconnect/Network;->getBSSID()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/ngb/wpsconnect/Function;->ZhaoChunshengAlgorithm(Ljava/lang/String;)I

    move-result v7

    aput v7, v0, v9

    .line 406
    .restart local v0    # "PIN":[I
    goto/16 :goto_29

    .line 413
    :sswitch_128
    new-array v0, v10, [I

    .end local v0    # "PIN":[I
    invoke-virtual {p0}, Lcom/ngb/wpsconnect/Network;->getBSSID()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/ngb/wpsconnect/Function;->ZhaoChunshengAlgorithm(Ljava/lang/String;)I

    move-result v7

    aput v7, v0, v9

    .line 414
    .restart local v0    # "PIN":[I
    goto/16 :goto_29

    .line 417
    :sswitch_136
    new-array v0, v10, [I

    .end local v0    # "PIN":[I
    const v7, 0x13fc527

    aput v7, v0, v9

    .line 418
    .restart local v0    # "PIN":[I
    goto/16 :goto_29

    .line 424
    :sswitch_13f
    new-array v0, v10, [I

    .end local v0    # "PIN":[I
    invoke-virtual {p0}, Lcom/ngb/wpsconnect/Network;->getBSSID()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/ngb/wpsconnect/Function;->ZhaoChunshengAlgorithm(Ljava/lang/String;)I

    move-result v7

    aput v7, v0, v9

    .line 425
    .restart local v0    # "PIN":[I
    goto/16 :goto_29

    .line 430
    :sswitch_14d
    new-array v0, v10, [I

    .end local v0    # "PIN":[I
    invoke-virtual {p0}, Lcom/ngb/wpsconnect/Network;->getBSSID()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/ngb/wpsconnect/Function;->ZhaoChunshengAlgorithm(Ljava/lang/String;)I

    move-result v7

    aput v7, v0, v9

    .line 431
    .restart local v0    # "PIN":[I
    goto/16 :goto_29

    .line 435
    :sswitch_15b
    new-array v0, v10, [I

    .end local v0    # "PIN":[I
    const v7, 0x2e0340a

    aput v7, v0, v9

    .line 436
    .restart local v0    # "PIN":[I
    goto/16 :goto_29

    .line 444
    :sswitch_164
    new-array v0, v10, [I

    .end local v0    # "PIN":[I
    invoke-virtual {p0}, Lcom/ngb/wpsconnect/Network;->getBSSID()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/ngb/wpsconnect/Function;->ZhaoChunshengAlgorithm(Ljava/lang/String;)I

    move-result v7

    aput v7, v0, v9

    .line 445
    .restart local v0    # "PIN":[I
    goto/16 :goto_29

    .line 450
    :sswitch_172
    new-array v0, v11, [I

    .end local v0    # "PIN":[I
    fill-array-data v0, :array_79e

    .line 451
    .restart local v0    # "PIN":[I
    goto/16 :goto_29

    .line 456
    :sswitch_179
    new-array v0, v12, [I

    .end local v0    # "PIN":[I
    fill-array-data v0, :array_7a6

    .line 457
    .restart local v0    # "PIN":[I
    goto/16 :goto_29

    .line 461
    :sswitch_180
    new-array v0, v10, [I

    .end local v0    # "PIN":[I
    const v7, 0xfc7b37

    aput v7, v0, v9

    .line 462
    .restart local v0    # "PIN":[I
    goto/16 :goto_29

    .line 467
    :sswitch_189
    new-array v0, v10, [I

    .end local v0    # "PIN":[I
    invoke-virtual {p0}, Lcom/ngb/wpsconnect/Network;->getBSSID()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/ngb/wpsconnect/Function;->ZhaoChunshengAlgorithm(Ljava/lang/String;)I

    move-result v7

    aput v7, v0, v9

    .line 468
    .restart local v0    # "PIN":[I
    goto/16 :goto_29

    .line 473
    :sswitch_197
    new-array v0, v10, [I

    .end local v0    # "PIN":[I
    invoke-virtual {p0}, Lcom/ngb/wpsconnect/Network;->getBSSID()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/ngb/wpsconnect/Function;->ZhaoChunshengAlgorithm(Ljava/lang/String;)I

    move-result v7

    aput v7, v0, v9

    .line 474
    .restart local v0    # "PIN":[I
    goto/16 :goto_29

    .line 485
    :sswitch_1a5
    new-array v0, v10, [I

    .end local v0    # "PIN":[I
    const v7, 0x29e8a68

    aput v7, v0, v9

    .line 486
    .restart local v0    # "PIN":[I
    goto/16 :goto_29

    .line 493
    :sswitch_1ae
    invoke-virtual {p0}, Lcom/ngb/wpsconnect/Network;->getESSID()Ljava/lang/String;

    move-result-object v7

    const-string v8, "DartyBox"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_29

    .line 495
    new-array v0, v10, [I

    .end local v0    # "PIN":[I
    const v7, 0x2d327cd

    aput v7, v0, v9

    .line 498
    .restart local v0    # "PIN":[I
    goto/16 :goto_29

    .line 503
    :sswitch_1c3
    new-array v0, v10, [I

    .end local v0    # "PIN":[I
    invoke-virtual {p0}, Lcom/ngb/wpsconnect/Network;->getBSSID()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/ngb/wpsconnect/Function;->ZhaoChunshengAlgorithm(Ljava/lang/String;)I

    move-result v7

    aput v7, v0, v9

    .line 504
    .restart local v0    # "PIN":[I
    goto/16 :goto_29

    .line 509
    :sswitch_1d1
    new-array v0, v10, [I

    .end local v0    # "PIN":[I
    invoke-virtual {p0}, Lcom/ngb/wpsconnect/Network;->getBSSID()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/ngb/wpsconnect/Function;->ZhaoChunshengAlgorithm(Ljava/lang/String;)I

    move-result v7

    aput v7, v0, v9

    .line 510
    .restart local v0    # "PIN":[I
    goto/16 :goto_29

    .line 515
    :sswitch_1df
    new-array v0, v10, [I

    .end local v0    # "PIN":[I
    invoke-virtual {p0}, Lcom/ngb/wpsconnect/Network;->getBSSID()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/ngb/wpsconnect/Function;->ZhaoChunshengAlgorithm(Ljava/lang/String;)I

    move-result v7

    aput v7, v0, v9

    .line 516
    .restart local v0    # "PIN":[I
    goto/16 :goto_29

    .line 523
    :sswitch_1ed
    new-array v0, v10, [I

    .end local v0    # "PIN":[I
    invoke-virtual {p0}, Lcom/ngb/wpsconnect/Network;->getBSSID()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/ngb/wpsconnect/Function;->ZhaoChunshengAlgorithm(Ljava/lang/String;)I

    move-result v7

    aput v7, v0, v9

    .line 524
    .restart local v0    # "PIN":[I
    goto/16 :goto_29

    .line 529
    :sswitch_1fb
    new-array v0, v10, [I

    .end local v0    # "PIN":[I
    const v7, 0x133ceef

    aput v7, v0, v9

    .line 530
    .restart local v0    # "PIN":[I
    goto/16 :goto_29

    .line 535
    :sswitch_204
    new-array v0, v11, [I

    .end local v0    # "PIN":[I
    fill-array-data v0, :array_7b0

    .line 536
    .restart local v0    # "PIN":[I
    goto/16 :goto_29

    .line 541
    :sswitch_20b
    new-array v0, v10, [I

    .end local v0    # "PIN":[I
    const v7, 0x1478401

    aput v7, v0, v9

    .line 542
    .restart local v0    # "PIN":[I
    goto/16 :goto_29

    .line 547
    :sswitch_214
    new-array v0, v10, [I

    .end local v0    # "PIN":[I
    invoke-virtual {p0}, Lcom/ngb/wpsconnect/Network;->getBSSID()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/ngb/wpsconnect/Function;->ZhaoChunshengAlgorithm(Ljava/lang/String;)I

    move-result v7

    aput v7, v0, v9

    .line 548
    .restart local v0    # "PIN":[I
    goto/16 :goto_29

    .line 563
    :sswitch_222
    invoke-virtual {p0}, Lcom/ngb/wpsconnect/Network;->getESSID()Ljava/lang/String;

    move-result-object v7

    const-string v8, "MOVISTAR"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_235

    .line 565
    new-array v0, v11, [I

    .end local v0    # "PIN":[I
    fill-array-data v0, :array_7b8

    .line 566
    .restart local v0    # "PIN":[I
    goto/16 :goto_29

    .line 567
    :cond_235
    invoke-virtual {p0}, Lcom/ngb/wpsconnect/Network;->getESSID()Ljava/lang/String;

    move-result-object v7

    const-string v8, "JAZZTEL"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_24a

    .line 569
    new-array v0, v10, [I

    .end local v0    # "PIN":[I
    const v7, 0x133ceef

    aput v7, v0, v9

    .line 570
    .restart local v0    # "PIN":[I
    goto/16 :goto_29

    .line 572
    :cond_24a
    new-array v0, v12, [I

    .end local v0    # "PIN":[I
    fill-array-data v0, :array_7c0

    .line 573
    .restart local v0    # "PIN":[I
    goto/16 :goto_29

    .line 578
    :sswitch_251
    new-array v0, v10, [I

    .end local v0    # "PIN":[I
    const v7, 0x11f6c06

    aput v7, v0, v9

    .line 579
    .restart local v0    # "PIN":[I
    goto/16 :goto_29

    .line 583
    :sswitch_25a
    invoke-virtual {p0}, Lcom/ngb/wpsconnect/Network;->getESSID()Ljava/lang/String;

    move-result-object v7

    const-string v8, "Vodafone"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_26f

    .line 585
    new-array v0, v10, [I

    .end local v0    # "PIN":[I
    const v7, 0x98bae9

    aput v7, v0, v9

    .line 586
    .restart local v0    # "PIN":[I
    goto/16 :goto_29

    .line 590
    :cond_26f
    :sswitch_26f
    invoke-virtual {p0}, Lcom/ngb/wpsconnect/Network;->getESSID()Ljava/lang/String;

    move-result-object v7

    const-string v8, "MOVISTAR"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_284

    .line 592
    new-array v0, v10, [I

    .end local v0    # "PIN":[I
    const v7, 0x44393a5

    aput v7, v0, v9

    .line 593
    .restart local v0    # "PIN":[I
    goto/16 :goto_29

    .line 594
    :cond_284
    invoke-virtual {p0}, Lcom/ngb/wpsconnect/Network;->getESSID()Ljava/lang/String;

    move-result-object v7

    const-string v8, "Vodafone"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_299

    .line 596
    new-array v0, v10, [I

    .end local v0    # "PIN":[I
    const v7, 0x1de5542

    aput v7, v0, v9

    .line 597
    .restart local v0    # "PIN":[I
    goto/16 :goto_29

    .line 599
    :cond_299
    new-array v0, v11, [I

    .end local v0    # "PIN":[I
    fill-array-data v0, :array_7ca

    .line 600
    .restart local v0    # "PIN":[I
    goto/16 :goto_29

    .line 604
    :sswitch_2a0
    new-array v0, v10, [I

    .end local v0    # "PIN":[I
    const v7, 0x44393a5

    aput v7, v0, v9

    .line 605
    .restart local v0    # "PIN":[I
    goto/16 :goto_29

    .line 614
    :sswitch_2a9
    new-array v0, v10, [I

    .end local v0    # "PIN":[I
    invoke-virtual {p0}, Lcom/ngb/wpsconnect/Network;->getBSSID()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/ngb/wpsconnect/Function;->ZhaoChunshengAlgorithm(Ljava/lang/String;)I

    move-result v7

    aput v7, v0, v9

    .line 615
    .restart local v0    # "PIN":[I
    goto/16 :goto_29

    .line 625
    :sswitch_2b7
    invoke-virtual {p0}, Lcom/ngb/wpsconnect/Network;->getESSID()Ljava/lang/String;

    move-result-object v7

    const-string v8, "Vodafone"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2d1

    .line 627
    new-array v0, v10, [I

    .end local v0    # "PIN":[I
    invoke-virtual {p0}, Lcom/ngb/wpsconnect/Network;->getBSSID()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/ngb/wpsconnect/Function;->ArcadyanAlgorithm(Ljava/lang/String;)I

    move-result v7

    aput v7, v0, v9

    .restart local v0    # "PIN":[I
    goto/16 :goto_29

    .line 630
    :cond_2d1
    invoke-virtual {p0}, Lcom/ngb/wpsconnect/Network;->getESSID()Ljava/lang/String;

    move-result-object v7

    const-string v8, "Orange"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2eb

    .line 633
    new-array v0, v10, [I

    .end local v0    # "PIN":[I
    invoke-virtual {p0}, Lcom/ngb/wpsconnect/Network;->getBSSID()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/ngb/wpsconnect/Function;->ZhaoChunshengAlgorithm(Ljava/lang/String;)I

    move-result v7

    aput v7, v0, v9

    .restart local v0    # "PIN":[I
    goto/16 :goto_29

    .line 637
    :cond_2eb
    new-array v0, v10, [I

    .end local v0    # "PIN":[I
    invoke-virtual {p0}, Lcom/ngb/wpsconnect/Network;->getBSSID()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/ngb/wpsconnect/Function;->ArcadyanAlgorithm(Ljava/lang/String;)I

    move-result v7

    aput v7, v0, v9

    .line 639
    .restart local v0    # "PIN":[I
    goto/16 :goto_29

    .line 644
    :sswitch_2f9
    new-array v0, v10, [I

    .end local v0    # "PIN":[I
    invoke-virtual {p0}, Lcom/ngb/wpsconnect/Network;->getBSSID()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/ngb/wpsconnect/Function;->ZhaoChunshengAlgorithm(Ljava/lang/String;)I

    move-result v7

    aput v7, v0, v9

    .line 645
    .restart local v0    # "PIN":[I
    goto/16 :goto_29

    .line 655
    :sswitch_307
    new-array v0, v10, [I

    .end local v0    # "PIN":[I
    const v7, 0x5198b42

    aput v7, v0, v9

    .line 656
    .restart local v0    # "PIN":[I
    goto/16 :goto_29

    .line 660
    :sswitch_310
    new-array v0, v10, [I

    .end local v0    # "PIN":[I
    const v7, 0x5453163

    aput v7, v0, v9

    .line 661
    .restart local v0    # "PIN":[I
    goto/16 :goto_29

    .line 665
    :sswitch_319
    new-array v0, v10, [I

    .end local v0    # "PIN":[I
    const v7, 0x3ef7ba2

    aput v7, v0, v9

    .line 666
    .restart local v0    # "PIN":[I
    goto/16 :goto_29

    .line 670
    :sswitch_322
    new-array v0, v12, [I

    .end local v0    # "PIN":[I
    fill-array-data v0, :array_7d2

    .line 671
    .restart local v0    # "PIN":[I
    goto/16 :goto_29

    .line 675
    :sswitch_329
    new-array v0, v10, [I

    .end local v0    # "PIN":[I
    const v7, 0x5d37775

    aput v7, v0, v9

    .line 676
    .restart local v0    # "PIN":[I
    goto/16 :goto_29

    .line 680
    :sswitch_332
    new-array v0, v11, [I

    .end local v0    # "PIN":[I
    fill-array-data v0, :array_7dc

    .line 681
    .restart local v0    # "PIN":[I
    goto/16 :goto_29

    .line 685
    :sswitch_339
    new-array v0, v11, [I

    .end local v0    # "PIN":[I
    fill-array-data v0, :array_7e4

    .line 686
    .restart local v0    # "PIN":[I
    goto/16 :goto_29

    .line 689
    :sswitch_340
    new-array v0, v10, [I

    .end local v0    # "PIN":[I
    const v7, 0x12e35e8

    aput v7, v0, v9

    .line 690
    .restart local v0    # "PIN":[I
    goto/16 :goto_29

    .line 694
    :sswitch_349
    new-array v0, v12, [I

    .end local v0    # "PIN":[I
    fill-array-data v0, :array_7ec

    .line 695
    .restart local v0    # "PIN":[I
    goto/16 :goto_29

    .line 703
    :sswitch_350
    new-array v0, v10, [I

    .end local v0    # "PIN":[I
    invoke-virtual {p0}, Lcom/ngb/wpsconnect/Network;->getBSSID()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/ngb/wpsconnect/Function;->ZhaoChunshengAlgorithm(Ljava/lang/String;)I

    move-result v7

    aput v7, v0, v9

    .line 704
    .restart local v0    # "PIN":[I
    goto/16 :goto_29

    .line 709
    :sswitch_35e
    new-array v0, v10, [I

    .end local v0    # "PIN":[I
    invoke-virtual {p0}, Lcom/ngb/wpsconnect/Network;->getBSSID()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/ngb/wpsconnect/Function;->ZhaoChunshengAlgorithm(Ljava/lang/String;)I

    move-result v7

    aput v7, v0, v9

    .line 710
    .restart local v0    # "PIN":[I
    goto/16 :goto_29

    .line 714
    :sswitch_36c
    new-array v0, v10, [I

    .end local v0    # "PIN":[I
    const v7, 0x21f500f

    aput v7, v0, v9

    .line 715
    .restart local v0    # "PIN":[I
    goto/16 :goto_29

    .line 719
    :sswitch_375
    new-array v0, v11, [I

    .end local v0    # "PIN":[I
    fill-array-data v0, :array_7f6

    .line 720
    .restart local v0    # "PIN":[I
    goto/16 :goto_29

    .line 724
    :sswitch_37c
    new-array v0, v10, [I

    .end local v0    # "PIN":[I
    const v7, 0x42d21d7

    aput v7, v0, v9

    .line 725
    .restart local v0    # "PIN":[I
    goto/16 :goto_29

    .line 729
    :sswitch_385
    new-array v0, v10, [I

    .end local v0    # "PIN":[I
    const v7, 0x1d095b4

    aput v7, v0, v9

    .line 730
    .restart local v0    # "PIN":[I
    goto/16 :goto_29

    .line 734
    :sswitch_38e
    const/16 v7, 0x11

    new-array v0, v7, [I

    .end local v0    # "PIN":[I
    fill-array-data v0, :array_7fe

    .line 735
    .restart local v0    # "PIN":[I
    goto/16 :goto_29

    .line 739
    :sswitch_397
    const/16 v7, 0x9

    new-array v0, v7, [I

    .end local v0    # "PIN":[I
    fill-array-data v0, :array_824

    .line 742
    .restart local v0    # "PIN":[I
    :sswitch_39e
    new-array v0, v10, [I

    .end local v0    # "PIN":[I
    const v7, 0x396cb

    aput v7, v0, v9

    .line 743
    .restart local v0    # "PIN":[I
    goto/16 :goto_29

    .line 746
    :sswitch_3a7
    new-array v0, v10, [I

    .end local v0    # "PIN":[I
    const v7, 0x3c11d03

    aput v7, v0, v9

    .line 747
    .restart local v0    # "PIN":[I
    goto/16 :goto_29

    .line 750
    :sswitch_3b0
    new-array v0, v10, [I

    .end local v0    # "PIN":[I
    const v7, 0x4b53acd

    aput v7, v0, v9

    .line 751
    .restart local v0    # "PIN":[I
    goto/16 :goto_29

    .line 754
    :sswitch_3b9
    new-array v0, v10, [I

    .end local v0    # "PIN":[I
    const v7, 0x17df8d6

    aput v7, v0, v9

    .line 755
    .restart local v0    # "PIN":[I
    goto/16 :goto_29

    .line 758
    :sswitch_3c2
    new-array v0, v10, [I

    .end local v0    # "PIN":[I
    const v7, 0x5828fbf

    aput v7, v0, v9

    .line 759
    .restart local v0    # "PIN":[I
    goto/16 :goto_29

    .line 762
    :sswitch_3cb
    new-array v0, v11, [I

    .end local v0    # "PIN":[I
    fill-array-data v0, :array_83a

    .line 763
    .restart local v0    # "PIN":[I
    goto/16 :goto_29

    .line 766
    :sswitch_3d2
    new-array v0, v11, [I

    .end local v0    # "PIN":[I
    fill-array-data v0, :array_842

    .line 767
    .restart local v0    # "PIN":[I
    goto/16 :goto_29

    .line 770
    :sswitch_3d9
    new-array v0, v12, [I

    .end local v0    # "PIN":[I
    fill-array-data v0, :array_84a

    .line 771
    .restart local v0    # "PIN":[I
    goto/16 :goto_29

    .line 774
    :sswitch_3e0
    new-array v0, v10, [I

    .end local v0    # "PIN":[I
    const v7, 0x228ce25

    aput v7, v0, v9

    .line 775
    .restart local v0    # "PIN":[I
    goto/16 :goto_29

    .line 778
    :sswitch_3e9
    const/16 v7, 0x11

    new-array v0, v7, [I

    .end local v0    # "PIN":[I
    fill-array-data v0, :array_854

    .line 779
    .restart local v0    # "PIN":[I
    goto/16 :goto_29

    .line 782
    :sswitch_3f2
    new-array v0, v10, [I

    .end local v0    # "PIN":[I
    const v7, 0x3364f4e

    aput v7, v0, v9

    .line 783
    .restart local v0    # "PIN":[I
    goto/16 :goto_29

    .line 786
    :sswitch_3fb
    new-array v0, v11, [I

    .end local v0    # "PIN":[I
    fill-array-data v0, :array_87a

    .line 787
    .restart local v0    # "PIN":[I
    goto/16 :goto_29

    .line 790
    :sswitch_402
    new-array v0, v10, [I

    .end local v0    # "PIN":[I
    const v7, 0x132290d

    aput v7, v0, v9

    .line 791
    .restart local v0    # "PIN":[I
    goto/16 :goto_29

    .line 794
    :sswitch_40b
    new-array v0, v11, [I

    .end local v0    # "PIN":[I
    fill-array-data v0, :array_882

    .line 797
    .restart local v0    # "PIN":[I
    :sswitch_410
    new-array v0, v12, [I

    .end local v0    # "PIN":[I
    fill-array-data v0, :array_88a

    .line 798
    .restart local v0    # "PIN":[I
    goto/16 :goto_29

    .line 801
    :sswitch_417
    new-array v0, v10, [I

    .end local v0    # "PIN":[I
    const v7, 0x2b1a717

    aput v7, v0, v9

    .line 802
    .restart local v0    # "PIN":[I
    goto/16 :goto_29

    .line 805
    :sswitch_420
    new-array v0, v11, [I

    .end local v0    # "PIN":[I
    fill-array-data v0, :array_894

    .line 806
    .restart local v0    # "PIN":[I
    goto/16 :goto_29

    .line 809
    :sswitch_427
    new-array v0, v10, [I

    .end local v0    # "PIN":[I
    const v7, 0x1047081

    aput v7, v0, v9

    .line 810
    .restart local v0    # "PIN":[I
    goto/16 :goto_29

    .line 813
    :sswitch_430
    new-array v0, v10, [I

    .end local v0    # "PIN":[I
    const v7, 0x1439860

    aput v7, v0, v9

    .line 814
    .restart local v0    # "PIN":[I
    goto/16 :goto_29

    .line 817
    :sswitch_439
    new-array v0, v10, [I

    .end local v0    # "PIN":[I
    const v7, 0xec140c

    aput v7, v0, v9

    .line 818
    .restart local v0    # "PIN":[I
    goto/16 :goto_29

    .line 821
    :sswitch_442
    new-array v0, v10, [I

    .end local v0    # "PIN":[I
    const v7, 0x5af4d13

    aput v7, v0, v9

    .line 822
    .restart local v0    # "PIN":[I
    goto/16 :goto_29

    .line 825
    :sswitch_44b
    new-array v0, v10, [I

    .end local v0    # "PIN":[I
    const v7, 0x4a94852

    aput v7, v0, v9

    .line 826
    .restart local v0    # "PIN":[I
    goto/16 :goto_29

    .line 829
    :sswitch_454
    new-array v0, v10, [I

    .end local v0    # "PIN":[I
    const v7, 0x4967dc8

    aput v7, v0, v9

    .line 830
    .restart local v0    # "PIN":[I
    goto/16 :goto_29

    .line 835
    :sswitch_45d
    new-array v0, v10, [I

    .end local v0    # "PIN":[I
    invoke-virtual {p0}, Lcom/ngb/wpsconnect/Network;->getBSSID()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/ngb/wpsconnect/Function;->ArrisDG860AAlgorithm(Ljava/lang/String;)I

    move-result v7

    aput v7, v0, v9

    .line 836
    .restart local v0    # "PIN":[I
    goto/16 :goto_29

    .line 850
    .restart local v2    # "i":B
    .restart local v6    # "sPIN":[Ljava/lang/String;
    :cond_46b
    aget v7, v0, v2

    invoke-static {v7}, Lcom/ngb/wpsconnect/Function;->paddingZeros(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    .line 849
    add-int/lit8 v7, v2, 0x1

    int-to-byte v2, v7

    goto/16 :goto_3c

    .line 227
    :sswitch_data_478
    .sparse-switch
        0x138 -> :sswitch_36c
        0x5ca -> :sswitch_375
        0xa52 -> :sswitch_1df
        0xb85 -> :sswitch_37c
        0xcb9 -> :sswitch_1d1
        0xcc3 -> :sswitch_1ae
        0xcf1 -> :sswitch_385
        0x14d1 -> :sswitch_172
        0x1802 -> :sswitch_180
        0x18e7 -> :sswitch_179
        0x1915 -> :sswitch_29
        0x1970 -> :sswitch_8b
        0x19fc -> :sswitch_29
        0x1a2b -> :sswitch_a1
        0x1cdf -> :sswitch_fe
        0x1d19 -> :sswitch_349
        0x1d73 -> :sswitch_310
        0x1d7e -> :sswitch_319
        0x1dce -> :sswitch_307
        0x1dcf -> :sswitch_29
        0x1dd1 -> :sswitch_45d
        0x1f1f -> :sswitch_189
        0x1fa4 -> :sswitch_29
        0x2129 -> :sswitch_322
        0x2191 -> :sswitch_329
        0x223f -> :sswitch_15b
        0x2275 -> :sswitch_e2
        0x22f7 -> :sswitch_14d
        0x2401 -> :sswitch_332
        0x2417 -> :sswitch_339
        0x259c -> :sswitch_340
        0x2624 -> :sswitch_442
        0x2644 -> :sswitch_44b
        0x265a -> :sswitch_454
        0x265b -> :sswitch_350
        0x26ce -> :sswitch_197
        0x3872 -> :sswitch_251
        0x487a -> :sswitch_439
        0x4f62 -> :sswitch_430
        0xa026 -> :sswitch_10c
        0xb00c -> :sswitch_128
        0x48d38 -> :sswitch_2a0
        0x4c06f -> :sswitch_40
        0x81074 -> :sswitch_136
        0x81075 -> :sswitch_128
        0x86361 -> :sswitch_7e
        0x87a4c -> :sswitch_2a9
        0x8863b -> :sswitch_f0
        0xc96bf -> :sswitch_2a9
        0x14b968 -> :sswitch_2a9
        0x1a0b40 -> :sswitch_427
        0x1c7ee5 -> :sswitch_420
        0x1cc63c -> :sswitch_2b7
        0x2008ed -> :sswitch_7e
        0x202bc1 -> :sswitch_40
        0x204e7f -> :sswitch_417
        0x285fdb -> :sswitch_40
        0x3039f2 -> :sswitch_b8
        0x30469a -> :sswitch_410
        0x340804 -> :sswitch_40b
        0x346bd3 -> :sswitch_40
        0x3872c0 -> :sswitch_a8
        0x404a03 -> :sswitch_99
        0x5057f0 -> :sswitch_11a
        0x5067f0 -> :sswitch_402
        0x507e5d -> :sswitch_2b7
        0x586d8f -> :sswitch_3fb
        0x589835 -> :sswitch_3f2
        0x5c338e -> :sswitch_3e9
        0x5c353b -> :sswitch_204
        0x5c4ca9 -> :sswitch_d4
        0x5ca39d -> :sswitch_1ed
        0x62233d -> :sswitch_d4
        0x623ce4 -> :sswitch_d4
        0x623dff -> :sswitch_d4
        0x62559c -> :sswitch_d4
        0x627d5e -> :sswitch_d4
        0x6296bf -> :sswitch_d4
        0x62a8e4 -> :sswitch_d4
        0x62b686 -> :sswitch_d4
        0x62c06f -> :sswitch_d4
        0x62c61f -> :sswitch_d4
        0x62c714 -> :sswitch_d4
        0x62cba8 -> :sswitch_d4
        0x62e87b -> :sswitch_d4
        0x647002 -> :sswitch_164
        0x68b6cf -> :sswitch_350
        0x6a1d67 -> :sswitch_d4
        0x6a233d -> :sswitch_d4
        0x6a3dff -> :sswitch_d4
        0x6a53d4 -> :sswitch_d4
        0x6a559c -> :sswitch_d4
        0x6a6bd3 -> :sswitch_d4
        0x6a7d5e -> :sswitch_d4
        0x6a96bf -> :sswitch_d4
        0x6aa8e4 -> :sswitch_d4
        0x6ac06f -> :sswitch_d4
        0x6ac61f -> :sswitch_d4
        0x6ac714 -> :sswitch_d4
        0x6acba8 -> :sswitch_d4
        0x6acdbe -> :sswitch_d4
        0x6ad15e -> :sswitch_d4
        0x6ad167 -> :sswitch_d4
        0x72233d -> :sswitch_3e0
        0x723dff -> :sswitch_d4
        0x7253d4 -> :sswitch_d4
        0x72559c -> :sswitch_d4
        0x726bd3 -> :sswitch_d4
        0x727d5e -> :sswitch_d4
        0x7296bf -> :sswitch_d4
        0x72a8e4 -> :sswitch_d4
        0x72c06f -> :sswitch_d4
        0x72c714 -> :sswitch_d4
        0x72cba8 -> :sswitch_d4
        0x72cdbe -> :sswitch_d4
        0x72d15e -> :sswitch_d4
        0x72e87b -> :sswitch_d4
        0x743170 -> :sswitch_2b7
        0x744401 -> :sswitch_3d9
        0x74888b -> :sswitch_bf
        0x788df7 -> :sswitch_350
        0x78a689 -> :sswitch_2a9
        0x7c4fb5 -> :sswitch_3d2
        0x7cd34c -> :sswitch_1a5
        0x801f02 -> :sswitch_13f
        0x80b686 -> :sswitch_40
        0x849ca6 -> :sswitch_2b7
        0x84a8e4 -> :sswitch_40
        0x880355 -> :sswitch_2b7
        0x90f652 -> :sswitch_29
        0x944452 -> :sswitch_3cb
        0xa02187 -> :sswitch_3c2
        0xa0f3c1 -> :sswitch_1c3
        0xa4526f -> :sswitch_c6
        0xb0487a -> :sswitch_164
        0xb4749f -> :sswitch_40
        0xb4750e -> :sswitch_71
        0xb8a386 -> :sswitch_1fb
        0xbc1401 -> :sswitch_350
        0xbc7670 -> :sswitch_40
        0xc03f0e -> :sswitch_3b9
        0xc0c1c0 -> :sswitch_3b0
        0xc83a35 -> :sswitch_128
        0xc8d15e -> :sswitch_40
        0xc8d3a3 -> :sswitch_20b
        0xcc5d4e -> :sswitch_35e
        0xcc96a0 -> :sswitch_40
        0xd07ab5 -> :sswitch_7e
        0xd0aeec -> :sswitch_397
        0xd0d412 -> :sswitch_cd
        0xd86194 -> :sswitch_26f
        0xd86ce9 -> :sswitch_1ed
        0xdc0b1a -> :sswitch_cd
        0xdc7144 -> :sswitch_1ed
        0xe08fec -> :sswitch_39e
        0xe0cb4e -> :sswitch_3a7
        0xe47cf9 -> :sswitch_13f
        0xe4c146 -> :sswitch_25a
        0xe8cd2d -> :sswitch_2a9
        0xec233d -> :sswitch_2f9
        0xf43e61 -> :sswitch_93
        0xf4ec38 -> :sswitch_38e
        0xf81a67 -> :sswitch_164
        0xf81bfa -> :sswitch_214
        0xf83dff -> :sswitch_40
        0xf86394 -> :sswitch_29
        0xf87f35 -> :sswitch_29
        0xf885c9 -> :sswitch_29
        0xf88b86 -> :sswitch_29
        0xf88e85 -> :sswitch_222
        0xf8c346 -> :sswitch_29
        0xf8d111 -> :sswitch_164
        0xf8ed80 -> :sswitch_29
        0xfcf528 -> :sswitch_af
    .end sparse-switch

    .line 283
    :array_732
    .array-data 4
        0x2cf946e
        0x422b011
    .end array-data

    .line 296
    :array_73a
    .array-data 4
        0xee69f9
        0xfbb2a1
        0x5461428
        0x4a2c0e6
    .end array-data

    .line 301
    :array_746
    .array-data 4
        0x11f6c06
        0x133ceef
    .end array-data

    .line 311
    :array_74e
    .array-data 4
        0xfc59cd
        0xfedd12
        0x1181594
        0x541de9b
        0x465988d
        0x294ac7d
        0x12d77a7
        0xcc9dac
    .end array-data

    .line 316
    :array_762
    .array-data 4
        0x294ac7d
        0x465988d
        0x541de9b
        0xfc59cd
        0xfedd12
        0x1181594
        0x12d77a7
        0xcc9dac
    .end array-data

    .line 321
    :array_776
    .array-data 4
        0xfc59cd
        0x541de9b
        0x465988d
        0xfedd12
        0x294ac7d
        0x1181594
        0x12d77a7
        0xcc9dac
    .end array-data

    .line 327
    :array_78a
    .array-data 4
        0xfc59cd
        0xfedd12
        0x1181594
        0x541de9b
        0x465988d
        0x294ac7d
        0x12d77a7
        0xcc9dac
    .end array-data

    .line 450
    :array_79e
    .array-data 4
        0xed1676
        0x199abb9
    .end array-data

    .line 456
    :array_7a6
    .array-data 4
        0xed1676
        0x3da48c9
        0x1546d9a
    .end array-data

    .line 535
    :array_7b0
    .array-data 4
        0x5b51bcc
        0x3dde7f7
    .end array-data

    .line 565
    :array_7b8
    .array-data 4
        0x123b654
        0xf4ada0
    .end array-data

    .line 572
    :array_7c0
    .array-data 4
        0x123b654
        0xf4ada0
        0x133ceef
    .end array-data

    .line 599
    :array_7ca
    .array-data 4
        0x44393a5
        0x1de5542
    .end array-data

    .line 670
    :array_7d2
    .array-data 4
        0x4ee948a
        0x3da48c9
        0x1546d9a
    .end array-data

    .line 680
    :array_7dc
    .array-data 4
        0x5d37775
        0x1d93179
    .end array-data

    .line 685
    :array_7e4
    .array-data 4
        0xaeaaae
        0x1d93179
    .end array-data

    .line 694
    :array_7ec
    .array-data 4
        0x3ef7ba2
        0x3da48c9
        0x1546d9a
    .end array-data

    .line 719
    :array_7f6
    .array-data 4
        0x466e35a
        0x495a5b0
    .end array-data

    .line 734
    :array_7fe
    .array-data 4
        0x342e4c
        0x4abf8e
        0x59cbd9
        0x8bdc17
        0xac412f
        0x11cf1af
        0x12b97fd
        0x164c28e
        0x195e0c9
        0x28c9989
        0x2add815
        0x3144717
        0x3228879
        0x40d2b16
        0x44fe207
        0x577a359
        0x5aa51d3
    .end array-data

    .line 739
    :array_824
    .array-data 4
        0x5f24ab
        0xbb2185
        0x23201be
        0x2968584
        0x2c21ad8
        0x2f463a4
        0x37bbfa8
        0x40a68f0
        0x494f787
    .end array-data

    .line 762
    :array_83a
    .array-data 4
        0x18d1781
        0x594ea24
    .end array-data

    .line 766
    :array_842
    .array-data 4
        0x4552410
        0x47d7c36
    .end array-data

    .line 770
    :array_84a
    .array-data 4
        0x6d11b
        0x996428
        0x1a55f96
    .end array-data

    .line 778
    :array_854
    .array-data 4
        0xba879
        0x2e01fa
        0x45e79d
        0xb38758
        0xf3ef4f
        0x1d01531
        0x1d901ee
        0x20201e0
        0x25d1e5d
        0x335934b
        0x3997048
        0x468abd5
        0x4af8e2e
        0x4b4e3b9
        0x4f02ab7
        0x51cd6e8
        0x571d0b8
    .end array-data

    .line 786
    :array_87a
    .array-data 4
        0x2cf946e
        0x422b011
    .end array-data

    .line 794
    :array_882
    .array-data 4
        0x225a980
        0x591194a
    .end array-data

    .line 797
    :array_88a
    .array-data 4
        0x1294731
        0x1d2cd97
        0x5acf51d
    .end array-data

    .line 805
    :array_894
    .array-data 4
        0x158fd92
        0x399ea13
    .end array-data
.end method

.method public static capabilitiesTypeResume(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "capabilities"    # Ljava/lang/String;

    .prologue
    .line 35
    const-string v0, "WPA2"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string p0, "[WPA2]"

    .line 39
    .end local p0    # "capabilities":Ljava/lang/String;
    :cond_a
    :goto_a
    return-object p0

    .line 36
    .restart local p0    # "capabilities":Ljava/lang/String;
    :cond_b
    const-string v0, "WPA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_16

    const-string p0, "[WPA]"

    goto :goto_a

    .line 37
    :cond_16
    const-string v0, "WEP"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_21

    const-string p0, "[WEP]"

    goto :goto_a

    .line 38
    :cond_21
    const-string v0, "ESS"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string p0, "[OPEN]"

    goto :goto_a
.end method

.method public static convertToDecimal(Ljava/lang/String;)I
    .registers 2
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 85
    const/16 v0, 0x10

    invoke-static {p0, v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method protected static doBackup(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 14
    .param p1, "SSID"    # Ljava/lang/String;
    .param p2, "PASS"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ngb/wpsconnect/Password;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 1008
    .local p0, "pwdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ngb/wpsconnect/Password;>;"
    const-string v0, "network_backup"

    .line 1009
    .local v0, "backup_name":Ljava/lang/String;
    const/4 v2, 0x0

    .line 1011
    .local v2, "file":Ljava/io/FileOutputStream;
    :try_start_3
    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string v8, "_ddMMyyyy"

    invoke-direct {v5, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1012
    .local v5, "formatter":Ljava/text/SimpleDateFormat;
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "network_backup"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v9, Ljava/util/Date;

    invoke-direct {v9}, Ljava/util/Date;-><init>()V

    invoke-virtual {v5, v9}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".txt"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1013
    .local v4, "fileName":Ljava/lang/String;
    new-instance v3, Ljava/io/FileOutputStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v3, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_4c
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_4c} :catch_51

    .end local v2    # "file":Ljava/io/FileOutputStream;
    .local v3, "file":Ljava/io/FileOutputStream;
    move-object v2, v3

    .line 1019
    .end local v3    # "file":Ljava/io/FileOutputStream;
    .end local v4    # "fileName":Ljava/lang/String;
    .end local v5    # "formatter":Ljava/text/SimpleDateFormat;
    .restart local v2    # "file":Ljava/io/FileOutputStream;
    :goto_4d
    if-nez v2, :cond_56

    const/4 v8, 0x0

    .line 1030
    :goto_50
    return v8

    .line 1014
    :catch_51
    move-exception v1

    .line 1015
    .local v1, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_4d

    .line 1021
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :cond_56
    new-instance v6, Ljava/io/PrintWriter;

    invoke-direct {v6, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 1022
    .local v6, "out":Ljava/io/PrintWriter;
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_5f
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_6a

    .line 1028
    invoke-virtual {v6}, Ljava/io/PrintWriter;->close()V

    .line 1030
    const/4 v8, 0x1

    goto :goto_50

    .line 1022
    :cond_6a
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/ngb/wpsconnect/Password;

    .line 1024
    .local v7, "pwd":Lcom/ngb/wpsconnect/Password;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v7}, Lcom/ngb/wpsconnect/Password;->getNetName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1025
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v7}, Lcom/ngb/wpsconnect/Password;->getNetPwd()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1026
    const-string v9, "---------------------------------------"

    invoke-virtual {v6, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_5f
.end method

.method public static fragmentBSSID(Ljava/lang/String;)I
    .registers 4
    .param p0, "bssid"    # Ljava/lang/String;

    .prologue
    .line 61
    const-string v1, ":"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 62
    .local v0, "splitBSSID":[Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x2

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method public static hasWPSEnabled(Landroid/net/wifi/ScanResult;)Z
    .registers 3
    .param p0, "result"    # Landroid/net/wifi/ScanResult;

    .prologue
    .line 50
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "WPS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method protected static invokeSU(Ljava/lang/String;)Ljava/lang/String;
    .registers 11
    .param p0, "cmd"    # Ljava/lang/String;

    .prologue
    .line 857
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 858
    .local v2, "result":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .line 859
    .local v3, "stdin":Ljava/io/DataOutputStream;
    const/4 v5, 0x0

    .line 860
    .local v5, "stdout":Ljava/io/BufferedReader;
    const/4 v7, 0x0

    .line 864
    .local v7, "su":Ljava/lang/Process;
    :try_start_8
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v8

    const-string v9, "su"

    invoke-virtual {v8, v9}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v7

    .line 865
    new-instance v4, Ljava/io/DataOutputStream;

    invoke-virtual {v7}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v8

    invoke-direct {v4, v8}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_1b} :catch_89
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_1b} :catch_80

    .line 866
    .end local v3    # "stdin":Ljava/io/DataOutputStream;
    .local v4, "stdin":Ljava/io/DataOutputStream;
    :try_start_1b
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/InputStreamReader;

    invoke-virtual {v7}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v6, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_29} :catch_8b
    .catch Ljava/lang/InterruptedException; {:try_start_1b .. :try_end_29} :catch_82

    .line 868
    .end local v5    # "stdout":Ljava/io/BufferedReader;
    .local v6, "stdout":Ljava/io/BufferedReader;
    :try_start_29
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 869
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->flush()V

    .line 872
    const-string v8, "exit\n"

    invoke-virtual {v4, v8}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 873
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->flush()V

    .line 874
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->close()V

    .line 878
    :goto_4d
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .local v1, "line":Ljava/lang/String;
    if-nez v1, :cond_63

    .line 882
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V

    .line 884
    invoke-virtual {v7}, Ljava/lang/Process;->waitFor()I

    .line 886
    invoke-virtual {v7}, Ljava/lang/Process;->destroy()V
    :try_end_5c
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_5c} :catch_7a
    .catch Ljava/lang/InterruptedException; {:try_start_29 .. :try_end_5c} :catch_85

    move-object v5, v6

    .end local v6    # "stdout":Ljava/io/BufferedReader;
    .restart local v5    # "stdout":Ljava/io/BufferedReader;
    move-object v3, v4

    .line 897
    .end local v1    # "line":Ljava/lang/String;
    .end local v4    # "stdin":Ljava/io/DataOutputStream;
    .restart local v3    # "stdin":Ljava/io/DataOutputStream;
    :goto_5e
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :goto_62
    return-object v8

    .line 880
    .end local v3    # "stdin":Ljava/io/DataOutputStream;
    .end local v5    # "stdout":Ljava/io/BufferedReader;
    .restart local v1    # "line":Ljava/lang/String;
    .restart local v4    # "stdin":Ljava/io/DataOutputStream;
    .restart local v6    # "stdout":Ljava/io/BufferedReader;
    :cond_63
    :try_start_63
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_79
    .catch Ljava/io/IOException; {:try_start_63 .. :try_end_79} :catch_7a
    .catch Ljava/lang/InterruptedException; {:try_start_63 .. :try_end_79} :catch_85

    goto :goto_4d

    .line 888
    .end local v1    # "line":Ljava/lang/String;
    :catch_7a
    move-exception v0

    move-object v5, v6

    .end local v6    # "stdout":Ljava/io/BufferedReader;
    .restart local v5    # "stdout":Ljava/io/BufferedReader;
    move-object v3, v4

    .line 890
    .end local v4    # "stdin":Ljava/io/DataOutputStream;
    .local v0, "e":Ljava/io/IOException;
    .restart local v3    # "stdin":Ljava/io/DataOutputStream;
    :goto_7d
    const-string v8, "norootdevice"

    goto :goto_62

    .line 891
    .end local v0    # "e":Ljava/io/IOException;
    :catch_80
    move-exception v8

    goto :goto_5e

    .end local v3    # "stdin":Ljava/io/DataOutputStream;
    .restart local v4    # "stdin":Ljava/io/DataOutputStream;
    :catch_82
    move-exception v8

    move-object v3, v4

    .end local v4    # "stdin":Ljava/io/DataOutputStream;
    .restart local v3    # "stdin":Ljava/io/DataOutputStream;
    goto :goto_5e

    .end local v3    # "stdin":Ljava/io/DataOutputStream;
    .end local v5    # "stdout":Ljava/io/BufferedReader;
    .restart local v4    # "stdin":Ljava/io/DataOutputStream;
    .restart local v6    # "stdout":Ljava/io/BufferedReader;
    :catch_85
    move-exception v8

    move-object v5, v6

    .end local v6    # "stdout":Ljava/io/BufferedReader;
    .restart local v5    # "stdout":Ljava/io/BufferedReader;
    move-object v3, v4

    .end local v4    # "stdin":Ljava/io/DataOutputStream;
    .restart local v3    # "stdin":Ljava/io/DataOutputStream;
    goto :goto_5e

    .line 888
    :catch_89
    move-exception v0

    goto :goto_7d

    .end local v3    # "stdin":Ljava/io/DataOutputStream;
    .restart local v4    # "stdin":Ljava/io/DataOutputStream;
    :catch_8b
    move-exception v0

    move-object v3, v4

    .end local v4    # "stdin":Ljava/io/DataOutputStream;
    .restart local v3    # "stdin":Ljava/io/DataOutputStream;
    goto :goto_7d
.end method

.method protected static loadLib(Landroid/content/Context;)Ljava/lang/String;
    .registers 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 952
    const-string v4, "wpa_cli"

    .line 955
    .local v4, "name":Ljava/lang/String;
    const-string v5, "wpa_cli"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_3c

    .line 957
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const/high16 v6, 0x7f040000

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v3

    .line 958
    .local v3, "ins":Ljava/io/InputStream;
    const/4 v0, 0x0

    .line 960
    .local v0, "buffer":[B
    :try_start_19
    invoke-virtual {v3}, Ljava/io/InputStream;->available()I

    move-result v5

    new-array v0, v5, [B

    .line 961
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    .line 962
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 964
    const-string v5, "wpa_cli"

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v2

    .line 966
    .local v2, "fos":Ljava/io/FileOutputStream;
    invoke-virtual {v2, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 967
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 969
    const-string v5, "wpa_cli"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/io/File;->setExecutable(Z)Z
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_3c} :catch_47

    .line 975
    .end local v0    # "buffer":[B
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .end local v3    # "ins":Ljava/io/InputStream;
    :cond_3c
    :goto_3c
    const-string v5, "wpa_cli"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 971
    .restart local v0    # "buffer":[B
    .restart local v3    # "ins":Ljava/io/InputStream;
    :catch_47
    move-exception v1

    .line 972
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3c
.end method

.method private static paddingZeros(I)Ljava/lang/String;
    .registers 6
    .param p0, "pin"    # I

    .prologue
    const/16 v4, 0x8

    .line 208
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 209
    .local v2, "vpin":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    int-to-byte v1, v3

    .line 212
    .local v1, "len":B
    if-ge v1, v4, :cond_10

    .line 214
    move v0, v1

    .local v0, "i":B
    :goto_e
    if-lt v0, v4, :cond_11

    .line 218
    .end local v0    # "i":B
    :cond_10
    return-object v2

    .line 215
    .restart local v0    # "i":B
    :cond_11
    const-string v3, "0"

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 214
    add-int/lit8 v3, v0, 0x1

    int-to-byte v0, v3

    goto :goto_e
.end method

.method public static secondFragmentBSSID(Ljava/lang/String;)I
    .registers 4
    .param p0, "bssid"    # Ljava/lang/String;

    .prologue
    .line 73
    const-string v1, ":"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 74
    .local v0, "splitBSSID":[Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    const/4 v2, 0x3

    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x4

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x5

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method private static wpsChecksum(I)I
    .registers 3
    .param p0, "pin"    # I

    .prologue
    .line 195
    const/4 v0, 0x0

    .line 196
    .local v0, "accum":I
    :goto_1
    if-gtz p0, :cond_a

    .line 203
    rem-int/lit8 v1, v0, 0xa

    rsub-int/lit8 v1, v1, 0xa

    rem-int/lit8 v1, v1, 0xa

    return v1

    .line 197
    :cond_a
    rem-int/lit8 v1, p0, 0xa

    mul-int/lit8 v1, v1, 0x3

    add-int/2addr v0, v1

    .line 198
    div-int/lit8 p0, p0, 0xa

    .line 199
    rem-int/lit8 v1, p0, 0xa

    add-int/2addr v0, v1

    .line 200
    div-int/lit8 p0, p0, 0xa

    goto :goto_1
.end method
