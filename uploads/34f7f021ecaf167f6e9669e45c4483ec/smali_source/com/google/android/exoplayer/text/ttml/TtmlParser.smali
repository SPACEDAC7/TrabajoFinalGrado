.class public final Lcom/google/android/exoplayer/text/ttml/TtmlParser;
.super Ljava/lang/Object;
.source "TtmlParser.java"

# interfaces
.implements Lcom/google/android/exoplayer/text/SubtitleParser;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer/text/ttml/TtmlParser$FrameAndTickRate;
    }
.end annotation


# static fields
.field private static final ATTR_BEGIN:Ljava/lang/String; = "begin"

.field private static final ATTR_DURATION:Ljava/lang/String; = "dur"

.field private static final ATTR_END:Ljava/lang/String; = "end"

.field private static final ATTR_REGION:Ljava/lang/String; = "region"

.field private static final ATTR_STYLE:Ljava/lang/String; = "style"

.field private static final CLOCK_TIME:Ljava/util/regex/Pattern;

.field private static final DEFAULT_FRAME_AND_TICK_RATE:Lcom/google/android/exoplayer/text/ttml/TtmlParser$FrameAndTickRate;

.field private static final DEFAULT_FRAME_RATE:I = 0x1e

.field private static final FONT_SIZE:Ljava/util/regex/Pattern;

.field private static final OFFSET_TIME:Ljava/util/regex/Pattern;

.field private static final PERCENTAGE_COORDINATES:Ljava/util/regex/Pattern;

.field private static final TAG:Ljava/lang/String; = "TtmlParser"

.field private static final TTP:Ljava/lang/String; = "http://www.w3.org/ns/ttml#parameter"


# instance fields
.field private final xmlParserFactory:Lorg/xmlpull/v1/XmlPullParserFactory;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x1

    .line 71
    const-string v0, "^([0-9][0-9]+):([0-9][0-9]):([0-9][0-9])(?:(\\.[0-9]+)|:([0-9][0-9])(?:\\.([0-9]+))?)?$"

    .line 72
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer/text/ttml/TtmlParser;->CLOCK_TIME:Ljava/util/regex/Pattern;

    .line 74
    const-string v0, "^([0-9]+(?:\\.[0-9]+)?)(h|m|s|ms|f|t)$"

    .line 75
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer/text/ttml/TtmlParser;->OFFSET_TIME:Ljava/util/regex/Pattern;

    .line 76
    const-string v0, "^(([0-9]*.)?[0-9]+)(px|em|%)$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer/text/ttml/TtmlParser;->FONT_SIZE:Ljava/util/regex/Pattern;

    .line 77
    const-string v0, "^(\\d+\\.?\\d*?)% (\\d+\\.?\\d*?)%$"

    .line 78
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer/text/ttml/TtmlParser;->PERCENTAGE_COORDINATES:Ljava/util/regex/Pattern;

    .line 82
    new-instance v0, Lcom/google/android/exoplayer/text/ttml/TtmlParser$FrameAndTickRate;

    const/high16 v1, 0x41f00000

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/exoplayer/text/ttml/TtmlParser$FrameAndTickRate;-><init>(FII)V

    sput-object v0, Lcom/google/android/exoplayer/text/ttml/TtmlParser;->DEFAULT_FRAME_AND_TICK_RATE:Lcom/google/android/exoplayer/text/ttml/TtmlParser$FrameAndTickRate;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    :try_start_3
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/exoplayer/text/ttml/TtmlParser;->xmlParserFactory:Lorg/xmlpull/v1/XmlPullParserFactory;

    .line 90
    iget-object v1, p0, Lcom/google/android/exoplayer/text/ttml/TtmlParser;->xmlParserFactory:Lorg/xmlpull/v1/XmlPullParserFactory;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V
    :try_end_f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_f} :catch_10

    .line 94
    return-void

    .line 91
    :catch_10
    move-exception v0

    .line 92
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Couldn\'t create XmlPullParserFactory instance"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private createIfNull(Lcom/google/android/exoplayer/text/ttml/TtmlStyle;)Lcom/google/android/exoplayer/text/ttml/TtmlStyle;
    .registers 2
    .param p1, "style"    # Lcom/google/android/exoplayer/text/ttml/TtmlStyle;

    .prologue
    .line 358
    if-nez p1, :cond_7

    new-instance p1, Lcom/google/android/exoplayer/text/ttml/TtmlStyle;

    .end local p1    # "style":Lcom/google/android/exoplayer/text/ttml/TtmlStyle;
    invoke-direct {p1}, Lcom/google/android/exoplayer/text/ttml/TtmlStyle;-><init>()V

    :cond_7
    return-object p1
.end method

.method private static isSupportedTag(Ljava/lang/String;)Z
    .registers 2
    .param p0, "tag"    # Ljava/lang/String;

    .prologue
    .line 414
    const-string/jumbo v0, "tt"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7b

    const-string v0, "head"

    .line 415
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7b

    const-string v0, "body"

    .line 416
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7b

    const-string v0, "div"

    .line 417
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7b

    const-string v0, "p"

    .line 418
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7b

    const-string v0, "span"

    .line 419
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7b

    const-string v0, "br"

    .line 420
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7b

    const-string/jumbo v0, "style"

    .line 421
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7b

    const-string/jumbo v0, "styling"

    .line 422
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7b

    const-string v0, "layout"

    .line 423
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7b

    const-string v0, "region"

    .line 424
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7b

    const-string v0, "metadata"

    .line 425
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7b

    const-string v0, "smpte:image"

    .line 426
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7b

    const-string v0, "smpte:data"

    .line 427
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7b

    const-string v0, "smpte:information"

    .line 428
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7d

    .line 429
    :cond_7b
    const/4 v0, 0x1

    .line 431
    :goto_7c
    return v0

    :cond_7d
    const/4 v0, 0x0

    goto :goto_7c
.end method

