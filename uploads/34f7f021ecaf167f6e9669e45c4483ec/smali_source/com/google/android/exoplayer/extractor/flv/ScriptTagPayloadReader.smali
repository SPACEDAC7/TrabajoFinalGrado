.class final Lcom/google/android/exoplayer/extractor/flv/ScriptTagPayloadReader;
.super Lcom/google/android/exoplayer/extractor/flv/TagPayloadReader;
.source "ScriptTagPayloadReader.java"


# static fields
.field private static final AMF_TYPE_BOOLEAN:I = 0x1

.field private static final AMF_TYPE_DATE:I = 0xb

.field private static final AMF_TYPE_ECMA_ARRAY:I = 0x8

.field private static final AMF_TYPE_END_MARKER:I = 0x9

.field private static final AMF_TYPE_NUMBER:I = 0x0

.field private static final AMF_TYPE_OBJECT:I = 0x3

.field private static final AMF_TYPE_STRICT_ARRAY:I = 0xa

.field private static final AMF_TYPE_STRING:I = 0x2

.field private static final KEY_DURATION:Ljava/lang/String; = "duration"

.field private static final NAME_METADATA:Ljava/lang/String; = "onMetaData"


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer/extractor/TrackOutput;)V
    .registers 2
    .param p1, "output"    # Lcom/google/android/exoplayer/extractor/TrackOutput;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer/extractor/flv/TagPayloadReader;-><init>(Lcom/google/android/exoplayer/extractor/TrackOutput;)V

    .line 50
    return-void
.end method

