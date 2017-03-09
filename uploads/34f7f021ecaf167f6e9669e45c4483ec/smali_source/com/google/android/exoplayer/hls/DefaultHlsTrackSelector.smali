.class public final Lcom/google/android/exoplayer/hls/DefaultHlsTrackSelector;
.super Ljava/lang/Object;
.source "DefaultHlsTrackSelector.java"

# interfaces
.implements Lcom/google/android/exoplayer/hls/HlsTrackSelector;


# static fields
.field private static final TYPE_AUDIO:I = 0x1

.field private static final TYPE_DEFAULT:I = 0x0

.field private static final TYPE_SUBTITLE:I = 0x2


# instance fields
.field private final context:Landroid/content/Context;

.field private final type:I


# direct methods
.method private constructor <init>(Landroid/content/Context;I)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "type"    # I

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/google/android/exoplayer/hls/DefaultHlsTrackSelector;->context:Landroid/content/Context;

    .line 67
    iput p2, p0, Lcom/google/android/exoplayer/hls/DefaultHlsTrackSelector;->type:I

    .line 68
    return-void
.end method

.method public static newAudioInstance()Lcom/google/android/exoplayer/hls/DefaultHlsTrackSelector;
    .registers 3

    .prologue
    .line 53
    new-instance v0, Lcom/google/android/exoplayer/hls/DefaultHlsTrackSelector;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer/hls/DefaultHlsTrackSelector;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method public static newDefaultInstance(Landroid/content/Context;)Lcom/google/android/exoplayer/hls/DefaultHlsTrackSelector;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 44
    new-instance v0, Lcom/google/android/exoplayer/hls/DefaultHlsTrackSelector;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/exoplayer/hls/DefaultHlsTrackSelector;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method public static newSubtitleInstance()Lcom/google/android/exoplayer/hls/DefaultHlsTrackSelector;
    .registers 3

    .prologue
    .line 62
    new-instance v0, Lcom/google/android/exoplayer/hls/DefaultHlsTrackSelector;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer/hls/DefaultHlsTrackSelector;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method private static variantHasExplicitCodecWithPrefix(Lcom/google/android/exoplayer/hls/Variant;Ljava/lang/String;)Z
    .registers 7
    .param p0, "variant"    # Lcom/google/android/exoplayer/hls/Variant;
    .param p1, "prefix"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 126
    iget-object v4, p0, Lcom/google/android/exoplayer/hls/Variant;->format:Lcom/google/android/exoplayer/chunk/Format;

    iget-object v1, v4, Lcom/google/android/exoplayer/chunk/Format;->codecs:Ljava/lang/String;

    .line 127
    .local v1, "codecs":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 136
    :cond_b
    :goto_b
    return v3

    .line 130
    :cond_c
    const-string v4, "(\\s*,\\s*)|(\\s*$)"

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 131
    .local v0, "codecArray":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_13
    array-length v4, v0

    if-ge v2, v4, :cond_b

    .line 132
    aget-object v4, v0, v2

    invoke-virtual {v4, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_20

    .line 133
    const/4 v3, 0x1

    goto :goto_b

    .line 131
    :cond_20
    add-int/lit8 v2, v2, 0x1

    goto :goto_13
.end method


# virtual methods
.method public selectTracks(Lcom/google/android/exoplayer/hls/HlsMasterPlaylist;Lcom/google/android/exoplayer/hls/HlsTrackSelector$Output;)V
    .registers 16
    .param p1, "playlist"    # Lcom/google/android/exoplayer/hls/HlsMasterPlaylist;
    .param p2, "output"    # Lcom/google/android/exoplayer/hls/HlsTrackSelector$Output;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x1

    .line 72
    iget v8, p0, Lcom/google/android/exoplayer/hls/DefaultHlsTrackSelector;->type:I

    if-eq v8, v12, :cond_a

    iget v8, p0, Lcom/google/android/exoplayer/hls/DefaultHlsTrackSelector;->type:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_2e

    .line 73
    :cond_a
    iget v8, p0, Lcom/google/android/exoplayer/hls/DefaultHlsTrackSelector;->type:I

    if-ne v8, v12, :cond_2b

    iget-object v7, p1, Lcom/google/android/exoplayer/hls/HlsMasterPlaylist;->audios:Ljava/util/List;

    .line 74
    .local v7, "variants":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer/hls/Variant;>;"
    :goto_10
    if-eqz v7, :cond_c0

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_c0

    .line 75
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_19
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    if-ge v4, v8, :cond_c0

    .line 76
    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/exoplayer/hls/Variant;

    invoke-interface {p2, p1, v8}, Lcom/google/android/exoplayer/hls/HlsTrackSelector$Output;->fixedTrack(Lcom/google/android/exoplayer/hls/HlsMasterPlaylist;Lcom/google/android/exoplayer/hls/Variant;)V

    .line 75
    add-int/lit8 v4, v4, 0x1

    goto :goto_19

    .line 73
    .end local v4    # "i":I
    .end local v7    # "variants":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer/hls/Variant;>;"
    :cond_2b
    iget-object v7, p1, Lcom/google/android/exoplayer/hls/HlsMasterPlaylist;->subtitles:Ljava/util/List;

    goto :goto_10

    .line 84
    :cond_2e
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 85
    .local v2, "enabledVariantList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer/hls/Variant;>;"
    iget-object v8, p0, Lcom/google/android/exoplayer/hls/DefaultHlsTrackSelector;->context:Landroid/content/Context;

    iget-object v9, p1, Lcom/google/android/exoplayer/hls/HlsMasterPlaylist;->variants:Ljava/util/List;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v8, v9, v10, v11}, Lcom/google/android/exoplayer/chunk/VideoFormatSelectorUtil;->selectVideoFormatsForDefaultDisplay(Landroid/content/Context;Ljava/util/List;[Ljava/lang/String;Z)[I

    move-result-object v6

    .line 87
    .local v6, "variantIndices":[I
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_3e
    array-length v8, v6

    if-ge v4, v8, :cond_4f

    .line 88
    iget-object v8, p1, Lcom/google/android/exoplayer/hls/HlsMasterPlaylist;->variants:Ljava/util/List;

    aget v9, v6, v4

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    add-int/lit8 v4, v4, 0x1

    goto :goto_3e

    .line 91
    :cond_4f
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 92
    .local v1, "definiteVideoVariants":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer/hls/Variant;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 93
    .local v0, "definiteAudioOnlyVariants":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer/hls/Variant;>;"
    const/4 v4, 0x0

    :goto_5a
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v4, v8, :cond_86

    .line 94
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/exoplayer/hls/Variant;

    .line 95
    .local v5, "variant":Lcom/google/android/exoplayer/hls/Variant;
    iget-object v8, v5, Lcom/google/android/exoplayer/hls/Variant;->format:Lcom/google/android/exoplayer/chunk/Format;

    iget v8, v8, Lcom/google/android/exoplayer/chunk/Format;->height:I

    if-gtz v8, :cond_74

    const-string v8, "avc"

    invoke-static {v5, v8}, Lcom/google/android/exoplayer/hls/DefaultHlsTrackSelector;->variantHasExplicitCodecWithPrefix(Lcom/google/android/exoplayer/hls/Variant;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7a

    .line 96
    :cond_74
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    :cond_77
    :goto_77
    add-int/lit8 v4, v4, 0x1

    goto :goto_5a

    .line 97
    :cond_7a
    const-string v8, "mp4a"

    invoke-static {v5, v8}, Lcom/google/android/exoplayer/hls/DefaultHlsTrackSelector;->variantHasExplicitCodecWithPrefix(Lcom/google/android/exoplayer/hls/Variant;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_77

    .line 98
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_77

    .line 102
    .end local v5    # "variant":Lcom/google/android/exoplayer/hls/Variant;
    :cond_86
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_b2

    .line 106
    move-object v2, v1

    .line 115
    :cond_8d
    :goto_8d
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-le v8, v12, :cond_9f

    .line 116
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v3, v8, [Lcom/google/android/exoplayer/hls/Variant;

    .line 117
    .local v3, "enabledVariants":[Lcom/google/android/exoplayer/hls/Variant;
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 118
    invoke-interface {p2, p1, v3}, Lcom/google/android/exoplayer/hls/HlsTrackSelector$Output;->adaptiveTrack(Lcom/google/android/exoplayer/hls/HlsMasterPlaylist;[Lcom/google/android/exoplayer/hls/Variant;)V

    .line 120
    .end local v3    # "enabledVariants":[Lcom/google/android/exoplayer/hls/Variant;
    :cond_9f
    const/4 v4, 0x0

    :goto_a0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v4, v8, :cond_c0

    .line 121
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/exoplayer/hls/Variant;

    invoke-interface {p2, p1, v8}, Lcom/google/android/exoplayer/hls/HlsTrackSelector$Output;->fixedTrack(Lcom/google/android/exoplayer/hls/HlsMasterPlaylist;Lcom/google/android/exoplayer/hls/Variant;)V

    .line 120
    add-int/lit8 v4, v4, 0x1

    goto :goto_a0

    .line 107
    :cond_b2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v8, v9, :cond_8d

    .line 110
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    goto :goto_8d

    .line 123
    .end local v0    # "definiteAudioOnlyVariants":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer/hls/Variant;>;"
    .end local v1    # "definiteVideoVariants":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer/hls/Variant;>;"
    .end local v2    # "enabledVariantList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer/hls/Variant;>;"
    .end local v4    # "i":I
    .end local v6    # "variantIndices":[I
    :cond_c0
    return-void
.end method