.method private static parseFontSize(Ljava/lang/String;Lcom/google/android/exoplayer/text/ttml/TtmlStyle;)V
    .registers 10
    .param p0, "expression"    # Ljava/lang/String;
    .param p1, "out"    # Lcom/google/android/exoplayer/text/ttml/TtmlStyle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ParserException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 435
    const-string v3, "\\s+"

    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 437
    .local v0, "expressions":[Ljava/lang/String;
    array-length v3, v0

    if-ne v3, v4, :cond_46

    .line 438
    sget-object v3, Lcom/google/android/exoplayer/text/ttml/TtmlParser;->FONT_SIZE:Ljava/util/regex/Pattern;

    invoke-virtual {v3, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 448
    .local v1, "matcher":Ljava/util/regex/Matcher;
    :goto_12
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_b2

    .line 449
    invoke-virtual {v1, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 450
    .local v2, "unit":Ljava/lang/String;
    const/4 v3, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_d2

    :cond_24
    :goto_24
    packed-switch v3, :pswitch_data_e0

    .line 461
    new-instance v3, Lcom/google/android/exoplayer/ParserException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid unit for fontSize: \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/google/android/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 439
    .end local v1    # "matcher":Ljava/util/regex/Matcher;
    .end local v2    # "unit":Ljava/lang/String;
    :cond_46
    array-length v3, v0

    if-ne v3, v5, :cond_59

    .line 440
    sget-object v3, Lcom/google/android/exoplayer/text/ttml/TtmlParser;->FONT_SIZE:Ljava/util/regex/Pattern;

    aget-object v6, v0, v4

    invoke-virtual {v3, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 441
    .restart local v1    # "matcher":Ljava/util/regex/Matcher;
    const-string v3, "TtmlParser"

    const-string v6, "Multiple values in fontSize attribute. Picking the second value for vertical font size and ignoring the first."

    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12

    .line 444
    .end local v1    # "matcher":Ljava/util/regex/Matcher;
    :cond_59
    new-instance v3, Lcom/google/android/exoplayer/ParserException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid number of entries for fontSize: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/google/android/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 450
    .restart local v1    # "matcher":Ljava/util/regex/Matcher;
    .restart local v2    # "unit":Ljava/lang/String;
    :sswitch_79
    const-string v6, "px"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_24

    const/4 v3, 0x0

    goto :goto_24

    :sswitch_83
    const-string v6, "em"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_24

    move v3, v4

    goto :goto_24

    :sswitch_8d
    const-string v6, "%"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_24

    move v3, v5

    goto :goto_24

    .line 452
    :pswitch_97
    invoke-virtual {p1, v4}, Lcom/google/android/exoplayer/text/ttml/TtmlStyle;->setFontSizeUnit(I)Lcom/google/android/exoplayer/text/ttml/TtmlStyle;

    .line 463
    :goto_9a
    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {p1, v3}, Lcom/google/android/exoplayer/text/ttml/TtmlStyle;->setFontSize(F)Lcom/google/android/exoplayer/text/ttml/TtmlStyle;

    .line 467
    return-void

    .line 455
    :pswitch_aa
    invoke-virtual {p1, v5}, Lcom/google/android/exoplayer/text/ttml/TtmlStyle;->setFontSizeUnit(I)Lcom/google/android/exoplayer/text/ttml/TtmlStyle;

    goto :goto_9a

    .line 458
    :pswitch_ae
    invoke-virtual {p1, v7}, Lcom/google/android/exoplayer/text/ttml/TtmlStyle;->setFontSizeUnit(I)Lcom/google/android/exoplayer/text/ttml/TtmlStyle;

    goto :goto_9a

    .line 465
    .end local v2    # "unit":Ljava/lang/String;
    :cond_b2
    new-instance v3, Lcom/google/android/exoplayer/ParserException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid expression for fontSize: \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/google/android/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 450
    nop

    :sswitch_data_d2
    .sparse-switch
        0x25 -> :sswitch_8d
        0xca8 -> :sswitch_83
        0xe08 -> :sswitch_79
    .end sparse-switch

    :pswitch_data_e0
    .packed-switch 0x0
        :pswitch_97
        :pswitch_aa
        :pswitch_ae
    .end packed-switch
.end method

.method private parseFrameAndTickRates(Lorg/xmlpull/v1/XmlPullParser;)Lcom/google/android/exoplayer/text/ttml/TtmlParser$FrameAndTickRate;
    .registers 15
    .param p1, "xmlParser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ParserException;
        }
    .end annotation

    .prologue
    .line 168
    const/16 v1, 0x1e

    .line 169
    .local v1, "frameRate":I
    const-string v11, "http://www.w3.org/ns/ttml#parameter"

    const-string v12, "frameRate"

    invoke-interface {p1, v11, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 170
    .local v4, "frameRateStr":Ljava/lang/String;
    if-eqz v4, :cond_10

    .line 171
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 174
    :cond_10
    const/high16 v2, 0x3f800000

    .line 175
    .local v2, "frameRateMultiplier":F
    const-string v11, "http://www.w3.org/ns/ttml#parameter"

    const-string v12, "frameRateMultiplier"

    invoke-interface {p1, v11, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 176
    .local v3, "frameRateMultiplierStr":Ljava/lang/String;
    if-eqz v3, :cond_40

    .line 177
    const-string v11, " "

    invoke-virtual {v3, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 178
    .local v6, "parts":[Ljava/lang/String;
    array-length v11, v6

    const/4 v12, 0x2

    if-eq v11, v12, :cond_2e

    .line 179
    new-instance v11, Lcom/google/android/exoplayer/ParserException;

    const-string v12, "frameRateMultiplier doesn\'t have 2 parts"

    invoke-direct {v11, v12}, Lcom/google/android/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 181
    :cond_2e
    const/4 v11, 0x0

    aget-object v11, v6, v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    int-to-float v5, v11

    .line 182
    .local v5, "numerator":F
    const/4 v11, 0x1

    aget-object v11, v6, v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    int-to-float v0, v11

    .line 183
    .local v0, "denominator":F
    div-float v2, v5, v0

    .line 186
    .end local v0    # "denominator":F
    .end local v5    # "numerator":F
    .end local v6    # "parts":[Ljava/lang/String;
    :cond_40
    sget-object v11, Lcom/google/android/exoplayer/text/ttml/TtmlParser;->DEFAULT_FRAME_AND_TICK_RATE:Lcom/google/android/exoplayer/text/ttml/TtmlParser$FrameAndTickRate;

    iget v7, v11, Lcom/google/android/exoplayer/text/ttml/TtmlParser$FrameAndTickRate;->subFrameRate:I

    .line 187
    .local v7, "subFrameRate":I
    const-string v11, "http://www.w3.org/ns/ttml#parameter"

    const-string/jumbo v12, "subFrameRate"

    invoke-interface {p1, v11, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 188
    .local v8, "subFrameRateStr":Ljava/lang/String;
    if-eqz v8, :cond_53

    .line 189
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 192
    :cond_53
    sget-object v11, Lcom/google/android/exoplayer/text/ttml/TtmlParser;->DEFAULT_FRAME_AND_TICK_RATE:Lcom/google/android/exoplayer/text/ttml/TtmlParser$FrameAndTickRate;

    iget v9, v11, Lcom/google/android/exoplayer/text/ttml/TtmlParser$FrameAndTickRate;->tickRate:I

    .line 193
    .local v9, "tickRate":I
    const-string v11, "http://www.w3.org/ns/ttml#parameter"

    const-string/jumbo v12, "tickRate"

    invoke-interface {p1, v11, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 194
    .local v10, "tickRateStr":Ljava/lang/String;
    if-eqz v10, :cond_66

    .line 195
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 197
    :cond_66
    new-instance v11, Lcom/google/android/exoplayer/text/ttml/TtmlParser$FrameAndTickRate;

    int-to-float v12, v1

    mul-float/2addr v12, v2

    invoke-direct {v11, v12, v7, v9}, Lcom/google/android/exoplayer/text/ttml/TtmlParser$FrameAndTickRate;-><init>(FII)V

    return-object v11
.end method

.method private parseHeader(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;
    .registers 11
    .param p1, "xmlParser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
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
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer/text/ttml/TtmlStyle;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 204
    .local p2, "globalStyles":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/google/android/exoplayer/text/ttml/TtmlStyle;>;"
    .local p3, "globalRegions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/google/android/exoplayer/text/ttml/TtmlRegion;>;"
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 205
    const-string/jumbo v5, "style"

    invoke-static {p1, v5}, Lcom/google/android/exoplayer/util/ParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4a

    .line 206
    const-string/jumbo v5, "style"

    invoke-static {p1, v5}, Lcom/google/android/exoplayer/util/ParserUtil;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 207
    .local v2, "parentStyleId":Ljava/lang/String;
    new-instance v5, Lcom/google/android/exoplayer/text/ttml/TtmlStyle;

    invoke-direct {v5}, Lcom/google/android/exoplayer/text/ttml/TtmlStyle;-><init>()V

    invoke-direct {p0, p1, v5}, Lcom/google/android/exoplayer/text/ttml/TtmlParser;->parseStyleAttributes(Lorg/xmlpull/v1/XmlPullParser;Lcom/google/android/exoplayer/text/ttml/TtmlStyle;)Lcom/google/android/exoplayer/text/ttml/TtmlStyle;

    move-result-object v3

    .line 208
    .local v3, "style":Lcom/google/android/exoplayer/text/ttml/TtmlStyle;
    if-eqz v2, :cond_34

    .line 209
    invoke-direct {p0, v2}, Lcom/google/android/exoplayer/text/ttml/TtmlParser;->parseStyleIds(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 210
    .local v1, "ids":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_23
    array-length v5, v1

    if-ge v0, v5, :cond_34

    .line 211
    aget-object v5, v1, v0

    invoke-interface {p2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/exoplayer/text/ttml/TtmlStyle;

    invoke-virtual {v3, v5}, Lcom/google/android/exoplayer/text/ttml/TtmlStyle;->chain(Lcom/google/android/exoplayer/text/ttml/TtmlStyle;)Lcom/google/android/exoplayer/text/ttml/TtmlStyle;

    .line 210
    add-int/lit8 v0, v0, 0x1

    goto :goto_23

    .line 214
    .end local v0    # "i":I
    .end local v1    # "ids":[Ljava/lang/String;
    :cond_34
    invoke-virtual {v3}, Lcom/google/android/exoplayer/text/ttml/TtmlStyle;->getId()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_41

    .line 215
    invoke-virtual {v3}, Lcom/google/android/exoplayer/text/ttml/TtmlStyle;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p2, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    .end local v2    # "parentStyleId":Ljava/lang/String;
    .end local v3    # "style":Lcom/google/android/exoplayer/text/ttml/TtmlStyle;
    :cond_41
    :goto_41
    const-string v5, "head"

    invoke-static {p1, v5}, Lcom/google/android/exoplayer/util/ParserUtil;->isEndTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 224
    return-object p2

    .line 217
    :cond_4a
    const-string v5, "region"

    invoke-static {p1, v5}, Lcom/google/android/exoplayer/util/ParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_41

    .line 218
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer/text/ttml/TtmlParser;->parseRegionAttributes(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/Pair;

    move-result-object v4

    .line 219
    .local v4, "ttmlRegionInfo":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Lcom/google/android/exoplayer/text/ttml/TtmlRegion;>;"
    if-eqz v4, :cond_41

    .line 220
    iget-object v5, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    iget-object v6, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-interface {p3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_41
.end method

.method private parseNode(Lorg/xmlpull/v1/XmlPullParser;Lcom/google/android/exoplayer/text/ttml/TtmlNode;Ljava/util/Map;Lcom/google/android/exoplayer/text/ttml/TtmlParser$FrameAndTickRate;)Lcom/google/android/exoplayer/text/ttml/TtmlNode;
    .registers 27
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "parent"    # Lcom/google/android/exoplayer/text/ttml/TtmlNode;
    .param p4, "frameAndTickRate"    # Lcom/google/android/exoplayer/text/ttml/TtmlParser$FrameAndTickRate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Lcom/google/android/exoplayer/text/ttml/TtmlNode;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer/text/ttml/TtmlRegion;",
            ">;",
            "Lcom/google/android/exoplayer/text/ttml/TtmlParser$FrameAndTickRate;",
            ")",
            "Lcom/google/android/exoplayer/text/ttml/TtmlNode;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ParserException;
        }
    .end annotation

    .prologue
    .line 363
    .local p3, "regionMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/google/android/exoplayer/text/ttml/TtmlRegion;>;"
    const-wide/16 v12, 0x0

    .line 364
    .local v12, "duration":J
    const-wide/16 v4, -0x1

    .line 365
    .local v4, "startTime":J
    const-wide/16 v6, -0x1

    .line 366
    .local v6, "endTime":J
    const-string v10, ""

    .line 367
    .local v10, "regionId":Ljava/lang/String;
    const/4 v9, 0x0

    .line 368
    .local v9, "styleIds":[Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v11

    .line 369
    .local v11, "attributeCount":I
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3}, Lcom/google/android/exoplayer/text/ttml/TtmlParser;->parseStyleAttributes(Lorg/xmlpull/v1/XmlPullParser;Lcom/google/android/exoplayer/text/ttml/TtmlStyle;)Lcom/google/android/exoplayer/text/ttml/TtmlStyle;

    move-result-object v8

    .line 370
    .local v8, "style":Lcom/google/android/exoplayer/text/ttml/TtmlStyle;
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_17
    if-ge v14, v11, :cond_85

    .line 371
    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v2

    .line 372
    .local v2, "attr":Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v16

    .line 373
    .local v16, "value":Ljava/lang/String;
    const-string v3, "begin"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_38

    .line 374
    move-object/from16 v0, v16

    move-object/from16 v1, p4

    invoke-static {v0, v1}, Lcom/google/android/exoplayer/text/ttml/TtmlParser;->parseTimeExpression(Ljava/lang/String;Lcom/google/android/exoplayer/text/ttml/TtmlParser$FrameAndTickRate;)J

    move-result-wide v4

    .line 370
    :cond_35
    :goto_35
    add-int/lit8 v14, v14, 0x1

    goto :goto_17

    .line 375
    :cond_38
    const-string v3, "end"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_49

    .line 376
    move-object/from16 v0, v16

    move-object/from16 v1, p4

    invoke-static {v0, v1}, Lcom/google/android/exoplayer/text/ttml/TtmlParser;->parseTimeExpression(Ljava/lang/String;Lcom/google/android/exoplayer/text/ttml/TtmlParser$FrameAndTickRate;)J

    move-result-wide v6

    goto :goto_35

    .line 377
    :cond_49
    const-string v3, "dur"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5a

    .line 378
    move-object/from16 v0, v16

    move-object/from16 v1, p4

    invoke-static {v0, v1}, Lcom/google/android/exoplayer/text/ttml/TtmlParser;->parseTimeExpression(Ljava/lang/String;Lcom/google/android/exoplayer/text/ttml/TtmlParser$FrameAndTickRate;)J

    move-result-wide v12

    goto :goto_35

    .line 379
    :cond_5a
    const-string/jumbo v3, "style"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_70

    .line 381
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/text/ttml/TtmlParser;->parseStyleIds(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 382
    .local v15, "ids":[Ljava/lang/String;
    array-length v3, v15

    if-lez v3, :cond_35

    .line 383
    move-object v9, v15

    goto :goto_35

    .line 385
    .end local v15    # "ids":[Ljava/lang/String;
    :cond_70
    const-string v3, "region"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_35

    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_35

    .line 388
    move-object/from16 v10, v16

    goto :goto_35

    .line 393
    .end local v2    # "attr":Ljava/lang/String;
    .end local v16    # "value":Ljava/lang/String;
    :cond_85
    if-eqz p2, :cond_af

    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/google/android/exoplayer/text/ttml/TtmlNode;->startTimeUs:J

    move-wide/from16 v18, v0

    const-wide/16 v20, -0x1

    cmp-long v3, v18, v20

    if-eqz v3, :cond_af

    .line 394
    const-wide/16 v18, -0x1

    cmp-long v3, v4, v18

    if-eqz v3, :cond_a1

    .line 395
    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/google/android/exoplayer/text/ttml/TtmlNode;->startTimeUs:J

    move-wide/from16 v18, v0

    add-long v4, v4, v18

    .line 397
    :cond_a1
    const-wide/16 v18, -0x1

    cmp-long v3, v6, v18

    if-eqz v3, :cond_af

    .line 398
    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/google/android/exoplayer/text/ttml/TtmlNode;->startTimeUs:J

    move-wide/from16 v18, v0

    add-long v6, v6, v18

    .line 401
    :cond_af
    const-wide/16 v18, -0x1

    cmp-long v3, v6, v18

    if-nez v3, :cond_bd

    .line 402
    const-wide/16 v18, 0x0

    cmp-long v3, v12, v18

    if-lez v3, :cond_c6

    .line 404
    add-long v6, v4, v12

    .line 410
    :cond_bd
    :goto_bd
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static/range {v3 .. v10}, Lcom/google/android/exoplayer/text/ttml/TtmlNode;->buildNode(Ljava/lang/String;JJLcom/google/android/exoplayer/text/ttml/TtmlStyle;[Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/exoplayer/text/ttml/TtmlNode;

    move-result-object v3

    return-object v3

    .line 405
    :cond_c6
    if-eqz p2, :cond_bd

    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/google/android/exoplayer/text/ttml/TtmlNode;->endTimeUs:J

    move-wide/from16 v18, v0

    const-wide/16 v20, -0x1

    cmp-long v3, v18, v20

    if-eqz v3, :cond_bd

    .line 407
    move-object/from16 v0, p2

    iget-wide v6, v0, Lcom/google/android/exoplayer/text/ttml/TtmlNode;->endTimeUs:J

    goto :goto_bd
.end method

.method private parseRegionAttributes(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/Pair;
    .registers 16
    .param p1, "xmlParser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer/text/ttml/TtmlRegion;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/high16 v13, 0x42c80000

    .line 232
    const-string v10, "id"

    invoke-static {p1, v10}, Lcom/google/android/exoplayer/util/ParserUtil;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 233
    .local v6, "regionId":Ljava/lang/String;
    const-string v10, "origin"

    invoke-static {p1, v10}, Lcom/google/android/exoplayer/util/ParserUtil;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 234
    .local v7, "regionOrigin":Ljava/lang/String;
    const-string v10, "extent"

    invoke-static {p1, v10}, Lcom/google/android/exoplayer/util/ParserUtil;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 235
    .local v5, "regionExtent":Ljava/lang/String;
    if-eqz v7, :cond_19

    if-nez v6, :cond_1a

    .line 261
    :cond_19
    :goto_19
    return-object v9

    .line 238
    :cond_1a
    const/4 v4, 0x1

    .line 239
    .local v4, "position":F
    const/4 v2, 0x1

    .line 240
    .local v2, "line":F
    sget-object v10, Lcom/google/android/exoplayer/text/ttml/TtmlParser;->PERCENTAGE_COORDINATES:Ljava/util/regex/Pattern;

    invoke-virtual {v10, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 241
    .local v3, "originMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v10

    if-eqz v10, :cond_3e

    .line 243
    const/4 v10, 0x1

    :try_start_29
    invoke-virtual {v3, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v10

    div-float v4, v10, v13

    .line 244
    const/4 v10, 0x2

    invoke-virtual {v3, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_3b
    .catch Ljava/lang/NumberFormatException; {:try_start_29 .. :try_end_3b} :catch_69

    move-result v10

    div-float v2, v10, v13

    .line 250
    :cond_3e
    :goto_3e
    const/4 v8, 0x1

    .line 251
    .local v8, "width":F
    if-eqz v5, :cond_58

    .line 252
    sget-object v10, Lcom/google/android/exoplayer/text/ttml/TtmlParser;->PERCENTAGE_COORDINATES:Ljava/util/regex/Pattern;

    invoke-virtual {v10, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 253
    .local v1, "extentMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v10

    if-eqz v10, :cond_58

    .line 255
    const/4 v10, 0x1

    :try_start_4e
    invoke-virtual {v1, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_55
    .catch Ljava/lang/NumberFormatException; {:try_start_4e .. :try_end_55} :catch_8a

    move-result v10

    div-float v8, v10, v13

    .line 261
    .end local v1    # "extentMatcher":Ljava/util/regex/Matcher;
    :cond_58
    :goto_58
    const/4 v10, 0x1

    cmpl-float v10, v4, v10

    if-eqz v10, :cond_19

    new-instance v9, Landroid/util/Pair;

    new-instance v10, Lcom/google/android/exoplayer/text/ttml/TtmlRegion;

    const/4 v11, 0x0

    invoke-direct {v10, v4, v2, v11, v8}, Lcom/google/android/exoplayer/text/ttml/TtmlRegion;-><init>(FFIF)V

    invoke-direct {v9, v6, v10}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_19

    .line 245
    .end local v8    # "width":F
    :catch_69
    move-exception v0

    .line 246
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v10, "TtmlParser"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Ignoring region with malformed origin: \'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 247
    const/4 v4, 0x1

    goto :goto_3e

    .line 256
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .restart local v1    # "extentMatcher":Ljava/util/regex/Matcher;
    .restart local v8    # "width":F
    :catch_8a
    move-exception v0

    .line 257
    .restart local v0    # "e":Ljava/lang/NumberFormatException;
    const-string v10, "TtmlParser"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Ignoring malformed region extent: \'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_58
.end method

.method private parseStyleAttributes(Lorg/xmlpull/v1/XmlPullParser;Lcom/google/android/exoplayer/text/ttml/TtmlStyle;)Lcom/google/android/exoplayer/text/ttml/TtmlStyle;
    .registers 15
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "style"    # Lcom/google/android/exoplayer/text/ttml/TtmlStyle;

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v6, -0x1

    const/4 v7, 0x1

    const/4 v5, 0x0

    .line 270
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v0

    .line 271
    .local v0, "attributeCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_a
    if-ge v3, v0, :cond_226

    .line 272
    invoke-interface {p1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v1

    .line 273
    .local v1, "attributeValue":Ljava/lang/String;
    invoke-interface {p1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v10

    sparse-switch v10, :sswitch_data_228

    :cond_1b
    move v4, v6

    :goto_1c
    packed-switch v4, :pswitch_data_24e

    .line 271
    :cond_1f
    :goto_1f
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 273
    :sswitch_22
    const-string v10, "id"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b

    move v4, v5

    goto :goto_1c

    :sswitch_2c
    const-string v10, "backgroundColor"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b

    move v4, v7

    goto :goto_1c

    :sswitch_36
    const-string v10, "color"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b

    move v4, v8

    goto :goto_1c

    :sswitch_40
    const-string v10, "fontFamily"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b

    move v4, v9

    goto :goto_1c

    :sswitch_4a
    const-string v10, "fontSize"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b

    const/4 v4, 0x4

    goto :goto_1c

    :sswitch_54
    const-string v10, "fontWeight"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b

    const/4 v4, 0x5

    goto :goto_1c

    :sswitch_5e
    const-string v10, "fontStyle"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b

    const/4 v4, 0x6

    goto :goto_1c

    :sswitch_68
    const-string/jumbo v10, "textAlign"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b

    const/4 v4, 0x7

    goto :goto_1c

    :sswitch_73
    const-string/jumbo v10, "textDecoration"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b

    const/16 v4, 0x8

    goto :goto_1c

    .line 275
    :pswitch_7f
    const-string/jumbo v4, "style"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 276
    invoke-direct {p0, p2}, Lcom/google/android/exoplayer/text/ttml/TtmlParser;->createIfNull(Lcom/google/android/exoplayer/text/ttml/TtmlStyle;)Lcom/google/android/exoplayer/text/ttml/TtmlStyle;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/google/android/exoplayer/text/ttml/TtmlStyle;->setId(Ljava/lang/String;)Lcom/google/android/exoplayer/text/ttml/TtmlStyle;

    move-result-object p2

    goto :goto_1f

    .line 280
    :pswitch_95
    invoke-direct {p0, p2}, Lcom/google/android/exoplayer/text/ttml/TtmlParser;->createIfNull(Lcom/google/android/exoplayer/text/ttml/TtmlStyle;)Lcom/google/android/exoplayer/text/ttml/TtmlStyle;

    move-result-object p2

    .line 282
    :try_start_99
    invoke-static {v1}, Lcom/google/android/exoplayer/text/ttml/TtmlColorParser;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p2, v4}, Lcom/google/android/exoplayer/text/ttml/TtmlStyle;->setBackgroundColor(I)Lcom/google/android/exoplayer/text/ttml/TtmlStyle;
    :try_end_a0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_99 .. :try_end_a0} :catch_a2

    goto/16 :goto_1f

    .line 283
    :catch_a2
    move-exception v2

    .line 284
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    const-string v4, "TtmlParser"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "failed parsing background value: \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1f

    .line 288
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :pswitch_c3
    invoke-direct {p0, p2}, Lcom/google/android/exoplayer/text/ttml/TtmlParser;->createIfNull(Lcom/google/android/exoplayer/text/ttml/TtmlStyle;)Lcom/google/android/exoplayer/text/ttml/TtmlStyle;

    move-result-object p2

    .line 290
    :try_start_c7
    invoke-static {v1}, Lcom/google/android/exoplayer/text/ttml/TtmlColorParser;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p2, v4}, Lcom/google/android/exoplayer/text/ttml/TtmlStyle;->setFontColor(I)Lcom/google/android/exoplayer/text/ttml/TtmlStyle;
    :try_end_ce
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c7 .. :try_end_ce} :catch_d0

    goto/16 :goto_1f

    .line 291
    :catch_d0
    move-exception v2

    .line 292
    .restart local v2    # "e":Ljava/lang/IllegalArgumentException;
    const-string v4, "TtmlParser"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "failed parsing color value: \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1f

    .line 296
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :pswitch_f1
    invoke-direct {p0, p2}, Lcom/google/android/exoplayer/text/ttml/TtmlParser;->createIfNull(Lcom/google/android/exoplayer/text/ttml/TtmlStyle;)Lcom/google/android/exoplayer/text/ttml/TtmlStyle;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/google/android/exoplayer/text/ttml/TtmlStyle;->setFontFamily(Ljava/lang/String;)Lcom/google/android/exoplayer/text/ttml/TtmlStyle;

    move-result-object p2

    .line 297
    goto/16 :goto_1f

    .line 300
    :pswitch_fb
    :try_start_fb
    invoke-direct {p0, p2}, Lcom/google/android/exoplayer/text/ttml/TtmlParser;->createIfNull(Lcom/google/android/exoplayer/text/ttml/TtmlStyle;)Lcom/google/android/exoplayer/text/ttml/TtmlStyle;

    move-result-object p2

    .line 301
    invoke-static {v1, p2}, Lcom/google/android/exoplayer/text/ttml/TtmlParser;->parseFontSize(Ljava/lang/String;Lcom/google/android/exoplayer/text/ttml/TtmlStyle;)V
    :try_end_102
    .catch Lcom/google/android/exoplayer/ParserException; {:try_start_fb .. :try_end_102} :catch_104

    goto/16 :goto_1f

    .line 302
    :catch_104
    move-exception v2

    .line 303
    .local v2, "e":Lcom/google/android/exoplayer/ParserException;
    const-string v4, "TtmlParser"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "failed parsing fontSize value: \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1f

    .line 307
    .end local v2    # "e":Lcom/google/android/exoplayer/ParserException;
    :pswitch_125
    invoke-direct {p0, p2}, Lcom/google/android/exoplayer/text/ttml/TtmlParser;->createIfNull(Lcom/google/android/exoplayer/text/ttml/TtmlStyle;)Lcom/google/android/exoplayer/text/ttml/TtmlStyle;

    move-result-object v4

    const-string v10, "bold"

    .line 308
    invoke-virtual {v10, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    .line 307
    invoke-virtual {v4, v10}, Lcom/google/android/exoplayer/text/ttml/TtmlStyle;->setBold(Z)Lcom/google/android/exoplayer/text/ttml/TtmlStyle;

    move-result-object p2

    .line 309
    goto/16 :goto_1f

    .line 311
    :pswitch_135
    invoke-direct {p0, p2}, Lcom/google/android/exoplayer/text/ttml/TtmlParser;->createIfNull(Lcom/google/android/exoplayer/text/ttml/TtmlStyle;)Lcom/google/android/exoplayer/text/ttml/TtmlStyle;

    move-result-object v4

    const-string v10, "italic"

    .line 312
    invoke-virtual {v10, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    .line 311
    invoke-virtual {v4, v10}, Lcom/google/android/exoplayer/text/ttml/TtmlStyle;->setItalic(Z)Lcom/google/android/exoplayer/text/ttml/TtmlStyle;

    move-result-object p2

    .line 313
    goto/16 :goto_1f

    .line 315
    :pswitch_145
    invoke-static {v1}, Lcom/google/android/exoplayer/util/Util;->toLowerInvariant(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v10

    sparse-switch v10, :sswitch_data_264

    :cond_150
    move v4, v6

    :goto_151
    packed-switch v4, :pswitch_data_27a

    goto/16 :goto_1f

    .line 317
    :pswitch_156
    invoke-direct {p0, p2}, Lcom/google/android/exoplayer/text/ttml/TtmlParser;->createIfNull(Lcom/google/android/exoplayer/text/ttml/TtmlStyle;)Lcom/google/android/exoplayer/text/ttml/TtmlStyle;

    move-result-object v4

    sget-object v10, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    invoke-virtual {v4, v10}, Lcom/google/android/exoplayer/text/ttml/TtmlStyle;->setTextAlign(Landroid/text/Layout$Alignment;)Lcom/google/android/exoplayer/text/ttml/TtmlStyle;

    move-result-object p2

    .line 318
    goto/16 :goto_1f

    .line 315
    :sswitch_162
    const-string v10, "left"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_150

    move v4, v5

    goto :goto_151

    :sswitch_16c
    const-string v10, "start"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_150

    move v4, v7

    goto :goto_151

    :sswitch_176
    const-string v10, "right"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_150

    move v4, v8

    goto :goto_151

    :sswitch_180
    const-string v10, "end"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_150

    move v4, v9

    goto :goto_151

    :sswitch_18a
    const-string v10, "center"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_150

    const/4 v4, 0x4

    goto :goto_151

    .line 320
    :pswitch_194
    invoke-direct {p0, p2}, Lcom/google/android/exoplayer/text/ttml/TtmlParser;->createIfNull(Lcom/google/android/exoplayer/text/ttml/TtmlStyle;)Lcom/google/android/exoplayer/text/ttml/TtmlStyle;

    move-result-object v4

    sget-object v10, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    invoke-virtual {v4, v10}, Lcom/google/android/exoplayer/text/ttml/TtmlStyle;->setTextAlign(Landroid/text/Layout$Alignment;)Lcom/google/android/exoplayer/text/ttml/TtmlStyle;

    move-result-object p2

    .line 321
    goto/16 :goto_1f

    .line 323
    :pswitch_1a0
    invoke-direct {p0, p2}, Lcom/google/android/exoplayer/text/ttml/TtmlParser;->createIfNull(Lcom/google/android/exoplayer/text/ttml/TtmlStyle;)Lcom/google/android/exoplayer/text/ttml/TtmlStyle;

    move-result-object v4

    sget-object v10, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    invoke-virtual {v4, v10}, Lcom/google/android/exoplayer/text/ttml/TtmlStyle;->setTextAlign(Landroid/text/Layout$Alignment;)Lcom/google/android/exoplayer/text/ttml/TtmlStyle;

    move-result-object p2

    .line 324
    goto/16 :goto_1f

    .line 326
    :pswitch_1ac
    invoke-direct {p0, p2}, Lcom/google/android/exoplayer/text/ttml/TtmlParser;->createIfNull(Lcom/google/android/exoplayer/text/ttml/TtmlStyle;)Lcom/google/android/exoplayer/text/ttml/TtmlStyle;

    move-result-object v4

    sget-object v10, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    invoke-virtual {v4, v10}, Lcom/google/android/exoplayer/text/ttml/TtmlStyle;->setTextAlign(Landroid/text/Layout$Alignment;)Lcom/google/android/exoplayer/text/ttml/TtmlStyle;

    move-result-object p2

    .line 327
    goto/16 :goto_1f

    .line 329
    :pswitch_1b8
    invoke-direct {p0, p2}, Lcom/google/android/exoplayer/text/ttml/TtmlParser;->createIfNull(Lcom/google/android/exoplayer/text/ttml/TtmlStyle;)Lcom/google/android/exoplayer/text/ttml/TtmlStyle;

    move-result-object v4

    sget-object v10, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    invoke-virtual {v4, v10}, Lcom/google/android/exoplayer/text/ttml/TtmlStyle;->setTextAlign(Landroid/text/Layout$Alignment;)Lcom/google/android/exoplayer/text/ttml/TtmlStyle;

    move-result-object p2

    goto/16 :goto_1f

    .line 334
    :pswitch_1c4
    invoke-static {v1}, Lcom/google/android/exoplayer/util/Util;->toLowerInvariant(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v10

    sparse-switch v10, :sswitch_data_288

    :cond_1cf
    move v4, v6

    :goto_1d0
    packed-switch v4, :pswitch_data_29a

    goto/16 :goto_1f

    .line 336
    :pswitch_1d5
    invoke-direct {p0, p2}, Lcom/google/android/exoplayer/text/ttml/TtmlParser;->createIfNull(Lcom/google/android/exoplayer/text/ttml/TtmlStyle;)Lcom/google/android/exoplayer/text/ttml/TtmlStyle;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/google/android/exoplayer/text/ttml/TtmlStyle;->setLinethrough(Z)Lcom/google/android/exoplayer/text/ttml/TtmlStyle;

    move-result-object p2

    .line 337
    goto/16 :goto_1f

    .line 334
    :sswitch_1df
    const-string v10, "linethrough"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1cf

    move v4, v5

    goto :goto_1d0

    :sswitch_1e9
    const-string v10, "nolinethrough"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1cf

    move v4, v7

    goto :goto_1d0

    :sswitch_1f3
    const-string/jumbo v10, "underline"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1cf

    move v4, v8

    goto :goto_1d0

    :sswitch_1fe
    const-string v10, "nounderline"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1cf

    move v4, v9

    goto :goto_1d0

    .line 339
    :pswitch_208
    invoke-direct {p0, p2}, Lcom/google/android/exoplayer/text/ttml/TtmlParser;->createIfNull(Lcom/google/android/exoplayer/text/ttml/TtmlStyle;)Lcom/google/android/exoplayer/text/ttml/TtmlStyle;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer/text/ttml/TtmlStyle;->setLinethrough(Z)Lcom/google/android/exoplayer/text/ttml/TtmlStyle;

    move-result-object p2

    .line 340
    goto/16 :goto_1f

    .line 342
    :pswitch_212
    invoke-direct {p0, p2}, Lcom/google/android/exoplayer/text/ttml/TtmlParser;->createIfNull(Lcom/google/android/exoplayer/text/ttml/TtmlStyle;)Lcom/google/android/exoplayer/text/ttml/TtmlStyle;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/google/android/exoplayer/text/ttml/TtmlStyle;->setUnderline(Z)Lcom/google/android/exoplayer/text/ttml/TtmlStyle;

    move-result-object p2

    .line 343
    goto/16 :goto_1f

    .line 345
    :pswitch_21c
    invoke-direct {p0, p2}, Lcom/google/android/exoplayer/text/ttml/TtmlParser;->createIfNull(Lcom/google/android/exoplayer/text/ttml/TtmlStyle;)Lcom/google/android/exoplayer/text/ttml/TtmlStyle;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer/text/ttml/TtmlStyle;->setUnderline(Z)Lcom/google/android/exoplayer/text/ttml/TtmlStyle;

    move-result-object p2

    goto/16 :goto_1f

    .line 354
    .end local v1    # "attributeValue":Ljava/lang/String;
    :cond_226
    return-object p2

    .line 273
    nop

    :sswitch_data_228
    .sparse-switch
        -0x5c71855e -> :sswitch_5e
        -0x48ff636d -> :sswitch_40
        -0x3f826a28 -> :sswitch_68
        -0x3468fa43 -> :sswitch_73
        -0x2bc67c59 -> :sswitch_54
        0xd1b -> :sswitch_22
        0x5a72f63 -> :sswitch_36
        0x15caa0f0 -> :sswitch_4a
        0x4cb7f6d5 -> :sswitch_2c
    .end sparse-switch

    :pswitch_data_24e
    .packed-switch 0x0
        :pswitch_7f
        :pswitch_95
        :pswitch_c3
        :pswitch_f1
        :pswitch_fb
        :pswitch_125
        :pswitch_135
        :pswitch_145
        :pswitch_1c4
    .end packed-switch

    .line 315
    :sswitch_data_264
    .sparse-switch
        -0x514d33ab -> :sswitch_18a
        0x188db -> :sswitch_180
        0x32a007 -> :sswitch_162
        0x677c21c -> :sswitch_176
        0x68ac462 -> :sswitch_16c
    .end sparse-switch

    :pswitch_data_27a
    .packed-switch 0x0
        :pswitch_156
        :pswitch_194
        :pswitch_1a0
        :pswitch_1ac
        :pswitch_1b8
    .end packed-switch

    .line 334
    :sswitch_data_288
    .sparse-switch
        -0x57195dd5 -> :sswitch_1fe
        -0x3d363934 -> :sswitch_1f3
        0x36723ff0 -> :sswitch_1e9
        0x641ec051 -> :sswitch_1df
    .end sparse-switch

    :pswitch_data_29a
    .packed-switch 0x0
        :pswitch_1d5
        :pswitch_208
        :pswitch_212
        :pswitch_21c
    .end packed-switch
.end method

.method private parseStyleIds(Ljava/lang/String;)[Ljava/lang/String;
    .registers 3
    .param p1, "parentStyleIds"    # Ljava/lang/String;

    .prologue
    .line 266
    const-string v0, "\\s+"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static parseTimeExpression(Ljava/lang/String;Lcom/google/android/exoplayer/text/ttml/TtmlParser$FrameAndTickRate;)J
    .registers 22
    .param p0, "time"    # Ljava/lang/String;
    .param p1, "frameAndTickRate"    # Lcom/google/android/exoplayer/text/ttml/TtmlParser$FrameAndTickRate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ParserException;
        }
    .end annotation

    .prologue
    .line 482
    sget-object v15, Lcom/google/android/exoplayer/text/ttml/TtmlParser;->CLOCK_TIME:Ljava/util/regex/Pattern;

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    .line 483
    .local v7, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->matches()Z

    move-result v15

    if-eqz v15, :cond_a4

    .line 484
    const/4 v15, 0x1

    invoke-virtual {v7, v15}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    .line 485
    .local v6, "hours":Ljava/lang/String;
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v16

    const-wide/16 v18, 0xe10

    mul-long v16, v16, v18

    move-wide/from16 v0, v16

    long-to-double v2, v0

    .line 486
    .local v2, "durationSeconds":D
    const/4 v15, 0x2

    invoke-virtual {v7, v15}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    .line 487
    .local v8, "minutes":Ljava/lang/String;
    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v16

    const-wide/16 v18, 0x3c

    mul-long v16, v16, v18

    move-wide/from16 v0, v16

    long-to-double v0, v0

    move-wide/from16 v16, v0

    add-double v2, v2, v16

    .line 488
    const/4 v15, 0x3

    invoke-virtual {v7, v15}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    .line 489
    .local v9, "seconds":Ljava/lang/String;
    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v16

    move-wide/from16 v0, v16

    long-to-double v0, v0

    move-wide/from16 v16, v0

    add-double v2, v2, v16

    .line 490
    const/4 v15, 0x4

    invoke-virtual {v7, v15}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    .line 491
    .local v4, "fraction":Ljava/lang/String;
    if-eqz v4, :cond_9b

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v16

    :goto_4d
    add-double v2, v2, v16

    .line 492
    const/4 v15, 0x5

    invoke-virtual {v7, v15}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    .line 493
    .local v5, "frames":Ljava/lang/String;
    if-eqz v5, :cond_9e

    .line 494
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v16

    move-wide/from16 v0, v16

    long-to-float v15, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/google/android/exoplayer/text/ttml/TtmlParser$FrameAndTickRate;->effectiveFrameRate:F

    move/from16 v16, v0

    div-float v15, v15, v16

    float-to-double v0, v15

    move-wide/from16 v16, v0

    :goto_68
    add-double v2, v2, v16

    .line 495
    const/4 v15, 0x6

    invoke-virtual {v7, v15}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v12

    .line 496
    .local v12, "subframes":Ljava/lang/String;
    if-eqz v12, :cond_a1

    .line 497
    invoke-static {v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v16

    move-wide/from16 v0, v16

    long-to-double v0, v0

    move-wide/from16 v16, v0

    move-object/from16 v0, p1

    iget v15, v0, Lcom/google/android/exoplayer/text/ttml/TtmlParser$FrameAndTickRate;->subFrameRate:I

    int-to-double v0, v15

    move-wide/from16 v18, v0

    div-double v16, v16, v18

    move-object/from16 v0, p1

    iget v15, v0, Lcom/google/android/exoplayer/text/ttml/TtmlParser$FrameAndTickRate;->effectiveFrameRate:F

    float-to-double v0, v15

    move-wide/from16 v18, v0

    div-double v16, v16, v18

    :goto_8c
    add-double v2, v2, v16

    .line 500
    const-wide v16, 0x412e848000000000L

    mul-double v16, v16, v2

    move-wide/from16 v0, v16

    double-to-long v0, v0

    move-wide/from16 v16, v0

    .line 520
    .end local v2    # "durationSeconds":D
    .end local v4    # "fraction":Ljava/lang/String;
    .end local v5    # "frames":Ljava/lang/String;
    .end local v6    # "hours":Ljava/lang/String;
    .end local v8    # "minutes":Ljava/lang/String;
    .end local v9    # "seconds":Ljava/lang/String;
    .end local v12    # "subframes":Ljava/lang/String;
    :goto_9a
    return-wide v16

    .line 491
    .restart local v2    # "durationSeconds":D
    .restart local v4    # "fraction":Ljava/lang/String;
    .restart local v6    # "hours":Ljava/lang/String;
    .restart local v8    # "minutes":Ljava/lang/String;
    .restart local v9    # "seconds":Ljava/lang/String;
    :cond_9b
    const-wide/16 v16, 0x0

    goto :goto_4d

    .line 494
    .restart local v5    # "frames":Ljava/lang/String;
    :cond_9e
    const-wide/16 v16, 0x0

    goto :goto_68

    .line 497
    .restart local v12    # "subframes":Ljava/lang/String;
    :cond_a1
    const-wide/16 v16, 0x0

    goto :goto_8c

    .line 502
    .end local v2    # "durationSeconds":D
    .end local v4    # "fraction":Ljava/lang/String;
    .end local v5    # "frames":Ljava/lang/String;
    .end local v6    # "hours":Ljava/lang/String;
    .end local v8    # "minutes":Ljava/lang/String;
    .end local v9    # "seconds":Ljava/lang/String;
    .end local v12    # "subframes":Ljava/lang/String;
    :cond_a4
    sget-object v15, Lcom/google/android/exoplayer/text/ttml/TtmlParser;->OFFSET_TIME:Ljava/util/regex/Pattern;

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    .line 503
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->matches()Z

    move-result v15

    if-eqz v15, :cond_126

    .line 504
    const/4 v15, 0x1

    invoke-virtual {v7, v15}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v13

    .line 505
    .local v13, "timeValue":Ljava/lang/String;
    invoke-static {v13}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v10

    .line 506
    .local v10, "offsetSeconds":D
    const/4 v15, 0x2

    invoke-virtual {v7, v15}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v14

    .line 507
    .local v14, "unit":Ljava/lang/String;
    const-string v15, "h"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_dc

    .line 508
    const-wide v16, 0x40ac200000000000L

    mul-double v10, v10, v16

    .line 520
    :cond_cf
    :goto_cf
    const-wide v16, 0x412e848000000000L

    mul-double v16, v16, v10

    move-wide/from16 v0, v16

    double-to-long v0, v0

    move-wide/from16 v16, v0

    goto :goto_9a

    .line 509
    :cond_dc
    const-string v15, "m"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_e9

    .line 510
    const-wide/high16 v16, 0x404e000000000000L

    mul-double v10, v10, v16

    goto :goto_cf

    .line 511
    :cond_e9
    const-string v15, "s"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_cf

    .line 513
    const-string v15, "ms"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_101

    .line 514
    const-wide v16, 0x408f400000000000L

    div-double v10, v10, v16

    goto :goto_cf

    .line 515
    :cond_101
    const-string v15, "f"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_113

    .line 516
    move-object/from16 v0, p1

    iget v15, v0, Lcom/google/android/exoplayer/text/ttml/TtmlParser$FrameAndTickRate;->effectiveFrameRate:F

    float-to-double v0, v15

    move-wide/from16 v16, v0

    div-double v10, v10, v16

    goto :goto_cf

    .line 517
    :cond_113
    const-string/jumbo v15, "t"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_cf

    .line 518
    move-object/from16 v0, p1

    iget v15, v0, Lcom/google/android/exoplayer/text/ttml/TtmlParser$FrameAndTickRate;->tickRate:I

    int-to-double v0, v15

    move-wide/from16 v16, v0

    div-double v10, v10, v16

    goto :goto_cf

    .line 522
    .end local v10    # "offsetSeconds":D
    .end local v13    # "timeValue":Ljava/lang/String;
    .end local v14    # "unit":Ljava/lang/String;
    :cond_126
    new-instance v15, Lcom/google/android/exoplayer/ParserException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Malformed time expression: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Lcom/google/android/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v15
.end method


# virtual methods
.method public canParse(Ljava/lang/String;)Z
    .registers 3
    .param p1, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 98
    const-string v0, "application/ttml+xml"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic parse([BII)Lcom/google/android/exoplayer/text/Subtitle;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ParserException;
        }
    .end annotation

    .prologue
    .line 59
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/exoplayer/text/ttml/TtmlParser;->parse([BII)Lcom/google/android/exoplayer/text/ttml/TtmlSubtitle;

    move-result-object v0

    return-object v0
.end method

.method public parse([BII)Lcom/google/android/exoplayer/text/ttml/TtmlSubtitle;
    .registers 24
    .param p1, "bytes"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ParserException;
        }
    .end annotation

    .prologue
    .line 104
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/text/ttml/TtmlParser;->xmlParserFactory:Lorg/xmlpull/v1/XmlPullParserFactory;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v15

    .line 105
    .local v15, "xmlParser":Lorg/xmlpull/v1/XmlPullParser;
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 106
    .local v6, "globalStyles":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/google/android/exoplayer/text/ttml/TtmlStyle;>;"
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 107
    .local v12, "regionMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/google/android/exoplayer/text/ttml/TtmlRegion;>;"
    const-string v17, ""

    new-instance v18, Lcom/google/android/exoplayer/text/ttml/TtmlRegion;

    invoke-direct/range {v18 .. v18}, Lcom/google/android/exoplayer/text/ttml/TtmlRegion;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v12, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    new-instance v7, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-direct {v7, v0, v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    .line 109
    .local v7, "inputStream":Ljava/io/ByteArrayInputStream;
    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-interface {v15, v7, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 110
    const/4 v13, 0x0

    .line 111
    .local v13, "ttmlSubtitle":Lcom/google/android/exoplayer/text/ttml/TtmlSubtitle;
    new-instance v10, Ljava/util/LinkedList;

    invoke-direct {v10}, Ljava/util/LinkedList;-><init>()V

    .line 112
    .local v10, "nodeStack":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/google/android/exoplayer/text/ttml/TtmlNode;>;"
    const/4 v14, 0x0

    .line 113
    .local v14, "unsupportedNodeDepth":I
    invoke-interface {v15}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v4

    .line 114
    .local v4, "eventType":I
    sget-object v5, Lcom/google/android/exoplayer/text/ttml/TtmlParser;->DEFAULT_FRAME_AND_TICK_RATE:Lcom/google/android/exoplayer/text/ttml/TtmlParser$FrameAndTickRate;

    .line 115
    .local v5, "frameAndTickRate":Lcom/google/android/exoplayer/text/ttml/TtmlParser$FrameAndTickRate;
    :goto_41
    const/16 v17, 0x1

    move/from16 v0, v17

    if-eq v4, v0, :cond_12d

    .line 116
    invoke-virtual {v10}, Ljava/util/LinkedList;->peekLast()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/exoplayer/text/ttml/TtmlNode;

    .line 117
    .local v11, "parent":Lcom/google/android/exoplayer/text/ttml/TtmlNode;
    if-nez v14, :cond_119

    .line 118
    invoke-interface {v15}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    .line 119
    .local v8, "name":Ljava/lang/String;
    const/16 v17, 0x2

    move/from16 v0, v17

    if-ne v4, v0, :cond_d3

    .line 120
    const-string/jumbo v17, "tt"

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_6a

    .line 121
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/google/android/exoplayer/text/ttml/TtmlParser;->parseFrameAndTickRates(Lorg/xmlpull/v1/XmlPullParser;)Lcom/google/android/exoplayer/text/ttml/TtmlParser$FrameAndTickRate;

    move-result-object v5

    .line 123
    :cond_6a
    invoke-static {v8}, Lcom/google/android/exoplayer/text/ttml/TtmlParser;->isSupportedTag(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_96

    .line 124
    const-string v17, "TtmlParser"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Ignoring unsupported tag: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-interface {v15}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    add-int/lit8 v14, v14, 0x1

    .line 156
    .end local v8    # "name":Ljava/lang/String;
    :cond_8e
    :goto_8e
    invoke-interface {v15}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 157
    invoke-interface {v15}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v4

    .line 158
    goto :goto_41

    .line 126
    .restart local v8    # "name":Ljava/lang/String;
    :cond_96
    const-string v17, "head"

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_b5

    .line 127
    move-object/from16 v0, p0

    invoke-direct {v0, v15, v6, v12}, Lcom/google/android/exoplayer/text/ttml/TtmlParser;->parseHeader(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;
    :try_end_a5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_a5} :catch_a6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_a5} :catch_e7

    goto :goto_8e

    .line 160
    .end local v4    # "eventType":I
    .end local v5    # "frameAndTickRate":Lcom/google/android/exoplayer/text/ttml/TtmlParser$FrameAndTickRate;
    .end local v6    # "globalStyles":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/google/android/exoplayer/text/ttml/TtmlStyle;>;"
    .end local v7    # "inputStream":Ljava/io/ByteArrayInputStream;
    .end local v8    # "name":Ljava/lang/String;
    .end local v10    # "nodeStack":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/google/android/exoplayer/text/ttml/TtmlNode;>;"
    .end local v11    # "parent":Lcom/google/android/exoplayer/text/ttml/TtmlNode;
    .end local v12    # "regionMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/google/android/exoplayer/text/ttml/TtmlRegion;>;"
    .end local v13    # "ttmlSubtitle":Lcom/google/android/exoplayer/text/ttml/TtmlSubtitle;
    .end local v14    # "unsupportedNodeDepth":I
    .end local v15    # "xmlParser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_a6
    move-exception v16

    .line 161
    .local v16, "xppe":Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v17, Lcom/google/android/exoplayer/ParserException;

    const-string v18, "Unable to parse source"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer/ParserException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v17

    .line 130
    .end local v16    # "xppe":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v4    # "eventType":I
    .restart local v5    # "frameAndTickRate":Lcom/google/android/exoplayer/text/ttml/TtmlParser$FrameAndTickRate;
    .restart local v6    # "globalStyles":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/google/android/exoplayer/text/ttml/TtmlStyle;>;"
    .restart local v7    # "inputStream":Ljava/io/ByteArrayInputStream;
    .restart local v8    # "name":Ljava/lang/String;
    .restart local v10    # "nodeStack":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/google/android/exoplayer/text/ttml/TtmlNode;>;"
    .restart local v11    # "parent":Lcom/google/android/exoplayer/text/ttml/TtmlNode;
    .restart local v12    # "regionMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/google/android/exoplayer/text/ttml/TtmlRegion;>;"
    .restart local v13    # "ttmlSubtitle":Lcom/google/android/exoplayer/text/ttml/TtmlSubtitle;
    .restart local v14    # "unsupportedNodeDepth":I
    .restart local v15    # "xmlParser":Lorg/xmlpull/v1/XmlPullParser;
    :cond_b5
    :try_start_b5
    move-object/from16 v0, p0

    invoke-direct {v0, v15, v11, v12, v5}, Lcom/google/android/exoplayer/text/ttml/TtmlParser;->parseNode(Lorg/xmlpull/v1/XmlPullParser;Lcom/google/android/exoplayer/text/ttml/TtmlNode;Ljava/util/Map;Lcom/google/android/exoplayer/text/ttml/TtmlParser$FrameAndTickRate;)Lcom/google/android/exoplayer/text/ttml/TtmlNode;

    move-result-object v9

    .line 131
    .local v9, "node":Lcom/google/android/exoplayer/text/ttml/TtmlNode;
    invoke-virtual {v10, v9}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 132
    if-eqz v11, :cond_8e

    .line 133
    invoke-virtual {v11, v9}, Lcom/google/android/exoplayer/text/ttml/TtmlNode;->addChild(Lcom/google/android/exoplayer/text/ttml/TtmlNode;)V
    :try_end_c3
    .catch Lcom/google/android/exoplayer/ParserException; {:try_start_b5 .. :try_end_c3} :catch_c4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_b5 .. :try_end_c3} :catch_a6
    .catch Ljava/io/IOException; {:try_start_b5 .. :try_end_c3} :catch_e7

    goto :goto_8e

    .line 135
    .end local v9    # "node":Lcom/google/android/exoplayer/text/ttml/TtmlNode;
    :catch_c4
    move-exception v3

    .line 136
    .local v3, "e":Lcom/google/android/exoplayer/ParserException;
    :try_start_c5
    const-string v17, "TtmlParser"

    const-string v18, "Suppressing parser error"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 138
    add-int/lit8 v14, v14, 0x1

    .line 139
    goto :goto_8e

    .line 141
    .end local v3    # "e":Lcom/google/android/exoplayer/ParserException;
    :cond_d3
    const/16 v17, 0x4

    move/from16 v0, v17

    if-ne v4, v0, :cond_f4

    .line 142
    invoke-interface {v15}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/google/android/exoplayer/text/ttml/TtmlNode;->buildTextNode(Ljava/lang/String;)Lcom/google/android/exoplayer/text/ttml/TtmlNode;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Lcom/google/android/exoplayer/text/ttml/TtmlNode;->addChild(Lcom/google/android/exoplayer/text/ttml/TtmlNode;)V
    :try_end_e6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_c5 .. :try_end_e6} :catch_a6
    .catch Ljava/io/IOException; {:try_start_c5 .. :try_end_e6} :catch_e7

    goto :goto_8e

    .line 162
    .end local v4    # "eventType":I
    .end local v5    # "frameAndTickRate":Lcom/google/android/exoplayer/text/ttml/TtmlParser$FrameAndTickRate;
    .end local v6    # "globalStyles":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/google/android/exoplayer/text/ttml/TtmlStyle;>;"
    .end local v7    # "inputStream":Ljava/io/ByteArrayInputStream;
    .end local v8    # "name":Ljava/lang/String;
    .end local v10    # "nodeStack":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/google/android/exoplayer/text/ttml/TtmlNode;>;"
    .end local v11    # "parent":Lcom/google/android/exoplayer/text/ttml/TtmlNode;
    .end local v12    # "regionMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/google/android/exoplayer/text/ttml/TtmlRegion;>;"
    .end local v13    # "ttmlSubtitle":Lcom/google/android/exoplayer/text/ttml/TtmlSubtitle;
    .end local v14    # "unsupportedNodeDepth":I
    .end local v15    # "xmlParser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_e7
    move-exception v3

    .line 163
    .local v3, "e":Ljava/io/IOException;
    new-instance v17, Ljava/lang/IllegalStateException;

    const-string v18, "Unexpected error when reading input."

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v17

    .line 143
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v4    # "eventType":I
    .restart local v5    # "frameAndTickRate":Lcom/google/android/exoplayer/text/ttml/TtmlParser$FrameAndTickRate;
    .restart local v6    # "globalStyles":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/google/android/exoplayer/text/ttml/TtmlStyle;>;"
    .restart local v7    # "inputStream":Ljava/io/ByteArrayInputStream;
    .restart local v8    # "name":Ljava/lang/String;
    .restart local v10    # "nodeStack":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/google/android/exoplayer/text/ttml/TtmlNode;>;"
    .restart local v11    # "parent":Lcom/google/android/exoplayer/text/ttml/TtmlNode;
    .restart local v12    # "regionMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/google/android/exoplayer/text/ttml/TtmlRegion;>;"
    .restart local v13    # "ttmlSubtitle":Lcom/google/android/exoplayer/text/ttml/TtmlSubtitle;
    .restart local v14    # "unsupportedNodeDepth":I
    .restart local v15    # "xmlParser":Lorg/xmlpull/v1/XmlPullParser;
    :cond_f4
    const/16 v17, 0x3

    move/from16 v0, v17

    if-ne v4, v0, :cond_8e

    .line 144
    :try_start_fa
    invoke-interface {v15}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v17

    const-string/jumbo v18, "tt"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_114

    .line 145
    new-instance v13, Lcom/google/android/exoplayer/text/ttml/TtmlSubtitle;

    .end local v13    # "ttmlSubtitle":Lcom/google/android/exoplayer/text/ttml/TtmlSubtitle;
    invoke-virtual {v10}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/google/android/exoplayer/text/ttml/TtmlNode;

    move-object/from16 v0, v17

    invoke-direct {v13, v0, v6, v12}, Lcom/google/android/exoplayer/text/ttml/TtmlSubtitle;-><init>(Lcom/google/android/exoplayer/text/ttml/TtmlNode;Ljava/util/Map;Ljava/util/Map;)V

    .line 147
    .restart local v13    # "ttmlSubtitle":Lcom/google/android/exoplayer/text/ttml/TtmlSubtitle;
    :cond_114
    invoke-virtual {v10}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;
    :try_end_117
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_fa .. :try_end_117} :catch_a6
    .catch Ljava/io/IOException; {:try_start_fa .. :try_end_117} :catch_e7

    goto/16 :goto_8e

    .line 150
    .end local v8    # "name":Ljava/lang/String;
    :cond_119
    const/16 v17, 0x2

    move/from16 v0, v17

    if-ne v4, v0, :cond_123

    .line 151
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_8e

    .line 152
    :cond_123
    const/16 v17, 0x3

    move/from16 v0, v17

    if-ne v4, v0, :cond_8e

    .line 153
    add-int/lit8 v14, v14, -0x1

    goto/16 :goto_8e

    .line 159
    .end local v11    # "parent":Lcom/google/android/exoplayer/text/ttml/TtmlNode;
    :cond_12d
    return-object v13
.end method
