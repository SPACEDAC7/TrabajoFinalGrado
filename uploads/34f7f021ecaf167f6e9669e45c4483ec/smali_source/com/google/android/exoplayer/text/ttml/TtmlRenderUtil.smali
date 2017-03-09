.class final Lcom/google/android/exoplayer/text/ttml/TtmlRenderUtil;
.super Ljava/lang/Object;
.source "TtmlRenderUtil.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static applyStylesToSpan(Landroid/text/SpannableStringBuilder;IILcom/google/android/exoplayer/text/ttml/TtmlStyle;)V
    .registers 8
    .param p0, "builder"    # Landroid/text/SpannableStringBuilder;
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "style"    # Lcom/google/android/exoplayer/text/ttml/TtmlStyle;

    .prologue
    const/4 v2, -0x1

    const/16 v3, 0x21

    .line 69
    invoke-virtual {p3}, Lcom/google/android/exoplayer/text/ttml/TtmlStyle;->getStyle()I

    move-result v0

    if-eq v0, v2, :cond_15

    .line 70
    new-instance v0, Landroid/text/style/StyleSpan;

    invoke-virtual {p3}, Lcom/google/android/exoplayer/text/ttml/TtmlStyle;->getStyle()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {p0, v0, p1, p2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 73
    :cond_15
    invoke-virtual {p3}, Lcom/google/android/exoplayer/text/ttml/TtmlStyle;->isLinethrough()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 74
    new-instance v0, Landroid/text/style/StrikethroughSpan;

    invoke-direct {v0}, Landroid/text/style/StrikethroughSpan;-><init>()V

    invoke-virtual {p0, v0, p1, p2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 76
    :cond_23
    invoke-virtual {p3}, Lcom/google/android/exoplayer/text/ttml/TtmlStyle;->isUnderline()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 77
    new-instance v0, Landroid/text/style/UnderlineSpan;

    invoke-direct {v0}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {p0, v0, p1, p2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 79
    :cond_31
    invoke-virtual {p3}, Lcom/google/android/exoplayer/text/ttml/TtmlStyle;->hasFontColor()Z

    move-result v0

    if-eqz v0, :cond_43

    .line 80
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p3}, Lcom/google/android/exoplayer/text/ttml/TtmlStyle;->getFontColor()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {p0, v0, p1, p2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 83
    :cond_43
    invoke-virtual {p3}, Lcom/google/android/exoplayer/text/ttml/TtmlStyle;->hasBackgroundColor()Z

    move-result v0

    if-eqz v0, :cond_55

    .line 84
    new-instance v0, Landroid/text/style/BackgroundColorSpan;

    invoke-virtual {p3}, Lcom/google/android/exoplayer/text/ttml/TtmlStyle;->getBackgroundColor()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    invoke-virtual {p0, v0, p1, p2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 87
    :cond_55
    invoke-virtual {p3}, Lcom/google/android/exoplayer/text/ttml/TtmlStyle;->getFontFamily()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_67

    .line 88
    new-instance v0, Landroid/text/style/TypefaceSpan;

    invoke-virtual {p3}, Lcom/google/android/exoplayer/text/ttml/TtmlStyle;->getFontFamily()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/style/TypefaceSpan;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, p1, p2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 91
    :cond_67
    invoke-virtual {p3}, Lcom/google/android/exoplayer/text/ttml/TtmlStyle;->getTextAlign()Landroid/text/Layout$Alignment;

    move-result-object v0

    if-eqz v0, :cond_79

    .line 92
    new-instance v0, Landroid/text/style/AlignmentSpan$Standard;

    invoke-virtual {p3}, Lcom/google/android/exoplayer/text/ttml/TtmlStyle;->getTextAlign()Landroid/text/Layout$Alignment;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/style/AlignmentSpan$Standard;-><init>(Landroid/text/Layout$Alignment;)V

    invoke-virtual {p0, v0, p1, p2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 95
    :cond_79
    invoke-virtual {p3}, Lcom/google/android/exoplayer/text/ttml/TtmlStyle;->getFontSizeUnit()I

    move-result v0

    if-eq v0, v2, :cond_86

    .line 96
    invoke-virtual {p3}, Lcom/google/android/exoplayer/text/ttml/TtmlStyle;->getFontSizeUnit()I

    move-result v0

    packed-switch v0, :pswitch_data_b4

    .line 111
    :cond_86
    :goto_86
    return-void

    .line 98
    :pswitch_87
    new-instance v0, Landroid/text/style/AbsoluteSizeSpan;

    invoke-virtual {p3}, Lcom/google/android/exoplayer/text/ttml/TtmlStyle;->getFontSize()F

    move-result v1

    float-to-int v1, v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    invoke-virtual {p0, v0, p1, p2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_86

    .line 102
    :pswitch_96
    new-instance v0, Landroid/text/style/RelativeSizeSpan;

    invoke-virtual {p3}, Lcom/google/android/exoplayer/text/ttml/TtmlStyle;->getFontSize()F

    move-result v1

    invoke-direct {v0, v1}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual {p0, v0, p1, p2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_86

    .line 106
    :pswitch_a3
    new-instance v0, Landroid/text/style/RelativeSizeSpan;

    invoke-virtual {p3}, Lcom/google/android/exoplayer/text/ttml/TtmlStyle;->getFontSize()F

    move-result v1

    const/high16 v2, 0x42c80000

    div-float/2addr v1, v2

    invoke-direct {v0, v1}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual {p0, v0, p1, p2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_86

    .line 96
    nop

    :pswitch_data_b4
    .packed-switch 0x1
        :pswitch_87
        :pswitch_96
        :pswitch_a3
    .end packed-switch
.end method

.method static applyTextElementSpacePolicy(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "in"    # Ljava/lang/String;

    .prologue
    .line 137
    const-string v1, "\r\n"

    const-string v2, "\n"

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 140
    .local v0, "out":Ljava/lang/String;
    const-string v1, " *\n *"

    const-string v2, "\n"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 142
    const-string v1, "\n"

    const-string v2, " "

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 144
    const-string v1, "[ \t\\x0B\u000c\r]+"

    const-string v2, " "

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 145
    return-object v0
.end method

.method static endParagraph(Landroid/text/SpannableStringBuilder;)V
    .registers 5
    .param p0, "builder"    # Landroid/text/SpannableStringBuilder;

    .prologue
    const/16 v3, 0xa

    .line 120
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .line 121
    .local v0, "position":I
    :goto_8
    if-ltz v0, :cond_15

    invoke-virtual {p0, v0}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v1

    const/16 v2, 0x20

    if-ne v1, v2, :cond_15

    .line 122
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 124
    :cond_15
    if-ltz v0, :cond_20

    invoke-virtual {p0, v0}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v1

    if-eq v1, v3, :cond_20

    .line 125
    invoke-virtual {p0, v3}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 127
    :cond_20
    return-void
.end method

.method public static resolveStyle(Lcom/google/android/exoplayer/text/ttml/TtmlStyle;[Ljava/lang/String;Ljava/util/Map;)Lcom/google/android/exoplayer/text/ttml/TtmlStyle;
    .registers 8
    .param p0, "style"    # Lcom/google/android/exoplayer/text/ttml/TtmlStyle;
    .param p1, "styleIds"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer/text/ttml/TtmlStyle;",
            "[",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer/text/ttml/TtmlStyle;",
            ">;)",
            "Lcom/google/android/exoplayer/text/ttml/TtmlStyle;"
        }
    .end annotation

    .prologue
    .local p2, "globalStyles":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/google/android/exoplayer/text/ttml/TtmlStyle;>;"
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 39
    if-nez p0, :cond_8

    if-nez p1, :cond_8

    .line 41
    const/4 p0, 0x0

    .line 63
    .end local p0    # "style":Lcom/google/android/exoplayer/text/ttml/TtmlStyle;
    :cond_7
    :goto_7
    return-object p0

    .line 42
    .restart local p0    # "style":Lcom/google/android/exoplayer/text/ttml/TtmlStyle;
    :cond_8
    if-nez p0, :cond_17

    array-length v3, p1

    if-ne v3, v4, :cond_17

    .line 44
    aget-object v2, p1, v2

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer/text/ttml/TtmlStyle;

    move-object p0, v2

    goto :goto_7

    .line 45
    :cond_17
    if-nez p0, :cond_36

    array-length v3, p1

    if-le v3, v4, :cond_36

    .line 47
    new-instance v0, Lcom/google/android/exoplayer/text/ttml/TtmlStyle;

    invoke-direct {v0}, Lcom/google/android/exoplayer/text/ttml/TtmlStyle;-><init>()V

    .line 48
    .local v0, "chainedStyle":Lcom/google/android/exoplayer/text/ttml/TtmlStyle;
    array-length v4, p1

    move v3, v2

    :goto_23
    if-ge v3, v4, :cond_34

    aget-object v1, p1, v3

    .line 49
    .local v1, "id":Ljava/lang/String;
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer/text/ttml/TtmlStyle;

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer/text/ttml/TtmlStyle;->chain(Lcom/google/android/exoplayer/text/ttml/TtmlStyle;)Lcom/google/android/exoplayer/text/ttml/TtmlStyle;

    .line 48
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_23

    .end local v1    # "id":Ljava/lang/String;
    :cond_34
    move-object p0, v0

    .line 51
    goto :goto_7

    .line 52
    .end local v0    # "chainedStyle":Lcom/google/android/exoplayer/text/ttml/TtmlStyle;
    :cond_36
    if-eqz p0, :cond_4a

    if-eqz p1, :cond_4a

    array-length v3, p1

    if-ne v3, v4, :cond_4a

    .line 54
    aget-object v2, p1, v2

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer/text/ttml/TtmlStyle;

    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer/text/ttml/TtmlStyle;->chain(Lcom/google/android/exoplayer/text/ttml/TtmlStyle;)Lcom/google/android/exoplayer/text/ttml/TtmlStyle;

    move-result-object p0

    goto :goto_7

    .line 55
    :cond_4a
    if-eqz p0, :cond_7

    if-eqz p1, :cond_7

    array-length v3, p1

    if-le v3, v4, :cond_7

    .line 57
    array-length v4, p1

    move v3, v2

    :goto_53
    if-ge v3, v4, :cond_7

    aget-object v1, p1, v3

    .line 58
    .restart local v1    # "id":Ljava/lang/String;
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer/text/ttml/TtmlStyle;

    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer/text/ttml/TtmlStyle;->chain(Lcom/google/android/exoplayer/text/ttml/TtmlStyle;)Lcom/google/android/exoplayer/text/ttml/TtmlStyle;

    .line 57
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_53
.end method
