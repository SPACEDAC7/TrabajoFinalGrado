.class public final Lcom/google/android/exoplayer/hls/HlsPlaylistParser;
.super Ljava/lang/Object;
.source "HlsPlaylistParser.java"

# interfaces
.implements Lcom/google/android/exoplayer/upstream/UriLoadable$Parser;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer/hls/HlsPlaylistParser$LineIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/exoplayer/upstream/UriLoadable$Parser",
        "<",
        "Lcom/google/android/exoplayer/hls/HlsPlaylist;",
        ">;"
    }
.end annotation


# static fields
.field private static final AUDIO_TYPE:Ljava/lang/String; = "AUDIO"

.field private static final BANDWIDTH_ATTR:Ljava/lang/String; = "BANDWIDTH"

.field private static final BANDWIDTH_ATTR_REGEX:Ljava/util/regex/Pattern;

.field private static final BYTERANGE_REGEX:Ljava/util/regex/Pattern;

.field private static final BYTERANGE_TAG:Ljava/lang/String; = "#EXT-X-BYTERANGE"

.field private static final CLOSED_CAPTIONS_TYPE:Ljava/lang/String; = "CLOSED-CAPTIONS"

.field private static final CODECS_ATTR:Ljava/lang/String; = "CODECS"

.field private static final CODECS_ATTR_REGEX:Ljava/util/regex/Pattern;

.field private static final DISCONTINUITY_SEQUENCE_TAG:Ljava/lang/String; = "#EXT-X-DISCONTINUITY-SEQUENCE"

.field private static final DISCONTINUITY_TAG:Ljava/lang/String; = "#EXT-X-DISCONTINUITY"

.field private static final ENDLIST_TAG:Ljava/lang/String; = "#EXT-X-ENDLIST"

.field private static final INSTREAM_ID_ATTR:Ljava/lang/String; = "INSTREAM-ID"

.field private static final INSTREAM_ID_ATTR_REGEX:Ljava/util/regex/Pattern;

.field private static final IV_ATTR:Ljava/lang/String; = "IV"

.field private static final IV_ATTR_REGEX:Ljava/util/regex/Pattern;

.field private static final KEY_TAG:Ljava/lang/String; = "#EXT-X-KEY"

.field private static final LANGUAGE_ATTR:Ljava/lang/String; = "LANGUAGE"

.field private static final LANGUAGE_ATTR_REGEX:Ljava/util/regex/Pattern;

.field private static final MEDIA_DURATION_REGEX:Ljava/util/regex/Pattern;

.field private static final MEDIA_DURATION_TAG:Ljava/lang/String; = "#EXTINF"

.field private static final MEDIA_SEQUENCE_REGEX:Ljava/util/regex/Pattern;

.field private static final MEDIA_SEQUENCE_TAG:Ljava/lang/String; = "#EXT-X-MEDIA-SEQUENCE"

.field private static final MEDIA_TAG:Ljava/lang/String; = "#EXT-X-MEDIA"

.field private static final METHOD_AES128:Ljava/lang/String; = "AES-128"

.field private static final METHOD_ATTR:Ljava/lang/String; = "METHOD"

.field private static final METHOD_ATTR_REGEX:Ljava/util/regex/Pattern;

.field private static final METHOD_NONE:Ljava/lang/String; = "NONE"

.field private static final NAME_ATTR:Ljava/lang/String; = "NAME"

.field private static final NAME_ATTR_REGEX:Ljava/util/regex/Pattern;

.field private static final RESOLUTION_ATTR:Ljava/lang/String; = "RESOLUTION"

.field private static final RESOLUTION_ATTR_REGEX:Ljava/util/regex/Pattern;

.field private static final STREAM_INF_TAG:Ljava/lang/String; = "#EXT-X-STREAM-INF"

.field private static final SUBTITLES_TYPE:Ljava/lang/String; = "SUBTITLES"

.field private static final TARGET_DURATION_REGEX:Ljava/util/regex/Pattern;

.field private static final TARGET_DURATION_TAG:Ljava/lang/String; = "#EXT-X-TARGETDURATION"

.field private static final TYPE_ATTR:Ljava/lang/String; = "TYPE"

.field private static final TYPE_ATTR_REGEX:Ljava/util/regex/Pattern;

.field private static final URI_ATTR:Ljava/lang/String; = "URI"

.field private static final URI_ATTR_REGEX:Ljava/util/regex/Pattern;

.field private static final VERSION_REGEX:Ljava/util/regex/Pattern;

.field private static final VERSION_TAG:Ljava/lang/String; = "#EXT-X-VERSION"

