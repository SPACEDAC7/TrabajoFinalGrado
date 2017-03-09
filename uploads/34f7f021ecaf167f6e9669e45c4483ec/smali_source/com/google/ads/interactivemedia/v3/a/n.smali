.class public final Lcom/google/ads/interactivemedia/v3/a/n;
.super Ljava/lang/Object;
.source "IMASDK"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ads/interactivemedia/v3/a/n$a;,
        Lcom/google/ads/interactivemedia/v3/a/n$d;,
        Lcom/google/ads/interactivemedia/v3/a/n$e;,
        Lcom/google/ads/interactivemedia/v3/a/n$c;,
        Lcom/google/ads/interactivemedia/v3/a/n$b;
    }
.end annotation


# static fields
.field private static final a:Lcom/google/ads/interactivemedia/v3/a/e;

.field private static final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/ads/interactivemedia/v3/a/n$a;",
            "Ljava/util/List",
            "<",
            "Lcom/google/ads/interactivemedia/v3/a/e;",
            ">;>;"
        }
    .end annotation
.end field

.field private static c:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 56
    new-instance v0, Lcom/google/ads/interactivemedia/v3/a/e;

    const-string v1, "OMX.google.raw.decoder"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/ads/interactivemedia/v3/a/e;-><init>(Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;)V

    sput-object v0, Lcom/google/ads/interactivemedia/v3/a/n;->a:Lcom/google/ads/interactivemedia/v3/a/e;

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/ads/interactivemedia/v3/a/n;->b:Ljava/util/Map;

    .line 62
    const/4 v0, -0x1

    sput v0, Lcom/google/ads/interactivemedia/v3/a/n;->c:I

    return-void
.end method

.method public static a()Lcom/google/ads/interactivemedia/v3/a/e;
    .registers 1

    .prologue
    .line 91
    sget-object v0, Lcom/google/ads/interactivemedia/v3/a/n;->a:Lcom/google/ads/interactivemedia/v3/a/e;

    return-object v0
.end method