.method private static readAmfBoolean(Lcom/google/android/exoplayer/util/ParsableByteArray;)Ljava/lang/Boolean;
    .registers 3
    .param p0, "data"    # Lcom/google/android/exoplayer/util/ParsableByteArray;

    .prologue
    const/4 v0, 0x1

    .line 100
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    if-ne v1, v0, :cond_c

    :goto_7
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private static readAmfData(Lcom/google/android/exoplayer/util/ParsableByteArray;I)Ljava/lang/Object;
    .registers 3
    .param p0, "data"    # Lcom/google/android/exoplayer/util/ParsableByteArray;
    .param p1, "type"    # I

    .prologue
    .line 191
    packed-switch p1, :pswitch_data_28

    .line 207
    :pswitch_3
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 193
    :pswitch_5
    invoke-static {p0}, Lcom/google/android/exoplayer/extractor/flv/ScriptTagPayloadReader;->readAmfDouble(Lcom/google/android/exoplayer/util/ParsableByteArray;)Ljava/lang/Double;

    move-result-object v0

    goto :goto_4

    .line 195
    :pswitch_a
    invoke-static {p0}, Lcom/google/android/exoplayer/extractor/flv/ScriptTagPayloadReader;->readAmfBoolean(Lcom/google/android/exoplayer/util/ParsableByteArray;)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_4

    .line 197
    :pswitch_f
    invoke-static {p0}, Lcom/google/android/exoplayer/extractor/flv/ScriptTagPayloadReader;->readAmfString(Lcom/google/android/exoplayer/util/ParsableByteArray;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 199
    :pswitch_14
    invoke-static {p0}, Lcom/google/android/exoplayer/extractor/flv/ScriptTagPayloadReader;->readAmfObject(Lcom/google/android/exoplayer/util/ParsableByteArray;)Ljava/util/HashMap;

    move-result-object v0

    goto :goto_4

    .line 201
    :pswitch_19
    invoke-static {p0}, Lcom/google/android/exoplayer/extractor/flv/ScriptTagPayloadReader;->readAmfEcmaArray(Lcom/google/android/exoplayer/util/ParsableByteArray;)Ljava/util/HashMap;

    move-result-object v0

    goto :goto_4

    .line 203
    :pswitch_1e
    invoke-static {p0}, Lcom/google/android/exoplayer/extractor/flv/ScriptTagPayloadReader;->readAmfStrictArray(Lcom/google/android/exoplayer/util/ParsableByteArray;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_4

    .line 205
    :pswitch_23
    invoke-static {p0}, Lcom/google/android/exoplayer/extractor/flv/ScriptTagPayloadReader;->readAmfDate(Lcom/google/android/exoplayer/util/ParsableByteArray;)Ljava/util/Date;

    move-result-object v0

    goto :goto_4

    .line 191
    :pswitch_data_28
    .packed-switch 0x0
        :pswitch_5
        :pswitch_a
        :pswitch_f
        :pswitch_14
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_19
        :pswitch_3
        :pswitch_1e
        :pswitch_23
    .end packed-switch
.end method

.method private static readAmfDate(Lcom/google/android/exoplayer/util/ParsableByteArray;)Ljava/util/Date;
    .registers 5
    .param p0, "data"    # Lcom/google/android/exoplayer/util/ParsableByteArray;

    .prologue
    .line 185
    new-instance v0, Ljava/util/Date;

    invoke-static {p0}, Lcom/google/android/exoplayer/extractor/flv/ScriptTagPayloadReader;->readAmfDouble(Lcom/google/android/exoplayer/util/ParsableByteArray;)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    double-to-long v2, v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 186
    .local v0, "date":Ljava/util/Date;
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 187
    return-object v0
.end method

.method private static readAmfDouble(Lcom/google/android/exoplayer/util/ParsableByteArray;)Ljava/lang/Double;
    .registers 3
    .param p0, "data"    # Lcom/google/android/exoplayer/util/ParsableByteArray;

    .prologue
    .line 110
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method private static readAmfEcmaArray(Lcom/google/android/exoplayer/util/ParsableByteArray;)Ljava/util/HashMap;
    .registers 7
    .param p0, "data"    # Lcom/google/android/exoplayer/util/ParsableByteArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer/util/ParsableByteArray;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 168
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v1

    .line 169
    .local v1, "count":I
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 170
    .local v0, "array":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    if-ge v2, v1, :cond_1e

    .line 171
    invoke-static {p0}, Lcom/google/android/exoplayer/extractor/flv/ScriptTagPayloadReader;->readAmfString(Lcom/google/android/exoplayer/util/ParsableByteArray;)Ljava/lang/String;

    move-result-object v3

    .line 172
    .local v3, "key":Ljava/lang/String;
    invoke-static {p0}, Lcom/google/android/exoplayer/extractor/flv/ScriptTagPayloadReader;->readAmfType(Lcom/google/android/exoplayer/util/ParsableByteArray;)I

    move-result v4

    .line 173
    .local v4, "type":I
    invoke-static {p0, v4}, Lcom/google/android/exoplayer/extractor/flv/ScriptTagPayloadReader;->readAmfData(Lcom/google/android/exoplayer/util/ParsableByteArray;I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 175
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "type":I
    :cond_1e
    return-object v0
.end method

.method private static readAmfObject(Lcom/google/android/exoplayer/util/ParsableByteArray;)Ljava/util/HashMap;
    .registers 5
    .param p0, "data"    # Lcom/google/android/exoplayer/util/ParsableByteArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer/util/ParsableByteArray;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 149
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 151
    .local v0, "array":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :goto_5
    invoke-static {p0}, Lcom/google/android/exoplayer/extractor/flv/ScriptTagPayloadReader;->readAmfString(Lcom/google/android/exoplayer/util/ParsableByteArray;)Ljava/lang/String;

    move-result-object v1

    .line 152
    .local v1, "key":Ljava/lang/String;
    invoke-static {p0}, Lcom/google/android/exoplayer/extractor/flv/ScriptTagPayloadReader;->readAmfType(Lcom/google/android/exoplayer/util/ParsableByteArray;)I

    move-result v2

    .line 153
    .local v2, "type":I
    const/16 v3, 0x9

    if-ne v2, v3, :cond_12

    .line 158
    return-object v0

    .line 156
    :cond_12
    invoke-static {p0, v2}, Lcom/google/android/exoplayer/extractor/flv/ScriptTagPayloadReader;->readAmfData(Lcom/google/android/exoplayer/util/ParsableByteArray;I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5
.end method

.method private static readAmfStrictArray(Lcom/google/android/exoplayer/util/ParsableByteArray;)Ljava/util/ArrayList;
    .registers 6
    .param p0, "data"    # Lcom/google/android/exoplayer/util/ParsableByteArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer/util/ParsableByteArray;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 133
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v0

    .line 134
    .local v0, "count":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 135
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    if-ge v1, v0, :cond_1a

    .line 136
    invoke-static {p0}, Lcom/google/android/exoplayer/extractor/flv/ScriptTagPayloadReader;->readAmfType(Lcom/google/android/exoplayer/util/ParsableByteArray;)I

    move-result v3

    .line 137
    .local v3, "type":I
    invoke-static {p0, v3}, Lcom/google/android/exoplayer/extractor/flv/ScriptTagPayloadReader;->readAmfData(Lcom/google/android/exoplayer/util/ParsableByteArray;I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 139
    .end local v3    # "type":I
    :cond_1a
    return-object v2
.end method

.method private static readAmfString(Lcom/google/android/exoplayer/util/ParsableByteArray;)Ljava/lang/String;
    .registers 5
    .param p0, "data"    # Lcom/google/android/exoplayer/util/ParsableByteArray;

    .prologue
    .line 120
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedShort()I

    move-result v1

    .line 121
    .local v1, "size":I
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->getPosition()I

    move-result v0

    .line 122
    .local v0, "position":I
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 123
    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    invoke-direct {v2, v3, v0, v1}, Ljava/lang/String;-><init>([BII)V

    return-object v2
.end method

.method private static readAmfType(Lcom/google/android/exoplayer/util/ParsableByteArray;)I
    .registers 2
    .param p0, "data"    # Lcom/google/android/exoplayer/util/ParsableByteArray;

    .prologue
    .line 90
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    return v0
.end method


# virtual methods
.method protected parseHeader(Lcom/google/android/exoplayer/util/ParsableByteArray;)Z
    .registers 3
    .param p1, "data"    # Lcom/google/android/exoplayer/util/ParsableByteArray;

    .prologue
    .line 59
    const/4 v0, 0x1

    return v0
.end method

.method protected parsePayload(Lcom/google/android/exoplayer/util/ParsableByteArray;J)V
    .registers 12
    .param p1, "data"    # Lcom/google/android/exoplayer/util/ParsableByteArray;
    .param p2, "timeUs"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ParserException;
        }
    .end annotation

    .prologue
    .line 64
    invoke-static {p1}, Lcom/google/android/exoplayer/extractor/flv/ScriptTagPayloadReader;->readAmfType(Lcom/google/android/exoplayer/util/ParsableByteArray;)I

    move-result v4

    .line 65
    .local v4, "nameType":I
    const/4 v6, 0x2

    if-eq v4, v6, :cond_d

    .line 67
    new-instance v6, Lcom/google/android/exoplayer/ParserException;

    invoke-direct {v6}, Lcom/google/android/exoplayer/ParserException;-><init>()V

    throw v6

    .line 69
    :cond_d
    invoke-static {p1}, Lcom/google/android/exoplayer/extractor/flv/ScriptTagPayloadReader;->readAmfString(Lcom/google/android/exoplayer/util/ParsableByteArray;)Ljava/lang/String;

    move-result-object v3

    .line 70
    .local v3, "name":Ljava/lang/String;
    const-string v6, "onMetaData"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1a

    .line 87
    :cond_19
    :goto_19
    return-void

    .line 74
    :cond_1a
    invoke-static {p1}, Lcom/google/android/exoplayer/extractor/flv/ScriptTagPayloadReader;->readAmfType(Lcom/google/android/exoplayer/util/ParsableByteArray;)I

    move-result v5

    .line 75
    .local v5, "type":I
    const/16 v6, 0x8

    if-eq v5, v6, :cond_28

    .line 77
    new-instance v6, Lcom/google/android/exoplayer/ParserException;

    invoke-direct {v6}, Lcom/google/android/exoplayer/ParserException;-><init>()V

    throw v6

    .line 80
    :cond_28
    invoke-static {p1}, Lcom/google/android/exoplayer/extractor/flv/ScriptTagPayloadReader;->readAmfEcmaArray(Lcom/google/android/exoplayer/util/ParsableByteArray;)Ljava/util/HashMap;

    move-result-object v2

    .line 81
    .local v2, "metadata":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v6, "duration"

    invoke-interface {v2, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_19

    .line 82
    const-string v6, "duration"

    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Double;

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    .line 83
    .local v0, "durationSeconds":D
    const-wide/16 v6, 0x0

    cmpl-double v6, v0, v6

    if-lez v6, :cond_19

    .line 84
    const-wide v6, 0x412e848000000000L

    mul-double/2addr v6, v0

    double-to-long v6, v6

    invoke-virtual {p0, v6, v7}, Lcom/google/android/exoplayer/extractor/flv/ScriptTagPayloadReader;->setDurationUs(J)V

    goto :goto_19
.end method

.method public seek()V
    .registers 1

    .prologue
    .line 55
    return-void
.end method
