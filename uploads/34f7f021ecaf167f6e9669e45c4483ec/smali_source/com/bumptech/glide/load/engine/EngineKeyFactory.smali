.class Lcom/bumptech/glide/load/engine/EngineKeyFactory;
.super Ljava/lang/Object;
.source "EngineKeyFactory.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public buildKey(Ljava/lang/String;Lcom/bumptech/glide/load/Key;IILcom/bumptech/glide/load/ResourceDecoder;Lcom/bumptech/glide/load/ResourceDecoder;Lcom/bumptech/glide/load/Transformation;Lcom/bumptech/glide/load/ResourceEncoder;Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;Lcom/bumptech/glide/load/Encoder;)Lcom/bumptech/glide/load/engine/EngineKey;
    .registers 22
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "signature"    # Lcom/bumptech/glide/load/Key;
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "cacheDecoder"    # Lcom/bumptech/glide/load/ResourceDecoder;
    .param p6, "sourceDecoder"    # Lcom/bumptech/glide/load/ResourceDecoder;
    .param p7, "transformation"    # Lcom/bumptech/glide/load/Transformation;
    .param p8, "encoder"    # Lcom/bumptech/glide/load/ResourceEncoder;
    .param p9, "transcoder"    # Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;
    .param p10, "sourceEncoder"    # Lcom/bumptech/glide/load/Encoder;

    .prologue
    .line 16
    new-instance v0, Lcom/bumptech/glide/load/engine/EngineKey;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    invoke-direct/range {v0 .. v10}, Lcom/bumptech/glide/load/engine/EngineKey;-><init>(Ljava/lang/String;Lcom/bumptech/glide/load/Key;IILcom/bumptech/glide/load/ResourceDecoder;Lcom/bumptech/glide/load/ResourceDecoder;Lcom/bumptech/glide/load/Transformation;Lcom/bumptech/glide/load/ResourceEncoder;Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;Lcom/bumptech/glide/load/Encoder;)V

    return-object v0
.end method
