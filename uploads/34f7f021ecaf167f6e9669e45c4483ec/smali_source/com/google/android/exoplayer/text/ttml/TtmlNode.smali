.class final Lcom/google/android/exoplayer/text/ttml/TtmlNode;
.super Ljava/lang/Object;
.source "TtmlNode.java"


# static fields
.field public static final ANONYMOUS_REGION_ID:Ljava/lang/String; = ""

.field public static final ATTR_ID:Ljava/lang/String; = "id"

.field public static final ATTR_TTS_BACKGROUND_COLOR:Ljava/lang/String; = "backgroundColor"

.field public static final ATTR_TTS_COLOR:Ljava/lang/String; = "color"

.field public static final ATTR_TTS_EXTENT:Ljava/lang/String; = "extent"

.field public static final ATTR_TTS_FONT_FAMILY:Ljava/lang/String; = "fontFamily"

.field public static final ATTR_TTS_FONT_SIZE:Ljava/lang/String; = "fontSize"

.field public static final ATTR_TTS_FONT_STYLE:Ljava/lang/String; = "fontStyle"

.field public static final ATTR_TTS_FONT_WEIGHT:Ljava/lang/String; = "fontWeight"

.field public static final ATTR_TTS_ORIGIN:Ljava/lang/String; = "origin"

.field public static final ATTR_TTS_TEXT_ALIGN:Ljava/lang/String; = "textAlign"

.field public static final ATTR_TTS_TEXT_DECORATION:Ljava/lang/String; = "textDecoration"

.field public static final BOLD:Ljava/lang/String; = "bold"

.field public static final CENTER:Ljava/lang/String; = "center"

.field public static final END:Ljava/lang/String; = "end"

.field public static final ITALIC:Ljava/lang/String; = "italic"

.field public static final LEFT:Ljava/lang/String; = "left"

.field public static final LINETHROUGH:Ljava/lang/String; = "linethrough"

.field public static final NO_LINETHROUGH:Ljava/lang/String; = "nolinethrough"

.field public static final NO_UNDERLINE:Ljava/lang/String; = "nounderline"

.field public static final RIGHT:Ljava/lang/String; = "right"

.field public static final START:Ljava/lang/String; = "start"

.field public static final TAG_BODY:Ljava/lang/String; = "body"

.field public static final TAG_BR:Ljava/lang/String; = "br"

.field public static final TAG_DIV:Ljava/lang/String; = "div"

.field public static final TAG_HEAD:Ljava/lang/String; = "head"

.field public static final TAG_LAYOUT:Ljava/lang/String; = "layout"

.field public static final TAG_METADATA:Ljava/lang/String; = "metadata"

.field public static final TAG_P:Ljava/lang/String; = "p"

.field public static final TAG_REGION:Ljava/lang/String; = "region"

.field public static final TAG_SMPTE_DATA:Ljava/lang/String; = "smpte:data"

.field public static final TAG_SMPTE_IMAGE:Ljava/lang/String; = "smpte:image"

.field public static final TAG_SMPTE_INFORMATION:Ljava/lang/String; = "smpte:information"

.field public static final TAG_SPAN:Ljava/lang/String; = "span"

.field public static final TAG_STYLE:Ljava/lang/String; = "style"

.field public static final TAG_STYLING:Ljava/lang/String; = "styling"

.field public static final TAG_TT:Ljava/lang/String; = "tt"

.field public static final UNDEFINED_TIME:J = -0x1L

.field public static final UNDERLINE:Ljava/lang/String; = "underline"


# instance fields
.field private children:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer/text/ttml/TtmlNode;",
            ">;"
        }
    .end annotation
.end field

.field public final endTimeUs:J

.field public final isTextNode:Z

.field private final nodeEndsByRegion:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final nodeStartsByRegion:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final regionId:Ljava/lang/String;

.field public final startTimeUs:J

.field public final style:Lcom/google/android/exoplayer/text/ttml/TtmlStyle;

