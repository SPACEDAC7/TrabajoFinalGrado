.class public final Lcom/google/android/exoplayer/text/subrip/SubripParser;
.super Ljava/lang/Object;
.source "SubripParser.java"

# interfaces
.implements Lcom/google/android/exoplayer/text/SubtitleParser;


# static fields
.field private static final SUBRIP_TIMESTAMP:Ljava/util/regex/Pattern;

.field private static final SUBRIP_TIMING_LINE:Ljava/util/regex/Pattern;

.field private static final TAG:Ljava/lang/String; = "SubripParser"


# instance fields
.field private final textBuilder:Ljava/lang/StringBuilder;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 38
    const-string v0, "(\\S*)\\s*-->\\s*(\\S*)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer/text/subrip/SubripParser;->SUBRIP_TIMING_LINE:Ljava/util/regex/Pattern;

    .line 39
    const-string v0, "(?:(\\d+):)?(\\d+):(\\d+),(\\d+)"

    .line 40
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer/text/subrip/SubripParser;->SUBRIP_TIMESTAMP:Ljava/util/regex/Pattern;

    .line 39
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer/text/subrip/SubripParser;->textBuilder:Ljava/lang/StringBuilder;

    .line 46
    return-void
.end method

.method private static parseTimecode(Ljava/lang/String;)J
    .registers 11
    .param p0, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    const-wide/16 v8, 0x3c

    const-wide/16 v6, 0x3e8

    .line 115
    sget-object v1, Lcom/google/android/exoplayer/text/subrip/SubripParser;->SUBRIP_TIMESTAMP:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 116
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-nez v1, :cond_18

    .line 117
    new-instance v1, Ljava/lang/NumberFormatException;

    const-string v4, "has invalid format"

    invoke-direct {v1, v4}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 119
    :cond_18
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    mul-long/2addr v4, v8

    mul-long/2addr v4, v8

    mul-long v2, v4, v6

    .line 120
    .local v2, "timestampMs":J
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    mul-long/2addr v4, v8

    mul-long/2addr v4, v6

    add-long/2addr v2, v4

    .line 121
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    mul-long/2addr v4, v6

    add-long/2addr v2, v4

    .line 122
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    add-long/2addr v2, v4

    .line 123
    mul-long v4, v2, v6

    return-wide v4
.end method