.method public static a(Ljava/lang/String;Z)Lcom/google/ads/interactivemedia/v3/a/e;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/a/n$b;
        }
    .end annotation

    .prologue
    .line 104
    invoke-static {p0, p1}, Lcom/google/ads/interactivemedia/v3/a/n;->b(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v0

    .line 105
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_c

    const/4 v0, 0x0

    :goto_b
    return-object v0

    :cond_c
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/a/e;

    goto :goto_b
.end method

.method private static a(Lcom/google/ads/interactivemedia/v3/a/n$a;Lcom/google/ads/interactivemedia/v3/a/n$c;)Ljava/util/List;
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/interactivemedia/v3/a/n$a;",
            "Lcom/google/ads/interactivemedia/v3/a/n$c;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/ads/interactivemedia/v3/a/e;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/a/n$b;
        }
    .end annotation

    .prologue
    .line 146
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 147
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/ads/interactivemedia/v3/a/n$a;->a:Ljava/lang/String;

    .line 148
    invoke-interface/range {p1 .. p1}, Lcom/google/ads/interactivemedia/v3/a/n$c;->a()I

    move-result v6

    .line 149
    invoke-interface/range {p1 .. p1}, Lcom/google/ads/interactivemedia/v3/a/n$c;->b()Z

    move-result v7

    .line 151
    const/4 v2, 0x0

    move v4, v2

    :goto_13
    if-ge v4, v6, :cond_72

    .line 152
    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Lcom/google/ads/interactivemedia/v3/a/n$c;->a(I)Landroid/media/MediaCodecInfo;

    move-result-object v8

    .line 153
    invoke-virtual {v8}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v9

    .line 154
    invoke-static {v8, v9, v7}, Lcom/google/ads/interactivemedia/v3/a/n;->a(Landroid/media/MediaCodecInfo;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_ed

    .line 155
    invoke-virtual {v8}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v10

    array-length v11, v10

    const/4 v2, 0x0

    move v3, v2

    :goto_2c
    if-ge v3, v11, :cond_ed

    aget-object v12, v10, v3

    .line 156
    invoke-virtual {v12, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_33} :catch_a9

    move-result v2

    if-eqz v2, :cond_58

    .line 158
    :try_start_36
    invoke-virtual {v8, v12}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v2

    .line 159
    move-object/from16 v0, p1

    invoke-interface {v0, v5, v2}, Lcom/google/ads/interactivemedia/v3/a/n$c;->a(Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;)Z

    move-result v13

    .line 160
    if-eqz v7, :cond_48

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/google/ads/interactivemedia/v3/a/n$a;->b:Z

    if-eq v14, v13, :cond_50

    :cond_48
    if-nez v7, :cond_5c

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/google/ads/interactivemedia/v3/a/n$a;->b:Z

    if-nez v14, :cond_5c

    .line 162
    :cond_50
    new-instance v13, Lcom/google/ads/interactivemedia/v3/a/e;

    invoke-direct {v13, v9, v2}, Lcom/google/ads/interactivemedia/v3/a/e;-><init>(Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;)V

    invoke-interface {v1, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 155
    :cond_58
    :goto_58
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_2c

    .line 163
    :cond_5c
    if-nez v7, :cond_58

    if-eqz v13, :cond_58

    .line 164
    new-instance v13, Lcom/google/ads/interactivemedia/v3/a/e;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    const-string v15, ".secure"

    invoke-virtual {v14, v15}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14, v2}, Lcom/google/ads/interactivemedia/v3/a/e;-><init>(Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;)V

    invoke-interface {v1, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_72} :catch_73

    .line 183
    :cond_72
    return-object v1

    .line 168
    :catch_73
    move-exception v2

    .line 169
    :try_start_74
    sget v13, Lcom/google/ads/interactivemedia/v3/a/f/q;->a:I

    const/16 v14, 0x17

    if-gt v13, v14, :cond_b1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_b1

    .line 171
    const-string v2, "MediaCodecUtil"

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    add-int/lit8 v12, v12, 0x2e

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13, v12}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v12, "Skipping codec "

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " (failed to query capabilities)"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v2, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a8
    .catch Ljava/lang/Exception; {:try_start_74 .. :try_end_a8} :catch_a9

    goto :goto_58

    .line 184
    :catch_a9
    move-exception v1

    .line 187
    new-instance v2, Lcom/google/ads/interactivemedia/v3/a/n$b;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Lcom/google/ads/interactivemedia/v3/a/n$b;-><init>(Ljava/lang/Throwable;Lcom/google/ads/interactivemedia/v3/a/n$1;)V

    throw v2

    .line 175
    :cond_b1
    :try_start_b1
    const-string v1, "MediaCodecUtil"

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x19

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Failed to query codec "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    throw v2
    :try_end_ed
    .catch Ljava/lang/Exception; {:try_start_b1 .. :try_end_ed} :catch_a9

    .line 151
    :cond_ed
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto/16 :goto_13
.end method