.field private final styleIds:[Ljava/lang/String;

.field public final tag:Ljava/lang/String;

.field public final text:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;JJLcom/google/android/exoplayer/text/ttml/TtmlStyle;[Ljava/lang/String;Ljava/lang/String;)V
    .registers 11
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "startTimeUs"    # J
    .param p5, "endTimeUs"    # J
    .param p7, "style"    # Lcom/google/android/exoplayer/text/ttml/TtmlStyle;
    .param p8, "styleIds"    # [Ljava/lang/String;
    .param p9, "regionId"    # Ljava/lang/String;

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput-object p1, p0, Lcom/google/android/exoplayer/text/ttml/TtmlNode;->tag:Ljava/lang/String;

    .line 104
    iput-object p2, p0, Lcom/google/android/exoplayer/text/ttml/TtmlNode;->text:Ljava/lang/String;

    .line 105
    iput-object p7, p0, Lcom/google/android/exoplayer/text/ttml/TtmlNode;->style:Lcom/google/android/exoplayer/text/ttml/TtmlStyle;

    .line 106
    iput-object p8, p0, Lcom/google/android/exoplayer/text/ttml/TtmlNode;->styleIds:[Ljava/lang/String;

    .line 107
    if-eqz p2, :cond_2b

    const/4 v0, 0x1

    :goto_e
    iput-boolean v0, p0, Lcom/google/android/exoplayer/text/ttml/TtmlNode;->isTextNode:Z

    .line 108
    iput-wide p3, p0, Lcom/google/android/exoplayer/text/ttml/TtmlNode;->startTimeUs:J

    .line 109
    iput-wide p5, p0, Lcom/google/android/exoplayer/text/ttml/TtmlNode;->endTimeUs:J

    .line 110
    invoke-static {p9}, Lcom/google/android/exoplayer/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/exoplayer/text/ttml/TtmlNode;->regionId:Ljava/lang/String;

    .line 111
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer/text/ttml/TtmlNode;->nodeStartsByRegion:Ljava/util/HashMap;

    .line 112
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer/text/ttml/TtmlNode;->nodeEndsByRegion:Ljava/util/HashMap;

    .line 113
    return-void

    .line 107
    :cond_2b
    const/4 v0, 0x0

    goto :goto_e
.end method

.method private applyStyleToOutput(Ljava/util/Map;Landroid/text/SpannableStringBuilder;II)V
    .registers 8
    .param p2, "regionOutput"    # Landroid/text/SpannableStringBuilder;
    .param p3, "start"    # I
    .param p4, "end"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer/text/ttml/TtmlStyle;",
            ">;",
            "Landroid/text/SpannableStringBuilder;",
            "II)V"
        }
    .end annotation

    .prologue
    .line 241
    .local p1, "globalStyles":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/google/android/exoplayer/text/ttml/TtmlStyle;>;"
    if-eq p3, p4, :cond_f

    .line 242
    iget-object v1, p0, Lcom/google/android/exoplayer/text/ttml/TtmlNode;->style:Lcom/google/android/exoplayer/text/ttml/TtmlStyle;

    iget-object v2, p0, Lcom/google/android/exoplayer/text/ttml/TtmlNode;->styleIds:[Ljava/lang/String;

    invoke-static {v1, v2, p1}, Lcom/google/android/exoplayer/text/ttml/TtmlRenderUtil;->resolveStyle(Lcom/google/android/exoplayer/text/ttml/TtmlStyle;[Ljava/lang/String;Ljava/util/Map;)Lcom/google/android/exoplayer/text/ttml/TtmlStyle;

    move-result-object v0

    .line 243
    .local v0, "resolvedStyle":Lcom/google/android/exoplayer/text/ttml/TtmlStyle;
    if-eqz v0, :cond_f

    .line 244
    invoke-static {p2, p3, p4, v0}, Lcom/google/android/exoplayer/text/ttml/TtmlRenderUtil;->applyStylesToSpan(Landroid/text/SpannableStringBuilder;IILcom/google/android/exoplayer/text/ttml/TtmlStyle;)V

    .line 247
    .end local v0    # "resolvedStyle":Lcom/google/android/exoplayer/text/ttml/TtmlStyle;
    :cond_f
    return-void
.end method

.method public static buildNode(Ljava/lang/String;JJLcom/google/android/exoplayer/text/ttml/TtmlStyle;[Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/exoplayer/text/ttml/TtmlNode;
    .registers 19
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "startTimeUs"    # J
    .param p3, "endTimeUs"    # J
    .param p5, "style"    # Lcom/google/android/exoplayer/text/ttml/TtmlStyle;
    .param p6, "styleIds"    # [Ljava/lang/String;
    .param p7, "regionId"    # Ljava/lang/String;

    .prologue
    .line 98
    new-instance v1, Lcom/google/android/exoplayer/text/ttml/TtmlNode;

    const/4 v3, 0x0

    move-object v2, p0

    move-wide v4, p1

    move-wide v6, p3

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    invoke-direct/range {v1 .. v10}, Lcom/google/android/exoplayer/text/ttml/TtmlNode;-><init>(Ljava/lang/String;Ljava/lang/String;JJLcom/google/android/exoplayer/text/ttml/TtmlStyle;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public static buildTextNode(Ljava/lang/String;)Lcom/google/android/exoplayer/text/ttml/TtmlNode;
    .registers 12
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    const-wide/16 v4, -0x1

    const/4 v2, 0x0

    .line 92
    new-instance v1, Lcom/google/android/exoplayer/text/ttml/TtmlNode;

    invoke-static {p0}, Lcom/google/android/exoplayer/text/ttml/TtmlRenderUtil;->applyTextElementSpacePolicy(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v10, ""

    move-wide v6, v4

    move-object v8, v2

    move-object v9, v2

    invoke-direct/range {v1 .. v10}, Lcom/google/android/exoplayer/text/ttml/TtmlNode;-><init>(Ljava/lang/String;Ljava/lang/String;JJLcom/google/android/exoplayer/text/ttml/TtmlStyle;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method private cleanUpText(Landroid/text/SpannableStringBuilder;)Landroid/text/SpannableStringBuilder;
    .registers 10
    .param p1, "builder"    # Landroid/text/SpannableStringBuilder;

    .prologue
    const/4 v5, 0x0

    const/16 v7, 0xa

    const/16 v6, 0x20

    .line 252
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    .line 253
    .local v0, "builderLength":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    if-ge v1, v0, :cond_32

    .line 254
    invoke-virtual {p1, v1}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v4

    if-ne v4, v6, :cond_2f

    .line 255
    add-int/lit8 v2, v1, 0x1

    .line 256
    .local v2, "j":I
    :goto_14
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    if-ge v2, v4, :cond_23

    invoke-virtual {p1, v2}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v4

    if-ne v4, v6, :cond_23

    .line 257
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 259
    :cond_23
    add-int/lit8 v4, v1, 0x1

    sub-int v3, v2, v4

    .line 260
    .local v3, "spacesToDelete":I
    if-lez v3, :cond_2f

    .line 261
    add-int v4, v1, v3

    invoke-virtual {p1, v1, v4}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 262
    sub-int/2addr v0, v3

    .line 253
    .end local v2    # "j":I
    .end local v3    # "spacesToDelete":I
    :cond_2f
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 267
    :cond_32
    if-lez v0, :cond_40

    invoke-virtual {p1, v5}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v4

    if-ne v4, v6, :cond_40

    .line 268
    const/4 v4, 0x1

    invoke-virtual {p1, v5, v4}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 269
    add-int/lit8 v0, v0, -0x1

    .line 271
    :cond_40
    const/4 v1, 0x0

    :goto_41
    add-int/lit8 v4, v0, -0x1

    if-ge v1, v4, :cond_5f

    .line 272
    invoke-virtual {p1, v1}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v4

    if-ne v4, v7, :cond_5c

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p1, v4}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v4

    if-ne v4, v6, :cond_5c

    .line 273
    add-int/lit8 v4, v1, 0x1

    add-int/lit8 v5, v1, 0x2

    invoke-virtual {p1, v4, v5}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 274
    add-int/lit8 v0, v0, -0x1

    .line 271
    :cond_5c
    add-int/lit8 v1, v1, 0x1

    goto :goto_41

    .line 278
    :cond_5f
    if-lez v0, :cond_70

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {p1, v4}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v4

    if-ne v4, v6, :cond_70

    .line 279
    add-int/lit8 v4, v0, -0x1

    invoke-virtual {p1, v4, v0}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 280
    add-int/lit8 v0, v0, -0x1

    .line 282
    :cond_70
    const/4 v1, 0x0

    :goto_71
    add-int/lit8 v4, v0, -0x1

    if-ge v1, v4, :cond_8d

    .line 283
    invoke-virtual {p1, v1}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v4

    if-ne v4, v6, :cond_8a

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p1, v4}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v4

    if-ne v4, v7, :cond_8a

    .line 284
    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p1, v1, v4}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 285
    add-int/lit8 v0, v0, -0x1

    .line 282
    :cond_8a
    add-int/lit8 v1, v1, 0x1

    goto :goto_71

    .line 289
    :cond_8d
    if-lez v0, :cond_9c

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {p1, v4}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v4

    if-ne v4, v7, :cond_9c

    .line 290
    add-int/lit8 v4, v0, -0x1

    invoke-virtual {p1, v4, v0}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 293
    :cond_9c
    return-object p1
.end method

.method private getEventTimes(Ljava/util/TreeSet;Z)V
    .registers 9
    .param p2, "descendsPNode"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeSet",
            "<",
            "Ljava/lang/Long;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .local p1, "out":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Long;>;"
    const-wide/16 v4, -0x1

    .line 152
    const-string v2, "p"

    iget-object v3, p0, Lcom/google/android/exoplayer/text/ttml/TtmlNode;->tag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 153
    .local v1, "isPNode":Z
    if-nez p2, :cond_e

    if-eqz v1, :cond_2c

    .line 154
    :cond_e
    iget-wide v2, p0, Lcom/google/android/exoplayer/text/ttml/TtmlNode;->startTimeUs:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1d

    .line 155
    iget-wide v2, p0, Lcom/google/android/exoplayer/text/ttml/TtmlNode;->startTimeUs:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 157
    :cond_1d
    iget-wide v2, p0, Lcom/google/android/exoplayer/text/ttml/TtmlNode;->endTimeUs:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2c

    .line 158
    iget-wide v2, p0, Lcom/google/android/exoplayer/text/ttml/TtmlNode;->endTimeUs:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 161
    :cond_2c
    iget-object v2, p0, Lcom/google/android/exoplayer/text/ttml/TtmlNode;->children:Ljava/util/List;

    if-nez v2, :cond_31

    .line 167
    :cond_30
    return-void

    .line 164
    :cond_31
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_32
    iget-object v2, p0, Lcom/google/android/exoplayer/text/ttml/TtmlNode;->children:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_30

    .line 165
    iget-object v2, p0, Lcom/google/android/exoplayer/text/ttml/TtmlNode;->children:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer/text/ttml/TtmlNode;

    if-nez p2, :cond_46

    if-eqz v1, :cond_4d

    :cond_46
    const/4 v3, 0x1

    :goto_47
    invoke-direct {v2, p1, v3}, Lcom/google/android/exoplayer/text/ttml/TtmlNode;->getEventTimes(Ljava/util/TreeSet;Z)V

    .line 164
    add-int/lit8 v0, v0, 0x1

    goto :goto_32

    .line 165
    :cond_4d
    const/4 v3, 0x0

    goto :goto_47
.end method

.method private static getRegionOutput(Ljava/lang/String;Ljava/util/Map;)Landroid/text/SpannableStringBuilder;
    .registers 3
    .param p0, "resolvedRegionId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/text/SpannableStringBuilder;",
            ">;)",
            "Landroid/text/SpannableStringBuilder;"
        }
    .end annotation

    .prologue
    .line 221
    .local p1, "regionOutputs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/text/SpannableStringBuilder;>;"
    invoke-interface {p1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 222
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    invoke-interface {p1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    :cond_e
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/SpannableStringBuilder;

    return-object v0
.end method

.method private traverseForStyle(Ljava/util/Map;Ljava/util/Map;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer/text/ttml/TtmlStyle;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/text/SpannableStringBuilder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 229
    .local p1, "globalStyles":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/google/android/exoplayer/text/ttml/TtmlStyle;>;"
    .local p2, "regionOutputs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/text/SpannableStringBuilder;>;"
    iget-object v4, p0, Lcom/google/android/exoplayer/text/ttml/TtmlNode;->nodeEndsByRegion:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_56

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 230
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 231
    .local v2, "regionId":Ljava/lang/String;
    iget-object v4, p0, Lcom/google/android/exoplayer/text/ttml/TtmlNode;->nodeStartsByRegion:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_54

    iget-object v4, p0, Lcom/google/android/exoplayer/text/ttml/TtmlNode;->nodeStartsByRegion:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 232
    .local v3, "start":I
    :goto_30
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/text/SpannableStringBuilder;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {p0, p1, v4, v3, v5}, Lcom/google/android/exoplayer/text/ttml/TtmlNode;->applyStyleToOutput(Ljava/util/Map;Landroid/text/SpannableStringBuilder;II)V

    .line 233
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_44
    invoke-virtual {p0}, Lcom/google/android/exoplayer/text/ttml/TtmlNode;->getChildCount()I

    move-result v4

    if-ge v1, v4, :cond_a

    .line 234
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer/text/ttml/TtmlNode;->getChild(I)Lcom/google/android/exoplayer/text/ttml/TtmlNode;

    move-result-object v4

    invoke-direct {v4, p1, p2}, Lcom/google/android/exoplayer/text/ttml/TtmlNode;->traverseForStyle(Ljava/util/Map;Ljava/util/Map;)V

    .line 233
    add-int/lit8 v1, v1, 0x1

    goto :goto_44

    .line 231
    .end local v1    # "i":I
    .end local v3    # "start":I
    :cond_54
    const/4 v3, 0x0

    goto :goto_30

    .line 237
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v2    # "regionId":Ljava/lang/String;
    :cond_56
    return-void
.end method

.method private traverseForText(JZLjava/lang/String;Ljava/util/Map;)V
    .registers 15
    .param p1, "timeUs"    # J
    .param p3, "descendsPNode"    # Z
    .param p4, "inheritedRegion"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JZ",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/text/SpannableStringBuilder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 189
    .local p5, "regionOutputs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/text/SpannableStringBuilder;>;"
    iget-object v1, p0, Lcom/google/android/exoplayer/text/ttml/TtmlNode;->nodeStartsByRegion:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 190
    iget-object v1, p0, Lcom/google/android/exoplayer/text/ttml/TtmlNode;->nodeEndsByRegion:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 191
    iget-object v5, p0, Lcom/google/android/exoplayer/text/ttml/TtmlNode;->regionId:Ljava/lang/String;

    .line 192
    .local v5, "resolvedRegionId":Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 193
    move-object v5, p4

    .line 195
    :cond_15
    iget-boolean v1, p0, Lcom/google/android/exoplayer/text/ttml/TtmlNode;->isTextNode:Z

    if-eqz v1, :cond_25

    if-eqz p3, :cond_25

    .line 196
    invoke-static {v5, p5}, Lcom/google/android/exoplayer/text/ttml/TtmlNode;->getRegionOutput(Ljava/lang/String;Ljava/util/Map;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer/text/ttml/TtmlNode;->text:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 217
    :cond_24
    :goto_24
    return-void

    .line 197
    :cond_25
    const-string v1, "br"

    iget-object v2, p0, Lcom/google/android/exoplayer/text/ttml/TtmlNode;->tag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3b

    if-eqz p3, :cond_3b

    .line 198
    invoke-static {v5, p5}, Lcom/google/android/exoplayer/text/ttml/TtmlNode;->getRegionOutput(Ljava/lang/String;Ljava/util/Map;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    goto :goto_24

    .line 199
    :cond_3b
    const-string v1, "metadata"

    iget-object v2, p0, Lcom/google/android/exoplayer/text/ttml/TtmlNode;->tag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_24

    .line 201
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer/text/ttml/TtmlNode;->isActive(J)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 202
    const-string v1, "p"

    iget-object v2, p0, Lcom/google/android/exoplayer/text/ttml/TtmlNode;->tag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    .line 203
    .local v8, "isPNode":Z
    invoke-interface {p5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 204
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/text/SpannableStringBuilder;>;"
    iget-object v3, p0, Lcom/google/android/exoplayer/text/ttml/TtmlNode;->nodeStartsByRegion:Ljava/util/HashMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5b

    .line 206
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/text/SpannableStringBuilder;>;"
    :cond_7f
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_80
    invoke-virtual {p0}, Lcom/google/android/exoplayer/text/ttml/TtmlNode;->getChildCount()I

    move-result v1

    if-ge v7, v1, :cond_99

    .line 207
    invoke-virtual {p0, v7}, Lcom/google/android/exoplayer/text/ttml/TtmlNode;->getChild(I)Lcom/google/android/exoplayer/text/ttml/TtmlNode;

    move-result-object v1

    if-nez p3, :cond_8e

    if-eqz v8, :cond_97

    :cond_8e
    const/4 v4, 0x1

    :goto_8f
    move-wide v2, p1

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/google/android/exoplayer/text/ttml/TtmlNode;->traverseForText(JZLjava/lang/String;Ljava/util/Map;)V

    .line 206
    add-int/lit8 v7, v7, 0x1

    goto :goto_80

    .line 207
    :cond_97
    const/4 v4, 0x0

    goto :goto_8f

    .line 210
    :cond_99
    if-eqz v8, :cond_a2

    .line 211
    invoke-static {v5, p5}, Lcom/google/android/exoplayer/text/ttml/TtmlNode;->getRegionOutput(Ljava/lang/String;Ljava/util/Map;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/exoplayer/text/ttml/TtmlRenderUtil;->endParagraph(Landroid/text/SpannableStringBuilder;)V

    .line 213
    :cond_a2
    invoke-interface {p5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_aa
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 214
    .restart local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/text/SpannableStringBuilder;>;"
    iget-object v3, p0, Lcom/google/android/exoplayer/text/ttml/TtmlNode;->nodeEndsByRegion:Ljava/util/HashMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_aa
.end method


# virtual methods
.method public addChild(Lcom/google/android/exoplayer/text/ttml/TtmlNode;)V
    .registers 3
    .param p1, "child"    # Lcom/google/android/exoplayer/text/ttml/TtmlNode;

    .prologue
    .line 123
    iget-object v0, p0, Lcom/google/android/exoplayer/text/ttml/TtmlNode;->children:Ljava/util/List;

    if-nez v0, :cond_b

    .line 124
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer/text/ttml/TtmlNode;->children:Ljava/util/List;

    .line 126
    :cond_b
    iget-object v0, p0, Lcom/google/android/exoplayer/text/ttml/TtmlNode;->children:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    return-void
.end method

.method public getChild(I)Lcom/google/android/exoplayer/text/ttml/TtmlNode;
    .registers 3
    .param p1, "index"    # I

    .prologue
    .line 130
    iget-object v0, p0, Lcom/google/android/exoplayer/text/ttml/TtmlNode;->children:Ljava/util/List;

    if-nez v0, :cond_a

    .line 131
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 133
    :cond_a
    iget-object v0, p0, Lcom/google/android/exoplayer/text/ttml/TtmlNode;->children:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/text/ttml/TtmlNode;

    return-object v0
.end method

.method public getChildCount()I
    .registers 2

    .prologue
    .line 137
    iget-object v0, p0, Lcom/google/android/exoplayer/text/ttml/TtmlNode;->children:Ljava/util/List;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/google/android/exoplayer/text/ttml/TtmlNode;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_5
.end method

.method public getCues(JLjava/util/Map;Ljava/util/Map;)Ljava/util/List;
    .registers 26
    .param p1, "timeUs"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer/text/ttml/TtmlStyle;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer/text/ttml/TtmlRegion;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer/text/Cue;",
            ">;"
        }
    .end annotation

    .prologue
    .line 175
    .local p3, "globalStyles":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/google/android/exoplayer/text/ttml/TtmlStyle;>;"
    .local p4, "regionMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/google/android/exoplayer/text/ttml/TtmlRegion;>;"
    new-instance v8, Ljava/util/TreeMap;

    invoke-direct {v8}, Ljava/util/TreeMap;-><init>()V

    .line 176
    .local v8, "regionOutputs":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Landroid/text/SpannableStringBuilder;>;"
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/exoplayer/text/ttml/TtmlNode;->regionId:Ljava/lang/String;

    move-object/from16 v3, p0

    move-wide/from16 v4, p1

    invoke-direct/range {v3 .. v8}, Lcom/google/android/exoplayer/text/ttml/TtmlNode;->traverseForText(JZLjava/lang/String;Ljava/util/Map;)V

    .line 177
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1, v8}, Lcom/google/android/exoplayer/text/ttml/TtmlNode;->traverseForStyle(Ljava/util/Map;Ljava/util/Map;)V

    .line 178
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 179
    .local v2, "cues":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer/text/Cue;>;"
    invoke-virtual {v8}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_25
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_69

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/Map$Entry;

    .line 180
    .local v18, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/text/SpannableStringBuilder;>;"
    invoke-interface/range {v18 .. v18}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/google/android/exoplayer/text/ttml/TtmlRegion;

    .line 181
    .local v19, "region":Lcom/google/android/exoplayer/text/ttml/TtmlRegion;
    new-instance v9, Lcom/google/android/exoplayer/text/Cue;

    invoke-interface/range {v18 .. v18}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/text/SpannableStringBuilder;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/google/android/exoplayer/text/ttml/TtmlNode;->cleanUpText(Landroid/text/SpannableStringBuilder;)Landroid/text/SpannableStringBuilder;

    move-result-object v10

    const/4 v11, 0x0

    move-object/from16 v0, v19

    iget v12, v0, Lcom/google/android/exoplayer/text/ttml/TtmlRegion;->line:F

    move-object/from16 v0, v19

    iget v13, v0, Lcom/google/android/exoplayer/text/ttml/TtmlRegion;->lineType:I

    const/high16 v14, -0x80000000

    move-object/from16 v0, v19

    iget v15, v0, Lcom/google/android/exoplayer/text/ttml/TtmlRegion;->position:F

    const/high16 v16, -0x80000000

    move-object/from16 v0, v19

    iget v0, v0, Lcom/google/android/exoplayer/text/ttml/TtmlRegion;->width:F

    move/from16 v17, v0

    invoke-direct/range {v9 .. v17}, Lcom/google/android/exoplayer/text/Cue;-><init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;FIIFIF)V

    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_25

    .line 184
    .end local v18    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/text/SpannableStringBuilder;>;"
    .end local v19    # "region":Lcom/google/android/exoplayer/text/ttml/TtmlRegion;
    :cond_69
    return-object v2
.end method

.method public getEventTimesUs()[J
    .registers 9

    .prologue
    .line 141
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    .line 142
    .local v0, "eventTimeSet":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Long;>;"
    const/4 v6, 0x0

    invoke-direct {p0, v0, v6}, Lcom/google/android/exoplayer/text/ttml/TtmlNode;->getEventTimes(Ljava/util/TreeSet;Z)V

    .line 143
    invoke-virtual {v0}, Ljava/util/TreeSet;->size()I

    move-result v6

    new-array v1, v6, [J

    .line 144
    .local v1, "eventTimes":[J
    const/4 v4, 0x0

    .line 145
    .local v4, "i":I
    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_14
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2a

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 146
    .local v2, "eventTimeUs":J
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "i":I
    .local v5, "i":I
    aput-wide v2, v1, v4

    move v4, v5

    .line 147
    .end local v5    # "i":I
    .restart local v4    # "i":I
    goto :goto_14

    .line 148
    .end local v2    # "eventTimeUs":J
    :cond_2a
    return-object v1
.end method

.method public getStyleIds()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 170
    iget-object v0, p0, Lcom/google/android/exoplayer/text/ttml/TtmlNode;->styleIds:[Ljava/lang/String;

    return-object v0
.end method

.method public isActive(J)Z
    .registers 8
    .param p1, "timeUs"    # J

    .prologue
    const-wide/16 v2, -0x1

    .line 116
    iget-wide v0, p0, Lcom/google/android/exoplayer/text/ttml/TtmlNode;->startTimeUs:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_e

    iget-wide v0, p0, Lcom/google/android/exoplayer/text/ttml/TtmlNode;->endTimeUs:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_32

    :cond_e
    iget-wide v0, p0, Lcom/google/android/exoplayer/text/ttml/TtmlNode;->startTimeUs:J

    cmp-long v0, v0, p1

    if-gtz v0, :cond_1a

    iget-wide v0, p0, Lcom/google/android/exoplayer/text/ttml/TtmlNode;->endTimeUs:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_32

    :cond_1a
    iget-wide v0, p0, Lcom/google/android/exoplayer/text/ttml/TtmlNode;->startTimeUs:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_26

    iget-wide v0, p0, Lcom/google/android/exoplayer/text/ttml/TtmlNode;->endTimeUs:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_32

    :cond_26
    iget-wide v0, p0, Lcom/google/android/exoplayer/text/ttml/TtmlNode;->startTimeUs:J

    cmp-long v0, v0, p1

    if-gtz v0, :cond_34

    iget-wide v0, p0, Lcom/google/android/exoplayer/text/ttml/TtmlNode;->endTimeUs:J

    cmp-long v0, p1, v0

    if-gez v0, :cond_34

    :cond_32
    const/4 v0, 0x1

    :goto_33
    return v0

    :cond_34
    const/4 v0, 0x0

    goto :goto_33
.end method