# virtual methods
.method public canParse(Ljava/lang/String;)Z
    .registers 3
    .param p1, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 50
    const-string v0, "application/x-subrip"

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
    .line 34
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/exoplayer/text/subrip/SubripParser;->parse([BII)Lcom/google/android/exoplayer/text/subrip/SubripSubtitle;

    move-result-object v0

    return-object v0
.end method

.method public parse([BII)Lcom/google/android/exoplayer/text/subrip/SubripSubtitle;
    .registers 20
    .param p1, "bytes"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 55
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 56
    .local v4, "cues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer/text/Cue;>;"
    new-instance v2, Lcom/google/android/exoplayer/util/LongArray;

    invoke-direct {v2}, Lcom/google/android/exoplayer/util/LongArray;-><init>()V

    .line 57
    .local v2, "cueTimesUs":Lcom/google/android/exoplayer/util/LongArray;
    new-instance v11, Lcom/google/android/exoplayer/util/ParsableByteArray;

    add-int v13, p2, p3

    move-object/from16 v0, p1

    invoke-direct {v11, v0, v13}, Lcom/google/android/exoplayer/util/ParsableByteArray;-><init>([BI)V

    .line 58
    .local v11, "subripData":Lcom/google/android/exoplayer/util/ParsableByteArray;
    move/from16 v0, p2

    invoke-virtual {v11, v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 62
    :cond_18
    :goto_18
    invoke-virtual {v11}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readLine()Ljava/lang/String;

    move-result-object v6

    .local v6, "currentLine":Ljava/lang/String;
    if-eqz v6, :cond_de

    .line 63
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v13

    if-eqz v13, :cond_18

    .line 70
    :try_start_24
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_27
    .catch Ljava/lang/NumberFormatException; {:try_start_24 .. :try_end_27} :catch_8d

    .line 77
    const/4 v9, 0x0

    .line 78
    .local v9, "haveEndTimecode":Z
    invoke-virtual {v11}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readLine()Ljava/lang/String;

    move-result-object v6

    .line 79
    sget-object v13, Lcom/google/android/exoplayer/text/subrip/SubripParser;->SUBRIP_TIMING_LINE:Ljava/util/regex/Pattern;

    invoke-virtual {v13, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v10

    .line 80
    .local v10, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v10}, Ljava/util/regex/Matcher;->find()Z

    move-result v13

    if-eqz v13, :cond_a8

    .line 81
    const/4 v13, 0x1

    invoke-virtual {v10, v13}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/google/android/exoplayer/text/subrip/SubripParser;->parseTimecode(Ljava/lang/String;)J

    move-result-wide v14

    invoke-virtual {v2, v14, v15}, Lcom/google/android/exoplayer/util/LongArray;->add(J)V

    .line 82
    const/4 v13, 0x2

    invoke-virtual {v10, v13}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    .line 83
    .local v8, "endTimecode":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_5c

    .line 84
    const/4 v9, 0x1

    .line 85
    const/4 v13, 0x2

    invoke-virtual {v10, v13}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/google/android/exoplayer/text/subrip/SubripParser;->parseTimecode(Ljava/lang/String;)J

    move-result-wide v14

    invoke-virtual {v2, v14, v15}, Lcom/google/android/exoplayer/util/LongArray;->add(J)V

    .line 93
    :cond_5c
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/exoplayer/text/subrip/SubripParser;->textBuilder:Ljava/lang/StringBuilder;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 94
    :goto_64
    invoke-virtual {v11}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readLine()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_c2

    .line 95
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/exoplayer/text/subrip/SubripParser;->textBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->length()I

    move-result v13

    if-lez v13, :cond_81

    .line 96
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/exoplayer/text/subrip/SubripParser;->textBuilder:Ljava/lang/StringBuilder;

    const-string v14, "<br>"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    :cond_81
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/exoplayer/text/subrip/SubripParser;->textBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_64

    .line 71
    .end local v8    # "endTimecode":Ljava/lang/String;
    .end local v9    # "haveEndTimecode":Z
    .end local v10    # "matcher":Ljava/util/regex/Matcher;
    :catch_8d
    move-exception v7

    .line 72
    .local v7, "e":Ljava/lang/NumberFormatException;
    const-string v13, "SubripParser"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Skipping invalid index: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_18

    .line 88
    .end local v7    # "e":Ljava/lang/NumberFormatException;
    .restart local v9    # "haveEndTimecode":Z
    .restart local v10    # "matcher":Ljava/util/regex/Matcher;
    :cond_a8
    const-string v13, "SubripParser"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Skipping invalid timing: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_18

    .line 101
    .restart local v8    # "endTimecode":Ljava/lang/String;
    :cond_c2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/exoplayer/text/subrip/SubripParser;->textBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v12

    .line 102
    .local v12, "text":Landroid/text/Spanned;
    new-instance v13, Lcom/google/android/exoplayer/text/Cue;

    invoke-direct {v13, v12}, Lcom/google/android/exoplayer/text/Cue;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    if-eqz v9, :cond_18

    .line 104
    const/4 v13, 0x0

    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_18

    .line 108
    .end local v8    # "endTimecode":Ljava/lang/String;
    .end local v9    # "haveEndTimecode":Z
    .end local v10    # "matcher":Ljava/util/regex/Matcher;
    .end local v12    # "text":Landroid/text/Spanned;
    :cond_de
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v13

    new-array v5, v13, [Lcom/google/android/exoplayer/text/Cue;

    .line 109
    .local v5, "cuesArray":[Lcom/google/android/exoplayer/text/Cue;
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 110
    invoke-virtual {v2}, Lcom/google/android/exoplayer/util/LongArray;->toArray()[J

    move-result-object v3

    .line 111
    .local v3, "cueTimesUsArray":[J
    new-instance v13, Lcom/google/android/exoplayer/text/subrip/SubripSubtitle;

    invoke-direct {v13, v5, v3}, Lcom/google/android/exoplayer/text/subrip/SubripSubtitle;-><init>([Lcom/google/android/exoplayer/text/Cue;[J)V

    return-object v13
.end method
