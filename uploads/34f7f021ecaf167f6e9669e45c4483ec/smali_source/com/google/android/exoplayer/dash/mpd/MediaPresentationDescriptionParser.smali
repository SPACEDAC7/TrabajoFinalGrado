.class public Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "MediaPresentationDescriptionParser.java"

# interfaces
.implements Lcom/google/android/exoplayer/upstream/UriLoadable$Parser;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser$ContentProtectionsBuilder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/xml/sax/helpers/DefaultHandler;",
        "Lcom/google/android/exoplayer/upstream/UriLoadable$Parser",
        "<",
        "Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;",
        ">;"
    }
.end annotation


# static fields
.field private static final FRAME_RATE_PATTERN:Ljava/util/regex/Pattern;

.field private static final TAG:Ljava/lang/String; = "MediaPresentationDescriptionParser"


# instance fields
.field private final contentId:Ljava/lang/String;

.field private final xmlParserFactory:Lorg/xmlpull/v1/XmlPullParserFactory;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 59
    const-string v0, "(\\d+)(?:/(\\d+))?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->FRAME_RATE_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 68
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;-><init>(Ljava/lang/String;)V

    .line 69
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 5
    .param p1, "contentId"    # Ljava/lang/String;

    .prologue
    .line 76
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 77
    iput-object p1, p0, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->contentId:Ljava/lang/String;

    .line 79
    :try_start_5
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->xmlParserFactory:Lorg/xmlpull/v1/XmlPullParserFactory;
    :try_end_b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_b} :catch_c

    .line 83
    return-void

    .line 80
    :catch_c
    move-exception v0

    .line 81
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Couldn\'t create XmlPullParserFactory instance"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static checkContentTypeConsistency(II)I
    .registers 3
    .param p0, "firstType"    # I
    .param p1, "secondType"    # I

    .prologue
    const/4 v0, -0x1

    .line 655
    if-ne p0, v0, :cond_5

    move p0, p1

    .line 661
    .end local p0    # "firstType":I
    :cond_4
    :goto_4
    return p0

    .line 657
    .restart local p0    # "firstType":I
    :cond_5
    if-eq p1, v0, :cond_4

    .line 660
    if-ne p0, p1, :cond_e

    const/4 v0, 0x1

    :goto_a
    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    goto :goto_4

    :cond_e
    const/4 v0, 0x0

    goto :goto_a
.end method