.method private static a(Landroid/media/MediaCodecInfo;Ljava/lang/String;Z)Z
    .registers 9

    .prologue
    const/16 v5, 0x13

    const/16 v4, 0x12

    const/16 v3, 0x10

    const/4 v0, 0x0

    .line 196
    invoke-virtual {p0}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v1

    if-nez v1, :cond_17

    if-nez p2, :cond_18

    const-string v1, ".secure"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 263
    :cond_17
    :goto_17
    return v0

    .line 201
    :cond_18
    sget v1, Lcom/google/ads/interactivemedia/v3/a/f/q;->a:I

    const/16 v2, 0x15

    if-ge v1, v2, :cond_4e

    const-string v1, "CIPAACDecoder"

    .line 202
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    const-string v1, "CIPMP3Decoder"

    .line 203
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    const-string v1, "CIPVorbisDecoder"

    .line 204
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    const-string v1, "CIPAMRNBDecoder"

    .line 205
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    const-string v1, "AACDecoder"

    .line 206
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    const-string v1, "MP3Decoder"

    .line 207
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    .line 211
    :cond_4e
    sget v1, Lcom/google/ads/interactivemedia/v3/a/f/q;->a:I

    if-ge v1, v4, :cond_5a

    const-string v1, "OMX.SEC.MP3.Decoder"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    .line 215
    :cond_5a
    sget v1, Lcom/google/ads/interactivemedia/v3/a/f/q;->a:I

    if-ge v1, v4, :cond_70

    const-string v1, "OMX.MTK.AUDIO.DECODER.AAC"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_70

    const-string v1, "a70"

    sget-object v2, Lcom/google/ads/interactivemedia/v3/a/f/q;->b:Ljava/lang/String;

    .line 216
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    .line 222
    :cond_70
    sget v1, Lcom/google/ads/interactivemedia/v3/a/f/q;->a:I

    if-ne v1, v3, :cond_fb

    sget-object v1, Lcom/google/ads/interactivemedia/v3/a/f/q;->b:Ljava/lang/String;

    if-eqz v1, :cond_fb

    const-string v1, "OMX.qcom.audio.decoder.mp3"

    .line 223
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_fb

    const-string v1, "dlxu"

    sget-object v2, Lcom/google/ads/interactivemedia/v3/a/f/q;->b:Ljava/lang/String;

    .line 224
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    const-string v1, "protou"

    sget-object v2, Lcom/google/ads/interactivemedia/v3/a/f/q;->b:Ljava/lang/String;

    .line 225
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    const-string/jumbo v1, "ville"

    sget-object v2, Lcom/google/ads/interactivemedia/v3/a/f/q;->b:Ljava/lang/String;

    .line 226
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    const-string/jumbo v1, "villeplus"

    sget-object v2, Lcom/google/ads/interactivemedia/v3/a/f/q;->b:Ljava/lang/String;

    .line 227
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    const-string/jumbo v1, "villec2"

    sget-object v2, Lcom/google/ads/interactivemedia/v3/a/f/q;->b:Ljava/lang/String;

    .line 228
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    sget-object v1, Lcom/google/ads/interactivemedia/v3/a/f/q;->b:Ljava/lang/String;

    const-string v2, "gee"

    .line 229
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_17

    const-string v1, "C6602"

    sget-object v2, Lcom/google/ads/interactivemedia/v3/a/f/q;->b:Ljava/lang/String;

    .line 230
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    const-string v1, "C6603"

    sget-object v2, Lcom/google/ads/interactivemedia/v3/a/f/q;->b:Ljava/lang/String;

    .line 231
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    const-string v1, "C6606"

    sget-object v2, Lcom/google/ads/interactivemedia/v3/a/f/q;->b:Ljava/lang/String;

    .line 232
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    const-string v1, "C6616"

    sget-object v2, Lcom/google/ads/interactivemedia/v3/a/f/q;->b:Ljava/lang/String;

    .line 233
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    const-string v1, "L36h"

    sget-object v2, Lcom/google/ads/interactivemedia/v3/a/f/q;->b:Ljava/lang/String;

    .line 234
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    const-string v1, "SO-02E"

    sget-object v2, Lcom/google/ads/interactivemedia/v3/a/f/q;->b:Ljava/lang/String;

    .line 235
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    .line 240
    :cond_fb
    sget v1, Lcom/google/ads/interactivemedia/v3/a/f/q;->a:I

    if-ne v1, v3, :cond_12f

    const-string v1, "OMX.qcom.audio.decoder.aac"

    .line 241
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12f

    const-string v1, "C1504"

    sget-object v2, Lcom/google/ads/interactivemedia/v3/a/f/q;->b:Ljava/lang/String;

    .line 242
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    const-string v1, "C1505"

    sget-object v2, Lcom/google/ads/interactivemedia/v3/a/f/q;->b:Ljava/lang/String;

    .line 243
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    const-string v1, "C1604"

    sget-object v2, Lcom/google/ads/interactivemedia/v3/a/f/q;->b:Ljava/lang/String;

    .line 244
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    const-string v1, "C1605"

    sget-object v2, Lcom/google/ads/interactivemedia/v3/a/f/q;->b:Ljava/lang/String;

    .line 245
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    .line 251
    :cond_12f
    sget v1, Lcom/google/ads/interactivemedia/v3/a/f/q;->a:I

    if-gt v1, v5, :cond_171

    sget-object v1, Lcom/google/ads/interactivemedia/v3/a/f/q;->b:Ljava/lang/String;

    if-eqz v1, :cond_171

    sget-object v1, Lcom/google/ads/interactivemedia/v3/a/f/q;->b:Ljava/lang/String;

    const-string v2, "d2"

    .line 252
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_15f

    sget-object v1, Lcom/google/ads/interactivemedia/v3/a/f/q;->b:Ljava/lang/String;

    const-string v2, "serrano"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_15f

    sget-object v1, Lcom/google/ads/interactivemedia/v3/a/f/q;->b:Ljava/lang/String;

    const-string v2, "jflte"

    .line 253
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_15f

    sget-object v1, Lcom/google/ads/interactivemedia/v3/a/f/q;->b:Ljava/lang/String;

    const-string v2, "santos"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_171

    :cond_15f
    const-string v1, "samsung"

    sget-object v2, Lcom/google/ads/interactivemedia/v3/a/f/q;->c:Ljava/lang/String;

    .line 254
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_171

    const-string v1, "OMX.SEC.vp8.dec"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    .line 258
    :cond_171
    sget v1, Lcom/google/ads/interactivemedia/v3/a/f/q;->a:I

    if-gt v1, v5, :cond_18b

    sget-object v1, Lcom/google/ads/interactivemedia/v3/a/f/q;->b:Ljava/lang/String;

    if-eqz v1, :cond_18b

    sget-object v1, Lcom/google/ads/interactivemedia/v3/a/f/q;->b:Ljava/lang/String;

    const-string v2, "jflte"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18b

    const-string v1, "OMX.qcom.video.decoder.vp8"

    .line 259
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    .line 263
    :cond_18b
    const/4 v0, 0x1

    goto/16 :goto_17