.field private static final VIDEO_TYPE:Ljava/lang/String; = "VIDEO"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 71
    const-string v0, "BANDWIDTH=(\\d+)\\b"

    .line 72
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer/hls/HlsPlaylistParser;->BANDWIDTH_ATTR_REGEX:Ljava/util/regex/Pattern;

    .line 73
    const-string v0, "CODECS=\"(.+?)\""

    .line 74
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer/hls/HlsPlaylistParser;->CODECS_ATTR_REGEX:Ljava/util/regex/Pattern;

    .line 75
    const-string v0, "RESOLUTION=(\\d+x\\d+)"

    .line 76
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer/hls/HlsPlaylistParser;->RESOLUTION_ATTR_REGEX:Ljava/util/regex/Pattern;

    .line 77
    const-string v0, "#EXTINF:([\\d.]+)\\b"

    .line 78
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer/hls/HlsPlaylistParser;->MEDIA_DURATION_REGEX:Ljava/util/regex/Pattern;

    .line 79
    const-string v0, "#EXT-X-MEDIA-SEQUENCE:(\\d+)\\b"

    .line 80
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer/hls/HlsPlaylistParser;->MEDIA_SEQUENCE_REGEX:Ljava/util/regex/Pattern;

    .line 81
    const-string v0, "#EXT-X-TARGETDURATION:(\\d+)\\b"

    .line 82
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer/hls/HlsPlaylistParser;->TARGET_DURATION_REGEX:Ljava/util/regex/Pattern;

    .line 83
    const-string v0, "#EXT-X-VERSION:(\\d+)\\b"

    .line 84
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer/hls/HlsPlaylistParser;->VERSION_REGEX:Ljava/util/regex/Pattern;

    .line 85
    const-string v0, "#EXT-X-BYTERANGE:(\\d+(?:@\\d+)?)\\b"

    .line 86
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer/hls/HlsPlaylistParser;->BYTERANGE_REGEX:Ljava/util/regex/Pattern;

    .line 88
    const-string v0, "METHOD=(NONE|AES-128)"

    .line 89
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer/hls/HlsPlaylistParser;->METHOD_ATTR_REGEX:Ljava/util/regex/Pattern;

    .line 90
    const-string v0, "URI=\"(.+?)\""

    .line 91
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer/hls/HlsPlaylistParser;->URI_ATTR_REGEX:Ljava/util/regex/Pattern;

    .line 92
    const-string v0, "IV=([^,.*]+)"

    .line 93
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer/hls/HlsPlaylistParser;->IV_ATTR_REGEX:Ljava/util/regex/Pattern;

    .line 94
    const-string v0, "TYPE=(AUDIO|VIDEO|SUBTITLES|CLOSED-CAPTIONS)"

    .line 95
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer/hls/HlsPlaylistParser;->TYPE_ATTR_REGEX:Ljava/util/regex/Pattern;

    .line 97
    const-string v0, "LANGUAGE=\"(.+?)\""

    .line 98
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer/hls/HlsPlaylistParser;->LANGUAGE_ATTR_REGEX:Ljava/util/regex/Pattern;

    .line 99
    const-string v0, "NAME=\"(.+?)\""

    .line 100
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer/hls/HlsPlaylistParser;->NAME_ATTR_REGEX:Ljava/util/regex/Pattern;

    .line 101
    const-string v0, "INSTREAM-ID=\"(.+?)\""

    .line 102
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer/hls/HlsPlaylistParser;->INSTREAM_ID_ATTR_REGEX:Ljava/util/regex/Pattern;

    .line 101
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static parseMasterPlaylist(Lcom/google/android/exoplayer/hls/HlsPlaylistParser$LineIterator;Ljava/lang/String;)Lcom/google/android/exoplayer/hls/HlsMasterPlaylist;
    .registers 43
    .param p0, "iterator"    # Lcom/google/android/exoplayer/hls/HlsPlaylistParser$LineIterator;
    .param p1, "baseUri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 144
    new-instance v38, Ljava/util/ArrayList;

    invoke-direct/range {v38 .. v38}, Ljava/util/ArrayList;-><init>()V

    .line 145
    .local v38, "variants":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer/hls/Variant;>;"
    new-instance v25, Ljava/util/ArrayList;

    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    .line 146
    .local v25, "audios":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer/hls/Variant;>;"
    new-instance v35, Ljava/util/ArrayList;

    invoke-direct/range {v35 .. v35}, Ljava/util/ArrayList;-><init>()V

    .line 147
    .local v35, "subtitles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer/hls/Variant;>;"
    const/16 v26, 0x0

    .line 148
    .local v26, "bitrate":I
    const/4 v11, 0x0

    .line 149
    .local v11, "codecs":Ljava/lang/String;
    const/16 v39, -0x1

    .line 150
    .local v39, "width":I
    const/16 v28, -0x1

    .line 151
    .local v28, "height":I
    const/4 v15, 0x0

    .line 152
    .local v15, "name":Ljava/lang/String;
    const/16 v31, 0x0

    .line 153
    .local v31, "muxedAudioLanguage":Ljava/lang/String;
    const/16 v32, 0x0

    .line 155
    .local v32, "muxedCaptionLanguage":Ljava/lang/String;
    const/16 v27, 0x0

    .local v27, "expectingStreamInfUrl":Z
    move-object/from16 v33, v15

    .line 157
    .end local v15    # "name":Ljava/lang/String;
    .local v33, "name":Ljava/lang/String;
    :cond_1f
    :goto_1f
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/hls/HlsPlaylistParser$LineIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_195

    .line 158
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/hls/HlsPlaylistParser$LineIterator;->next()Ljava/lang/String;

    move-result-object v30

    .line 159
    .local v30, "line":Ljava/lang/String;
    const-string v3, "#EXT-X-MEDIA"

    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f5

    .line 160
    sget-object v3, Lcom/google/android/exoplayer/hls/HlsPlaylistParser;->TYPE_ATTR_REGEX:Ljava/util/regex/Pattern;

    const-string v4, "TYPE"

    move-object/from16 v0, v30

    invoke-static {v0, v3, v4}, Lcom/google/android/exoplayer/hls/HlsParserUtil;->parseStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    .line 161
    .local v36, "type":Ljava/lang/String;
    const-string v3, "CLOSED-CAPTIONS"

    move-object/from16 v0, v36

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_64

    .line 162
    sget-object v3, Lcom/google/android/exoplayer/hls/HlsPlaylistParser;->INSTREAM_ID_ATTR_REGEX:Ljava/util/regex/Pattern;

    const-string v4, "INSTREAM-ID"

    move-object/from16 v0, v30

    invoke-static {v0, v3, v4}, Lcom/google/android/exoplayer/hls/HlsParserUtil;->parseStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 164
    .local v29, "instreamId":Ljava/lang/String;
    const-string v3, "CC1"

    move-object/from16 v0, v29

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 165
    sget-object v3, Lcom/google/android/exoplayer/hls/HlsPlaylistParser;->LANGUAGE_ATTR_REGEX:Ljava/util/regex/Pattern;

    move-object/from16 v0, v30

    invoke-static {v0, v3}, Lcom/google/android/exoplayer/hls/HlsParserUtil;->parseOptionalStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v32

    goto :goto_1f

    .line 167
    .end local v29    # "instreamId":Ljava/lang/String;
    :cond_64
    const-string v3, "SUBTITLES"

    move-object/from16 v0, v36

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a6

    .line 169
    sget-object v3, Lcom/google/android/exoplayer/hls/HlsPlaylistParser;->NAME_ATTR_REGEX:Ljava/util/regex/Pattern;

    const-string v4, "NAME"

    move-object/from16 v0, v30

    invoke-static {v0, v3, v4}, Lcom/google/android/exoplayer/hls/HlsParserUtil;->parseStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 170
    .local v2, "subtitleName":Ljava/lang/String;
    sget-object v3, Lcom/google/android/exoplayer/hls/HlsPlaylistParser;->URI_ATTR_REGEX:Ljava/util/regex/Pattern;

    const-string v4, "URI"

    move-object/from16 v0, v30

    invoke-static {v0, v3, v4}, Lcom/google/android/exoplayer/hls/HlsParserUtil;->parseStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    .line 171
    .local v37, "uri":Ljava/lang/String;
    sget-object v3, Lcom/google/android/exoplayer/hls/HlsPlaylistParser;->LANGUAGE_ATTR_REGEX:Ljava/util/regex/Pattern;

    move-object/from16 v0, v30

    invoke-static {v0, v3}, Lcom/google/android/exoplayer/hls/HlsParserUtil;->parseOptionalStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v10

    .line 172
    .local v10, "language":Ljava/lang/String;
    new-instance v1, Lcom/google/android/exoplayer/chunk/Format;

    const-string v3, "application/x-mpegURL"

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/high16 v6, -0x40800000

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/4 v9, -0x1

    invoke-direct/range {v1 .. v11}, Lcom/google/android/exoplayer/chunk/Format;-><init>(Ljava/lang/String;Ljava/lang/String;IIFIIILjava/lang/String;Ljava/lang/String;)V

    .line 174
    .local v1, "format":Lcom/google/android/exoplayer/chunk/Format;
    new-instance v3, Lcom/google/android/exoplayer/hls/Variant;

    move-object/from16 v0, v37

    invoke-direct {v3, v0, v1}, Lcom/google/android/exoplayer/hls/Variant;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer/chunk/Format;)V

    move-object/from16 v0, v35

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1f

    .line 175
    .end local v1    # "format":Lcom/google/android/exoplayer/chunk/Format;
    .end local v2    # "subtitleName":Ljava/lang/String;
    .end local v10    # "language":Ljava/lang/String;
    .end local v37    # "uri":Ljava/lang/String;
    :cond_a6
    const-string v3, "AUDIO"

    move-object/from16 v0, v36

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 177
    sget-object v3, Lcom/google/android/exoplayer/hls/HlsPlaylistParser;->LANGUAGE_ATTR_REGEX:Ljava/util/regex/Pattern;

    move-object/from16 v0, v30

    invoke-static {v0, v3}, Lcom/google/android/exoplayer/hls/HlsParserUtil;->parseOptionalStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v10

    .line 178
    .restart local v10    # "language":Ljava/lang/String;
    sget-object v3, Lcom/google/android/exoplayer/hls/HlsPlaylistParser;->URI_ATTR_REGEX:Ljava/util/regex/Pattern;

    move-object/from16 v0, v30

    invoke-static {v0, v3}, Lcom/google/android/exoplayer/hls/HlsParserUtil;->parseOptionalStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v37

    .line 179
    .restart local v37    # "uri":Ljava/lang/String;
    if-eqz v37, :cond_f1

    .line 180
    sget-object v3, Lcom/google/android/exoplayer/hls/HlsPlaylistParser;->NAME_ATTR_REGEX:Ljava/util/regex/Pattern;

    const-string v4, "NAME"

    move-object/from16 v0, v30

    invoke-static {v0, v3, v4}, Lcom/google/android/exoplayer/hls/HlsParserUtil;->parseStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 181
    .local v13, "audioName":Ljava/lang/String;
    new-instance v1, Lcom/google/android/exoplayer/chunk/Format;

    const-string v14, "application/x-mpegURL"

    const/4 v15, -0x1

    const/16 v16, -0x1

    const/high16 v17, -0x40800000

    const/16 v18, -0x1

    const/16 v19, -0x1

    const/16 v20, -0x1

    move-object v12, v1

    move-object/from16 v21, v10

    move-object/from16 v22, v11

    invoke-direct/range {v12 .. v22}, Lcom/google/android/exoplayer/chunk/Format;-><init>(Ljava/lang/String;Ljava/lang/String;IIFIIILjava/lang/String;Ljava/lang/String;)V

    .line 183
    .restart local v1    # "format":Lcom/google/android/exoplayer/chunk/Format;
    new-instance v3, Lcom/google/android/exoplayer/hls/Variant;

    move-object/from16 v0, v37

    invoke-direct {v3, v0, v1}, Lcom/google/android/exoplayer/hls/Variant;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer/chunk/Format;)V

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1f

    .line 185
    .end local v1    # "format":Lcom/google/android/exoplayer/chunk/Format;
    .end local v13    # "audioName":Ljava/lang/String;
    :cond_f1
    move-object/from16 v31, v10

    goto/16 :goto_1f

    .line 188
    .end local v10    # "language":Ljava/lang/String;
    .end local v36    # "type":Ljava/lang/String;
    .end local v37    # "uri":Ljava/lang/String;
    :cond_f5
    const-string v3, "#EXT-X-STREAM-INF"

    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_14d

    .line 189
    sget-object v3, Lcom/google/android/exoplayer/hls/HlsPlaylistParser;->BANDWIDTH_ATTR_REGEX:Ljava/util/regex/Pattern;

    const-string v4, "BANDWIDTH"

    move-object/from16 v0, v30

    invoke-static {v0, v3, v4}, Lcom/google/android/exoplayer/hls/HlsParserUtil;->parseIntAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;)I

    move-result v26

    .line 190
    sget-object v3, Lcom/google/android/exoplayer/hls/HlsPlaylistParser;->CODECS_ATTR_REGEX:Ljava/util/regex/Pattern;

    move-object/from16 v0, v30

    invoke-static {v0, v3}, Lcom/google/android/exoplayer/hls/HlsParserUtil;->parseOptionalStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v11

    .line 191
    sget-object v3, Lcom/google/android/exoplayer/hls/HlsPlaylistParser;->NAME_ATTR_REGEX:Ljava/util/regex/Pattern;

    move-object/from16 v0, v30

    invoke-static {v0, v3}, Lcom/google/android/exoplayer/hls/HlsParserUtil;->parseOptionalStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v15

    .line 192
    .end local v33    # "name":Ljava/lang/String;
    .restart local v15    # "name":Ljava/lang/String;
    sget-object v3, Lcom/google/android/exoplayer/hls/HlsPlaylistParser;->RESOLUTION_ATTR_REGEX:Ljava/util/regex/Pattern;

    move-object/from16 v0, v30

    invoke-static {v0, v3}, Lcom/google/android/exoplayer/hls/HlsParserUtil;->parseOptionalStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v34

    .line 194
    .local v34, "resolutionString":Ljava/lang/String;
    if-eqz v34, :cond_148

    .line 195
    const-string/jumbo v3, "x"

    move-object/from16 v0, v34

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v40

    .line 196
    .local v40, "widthAndHeight":[Ljava/lang/String;
    const/4 v3, 0x0

    aget-object v3, v40, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v39

    .line 197
    if-gtz v39, :cond_137

    .line 199
    const/16 v39, -0x1

    .line 201
    :cond_137
    const/4 v3, 0x1

    aget-object v3, v40, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v28

    .line 202
    if-gtz v28, :cond_142

    .line 204
    const/16 v28, -0x1

    .line 210
    .end local v40    # "widthAndHeight":[Ljava/lang/String;
    :cond_142
    :goto_142
    const/16 v27, 0x1

    move-object/from16 v33, v15

    .line 211
    .end local v15    # "name":Ljava/lang/String;
    .restart local v33    # "name":Ljava/lang/String;
    goto/16 :goto_1f

    .line 207
    .end local v33    # "name":Ljava/lang/String;
    .restart local v15    # "name":Ljava/lang/String;
    :cond_148
    const/16 v39, -0x1

    .line 208
    const/16 v28, -0x1

    goto :goto_142

    .line 211
    .end local v15    # "name":Ljava/lang/String;
    .end local v34    # "resolutionString":Ljava/lang/String;
    .restart local v33    # "name":Ljava/lang/String;
    :cond_14d
    const-string v3, "#"

    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1f

    if-eqz v27, :cond_1f

    .line 212
    if-nez v33, :cond_1a7

    .line 213
    invoke-virtual/range {v38 .. v38}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    .line 215
    .end local v33    # "name":Ljava/lang/String;
    .restart local v15    # "name":Ljava/lang/String;
    :goto_163
    new-instance v1, Lcom/google/android/exoplayer/chunk/Format;

    const-string v16, "application/x-mpegURL"

    const/high16 v19, -0x40800000

    const/16 v20, -0x1

    const/16 v21, -0x1

    const/16 v23, 0x0

    move-object v14, v1

    move/from16 v17, v39

    move/from16 v18, v28

    move/from16 v22, v26

    move-object/from16 v24, v11

    invoke-direct/range {v14 .. v24}, Lcom/google/android/exoplayer/chunk/Format;-><init>(Ljava/lang/String;Ljava/lang/String;IIFIIILjava/lang/String;Ljava/lang/String;)V

    .line 217
    .restart local v1    # "format":Lcom/google/android/exoplayer/chunk/Format;
    new-instance v3, Lcom/google/android/exoplayer/hls/Variant;

    move-object/from16 v0, v30

    invoke-direct {v3, v0, v1}, Lcom/google/android/exoplayer/hls/Variant;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer/chunk/Format;)V

    move-object/from16 v0, v38

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 218
    const/16 v26, 0x0

    .line 219
    const/4 v11, 0x0

    .line 220
    const/4 v15, 0x0

    .line 221
    const/16 v39, -0x1

    .line 222
    const/16 v28, -0x1

    .line 223
    const/16 v27, 0x0

    move-object/from16 v33, v15

    .line 224
    .end local v15    # "name":Ljava/lang/String;
    .restart local v33    # "name":Ljava/lang/String;
    goto/16 :goto_1f

    .line 226
    .end local v1    # "format":Lcom/google/android/exoplayer/chunk/Format;
    .end local v30    # "line":Ljava/lang/String;
    :cond_195
    new-instance v3, Lcom/google/android/exoplayer/hls/HlsMasterPlaylist;

    move-object/from16 v4, p1

    move-object/from16 v5, v38

    move-object/from16 v6, v25

    move-object/from16 v7, v35

    move-object/from16 v8, v31

    move-object/from16 v9, v32

    invoke-direct/range {v3 .. v9}, Lcom/google/android/exoplayer/hls/HlsMasterPlaylist;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    .restart local v30    # "line":Ljava/lang/String;
    :cond_1a7
    move-object/from16 v15, v33

    .end local v33    # "name":Ljava/lang/String;
    .restart local v15    # "name":Ljava/lang/String;
    goto :goto_163