.method private static checkLanguageConsistency(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "firstLanguage"    # Ljava/lang/String;
    .param p1, "secondLanguage"    # Ljava/lang/String;

    .prologue
    .line 633
    if-nez p0, :cond_4

    move-object p0, p1

    .line 639
    .end local p0    # "firstLanguage":Ljava/lang/String;
    :cond_3
    :goto_3
    return-object p0

    .line 635
    .restart local p0    # "firstLanguage":Ljava/lang/String;
    :cond_4
    if-eqz p1, :cond_3

    .line 638
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    goto :goto_3
.end method

.method protected static parseBaseUrl(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "xpp"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "parentBaseUrl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 704
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 705
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/exoplayer/util/UriUtil;->resolve(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected static parseDateTime(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J
    .registers 6
    .param p0, "xpp"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 694
    const/4 v1, 0x0

    invoke-interface {p0, v1, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 695
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_8

    .line 698
    .end local p2    # "defaultValue":J
    :goto_7
    return-wide p2

    .restart local p2    # "defaultValue":J
    :cond_8
    invoke-static {v0}, Lcom/google/android/exoplayer/util/Util;->parseXsDateTime(Ljava/lang/String;)J

    move-result-wide p2

    goto :goto_7
.end method

.method protected static parseDuration(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J
    .registers 6
    .param p0, "xpp"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # J

    .prologue
    .line 684
    const/4 v1, 0x0

    invoke-interface {p0, v1, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 685
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_8

    .line 688
    .end local p2    # "defaultValue":J
    :goto_7
    return-wide p2

    .restart local p2    # "defaultValue":J
    :cond_8
    invoke-static {v0}, Lcom/google/android/exoplayer/util/Util;->parseXsDuration(Ljava/lang/String;)J

    move-result-wide p2

    goto :goto_7
.end method

.method protected static parseFrameRate(Lorg/xmlpull/v1/XmlPullParser;F)F
    .registers 9
    .param p0, "xpp"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "defaultValue"    # F

    .prologue
    .line 666
    move v1, p1

    .line 667
    .local v1, "frameRate":F
    const/4 v5, 0x0

    const-string v6, "frameRate"

    invoke-interface {p0, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 668
    .local v2, "frameRateAttribute":Ljava/lang/String;
    if-eqz v2, :cond_32

    .line 669
    sget-object v5, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->FRAME_RATE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v5, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 670
    .local v3, "frameRateMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-eqz v5, :cond_32

    .line 671
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 672
    .local v4, "numerator":I
    const/4 v5, 0x2

    invoke-virtual {v3, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 673
    .local v0, "denominatorString":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_33

    .line 674
    int-to-float v5, v4

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    int-to-float v6, v6

    div-float v1, v5, v6

    .line 680
    .end local v0    # "denominatorString":Ljava/lang/String;
    .end local v3    # "frameRateMatcher":Ljava/util/regex/Matcher;
    .end local v4    # "numerator":I
    :cond_32
    :goto_32
    return v1

    .line 676
    .restart local v0    # "denominatorString":Ljava/lang/String;
    .restart local v3    # "frameRateMatcher":Ljava/util/regex/Matcher;
    .restart local v4    # "numerator":I
    :cond_33
    int-to-float v1, v4

    goto :goto_32
.end method

.method protected static parseInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I
    .registers 3
    .param p0, "xpp"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 709
    const/4 v0, -0x1

    invoke-static {p0, p1, v0}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method protected static parseInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I
    .registers 5
    .param p0, "xpp"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .prologue
    .line 713
    const/4 v1, 0x0

    invoke-interface {p0, v1, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 714
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_8

    .end local p2    # "defaultValue":I
    :goto_7
    return p2

    .restart local p2    # "defaultValue":I
    :cond_8
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    goto :goto_7
.end method

.method protected static parseLong(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J
    .registers 4
    .param p0, "xpp"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 718
    const-wide/16 v0, -0x1

    invoke-static {p0, p1, v0, v1}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseLong(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method protected static parseLong(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J
    .registers 6
    .param p0, "xpp"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # J

    .prologue
    .line 722
    const/4 v1, 0x0

    invoke-interface {p0, v1, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 723
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_8

    .end local p2    # "defaultValue":J
    :goto_7
    return-wide p2

    .restart local p2    # "defaultValue":J
    :cond_8
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p2

    goto :goto_7
.end method

.method protected static parseString(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "xpp"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 727
    const/4 v1, 0x0

    invoke-interface {p0, v1, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 728
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_8

    .end local p2    # "defaultValue":Ljava/lang/String;
    :goto_7
    return-object p2

    .restart local p2    # "defaultValue":Ljava/lang/String;
    :cond_8
    move-object p2, v0

    goto :goto_7
.end method


# virtual methods
.method protected buildAdaptationSet(IILjava/util/List;Ljava/util/List;)Lcom/google/android/exoplayer/dash/mpd/AdaptationSet;
    .registers 6
    .param p1, "id"    # I
    .param p2, "contentType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer/dash/mpd/Representation;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer/dash/mpd/ContentProtection;",
            ">;)",
            "Lcom/google/android/exoplayer/dash/mpd/AdaptationSet;"
        }
    .end annotation

    .prologue
    .line 279
    .local p3, "representations":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer/dash/mpd/Representation;>;"
    .local p4, "contentProtections":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer/dash/mpd/ContentProtection;>;"
    new-instance v0, Lcom/google/android/exoplayer/dash/mpd/AdaptationSet;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/google/android/exoplayer/dash/mpd/AdaptationSet;-><init>(IILjava/util/List;Ljava/util/List;)V

    return-object v0
.end method

.method protected buildContentProtection(Ljava/lang/String;Ljava/util/UUID;Lcom/google/android/exoplayer/drm/DrmInitData$SchemeInitData;)Lcom/google/android/exoplayer/dash/mpd/ContentProtection;
    .registers 5
    .param p1, "schemeIdUri"    # Ljava/lang/String;
    .param p2, "uuid"    # Ljava/util/UUID;
    .param p3, "data"    # Lcom/google/android/exoplayer/drm/DrmInitData$SchemeInitData;

    .prologue
    .line 344
    new-instance v0, Lcom/google/android/exoplayer/dash/mpd/ContentProtection;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/android/exoplayer/dash/mpd/ContentProtection;-><init>(Ljava/lang/String;Ljava/util/UUID;Lcom/google/android/exoplayer/drm/DrmInitData$SchemeInitData;)V

    return-object v0
.end method

.method protected buildFormat(Ljava/lang/String;Ljava/lang/String;IIFIIILjava/lang/String;Ljava/lang/String;)Lcom/google/android/exoplayer/chunk/Format;
    .registers 22
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "mimeType"    # Ljava/lang/String;
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "frameRate"    # F
    .param p6, "audioChannels"    # I
    .param p7, "audioSamplingRate"    # I
    .param p8, "bandwidth"    # I
    .param p9, "language"    # Ljava/lang/String;
    .param p10, "codecs"    # Ljava/lang/String;

    .prologue
    .line 411
    new-instance v0, Lcom/google/android/exoplayer/chunk/Format;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    invoke-direct/range {v0 .. v10}, Lcom/google/android/exoplayer/chunk/Format;-><init>(Ljava/lang/String;Ljava/lang/String;IIFIIILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method protected buildMediaPresentationDescription(JJJZJJLcom/google/android/exoplayer/dash/mpd/UtcTimingElement;Ljava/lang/String;Ljava/util/List;)Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;
    .registers 32
    .param p1, "availabilityStartTime"    # J
    .param p3, "durationMs"    # J
    .param p5, "minBufferTimeMs"    # J
    .param p7, "dynamic"    # Z
    .param p8, "minUpdateTimeMs"    # J
    .param p10, "timeShiftBufferDepthMs"    # J
    .param p12, "utcTiming"    # Lcom/google/android/exoplayer/dash/mpd/UtcTimingElement;
    .param p13, "location"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJJZJJ",
            "Lcom/google/android/exoplayer/dash/mpd/UtcTimingElement;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer/dash/mpd/Period;",
            ">;)",
            "Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;"
        }
    .end annotation

    .prologue
    .line 173
    .local p14, "periods":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer/dash/mpd/Period;>;"
    new-instance v1, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;

    move-wide/from16 v2, p1

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    move/from16 v8, p7

    move-wide/from16 v9, p8

    move-wide/from16 v11, p10

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    invoke-direct/range {v1 .. v15}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;-><init>(JJJZJJLcom/google/android/exoplayer/dash/mpd/UtcTimingElement;Ljava/lang/String;Ljava/util/List;)V

    return-object v1
.end method

.method protected buildPeriod(Ljava/lang/String;JLjava/util/List;)Lcom/google/android/exoplayer/dash/mpd/Period;
    .registers 7
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "startMs"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer/dash/mpd/AdaptationSet;",
            ">;)",
            "Lcom/google/android/exoplayer/dash/mpd/Period;"
        }
    .end annotation

    .prologue
    .line 217
    .local p4, "adaptationSets":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer/dash/mpd/AdaptationSet;>;"
    new-instance v0, Lcom/google/android/exoplayer/dash/mpd/Period;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/google/android/exoplayer/dash/mpd/Period;-><init>(Ljava/lang/String;JLjava/util/List;)V

    return-object v0
.end method

.method protected buildRangedUri(Ljava/lang/String;Ljava/lang/String;JJ)Lcom/google/android/exoplayer/dash/mpd/RangedUri;
    .registers 16
    .param p1, "baseUrl"    # Ljava/lang/String;
    .param p2, "urlText"    # Ljava/lang/String;
    .param p3, "rangeStart"    # J
    .param p5, "rangeLength"    # J

    .prologue
    .line 600
    new-instance v1, Lcom/google/android/exoplayer/dash/mpd/RangedUri;

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-wide v6, p5

    invoke-direct/range {v1 .. v7}, Lcom/google/android/exoplayer/dash/mpd/RangedUri;-><init>(Ljava/lang/String;Ljava/lang/String;JJ)V

    return-object v1
.end method

.method protected buildRepresentation(Ljava/lang/String;ILcom/google/android/exoplayer/chunk/Format;Lcom/google/android/exoplayer/dash/mpd/SegmentBase;)Lcom/google/android/exoplayer/dash/mpd/Representation;
    .registers 7
    .param p1, "contentId"    # Ljava/lang/String;
    .param p2, "revisionId"    # I
    .param p3, "format"    # Lcom/google/android/exoplayer/chunk/Format;
    .param p4, "segmentBase"    # Lcom/google/android/exoplayer/dash/mpd/SegmentBase;

    .prologue
    .line 417
    int-to-long v0, p2

    invoke-static {p1, v0, v1, p3, p4}, Lcom/google/android/exoplayer/dash/mpd/Representation;->newInstance(Ljava/lang/String;JLcom/google/android/exoplayer/chunk/Format;Lcom/google/android/exoplayer/dash/mpd/SegmentBase;)Lcom/google/android/exoplayer/dash/mpd/Representation;

    move-result-object v0

    return-object v0
.end method

.method protected buildSegmentList(Lcom/google/android/exoplayer/dash/mpd/RangedUri;JJIJLjava/util/List;Ljava/util/List;)Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentList;
    .registers 23
    .param p1, "initialization"    # Lcom/google/android/exoplayer/dash/mpd/RangedUri;
    .param p2, "timescale"    # J
    .param p4, "presentationTimeOffset"    # J
    .param p6, "startNumber"    # I
    .param p7, "duration"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer/dash/mpd/RangedUri;",
            "JJIJ",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentTimelineElement;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer/dash/mpd/RangedUri;",
            ">;)",
            "Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentList;"
        }
    .end annotation

    .prologue
    .line 496
    .local p9, "timeline":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentTimelineElement;>;"
    .local p10, "segments":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer/dash/mpd/RangedUri;>;"
    new-instance v0, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentList;

    move-object v1, p1

    move-wide v2, p2

    move-wide/from16 v4, p4

    move/from16 v6, p6

    move-wide/from16 v7, p7

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    invoke-direct/range {v0 .. v10}, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentList;-><init>(Lcom/google/android/exoplayer/dash/mpd/RangedUri;JJIJLjava/util/List;Ljava/util/List;)V

    return-object v0
.end method

.method protected buildSegmentTemplate(Lcom/google/android/exoplayer/dash/mpd/RangedUri;JJIJLjava/util/List;Lcom/google/android/exoplayer/dash/mpd/UrlTemplate;Lcom/google/android/exoplayer/dash/mpd/UrlTemplate;Ljava/lang/String;)Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentTemplate;
    .registers 27
    .param p1, "initialization"    # Lcom/google/android/exoplayer/dash/mpd/RangedUri;
    .param p2, "timescale"    # J
    .param p4, "presentationTimeOffset"    # J
    .param p6, "startNumber"    # I
    .param p7, "duration"    # J
    .param p10, "initializationTemplate"    # Lcom/google/android/exoplayer/dash/mpd/UrlTemplate;
    .param p11, "mediaTemplate"    # Lcom/google/android/exoplayer/dash/mpd/UrlTemplate;
    .param p12, "baseUrl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer/dash/mpd/RangedUri;",
            "JJIJ",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentTimelineElement;",
            ">;",
            "Lcom/google/android/exoplayer/dash/mpd/UrlTemplate;",
            "Lcom/google/android/exoplayer/dash/mpd/UrlTemplate;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentTemplate;"
        }
    .end annotation

    .prologue
    .line 538
    .local p9, "timeline":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentTimelineElement;>;"
    new-instance v0, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentTemplate;

    move-object v1, p1

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    move/from16 v6, p6

    move-wide/from16 v7, p7

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    invoke-direct/range {v0 .. v12}, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentTemplate;-><init>(Lcom/google/android/exoplayer/dash/mpd/RangedUri;JJIJLjava/util/List;Lcom/google/android/exoplayer/dash/mpd/UrlTemplate;Lcom/google/android/exoplayer/dash/mpd/UrlTemplate;Ljava/lang/String;)V

    return-object v0
.end method

.method protected buildSegmentTimelineElement(JJ)Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentTimelineElement;
    .registers 6
    .param p1, "elapsedTime"    # J
    .param p3, "duration"    # J

    .prologue
    .line 562
    new-instance v0, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentTimelineElement;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentTimelineElement;-><init>(JJ)V

    return-object v0
.end method

.method protected buildSingleSegmentBase(Lcom/google/android/exoplayer/dash/mpd/RangedUri;JJLjava/lang/String;JJ)Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SingleSegmentBase;
    .registers 22
    .param p1, "initialization"    # Lcom/google/android/exoplayer/dash/mpd/RangedUri;
    .param p2, "timescale"    # J
    .param p4, "presentationTimeOffset"    # J
    .param p6, "baseUrl"    # Ljava/lang/String;
    .param p7, "indexStart"    # J
    .param p9, "indexLength"    # J

    .prologue
    .line 452
    new-instance v0, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SingleSegmentBase;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-object/from16 v6, p6

    move-wide/from16 v7, p7

    move-wide/from16 v9, p9

    invoke-direct/range {v0 .. v10}, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SingleSegmentBase;-><init>(Lcom/google/android/exoplayer/dash/mpd/RangedUri;JJLjava/lang/String;JJ)V

    return-object v0
.end method

.method protected buildUtcTimingElement(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/exoplayer/dash/mpd/UtcTimingElement;
    .registers 4
    .param p1, "schemeIdUri"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 184
    new-instance v0, Lcom/google/android/exoplayer/dash/mpd/UtcTimingElement;

    invoke-direct {v0, p1, p2}, Lcom/google/android/exoplayer/dash/mpd/UtcTimingElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method protected getContentType(Lcom/google/android/exoplayer/dash/mpd/Representation;)I
    .registers 7
    .param p1, "representation"    # Lcom/google/android/exoplayer/dash/mpd/Representation;

    .prologue
    const/4 v3, 0x2

    const/4 v2, -0x1

    .line 292
    iget-object v4, p1, Lcom/google/android/exoplayer/dash/mpd/Representation;->format:Lcom/google/android/exoplayer/chunk/Format;

    iget-object v1, v4, Lcom/google/android/exoplayer/chunk/Format;->mimeType:Ljava/lang/String;

    .line 293
    .local v1, "mimeType":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 309
    :cond_c
    :goto_c
    return v2

    .line 295
    :cond_d
    invoke-static {v1}, Lcom/google/android/exoplayer/util/MimeTypes;->isVideo(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 296
    const/4 v2, 0x0

    goto :goto_c

    .line 297
    :cond_15
    invoke-static {v1}, Lcom/google/android/exoplayer/util/MimeTypes;->isAudio(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 298
    const/4 v2, 0x1

    goto :goto_c

    .line 299
    :cond_1d
    invoke-static {v1}, Lcom/google/android/exoplayer/util/MimeTypes;->isText(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2b

    const-string v4, "application/ttml+xml"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2d

    :cond_2b
    move v2, v3

    .line 300
    goto :goto_c

    .line 301
    :cond_2d
    const-string v4, "application/mp4"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 304
    iget-object v4, p1, Lcom/google/android/exoplayer/dash/mpd/Representation;->format:Lcom/google/android/exoplayer/chunk/Format;

    iget-object v0, v4, Lcom/google/android/exoplayer/chunk/Format;->codecs:Ljava/lang/String;

    .line 305
    .local v0, "codecs":Ljava/lang/String;
    const-string/jumbo v4, "stpp"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4b

    const-string/jumbo v4, "wvtt"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    :cond_4b
    move v2, v3

    .line 306
    goto :goto_c
.end method

.method public parse(Ljava/lang/String;Ljava/io/InputStream;)Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;
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
    .line 91
    :try_start_0
    iget-object v3, p0, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->xmlParserFactory:Lorg/xmlpull/v1/XmlPullParserFactory;

    invoke-virtual {v3}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    .line 92
    .local v2, "xpp":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v3, 0x0

    invoke-interface {v2, p2, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 93
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 94
    .local v1, "eventType":I
    const/4 v3, 0x2

    if-ne v1, v3, :cond_1d

    const-string v3, "MPD"

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2c

    .line 95
    :cond_1d
    new-instance v3, Lcom/google/android/exoplayer/ParserException;

    const-string v4, "inputStream does not contain a valid media presentation description"

    invoke-direct {v3, v4}, Lcom/google/android/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_25
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_25} :catch_25
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_25} :catch_31

    .line 99
    .end local v1    # "eventType":I
    .end local v2    # "xpp":Lorg/xmlpull/v1/XmlPullParser;
    :catch_25
    move-exception v0

    .line 100
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v3, Lcom/google/android/exoplayer/ParserException;

    invoke-direct {v3, v0}, Lcom/google/android/exoplayer/ParserException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 98
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v1    # "eventType":I
    .restart local v2    # "xpp":Lorg/xmlpull/v1/XmlPullParser;
    :cond_2c
    :try_start_2c
    invoke-virtual {p0, v2, p1}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseMediaPresentationDescription(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;
    :try_end_2f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2c .. :try_end_2f} :catch_25
    .catch Ljava/text/ParseException; {:try_start_2c .. :try_end_2f} :catch_31

    move-result-object v3

    return-object v3

    .line 101
    .end local v1    # "eventType":I
    .end local v2    # "xpp":Lorg/xmlpull/v1/XmlPullParser;
    :catch_31
    move-exception v0

    .line 102
    .local v0, "e":Ljava/text/ParseException;
    new-instance v3, Lcom/google/android/exoplayer/ParserException;

    invoke-direct {v3, v0}, Lcom/google/android/exoplayer/ParserException;-><init>(Ljava/lang/Throwable;)V

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
    .line 54
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parse(Ljava/lang/String;Ljava/io/InputStream;)Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;

    move-result-object v0

    return-object v0
.end method

.method protected parseAdaptationSet(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Lcom/google/android/exoplayer/dash/mpd/SegmentBase;)Lcom/google/android/exoplayer/dash/mpd/AdaptationSet;
    .registers 27
    .param p1, "xpp"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "baseUrl"    # Ljava/lang/String;
    .param p3, "segmentBase"    # Lcom/google/android/exoplayer/dash/mpd/SegmentBase;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 224
    const-string v4, "id"

    const/4 v5, -0x1

    move-object/from16 v0, p1

    invoke-static {v0, v4, v5}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v19

    .line 225
    .local v19, "id":I
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseContentType(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v18

    .line 227
    .local v18, "contentType":I
    const/4 v4, 0x0

    const-string v5, "mimeType"

    move-object/from16 v0, p1

    invoke-interface {v0, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 228
    .local v7, "mimeType":Ljava/lang/String;
    const/4 v4, 0x0

    const-string v5, "codecs"

    move-object/from16 v0, p1

    invoke-interface {v0, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 229
    .local v8, "codecs":Ljava/lang/String;
    const-string/jumbo v4, "width"

    const/4 v5, -0x1

    move-object/from16 v0, p1

    invoke-static {v0, v4, v5}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v9

    .line 230
    .local v9, "width":I
    const-string v4, "height"

    const/4 v5, -0x1

    move-object/from16 v0, p1

    invoke-static {v0, v4, v5}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v10

    .line 231
    .local v10, "height":I
    const/high16 v4, -0x40800000

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseFrameRate(Lorg/xmlpull/v1/XmlPullParser;F)F

    move-result v11

    .line 232
    .local v11, "frameRate":F
    const/4 v12, -0x1

    .line 233
    .local v12, "audioChannels":I
    const-string v4, "audioSamplingRate"

    const/4 v5, -0x1

    move-object/from16 v0, p1

    invoke-static {v0, v4, v5}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v13

    .line 234
    .local v13, "audioSamplingRate":I
    const/4 v4, 0x0

    const-string v5, "lang"

    move-object/from16 v0, p1

    invoke-interface {v0, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 236
    .local v14, "language":Ljava/lang/String;
    new-instance v16, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser$ContentProtectionsBuilder;

    invoke-direct/range {v16 .. v16}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser$ContentProtectionsBuilder;-><init>()V

    .line 237
    .local v16, "contentProtectionsBuilder":Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser$ContentProtectionsBuilder;
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 238
    .local v21, "representations":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer/dash/mpd/Representation;>;"
    const/16 v22, 0x0

    .line 240
    .local v22, "seenFirstBaseUrl":Z
    :cond_59
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 241
    const-string v4, "BaseURL"

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lcom/google/android/exoplayer/util/ParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_89

    .line 242
    if-nez v22, :cond_6e

    .line 243
    invoke-static/range {p1 .. p2}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseBaseUrl(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 244
    const/16 v22, 0x1

    .line 272
    :cond_6e
    :goto_6e
    const-string v4, "AdaptationSet"

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lcom/google/android/exoplayer/util/ParserUtil;->isEndTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_59

    .line 274
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser$ContentProtectionsBuilder;->build()Ljava/util/ArrayList;

    move-result-object v4

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v18

    move-object/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->buildAdaptationSet(IILjava/util/List;Ljava/util/List;)Lcom/google/android/exoplayer/dash/mpd/AdaptationSet;

    move-result-object v4

    return-object v4

    .line 246
    :cond_89
    const-string v4, "ContentProtection"

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lcom/google/android/exoplayer/util/ParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9d

    .line 247
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseContentProtection(Lorg/xmlpull/v1/XmlPullParser;)Lcom/google/android/exoplayer/dash/mpd/ContentProtection;

    move-result-object v17

    .line 248
    .local v17, "contentProtection":Lcom/google/android/exoplayer/dash/mpd/ContentProtection;
    if-eqz v17, :cond_6e

    .line 249
    invoke-virtual/range {v16 .. v17}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser$ContentProtectionsBuilder;->addAdaptationSetProtection(Lcom/google/android/exoplayer/dash/mpd/ContentProtection;)V

    goto :goto_6e

    .line 251
    .end local v17    # "contentProtection":Lcom/google/android/exoplayer/dash/mpd/ContentProtection;
    :cond_9d
    const-string v4, "ContentComponent"

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lcom/google/android/exoplayer/util/ParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_bf

    .line 252
    const/4 v4, 0x0

    const-string v5, "lang"

    move-object/from16 v0, p1

    invoke-interface {v0, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v14, v4}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->checkLanguageConsistency(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 253
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseContentType(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v4

    move/from16 v0, v18

    invoke-static {v0, v4}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->checkContentTypeConsistency(II)I

    move-result v18

    goto :goto_6e

    .line 254
    :cond_bf
    const-string v4, "Representation"

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lcom/google/android/exoplayer/util/ParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_ee

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v15, p3

    .line 255
    invoke-virtual/range {v4 .. v16}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseRepresentation(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIFIILjava/lang/String;Lcom/google/android/exoplayer/dash/mpd/SegmentBase;Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser$ContentProtectionsBuilder;)Lcom/google/android/exoplayer/dash/mpd/Representation;

    move-result-object v20

    .line 258
    .local v20, "representation":Lcom/google/android/exoplayer/dash/mpd/Representation;
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser$ContentProtectionsBuilder;->endRepresentation()V

    .line 259
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->getContentType(Lcom/google/android/exoplayer/dash/mpd/Representation;)I

    move-result v4

    move/from16 v0, v18

    invoke-static {v0, v4}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->checkContentTypeConsistency(II)I

    move-result v18

    .line 260
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6e

    .line 261
    .end local v20    # "representation":Lcom/google/android/exoplayer/dash/mpd/Representation;
    :cond_ee
    const-string v4, "AudioChannelConfiguration"

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lcom/google/android/exoplayer/util/ParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_fe

    .line 262
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseAudioChannelConfiguration(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v12

    goto/16 :goto_6e

    .line 263
    :cond_fe
    const-string v4, "SegmentBase"

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lcom/google/android/exoplayer/util/ParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_110

    .line 264
    check-cast p3, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SingleSegmentBase;

    .end local p3    # "segmentBase":Lcom/google/android/exoplayer/dash/mpd/SegmentBase;
    invoke-virtual/range {p0 .. p3}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseSegmentBase(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SingleSegmentBase;)Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SingleSegmentBase;

    move-result-object p3

    .restart local p3    # "segmentBase":Lcom/google/android/exoplayer/dash/mpd/SegmentBase;
    goto/16 :goto_6e

    .line 265
    :cond_110
    const-string v4, "SegmentList"

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lcom/google/android/exoplayer/util/ParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_122

    .line 266
    check-cast p3, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentList;

    .end local p3    # "segmentBase":Lcom/google/android/exoplayer/dash/mpd/SegmentBase;
    invoke-virtual/range {p0 .. p3}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseSegmentList(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentList;)Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentList;

    move-result-object p3

    .restart local p3    # "segmentBase":Lcom/google/android/exoplayer/dash/mpd/SegmentBase;
    goto/16 :goto_6e

    .line 267
    :cond_122
    const-string v4, "SegmentTemplate"

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lcom/google/android/exoplayer/util/ParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_134

    .line 268
    check-cast p3, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentTemplate;

    .end local p3    # "segmentBase":Lcom/google/android/exoplayer/dash/mpd/SegmentBase;
    invoke-virtual/range {p0 .. p3}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseSegmentTemplate(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentTemplate;)Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentTemplate;

    move-result-object p3

    .restart local p3    # "segmentBase":Lcom/google/android/exoplayer/dash/mpd/SegmentBase;
    goto/16 :goto_6e

    .line 269
    :cond_134
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer/util/ParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v4

    if-eqz v4, :cond_6e

    .line 270
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseAdaptationSetChild(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_6e
.end method

.method protected parseAdaptationSetChild(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 2
    .param p1, "xpp"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 357
    return-void
.end method

.method protected parseAudioChannelConfiguration(Lorg/xmlpull/v1/XmlPullParser;)I
    .registers 6
    .param p1, "xpp"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 608
    const-string v2, "schemeIdUri"

    const/4 v3, 0x0

    invoke-static {p1, v2, v3}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseString(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 609
    .local v1, "schemeIdUri":Ljava/lang/String;
    const-string/jumbo v2, "urn:mpeg:dash:23003:3:audio_channel_configuration:2011"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 610
    const-string/jumbo v2, "value"

    invoke-static {p1, v2}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v0

    .line 615
    .local v0, "audioChannels":I
    :cond_17
    :goto_17
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 616
    const-string v2, "AudioChannelConfiguration"

    invoke-static {p1, v2}, Lcom/google/android/exoplayer/util/ParserUtil;->isEndTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 617
    return v0

    .line 612
    .end local v0    # "audioChannels":I
    :cond_23
    const/4 v0, -0x1

    .restart local v0    # "audioChannels":I
    goto :goto_17
.end method

.method protected parseContentProtection(Lorg/xmlpull/v1/XmlPullParser;)Lcom/google/android/exoplayer/dash/mpd/ContentProtection;
    .registers 10
    .param p1, "xpp"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 321
    const-string v5, "schemeIdUri"

    invoke-interface {p1, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 322
    .local v1, "schemeIdUri":Ljava/lang/String;
    const/4 v3, 0x0

    .line 323
    .local v3, "uuid":Ljava/util/UUID;
    const/4 v0, 0x0

    .line 324
    .local v0, "data":Lcom/google/android/exoplayer/drm/DrmInitData$SchemeInitData;
    const/4 v2, 0x0

    .line 326
    .local v2, "seenPsshElement":Z
    :cond_a
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 328
    const-string v5, "cenc:pssh"

    invoke-static {p1, v5}, Lcom/google/android/exoplayer/util/ParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_34

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    const/4 v6, 0x4

    if-ne v5, v6, :cond_34

    .line 329
    const/4 v2, 0x1

    .line 330
    new-instance v0, Lcom/google/android/exoplayer/drm/DrmInitData$SchemeInitData;

    .end local v0    # "data":Lcom/google/android/exoplayer/drm/DrmInitData$SchemeInitData;
    const-string/jumbo v5, "video/mp4"

    .line 331
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v6

    invoke-direct {v0, v5, v6}, Lcom/google/android/exoplayer/drm/DrmInitData$SchemeInitData;-><init>(Ljava/lang/String;[B)V

    .line 332
    .restart local v0    # "data":Lcom/google/android/exoplayer/drm/DrmInitData$SchemeInitData;
    iget-object v5, v0, Lcom/google/android/exoplayer/drm/DrmInitData$SchemeInitData;->data:[B

    invoke-static {v5}, Lcom/google/android/exoplayer/extractor/mp4/PsshAtomUtil;->parseUuid([B)Ljava/util/UUID;

    move-result-object v3

    .line 334
    :cond_34
    const-string v5, "ContentProtection"

    invoke-static {p1, v5}, Lcom/google/android/exoplayer/util/ParserUtil;->isEndTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 335
    if-eqz v2, :cond_48

    if-nez v3, :cond_48

    .line 336
    const-string v5, "MediaPresentationDescriptionParser"

    const-string v6, "Skipped unsupported ContentProtection element"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    :goto_47
    return-object v4

    :cond_48
    invoke-virtual {p0, v1, v3, v0}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->buildContentProtection(Ljava/lang/String;Ljava/util/UUID;Lcom/google/android/exoplayer/drm/DrmInitData$SchemeInitData;)Lcom/google/android/exoplayer/dash/mpd/ContentProtection;

    move-result-object v4

    goto :goto_47
.end method

.method protected parseContentType(Lorg/xmlpull/v1/XmlPullParser;)I
    .registers 6
    .param p1, "xpp"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    const/4 v1, -0x1

    .line 283
    const/4 v2, 0x0

    const-string v3, "contentType"

    invoke-interface {p1, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 284
    .local v0, "contentType":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_f

    :cond_e
    :goto_e
    return v1

    :cond_f
    const-string v2, "audio"

    .line 285
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    const/4 v1, 0x1

    goto :goto_e

    :cond_19
    const-string/jumbo v2, "video"

    .line 286
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    const/4 v1, 0x0

    goto :goto_e

    :cond_24
    const-string/jumbo v2, "text"

    .line 287
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    const/4 v1, 0x2

    goto :goto_e
.end method

.method protected parseInitialization(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lcom/google/android/exoplayer/dash/mpd/RangedUri;
    .registers 5
    .param p1, "xpp"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "baseUrl"    # Ljava/lang/String;

    .prologue
    .line 575
    const-string v0, "sourceURL"

    const-string v1, "range"

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseRangedUrl(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/exoplayer/dash/mpd/RangedUri;

    move-result-object v0

    return-object v0
.end method

.method protected parseMediaPresentationDescription(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;
    .registers 37
    .param p1, "xpp"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "baseUrl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 108
    const-string v7, "availabilityStartTime"

    const-wide/16 v30, -0x1

    move-object/from16 v0, p1

    move-wide/from16 v1, v30

    invoke-static {v0, v7, v1, v2}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseDateTime(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v8

    .line 109
    .local v8, "availabilityStartTime":J
    const-string v7, "mediaPresentationDuration"

    const-wide/16 v30, -0x1

    move-object/from16 v0, p1

    move-wide/from16 v1, v30

    invoke-static {v0, v7, v1, v2}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseDuration(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v10

    .line 110
    .local v10, "durationMs":J
    const-string v7, "minBufferTime"

    const-wide/16 v30, -0x1

    move-object/from16 v0, p1

    move-wide/from16 v1, v30

    invoke-static {v0, v7, v1, v2}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseDuration(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v12

    .line 111
    .local v12, "minBufferTimeMs":J
    const/4 v7, 0x0

    const-string/jumbo v30, "type"

    move-object/from16 v0, p1

    move-object/from16 v1, v30

    invoke-interface {v0, v7, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 112
    .local v29, "typeString":Ljava/lang/String;
    if-eqz v29, :cond_a5

    const-string v7, "dynamic"

    move-object/from16 v0, v29

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    .line 113
    .local v14, "dynamic":Z
    :goto_3a
    if-eqz v14, :cond_a7

    const-string v7, "minimumUpdatePeriod"

    const-wide/16 v30, -0x1

    move-object/from16 v0, p1

    move-wide/from16 v1, v30

    invoke-static {v0, v7, v1, v2}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseDuration(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v15

    .line 114
    .local v15, "minUpdateTimeMs":J
    :goto_48
    if-eqz v14, :cond_aa

    const-string/jumbo v7, "timeShiftBufferDepth"

    const-wide/16 v30, -0x1

    move-object/from16 v0, p1

    move-wide/from16 v1, v30

    invoke-static {v0, v7, v1, v2}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseDuration(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v17

    .line 115
    .local v17, "timeShiftBufferDepthMs":J
    :goto_57
    const/16 v19, 0x0

    .line 116
    .local v19, "utcTiming":Lcom/google/android/exoplayer/dash/mpd/UtcTimingElement;
    const/16 v20, 0x0

    .line 118
    .local v20, "location":Ljava/lang/String;
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 119
    .local v21, "periods":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer/dash/mpd/Period;>;"
    if-eqz v14, :cond_ad

    const-wide/16 v22, -0x1

    .line 120
    .local v22, "nextPeriodStartMs":J
    :goto_64
    const/16 v27, 0x0

    .line 121
    .local v27, "seenEarlyAccessPeriod":Z
    const/16 v28, 0x0

    .line 123
    .local v28, "seenFirstBaseUrl":Z
    :cond_68
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 124
    const-string v7, "BaseURL"

    move-object/from16 v0, p1

    invoke-static {v0, v7}, Lcom/google/android/exoplayer/util/ParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_b0

    .line 125
    if-nez v28, :cond_7d

    .line 126
    invoke-static/range {p1 .. p2}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseBaseUrl(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 127
    const/16 v28, 0x1

    .line 150
    :cond_7d
    :goto_7d
    const-string v7, "MPD"

    move-object/from16 v0, p1

    invoke-static {v0, v7}, Lcom/google/android/exoplayer/util/ParserUtil;->isEndTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_68

    .line 152
    const-wide/16 v30, -0x1

    cmp-long v7, v10, v30

    if-nez v7, :cond_95

    .line 153
    const-wide/16 v30, -0x1

    cmp-long v7, v22, v30

    if-eqz v7, :cond_13a

    .line 155
    move-wide/from16 v10, v22

    .line 161
    :cond_95
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_146

    .line 162
    new-instance v7, Lcom/google/android/exoplayer/ParserException;

    const-string v30, "No periods found."

    move-object/from16 v0, v30

    invoke-direct {v7, v0}, Lcom/google/android/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 112
    .end local v14    # "dynamic":Z
    .end local v15    # "minUpdateTimeMs":J
    .end local v17    # "timeShiftBufferDepthMs":J
    .end local v19    # "utcTiming":Lcom/google/android/exoplayer/dash/mpd/UtcTimingElement;
    .end local v20    # "location":Ljava/lang/String;
    .end local v21    # "periods":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer/dash/mpd/Period;>;"
    .end local v22    # "nextPeriodStartMs":J
    .end local v27    # "seenEarlyAccessPeriod":Z
    .end local v28    # "seenFirstBaseUrl":Z
    :cond_a5
    const/4 v14, 0x0

    goto :goto_3a

    .line 113
    .restart local v14    # "dynamic":Z
    :cond_a7
    const-wide/16 v15, -0x1

    goto :goto_48

    .line 114
    .restart local v15    # "minUpdateTimeMs":J
    :cond_aa
    const-wide/16 v17, -0x1

    goto :goto_57

    .line 119
    .restart local v17    # "timeShiftBufferDepthMs":J
    .restart local v19    # "utcTiming":Lcom/google/android/exoplayer/dash/mpd/UtcTimingElement;
    .restart local v20    # "location":Ljava/lang/String;
    .restart local v21    # "periods":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer/dash/mpd/Period;>;"
    :cond_ad
    const-wide/16 v22, 0x0

    goto :goto_64

    .line 129
    .restart local v22    # "nextPeriodStartMs":J
    .restart local v27    # "seenEarlyAccessPeriod":Z
    .restart local v28    # "seenFirstBaseUrl":Z
    :cond_b0
    const-string v7, "UTCTiming"

    move-object/from16 v0, p1

    invoke-static {v0, v7}, Lcom/google/android/exoplayer/util/ParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_bf

    .line 130
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseUtcTiming(Lorg/xmlpull/v1/XmlPullParser;)Lcom/google/android/exoplayer/dash/mpd/UtcTimingElement;

    move-result-object v19

    goto :goto_7d

    .line 131
    :cond_bf
    const-string v7, "Location"

    move-object/from16 v0, p1

    invoke-static {v0, v7}, Lcom/google/android/exoplayer/util/ParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_ce

    .line 132
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v20

    goto :goto_7d

    .line 133
    :cond_ce
    const-string v7, "Period"

    move-object/from16 v0, p1

    invoke-static {v0, v7}, Lcom/google/android/exoplayer/util/ParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7d

    if-nez v27, :cond_7d

    .line 134
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-wide/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parsePeriod(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)Landroid/util/Pair;

    move-result-object v26

    .line 135
    .local v26, "periodWithDurationMs":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/google/android/exoplayer/dash/mpd/Period;Ljava/lang/Long;>;"
    move-object/from16 v0, v26

    iget-object v6, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Lcom/google/android/exoplayer/dash/mpd/Period;

    .line 136
    .local v6, "period":Lcom/google/android/exoplayer/dash/mpd/Period;
    iget-wide v0, v6, Lcom/google/android/exoplayer/dash/mpd/Period;->startMs:J

    move-wide/from16 v30, v0

    const-wide/16 v32, -0x1

    cmp-long v7, v30, v32

    if-nez v7, :cond_11a

    .line 137
    if-eqz v14, :cond_fb

    .line 140
    const/16 v27, 0x1

    goto :goto_7d

    .line 142
    :cond_fb
    new-instance v7, Lcom/google/android/exoplayer/ParserException;

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "Unable to determine start of period "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-direct {v7, v0}, Lcom/google/android/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 145
    :cond_11a
    move-object/from16 v0, v26

    iget-object v7, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v24

    .line 146
    .local v24, "periodDurationMs":J
    const-wide/16 v30, -0x1

    cmp-long v7, v24, v30

    if-nez v7, :cond_133

    const-wide/16 v22, -0x1

    .line 147
    :goto_12c
    move-object/from16 v0, v21

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7d

    .line 146
    :cond_133
    iget-wide v0, v6, Lcom/google/android/exoplayer/dash/mpd/Period;->startMs:J

    move-wide/from16 v30, v0

    add-long v22, v30, v24

    goto :goto_12c

    .line 156
    .end local v6    # "period":Lcom/google/android/exoplayer/dash/mpd/Period;
    .end local v24    # "periodDurationMs":J
    .end local v26    # "periodWithDurationMs":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/google/android/exoplayer/dash/mpd/Period;Ljava/lang/Long;>;"
    :cond_13a
    if-nez v14, :cond_95

    .line 157
    new-instance v7, Lcom/google/android/exoplayer/ParserException;

    const-string v30, "Unable to determine duration of static manifest."

    move-object/from16 v0, v30

    invoke-direct {v7, v0}, Lcom/google/android/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_146
    move-object/from16 v7, p0

    .line 165
    invoke-virtual/range {v7 .. v21}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->buildMediaPresentationDescription(JJJZJJLcom/google/android/exoplayer/dash/mpd/UtcTimingElement;Ljava/lang/String;Ljava/util/List;)Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;

    move-result-object v7

    return-object v7
.end method

.method protected parsePeriod(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)Landroid/util/Pair;
    .registers 22
    .param p1, "xpp"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "baseUrl"    # Ljava/lang/String;
    .param p3, "defaultStartMs"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/lang/String;",
            "J)",
            "Landroid/util/Pair",
            "<",
            "Lcom/google/android/exoplayer/dash/mpd/Period;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 189
    const/4 v12, 0x0

    const-string v13, "id"

    move-object/from16 v0, p1

    invoke-interface {v0, v12, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 190
    .local v5, "id":Ljava/lang/String;
    const-string v12, "start"

    move-object/from16 v0, p1

    move-wide/from16 v1, p3

    invoke-static {v0, v12, v1, v2}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseDuration(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v10

    .line 191
    .local v10, "startMs":J
    const-string v12, "duration"

    const-wide/16 v14, -0x1

    move-object/from16 v0, p1

    invoke-static {v0, v12, v14, v15}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseDuration(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v6

    .line 192
    .local v6, "durationMs":J
    const/4 v9, 0x0

    .line 193
    .local v9, "segmentBase":Lcom/google/android/exoplayer/dash/mpd/SegmentBase;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 194
    .local v4, "adaptationSets":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer/dash/mpd/AdaptationSet;>;"
    const/4 v8, 0x0

    .line 196
    .local v8, "seenFirstBaseUrl":Z
    :cond_24
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 197
    const-string v12, "BaseURL"

    move-object/from16 v0, p1

    invoke-static {v0, v12}, Lcom/google/android/exoplayer/util/ParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_51

    .line 198
    if-nez v8, :cond_38

    .line 199
    invoke-static/range {p1 .. p2}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseBaseUrl(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 200
    const/4 v8, 0x1

    .line 211
    :cond_38
    :goto_38
    const-string v12, "Period"

    move-object/from16 v0, p1

    invoke-static {v0, v12}, Lcom/google/android/exoplayer/util/ParserUtil;->isEndTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_24

    .line 213
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v10, v11, v4}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->buildPeriod(Ljava/lang/String;JLjava/util/List;)Lcom/google/android/exoplayer/dash/mpd/Period;

    move-result-object v12

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v12

    return-object v12

    .line 202
    :cond_51
    const-string v12, "AdaptationSet"

    move-object/from16 v0, p1

    invoke-static {v0, v12}, Lcom/google/android/exoplayer/util/ParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_69

    .line 203
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v9}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseAdaptationSet(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Lcom/google/android/exoplayer/dash/mpd/SegmentBase;)Lcom/google/android/exoplayer/dash/mpd/AdaptationSet;

    move-result-object v12

    invoke-interface {v4, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_38

    .line 204
    :cond_69
    const-string v12, "SegmentBase"

    move-object/from16 v0, p1

    invoke-static {v0, v12}, Lcom/google/android/exoplayer/util/ParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_7f

    .line 205
    const/4 v12, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v12}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseSegmentBase(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SingleSegmentBase;)Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SingleSegmentBase;

    move-result-object v9

    goto :goto_38

    .line 206
    :cond_7f
    const-string v12, "SegmentList"

    move-object/from16 v0, p1

    invoke-static {v0, v12}, Lcom/google/android/exoplayer/util/ParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_95

    .line 207
    const/4 v12, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v12}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseSegmentList(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentList;)Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentList;

    move-result-object v9

    goto :goto_38

    .line 208
    :cond_95
    const-string v12, "SegmentTemplate"

    move-object/from16 v0, p1

    invoke-static {v0, v12}, Lcom/google/android/exoplayer/util/ParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_38

    .line 209
    const/4 v12, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v12}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseSegmentTemplate(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentTemplate;)Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentTemplate;

    move-result-object v9

    goto :goto_38
.end method

.method protected parseRangedUrl(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/exoplayer/dash/mpd/RangedUri;
    .registers 21
    .param p1, "xpp"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "baseUrl"    # Ljava/lang/String;
    .param p3, "urlAttribute"    # Ljava/lang/String;
    .param p4, "rangeAttribute"    # Ljava/lang/String;

    .prologue
    .line 584
    const/4 v3, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-interface {v0, v3, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 585
    .local v5, "urlText":Ljava/lang/String;
    const-wide/16 v6, 0x0

    .line 586
    .local v6, "rangeStart":J
    const-wide/16 v8, -0x1

    .line 587
    .local v8, "rangeLength":J
    const/4 v3, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p4

    invoke-interface {v0, v3, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 588
    .local v2, "rangeText":Ljava/lang/String;
    if-eqz v2, :cond_35

    .line 589
    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 590
    .local v10, "rangeTextArray":[Ljava/lang/String;
    const/4 v3, 0x0

    aget-object v3, v10, v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 591
    array-length v3, v10

    const/4 v4, 0x2

    if-ne v3, v4, :cond_35

    .line 592
    const/4 v3, 0x1

    aget-object v3, v10, v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    sub-long/2addr v12, v6

    const-wide/16 v14, 0x1

    add-long v8, v12, v14

    .end local v10    # "rangeTextArray":[Ljava/lang/String;
    :cond_35
    move-object/from16 v3, p0

    move-object/from16 v4, p2

    .line 595
    invoke-virtual/range {v3 .. v9}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->buildRangedUri(Ljava/lang/String;Ljava/lang/String;JJ)Lcom/google/android/exoplayer/dash/mpd/RangedUri;

    move-result-object v3

    return-object v3
.end method

.method protected parseRepresentation(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIFIILjava/lang/String;Lcom/google/android/exoplayer/dash/mpd/SegmentBase;Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser$ContentProtectionsBuilder;)Lcom/google/android/exoplayer/dash/mpd/Representation;
    .registers 32
    .param p1, "xpp"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "baseUrl"    # Ljava/lang/String;
    .param p3, "adaptationSetMimeType"    # Ljava/lang/String;
    .param p4, "adaptationSetCodecs"    # Ljava/lang/String;
    .param p5, "adaptationSetWidth"    # I
    .param p6, "adaptationSetHeight"    # I
    .param p7, "adaptationSetFrameRate"    # F
    .param p8, "adaptationSetAudioChannels"    # I
    .param p9, "adaptationSetAudioSamplingRate"    # I
    .param p10, "adaptationSetLanguage"    # Ljava/lang/String;
    .param p11, "segmentBase"    # Lcom/google/android/exoplayer/dash/mpd/SegmentBase;
    .param p12, "contentProtectionsBuilder"    # Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser$ContentProtectionsBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 367
    const/4 v4, 0x0

    const-string v18, "id"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-interface {v0, v4, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 368
    .local v5, "id":Ljava/lang/String;
    const-string v4, "bandwidth"

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v12

    .line 370
    .local v12, "bandwidth":I
    const-string v4, "mimeType"

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-static {v0, v4, v1}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseString(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 371
    .local v6, "mimeType":Ljava/lang/String;
    const-string v4, "codecs"

    move-object/from16 v0, p1

    move-object/from16 v1, p4

    invoke-static {v0, v4, v1}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseString(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 372
    .local v14, "codecs":Ljava/lang/String;
    const-string/jumbo v4, "width"

    move-object/from16 v0, p1

    move/from16 v1, p5

    invoke-static {v0, v4, v1}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v7

    .line 373
    .local v7, "width":I
    const-string v4, "height"

    move-object/from16 v0, p1

    move/from16 v1, p6

    invoke-static {v0, v4, v1}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v8

    .line 374
    .local v8, "height":I
    move-object/from16 v0, p1

    move/from16 v1, p7

    invoke-static {v0, v1}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseFrameRate(Lorg/xmlpull/v1/XmlPullParser;F)F

    move-result v9

    .line 375
    .local v9, "frameRate":F
    move/from16 v10, p8

    .line 376
    .local v10, "audioChannels":I
    const-string v4, "audioSamplingRate"

    move-object/from16 v0, p1

    move/from16 v1, p9

    invoke-static {v0, v4, v1}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v11

    .line 377
    .local v11, "audioSamplingRate":I
    move-object/from16 v13, p10

    .line 379
    .local v13, "language":Ljava/lang/String;
    const/16 v17, 0x0

    .line 381
    .local v17, "seenFirstBaseUrl":Z
    :cond_54
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 382
    const-string v4, "BaseURL"

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lcom/google/android/exoplayer/util/ParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8e

    .line 383
    if-nez v17, :cond_69

    .line 384
    invoke-static/range {p1 .. p2}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseBaseUrl(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 385
    const/16 v17, 0x1

    .line 401
    :cond_69
    :goto_69
    const-string v4, "Representation"

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lcom/google/android/exoplayer/util/ParserUtil;->isEndTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_54

    move-object/from16 v4, p0

    .line 403
    invoke-virtual/range {v4 .. v14}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->buildFormat(Ljava/lang/String;Ljava/lang/String;IIFIIILjava/lang/String;Ljava/lang/String;)Lcom/google/android/exoplayer/chunk/Format;

    move-result-object v16

    .line 405
    .local v16, "format":Lcom/google/android/exoplayer/chunk/Format;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->contentId:Ljava/lang/String;

    const/16 v18, -0x1

    if-eqz p11, :cond_ff

    .end local p11    # "segmentBase":Lcom/google/android/exoplayer/dash/mpd/SegmentBase;
    :goto_81
    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v16

    move-object/from16 v3, p11

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->buildRepresentation(Ljava/lang/String;ILcom/google/android/exoplayer/chunk/Format;Lcom/google/android/exoplayer/dash/mpd/SegmentBase;)Lcom/google/android/exoplayer/dash/mpd/Representation;

    move-result-object v4

    return-object v4

    .line 387
    .end local v16    # "format":Lcom/google/android/exoplayer/chunk/Format;
    .restart local p11    # "segmentBase":Lcom/google/android/exoplayer/dash/mpd/SegmentBase;
    :cond_8e
    const-string v4, "AudioChannelConfiguration"

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lcom/google/android/exoplayer/util/ParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9d

    .line 388
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseAudioChannelConfiguration(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v10

    goto :goto_69

    .line 389
    :cond_9d
    const-string v4, "SegmentBase"

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lcom/google/android/exoplayer/util/ParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b6

    .line 390
    check-cast p11, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SingleSegmentBase;

    .end local p11    # "segmentBase":Lcom/google/android/exoplayer/dash/mpd/SegmentBase;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p11

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseSegmentBase(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SingleSegmentBase;)Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SingleSegmentBase;

    move-result-object p11

    .restart local p11    # "segmentBase":Lcom/google/android/exoplayer/dash/mpd/SegmentBase;
    goto :goto_69

    .line 391
    :cond_b6
    const-string v4, "SegmentList"

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lcom/google/android/exoplayer/util/ParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_cf

    .line 392
    check-cast p11, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentList;

    .end local p11    # "segmentBase":Lcom/google/android/exoplayer/dash/mpd/SegmentBase;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p11

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseSegmentList(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentList;)Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentList;

    move-result-object p11

    .restart local p11    # "segmentBase":Lcom/google/android/exoplayer/dash/mpd/SegmentBase;
    goto :goto_69

    .line 393
    :cond_cf
    const-string v4, "SegmentTemplate"

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lcom/google/android/exoplayer/util/ParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_e8

    .line 394
    check-cast p11, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentTemplate;

    .end local p11    # "segmentBase":Lcom/google/android/exoplayer/dash/mpd/SegmentBase;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p11

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseSegmentTemplate(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentTemplate;)Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentTemplate;

    move-result-object p11

    .restart local p11    # "segmentBase":Lcom/google/android/exoplayer/dash/mpd/SegmentBase;
    goto :goto_69

    .line 395
    :cond_e8
    const-string v4, "ContentProtection"

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lcom/google/android/exoplayer/util/ParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_69

    .line 396
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseContentProtection(Lorg/xmlpull/v1/XmlPullParser;)Lcom/google/android/exoplayer/dash/mpd/ContentProtection;

    move-result-object v15

    .line 397
    .local v15, "contentProtection":Lcom/google/android/exoplayer/dash/mpd/ContentProtection;
    if-eqz v15, :cond_69

    .line 398
    move-object/from16 v0, p12

    invoke-virtual {v0, v15}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser$ContentProtectionsBuilder;->addAdaptationSetProtection(Lcom/google/android/exoplayer/dash/mpd/ContentProtection;)V

    goto/16 :goto_69

    .line 405
    .end local v15    # "contentProtection":Lcom/google/android/exoplayer/dash/mpd/ContentProtection;
    .restart local v16    # "format":Lcom/google/android/exoplayer/chunk/Format;
    :cond_ff
    new-instance p11, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SingleSegmentBase;

    .end local p11    # "segmentBase":Lcom/google/android/exoplayer/dash/mpd/SegmentBase;
    move-object/from16 v0, p11

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SingleSegmentBase;-><init>(Ljava/lang/String;)V

    goto/16 :goto_81
.end method

.method protected parseSegmentBase(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SingleSegmentBase;)Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SingleSegmentBase;
    .registers 26
    .param p1, "xpp"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "baseUrl"    # Ljava/lang/String;
    .param p3, "parent"    # Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SingleSegmentBase;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 425
    const-string/jumbo v4, "timescale"

    if-eqz p3, :cond_82

    move-object/from16 v0, p3

    iget-wide v0, v0, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SingleSegmentBase;->timescale:J

    move-wide/from16 v18, v0

    :goto_b
    move-object/from16 v0, p1

    move-wide/from16 v1, v18

    invoke-static {v0, v4, v1, v2}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseLong(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v6

    .line 426
    .local v6, "timescale":J
    const-string v4, "presentationTimeOffset"

    if-eqz p3, :cond_85

    move-object/from16 v0, p3

    iget-wide v0, v0, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SingleSegmentBase;->presentationTimeOffset:J

    move-wide/from16 v18, v0

    :goto_1d
    move-object/from16 v0, p1

    move-wide/from16 v1, v18

    invoke-static {v0, v4, v1, v2}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseLong(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v8

    .line 429
    .local v8, "presentationTimeOffset":J
    if-eqz p3, :cond_88

    move-object/from16 v0, p3

    iget-wide v11, v0, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SingleSegmentBase;->indexStart:J

    .line 430
    .local v11, "indexStart":J
    :goto_2b
    if-eqz p3, :cond_8b

    move-object/from16 v0, p3

    iget-wide v13, v0, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SingleSegmentBase;->indexLength:J

    .line 431
    .local v13, "indexLength":J
    :goto_31
    const/4 v4, 0x0

    const-string v10, "indexRange"

    move-object/from16 v0, p1

    invoke-interface {v0, v4, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 432
    .local v16, "indexRangeText":Ljava/lang/String;
    if-eqz v16, :cond_58

    .line 433
    const-string v4, "-"

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 434
    .local v15, "indexRange":[Ljava/lang/String;
    const/4 v4, 0x0

    aget-object v4, v15, v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    .line 435
    const/4 v4, 0x1

    aget-object v4, v15, v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v18

    sub-long v18, v18, v11

    const-wide/16 v20, 0x1

    add-long v13, v18, v20

    .line 438
    .end local v15    # "indexRange":[Ljava/lang/String;
    :cond_58
    if-eqz p3, :cond_8e

    move-object/from16 v0, p3

    iget-object v5, v0, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SingleSegmentBase;->initialization:Lcom/google/android/exoplayer/dash/mpd/RangedUri;

    .line 440
    .local v5, "initialization":Lcom/google/android/exoplayer/dash/mpd/RangedUri;
    :cond_5e
    :goto_5e
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 441
    const-string v4, "Initialization"

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lcom/google/android/exoplayer/util/ParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6f

    .line 442
    invoke-virtual/range {p0 .. p2}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseInitialization(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lcom/google/android/exoplayer/dash/mpd/RangedUri;

    move-result-object v5

    .line 444
    :cond_6f
    const-string v4, "SegmentBase"

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lcom/google/android/exoplayer/util/ParserUtil;->isEndTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5e

    move-object/from16 v4, p0

    move-object/from16 v10, p2

    .line 446
    invoke-virtual/range {v4 .. v14}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->buildSingleSegmentBase(Lcom/google/android/exoplayer/dash/mpd/RangedUri;JJLjava/lang/String;JJ)Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SingleSegmentBase;

    move-result-object v4

    return-object v4

    .line 425
    .end local v5    # "initialization":Lcom/google/android/exoplayer/dash/mpd/RangedUri;
    .end local v6    # "timescale":J
    .end local v8    # "presentationTimeOffset":J
    .end local v11    # "indexStart":J
    .end local v13    # "indexLength":J
    .end local v16    # "indexRangeText":Ljava/lang/String;
    :cond_82
    const-wide/16 v18, 0x1

    goto :goto_b

    .line 426
    .restart local v6    # "timescale":J
    :cond_85
    const-wide/16 v18, 0x0

    goto :goto_1d

    .line 429
    .restart local v8    # "presentationTimeOffset":J
    :cond_88
    const-wide/16 v11, 0x0

    goto :goto_2b

    .line 430
    .restart local v11    # "indexStart":J
    :cond_8b
    const-wide/16 v13, -0x1

    goto :goto_31

    .line 438
    .restart local v13    # "indexLength":J
    .restart local v16    # "indexRangeText":Ljava/lang/String;
    :cond_8e
    const/4 v5, 0x0

    goto :goto_5e
.end method

.method protected parseSegmentList(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentList;)Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentList;
    .registers 20
    .param p1, "xpp"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "baseUrl"    # Ljava/lang/String;
    .param p3, "parent"    # Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentList;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 459
    const-string/jumbo v2, "timescale"

    if-eqz p3, :cond_66

    move-object/from16 v0, p3

    iget-wide v14, v0, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentList;->timescale:J

    :goto_9
    move-object/from16 v0, p1

    invoke-static {v0, v2, v14, v15}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseLong(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v4

    .line 460
    .local v4, "timescale":J
    const-string v2, "presentationTimeOffset"

    if-eqz p3, :cond_69

    move-object/from16 v0, p3

    iget-wide v14, v0, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentList;->presentationTimeOffset:J

    :goto_17
    move-object/from16 v0, p1

    invoke-static {v0, v2, v14, v15}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseLong(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v6

    .line 462
    .local v6, "presentationTimeOffset":J
    const-string v2, "duration"

    if-eqz p3, :cond_6c

    move-object/from16 v0, p3

    iget-wide v14, v0, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentList;->duration:J

    :goto_25
    move-object/from16 v0, p1

    invoke-static {v0, v2, v14, v15}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseLong(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v9

    .line 463
    .local v9, "duration":J
    const-string v13, "startNumber"

    if-eqz p3, :cond_6f

    move-object/from16 v0, p3

    iget v2, v0, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentList;->startNumber:I

    :goto_33
    move-object/from16 v0, p1

    invoke-static {v0, v13, v2}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v8

    .line 465
    .local v8, "startNumber":I
    const/4 v3, 0x0

    .line 466
    .local v3, "initialization":Lcom/google/android/exoplayer/dash/mpd/RangedUri;
    const/4 v11, 0x0

    .line 467
    .local v11, "timeline":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentTimelineElement;>;"
    const/4 v12, 0x0

    .line 470
    .local v12, "segments":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer/dash/mpd/RangedUri;>;"
    :cond_3c
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 471
    const-string v2, "Initialization"

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/google/android/exoplayer/util/ParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_71

    .line 472
    invoke-virtual/range {p0 .. p2}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseInitialization(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lcom/google/android/exoplayer/dash/mpd/RangedUri;

    move-result-object v3

    .line 481
    :cond_4d
    :goto_4d
    const-string v2, "SegmentList"

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/google/android/exoplayer/util/ParserUtil;->isEndTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 483
    if-eqz p3, :cond_5f

    .line 484
    if-eqz v3, :cond_99

    .line 485
    :goto_5b
    if-eqz v11, :cond_9e

    .line 486
    :goto_5d
    if-eqz v12, :cond_a3

    :cond_5f
    :goto_5f
    move-object/from16 v2, p0

    .line 489
    invoke-virtual/range {v2 .. v12}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->buildSegmentList(Lcom/google/android/exoplayer/dash/mpd/RangedUri;JJIJLjava/util/List;Ljava/util/List;)Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentList;

    move-result-object v2

    return-object v2

    .line 459
    .end local v3    # "initialization":Lcom/google/android/exoplayer/dash/mpd/RangedUri;
    .end local v4    # "timescale":J
    .end local v6    # "presentationTimeOffset":J
    .end local v8    # "startNumber":I
    .end local v9    # "duration":J
    .end local v11    # "timeline":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentTimelineElement;>;"
    .end local v12    # "segments":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer/dash/mpd/RangedUri;>;"
    :cond_66
    const-wide/16 v14, 0x1

    goto :goto_9

    .line 460
    .restart local v4    # "timescale":J
    :cond_69
    const-wide/16 v14, 0x0

    goto :goto_17

    .line 462
    .restart local v6    # "presentationTimeOffset":J
    :cond_6c
    const-wide/16 v14, -0x1

    goto :goto_25

    .line 463
    .restart local v9    # "duration":J
    :cond_6f
    const/4 v2, 0x1

    goto :goto_33

    .line 473
    .restart local v3    # "initialization":Lcom/google/android/exoplayer/dash/mpd/RangedUri;
    .restart local v8    # "startNumber":I
    .restart local v11    # "timeline":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentTimelineElement;>;"
    .restart local v12    # "segments":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer/dash/mpd/RangedUri;>;"
    :cond_71
    const-string v2, "SegmentTimeline"

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/google/android/exoplayer/util/ParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_80

    .line 474
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseSegmentTimeline(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/List;

    move-result-object v11

    goto :goto_4d

    .line 475
    :cond_80
    const-string v2, "SegmentURL"

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/google/android/exoplayer/util/ParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4d

    .line 476
    if-nez v12, :cond_91

    .line 477
    new-instance v12, Ljava/util/ArrayList;

    .end local v12    # "segments":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer/dash/mpd/RangedUri;>;"
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 479
    .restart local v12    # "segments":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer/dash/mpd/RangedUri;>;"
    :cond_91
    invoke-virtual/range {p0 .. p2}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseSegmentUrl(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lcom/google/android/exoplayer/dash/mpd/RangedUri;

    move-result-object v2

    invoke-interface {v12, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4d

    .line 484
    :cond_99
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentList;->initialization:Lcom/google/android/exoplayer/dash/mpd/RangedUri;

    goto :goto_5b

    .line 485
    :cond_9e
    move-object/from16 v0, p3

    iget-object v11, v0, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentList;->segmentTimeline:Ljava/util/List;

    goto :goto_5d

    .line 486
    :cond_a3
    move-object/from16 v0, p3

    iget-object v12, v0, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentList;->mediaSegments:Ljava/util/List;

    goto :goto_5f
.end method

.method protected parseSegmentTemplate(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentTemplate;)Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentTemplate;
    .registers 20
    .param p1, "xpp"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "baseUrl"    # Ljava/lang/String;
    .param p3, "parent"    # Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentTemplate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 503
    const-string/jumbo v2, "timescale"

    if-eqz p3, :cond_85

    move-object/from16 v0, p3

    iget-wide v14, v0, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentTemplate;->timescale:J

    :goto_9
    move-object/from16 v0, p1

    invoke-static {v0, v2, v14, v15}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseLong(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v4

    .line 504
    .local v4, "timescale":J
    const-string v2, "presentationTimeOffset"

    if-eqz p3, :cond_88

    move-object/from16 v0, p3

    iget-wide v14, v0, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentTemplate;->presentationTimeOffset:J

    :goto_17
    move-object/from16 v0, p1

    invoke-static {v0, v2, v14, v15}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseLong(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v6

    .line 506
    .local v6, "presentationTimeOffset":J
    const-string v2, "duration"

    if-eqz p3, :cond_8b

    move-object/from16 v0, p3

    iget-wide v14, v0, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentTemplate;->duration:J

    :goto_25
    move-object/from16 v0, p1

    invoke-static {v0, v2, v14, v15}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseLong(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v9

    .line 507
    .local v9, "duration":J
    const-string v14, "startNumber"

    if-eqz p3, :cond_8e

    move-object/from16 v0, p3

    iget v2, v0, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentTemplate;->startNumber:I

    :goto_33
    move-object/from16 v0, p1

    invoke-static {v0, v14, v2}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v8

    .line 508
    .local v8, "startNumber":I
    const-string v14, "media"

    if-eqz p3, :cond_90

    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentTemplate;->mediaTemplate:Lcom/google/android/exoplayer/dash/mpd/UrlTemplate;

    :goto_41
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v14, v2}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseUrlTemplate(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Lcom/google/android/exoplayer/dash/mpd/UrlTemplate;)Lcom/google/android/exoplayer/dash/mpd/UrlTemplate;

    move-result-object v13

    .line 510
    .local v13, "mediaTemplate":Lcom/google/android/exoplayer/dash/mpd/UrlTemplate;
    const-string v14, "initialization"

    if-eqz p3, :cond_92

    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentTemplate;->initializationTemplate:Lcom/google/android/exoplayer/dash/mpd/UrlTemplate;

    :goto_51
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v14, v2}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseUrlTemplate(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Lcom/google/android/exoplayer/dash/mpd/UrlTemplate;)Lcom/google/android/exoplayer/dash/mpd/UrlTemplate;

    move-result-object v12

    .line 513
    .local v12, "initializationTemplate":Lcom/google/android/exoplayer/dash/mpd/UrlTemplate;
    const/4 v3, 0x0

    .line 514
    .local v3, "initialization":Lcom/google/android/exoplayer/dash/mpd/RangedUri;
    const/4 v11, 0x0

    .line 517
    .local v11, "timeline":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentTimelineElement;>;"
    :cond_5b
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 518
    const-string v2, "Initialization"

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/google/android/exoplayer/util/ParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_94

    .line 519
    invoke-virtual/range {p0 .. p2}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseInitialization(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lcom/google/android/exoplayer/dash/mpd/RangedUri;

    move-result-object v3

    .line 523
    :cond_6c
    :goto_6c
    const-string v2, "SegmentTemplate"

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/google/android/exoplayer/util/ParserUtil;->isEndTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5b

    .line 525
    if-eqz p3, :cond_7c

    .line 526
    if-eqz v3, :cond_a3

    .line 527
    :goto_7a
    if-eqz v11, :cond_a8

    :cond_7c
    :goto_7c
    move-object/from16 v2, p0

    move-object/from16 v14, p2

    .line 530
    invoke-virtual/range {v2 .. v14}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->buildSegmentTemplate(Lcom/google/android/exoplayer/dash/mpd/RangedUri;JJIJLjava/util/List;Lcom/google/android/exoplayer/dash/mpd/UrlTemplate;Lcom/google/android/exoplayer/dash/mpd/UrlTemplate;Ljava/lang/String;)Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentTemplate;

    move-result-object v2

    return-object v2

    .line 503
    .end local v3    # "initialization":Lcom/google/android/exoplayer/dash/mpd/RangedUri;
    .end local v4    # "timescale":J
    .end local v6    # "presentationTimeOffset":J
    .end local v8    # "startNumber":I
    .end local v9    # "duration":J
    .end local v11    # "timeline":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentTimelineElement;>;"
    .end local v12    # "initializationTemplate":Lcom/google/android/exoplayer/dash/mpd/UrlTemplate;
    .end local v13    # "mediaTemplate":Lcom/google/android/exoplayer/dash/mpd/UrlTemplate;
    :cond_85
    const-wide/16 v14, 0x1

    goto :goto_9

    .line 504
    .restart local v4    # "timescale":J
    :cond_88
    const-wide/16 v14, 0x0

    goto :goto_17

    .line 506
    .restart local v6    # "presentationTimeOffset":J
    :cond_8b
    const-wide/16 v14, -0x1

    goto :goto_25

    .line 507
    .restart local v9    # "duration":J
    :cond_8e
    const/4 v2, 0x1

    goto :goto_33

    .line 508
    .restart local v8    # "startNumber":I
    :cond_90
    const/4 v2, 0x0

    goto :goto_41

    .line 510
    .restart local v13    # "mediaTemplate":Lcom/google/android/exoplayer/dash/mpd/UrlTemplate;
    :cond_92
    const/4 v2, 0x0

    goto :goto_51

    .line 520
    .restart local v3    # "initialization":Lcom/google/android/exoplayer/dash/mpd/RangedUri;
    .restart local v11    # "timeline":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentTimelineElement;>;"
    .restart local v12    # "initializationTemplate":Lcom/google/android/exoplayer/dash/mpd/UrlTemplate;
    :cond_94
    const-string v2, "SegmentTimeline"

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/google/android/exoplayer/util/ParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6c

    .line 521
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseSegmentTimeline(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/List;

    move-result-object v11

    goto :goto_6c

    .line 526
    :cond_a3
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentTemplate;->initialization:Lcom/google/android/exoplayer/dash/mpd/RangedUri;

    goto :goto_7a

    .line 527
    :cond_a8
    move-object/from16 v0, p3

    iget-object v11, v0, Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentTemplate;->segmentTimeline:Ljava/util/List;

    goto :goto_7c
.end method

.method protected parseSegmentTimeline(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/List;
    .registers 11
    .param p1, "xpp"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentTimelineElement;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 544
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 545
    .local v6, "segmentTimeline":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentTimelineElement;>;"
    const-wide/16 v4, 0x0

    .line 547
    .local v4, "elapsedTime":J
    :cond_7
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 548
    const-string v7, "S"

    invoke-static {p1, v7}, Lcom/google/android/exoplayer/util/ParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_36

    .line 549
    const-string/jumbo v7, "t"

    invoke-static {p1, v7, v4, v5}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseLong(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v4

    .line 550
    const-string v7, "d"

    invoke-static {p1, v7}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseLong(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v2

    .line 551
    .local v2, "duration":J
    const-string v7, "r"

    const/4 v8, 0x0

    invoke-static {p1, v7, v8}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v7

    add-int/lit8 v0, v7, 0x1

    .line 552
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_29
    if-ge v1, v0, :cond_36

    .line 553
    invoke-virtual {p0, v4, v5, v2, v3}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->buildSegmentTimelineElement(JJ)Lcom/google/android/exoplayer/dash/mpd/SegmentBase$SegmentTimelineElement;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 554
    add-long/2addr v4, v2

    .line 552
    add-int/lit8 v1, v1, 0x1

    goto :goto_29

    .line 557
    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v2    # "duration":J
    :cond_36
    const-string v7, "SegmentTimeline"

    invoke-static {p1, v7}, Lcom/google/android/exoplayer/util/ParserUtil;->isEndTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 558
    return-object v6
.end method

.method protected parseSegmentUrl(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lcom/google/android/exoplayer/dash/mpd/RangedUri;
    .registers 5
    .param p1, "xpp"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "baseUrl"    # Ljava/lang/String;

    .prologue
    .line 579
    const-string v0, "media"

    const-string v1, "mediaRange"

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->parseRangedUrl(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/exoplayer/dash/mpd/RangedUri;

    move-result-object v0

    return-object v0
.end method

.method protected parseUrlTemplate(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Lcom/google/android/exoplayer/dash/mpd/UrlTemplate;)Lcom/google/android/exoplayer/dash/mpd/UrlTemplate;
    .registers 6
    .param p1, "xpp"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "defaultValue"    # Lcom/google/android/exoplayer/dash/mpd/UrlTemplate;

    .prologue
    .line 567
    const/4 v1, 0x0

    invoke-interface {p1, v1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 568
    .local v0, "valueString":Ljava/lang/String;
    if-eqz v0, :cond_b

    .line 569
    invoke-static {v0}, Lcom/google/android/exoplayer/dash/mpd/UrlTemplate;->compile(Ljava/lang/String;)Lcom/google/android/exoplayer/dash/mpd/UrlTemplate;

    move-result-object p3

    .line 571
    .end local p3    # "defaultValue":Lcom/google/android/exoplayer/dash/mpd/UrlTemplate;
    :cond_b
    return-object p3
.end method

.method protected parseUtcTiming(Lorg/xmlpull/v1/XmlPullParser;)Lcom/google/android/exoplayer/dash/mpd/UtcTimingElement;
    .registers 6
    .param p1, "xpp"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    const/4 v3, 0x0

    .line 178
    const-string v2, "schemeIdUri"

    invoke-interface {p1, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 179
    .local v0, "schemeIdUri":Ljava/lang/String;
    const-string/jumbo v2, "value"

    invoke-interface {p1, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 180
    .local v1, "value":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;->buildUtcTimingElement(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/exoplayer/dash/mpd/UtcTimingElement;

    move-result-object v2

    return-object v2
.end method