.end method

.method public static declared-synchronized b(Ljava/lang/String;Z)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/google/ads/interactivemedia/v3/a/e;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/a/n$b;
        }
    .end annotation

    .prologue
    const/16 v4, 0x15

    .line 120
    const-class v2, Lcom/google/ads/interactivemedia/v3/a/n;

    monitor-enter v2

    :try_start_5
    new-instance v3, Lcom/google/ads/interactivemedia/v3/a/n$a;

    invoke-direct {v3, p0, p1}, Lcom/google/ads/interactivemedia/v3/a/n$a;-><init>(Ljava/lang/String;Z)V

    .line 121
    sget-object v0, Lcom/google/ads/interactivemedia/v3/a/n;->b:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_8e

    .line 122
    if-eqz v0, :cond_16

    .line 140
    :goto_14
    monitor-exit v2

    return-object v0

    .line 125
    :cond_16
    :try_start_16
    sget v0, Lcom/google/ads/interactivemedia/v3/a/f/q;->a:I

    if-lt v0, v4, :cond_91

    .line 126
    new-instance v0, Lcom/google/ads/interactivemedia/v3/a/n$e;

    invoke-direct {v0, p1}, Lcom/google/ads/interactivemedia/v3/a/n$e;-><init>(Z)V

    .line 127
    :goto_1f
    invoke-static {v3, v0}, Lcom/google/ads/interactivemedia/v3/a/n;->a(Lcom/google/ads/interactivemedia/v3/a/n$a;Lcom/google/ads/interactivemedia/v3/a/n$c;)Ljava/util/List;

    move-result-object v0

    .line 128
    if-eqz p1, :cond_84

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_84

    sget v1, Lcom/google/ads/interactivemedia/v3/a/f/q;->a:I

    if-gt v4, v1, :cond_84

    sget v1, Lcom/google/ads/interactivemedia/v3/a/f/q;->a:I

    const/16 v4, 0x17

    if-gt v1, v4, :cond_84

    .line 131
    new-instance v0, Lcom/google/ads/interactivemedia/v3/a/n$d;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/a/n$d;-><init>(Lcom/google/ads/interactivemedia/v3/a/n$1;)V

    .line 132
    invoke-static {v3, v0}, Lcom/google/ads/interactivemedia/v3/a/n;->a(Lcom/google/ads/interactivemedia/v3/a/n$a;Lcom/google/ads/interactivemedia/v3/a/n$c;)Ljava/util/List;

    move-result-object v1

    .line 133
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_83

    .line 134
    const-string v4, "MediaCodecUtil"

    const/4 v0, 0x0

    .line 135
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/a/e;

    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/a/e;->a:Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x3f

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "MediaCodecList API didn\'t list secure decoder for: "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ". Assuming: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 134
    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_83
    move-object v0, v1

    .line 138
    :cond_84
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 139
    sget-object v1, Lcom/google/ads/interactivemedia/v3/a/n;->b:Ljava/util/Map;

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8d
    .catchall {:try_start_16 .. :try_end_8d} :catchall_8e

    goto :goto_14

    .line 120
    :catchall_8e
    move-exception v0

    monitor-exit v2

    throw v0

    .line 126
    :cond_91
    :try_start_91
    new-instance v0, Lcom/google/ads/interactivemedia/v3/a/n$d;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/a/n$d;-><init>(Lcom/google/ads/interactivemedia/v3/a/n$1;)V
    :try_end_97
    .catchall {:try_start_91 .. :try_end_97} :catchall_8e

    goto :goto_1f
.end method