.end method

.method private static parseMediaPlaylist(Lcom/google/android/exoplayer/hls/HlsPlaylistParser$LineIterator;Ljava/lang/String;)Lcom/google/android/exoplayer/hls/HlsMediaPlaylist;
    .registers 31
    .param p0, "iterator"    # Lcom/google/android/exoplayer/hls/HlsPlaylistParser$LineIterator;
    .param p1, "baseUri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 232
    const/16 v18, 0x0

    .line 233
    .local v18, "mediaSequence":I
    const/16 v19, 0x0

    .line 234
    .local v19, "targetDurationSecs":I
    const/16 v20, 0x1

    .line 235
    .local v20, "version":I
    const/16 v21, 0x1

    .line 236
    .local v21, "live":Z
    new-instance v27, Ljava/util/ArrayList;

    invoke-direct/range {v27 .. v27}, Ljava/util/ArrayList;-><init>()V

    .line 238
    .local v27, "segments":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer/hls/HlsMediaPlaylist$Segment;>;"
    const-wide/16 v4, 0x0

    .line 239
    .local v4, "segmentDurationSecs":D
    const/4 v6, 0x0

    .line 240
    .local v6, "discontinuitySequenceNumber":I
    const-wide/16 v7, 0x0

    .line 241
    .local v7, "segmentStartTimeUs":J
    const-wide/16 v12, 0x0

    .line 242
    .local v12, "segmentByterangeOffset":J
    const-wide/16 v14, -0x1

    .line 243
    .local v14, "segmentByterangeLength":J
    const/16 v26, 0x0

    .line 245
    .local v26, "segmentMediaSequence":I
    const/4 v9, 0x0

    .line 246
    .local v9, "isEncrypted":Z
    const/4 v10, 0x0

    .line 247
    .local v10, "encryptionKeyUri":Ljava/lang/String;
    const/16 v24, 0x0

    .line 250
    .local v24, "encryptionIV":Ljava/lang/String;
    :cond_1c
    :goto_1c
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/hls/HlsPlaylistParser$LineIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_150

    .line 251
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/hls/HlsPlaylistParser$LineIterator;->next()Ljava/lang/String;

    move-result-object v3

    .line 252
    .local v3, "line":Ljava/lang/String;
    const-string v2, "#EXT-X-TARGETDURATION"

    invoke-virtual {v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_39

    .line 253
    sget-object v2, Lcom/google/android/exoplayer/hls/HlsPlaylistParser;->TARGET_DURATION_REGEX:Ljava/util/regex/Pattern;

    const-string v16, "#EXT-X-TARGETDURATION"

    move-object/from16 v0, v16

    invoke-static {v3, v2, v0}, Lcom/google/android/exoplayer/hls/HlsParserUtil;->parseIntAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;)I

    move-result v19

    goto :goto_1c

    .line 255
    :cond_39
    const-string v2, "#EXT-X-MEDIA-SEQUENCE"

    invoke-virtual {v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4e

    .line 256
    sget-object v2, Lcom/google/android/exoplayer/hls/HlsPlaylistParser;->MEDIA_SEQUENCE_REGEX:Ljava/util/regex/Pattern;

    const-string v16, "#EXT-X-MEDIA-SEQUENCE"

    move-object/from16 v0, v16

    invoke-static {v3, v2, v0}, Lcom/google/android/exoplayer/hls/HlsParserUtil;->parseIntAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;)I

    move-result v18

    .line 257
    move/from16 v26, v18

    goto :goto_1c

    .line 258
    :cond_4e
    const-string v2, "#EXT-X-VERSION"

    invoke-virtual {v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_61

    .line 259
    sget-object v2, Lcom/google/android/exoplayer/hls/HlsPlaylistParser;->VERSION_REGEX:Ljava/util/regex/Pattern;

    const-string v16, "#EXT-X-VERSION"

    move-object/from16 v0, v16

    invoke-static {v3, v2, v0}, Lcom/google/android/exoplayer/hls/HlsParserUtil;->parseIntAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;)I

    move-result v20

    goto :goto_1c

    .line 260
    :cond_61
    const-string v2, "#EXTINF"

    invoke-virtual {v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_74

    .line 261
    sget-object v2, Lcom/google/android/exoplayer/hls/HlsPlaylistParser;->MEDIA_DURATION_REGEX:Ljava/util/regex/Pattern;

    const-string v16, "#EXTINF"

    move-object/from16 v0, v16

    invoke-static {v3, v2, v0}, Lcom/google/android/exoplayer/hls/HlsParserUtil;->parseDoubleAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;)D

    move-result-wide v4

    goto :goto_1c

    .line 263
    :cond_74
    const-string v2, "#EXT-X-KEY"

    invoke-virtual {v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a7

    .line 264
    sget-object v2, Lcom/google/android/exoplayer/hls/HlsPlaylistParser;->METHOD_ATTR_REGEX:Ljava/util/regex/Pattern;

    const-string v16, "METHOD"

    move-object/from16 v0, v16

    invoke-static {v3, v2, v0}, Lcom/google/android/exoplayer/hls/HlsParserUtil;->parseStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 265
    .local v25, "method":Ljava/lang/String;
    const-string v2, "AES-128"

    move-object/from16 v0, v25

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    .line 266
    if-eqz v9, :cond_a2

    .line 267
    sget-object v2, Lcom/google/android/exoplayer/hls/HlsPlaylistParser;->URI_ATTR_REGEX:Ljava/util/regex/Pattern;

    const-string v16, "URI"

    move-object/from16 v0, v16

    invoke-static {v3, v2, v0}, Lcom/google/android/exoplayer/hls/HlsParserUtil;->parseStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 268
    sget-object v2, Lcom/google/android/exoplayer/hls/HlsPlaylistParser;->IV_ATTR_REGEX:Ljava/util/regex/Pattern;

    invoke-static {v3, v2}, Lcom/google/android/exoplayer/hls/HlsParserUtil;->parseOptionalStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v24

    goto/16 :goto_1c

    .line 270
    :cond_a2
    const/4 v10, 0x0

    .line 271
    const/16 v24, 0x0

    goto/16 :goto_1c

    .line 273
    .end local v25    # "method":Ljava/lang/String;
    :cond_a7
    const-string v2, "#EXT-X-BYTERANGE"

    invoke-virtual {v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_da

    .line 274
    sget-object v2, Lcom/google/android/exoplayer/hls/HlsPlaylistParser;->BYTERANGE_REGEX:Ljava/util/regex/Pattern;

    const-string v16, "#EXT-X-BYTERANGE"

    move-object/from16 v0, v16

    invoke-static {v3, v2, v0}, Lcom/google/android/exoplayer/hls/HlsParserUtil;->parseStringAttr(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 275
    .local v23, "byteRange":Ljava/lang/String;
    const-string v2, "@"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v28

    .line 276
    .local v28, "splitByteRange":[Ljava/lang/String;
    const/4 v2, 0x0

    aget-object v2, v28, v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    .line 277
    move-object/from16 v0, v28

    array-length v2, v0

    const/16 v16, 0x1

    move/from16 v0, v16

    if-le v2, v0, :cond_1c

    .line 278
    const/4 v2, 0x1

    aget-object v2, v28, v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    goto/16 :goto_1c

    .line 280
    .end local v23    # "byteRange":Ljava/lang/String;
    .end local v28    # "splitByteRange":[Ljava/lang/String;
    :cond_da
    const-string v2, "#EXT-X-DISCONTINUITY-SEQUENCE"

    invoke-virtual {v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f4

    .line 281
    const/16 v2, 0x3a

    invoke-virtual {v3, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v3, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    goto/16 :goto_1c

    .line 282
    :cond_f4
    const-string v2, "#EXT-X-DISCONTINUITY"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_100

    .line 283
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1c

    .line 284
    :cond_100
    const-string v2, "#"

    invoke-virtual {v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_144

    .line 286
    if-nez v9, :cond_13a

    .line 287
    const/4 v11, 0x0

    .line 293
    .local v11, "segmentEncryptionIV":Ljava/lang/String;
    :goto_10b
    add-int/lit8 v26, v26, 0x1

    .line 294
    const-wide/16 v16, -0x1

    cmp-long v2, v14, v16

    if-nez v2, :cond_115

    .line 295
    const-wide/16 v12, 0x0

    .line 297
    :cond_115
    new-instance v2, Lcom/google/android/exoplayer/hls/HlsMediaPlaylist$Segment;

    invoke-direct/range {v2 .. v15}, Lcom/google/android/exoplayer/hls/HlsMediaPlaylist$Segment;-><init>(Ljava/lang/String;DIJZLjava/lang/String;Ljava/lang/String;JJ)V

    move-object/from16 v0, v27

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 300
    const-wide v16, 0x412e848000000000L

    mul-double v16, v16, v4

    move-wide/from16 v0, v16

    double-to-long v0, v0

    move-wide/from16 v16, v0

    add-long v7, v7, v16

    .line 301
    const-wide/16 v4, 0x0

    .line 302
    const-wide/16 v16, -0x1

    cmp-long v2, v14, v16

    if-eqz v2, :cond_136

    .line 303
    add-long/2addr v12, v14

    .line 305
    :cond_136
    const-wide/16 v14, -0x1

    .line 306
    goto/16 :goto_1c

    .line 288
    .end local v11    # "segmentEncryptionIV":Ljava/lang/String;
    :cond_13a
    if-eqz v24, :cond_13f

    .line 289
    move-object/from16 v11, v24

    .restart local v11    # "segmentEncryptionIV":Ljava/lang/String;
    goto :goto_10b

    .line 291
    .end local v11    # "segmentEncryptionIV":Ljava/lang/String;
    :cond_13f
    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    .restart local v11    # "segmentEncryptionIV":Ljava/lang/String;
    goto :goto_10b

    .line 306
    .end local v11    # "segmentEncryptionIV":Ljava/lang/String;
    :cond_144
    const-string v2, "#EXT-X-ENDLIST"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 307
    const/16 v21, 0x0

    goto/16 :goto_1c

    .line 310
    .end local v3    # "line":Ljava/lang/String;
    :cond_150
    new-instance v16, Lcom/google/android/exoplayer/hls/HlsMediaPlaylist;

    .line 311
    invoke-static/range {v27 .. v27}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v22

    move-object/from16 v17, p1

    invoke-direct/range {v16 .. v22}, Lcom/google/android/exoplayer/hls/HlsMediaPlaylist;-><init>(Ljava/lang/String;IIIZLjava/util/List;)V

    .line 310
    return-object v16
.end method


# virtual methods
.method public parse(Ljava/lang/String;Ljava/io/InputStream;)Lcom/google/android/exoplayer/hls/HlsPlaylist;
    .registers 8
    .param p1, "connectionUrl"    # Ljava/lang/String;
    .param p2, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/android/exoplayer/ParserException;
        }
    .end annotation

    .prologue
    .line 111
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 112
    .local v2, "reader":Ljava/io/BufferedReader;
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 115
    .local v0, "extraLines":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/String;>;"
    :cond_f
    :goto_f
    :try_start_f
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .local v1, "line":Ljava/lang/String;
    if-eqz v1, :cond_90

    .line 116
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 117
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_f

    .line 119
    const-string v3, "#EXT-X-STREAM-INF"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_37

    .line 120
    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 121
    new-instance v3, Lcom/google/android/exoplayer/hls/HlsPlaylistParser$LineIterator;

    invoke-direct {v3, v0, v2}, Lcom/google/android/exoplayer/hls/HlsPlaylistParser$LineIterator;-><init>(Ljava/util/Queue;Ljava/io/BufferedReader;)V

    invoke-static {v3, p1}, Lcom/google/android/exoplayer/hls/HlsPlaylistParser;->parseMasterPlaylist(Lcom/google/android/exoplayer/hls/HlsPlaylistParser$LineIterator;Ljava/lang/String;)Lcom/google/android/exoplayer/hls/HlsMasterPlaylist;
    :try_end_32
    .catchall {:try_start_f .. :try_end_32} :catchall_8b

    move-result-object v3

    .line 137
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 131
    :goto_36
    return-object v3

    .line 122
    :cond_37
    :try_start_37
    const-string v3, "#EXT-X-TARGETDURATION"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_77

    const-string v3, "#EXT-X-MEDIA-SEQUENCE"

    .line 123
    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_77

    const-string v3, "#EXTINF"

    .line 124
    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_77

    const-string v3, "#EXT-X-KEY"

    .line 125
    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_77

    const-string v3, "#EXT-X-BYTERANGE"

    .line 126
    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_77

    const-string v3, "#EXT-X-DISCONTINUITY"

    .line 127
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_77

    const-string v3, "#EXT-X-DISCONTINUITY-SEQUENCE"

    .line 128
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_77

    const-string v3, "#EXT-X-ENDLIST"

    .line 129
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_87

    .line 130
    :cond_77
    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 131
    new-instance v3, Lcom/google/android/exoplayer/hls/HlsPlaylistParser$LineIterator;

    invoke-direct {v3, v0, v2}, Lcom/google/android/exoplayer/hls/HlsPlaylistParser$LineIterator;-><init>(Ljava/util/Queue;Ljava/io/BufferedReader;)V

    invoke-static {v3, p1}, Lcom/google/android/exoplayer/hls/HlsPlaylistParser;->parseMediaPlaylist(Lcom/google/android/exoplayer/hls/HlsPlaylistParser$LineIterator;Ljava/lang/String;)Lcom/google/android/exoplayer/hls/HlsMediaPlaylist;
    :try_end_82
    .catchall {:try_start_37 .. :try_end_82} :catchall_8b

    move-result-object v3

    .line 137
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    goto :goto_36

    .line 133
    :cond_87
    :try_start_87
    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z
    :try_end_8a
    .catchall {:try_start_87 .. :try_end_8a} :catchall_8b

    goto :goto_f

    .line 137
    .end local v1    # "line":Ljava/lang/String;
    :catchall_8b
    move-exception v3

    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    throw v3

    .restart local v1    # "line":Ljava/lang/String;
    :cond_90
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 139
    new-instance v3, Lcom/google/android/exoplayer/ParserException;

    const-string v4, "Failed to parse the playlist, could not identify any tags."

    invoke-direct {v3, v4}, Lcom/google/android/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public bridge synthetic parse(Ljava/lang/String;Ljava/io/InputStream;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 38
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer/hls/HlsPlaylistParser;->parse(Ljava/lang/String;Ljava/io/InputStream;)Lcom/google/android/exoplayer/hls/HlsPlaylist;

    move-result-object v0

    return-object v0
.end method
