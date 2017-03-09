.class public Lcom/buzzfeed/spicerack/ui/utils/MarkdownConverter;
.super Ljava/lang/Object;
.source "MarkdownConverter.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromMarkdown(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "markdown"    # Ljava/lang/String;

    .prologue
    .line 33
    new-instance v0, Lcom/commonsware/cwac/anddown/AndDown;

    invoke-direct {v0}, Lcom/commonsware/cwac/anddown/AndDown;-><init>()V

    invoke-virtual {v0, p0}, Lcom/commonsware/cwac/anddown/AndDown;->markdownToHtml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/buzzfeed/toolkit/util/MarkdownUtil;->convertHtmlTags(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static fromMarkdownWithPreprocessing(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "markdown"    # Ljava/lang/String;

    .prologue
    .line 24
    invoke-static {p0}, Lcom/buzzfeed/toolkit/util/MarkdownUtil;->preprocessMarkdown(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 25
    invoke-static {p0}, Lcom/buzzfeed/spicerack/ui/utils/MarkdownConverter;->fromMarkdown(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static replaceQuoteSpans(Landroid/content/Context;Landroid/text/Spannable;)V
    .registers 15
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "spannable"    # Landroid/text/Spannable;

    .prologue
    const/4 v5, 0x0

    .line 47
    invoke-interface {p1}, Landroid/text/Spannable;->length()I

    move-result v6

    const-class v7, Landroid/text/style/QuoteSpan;

    invoke-interface {p1, v5, v6, v7}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/text/style/QuoteSpan;

    .line 48
    .local v3, "quoteSpans":[Landroid/text/style/QuoteSpan;
    array-length v6, v3

    :goto_e
    if-ge v5, v6, :cond_57

    aget-object v2, v3, v5

    .line 49
    .local v2, "quoteSpan":Landroid/text/style/QuoteSpan;
    invoke-interface {p1, v2}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    .line 50
    .local v4, "start":I
    invoke-interface {p1, v2}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    .line 51
    .local v0, "end":I
    invoke-interface {p1, v2}, Landroid/text/Spannable;->getSpanFlags(Ljava/lang/Object;)I

    move-result v1

    .line 52
    .local v1, "flags":I
    invoke-interface {p1, v2}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 53
    new-instance v7, Lcom/buzzfeed/spicerack/ui/utils/CustomQuoteSpan;

    .line 54
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x106000d

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    .line 55
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lcom/buzzfeed/nativecontent/R$color;->buzzfeed_red:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    .line 56
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    sget v11, Lcom/buzzfeed/nativecontent/R$dimen;->block_quote_strip_size:I

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    int-to-float v10, v10

    .line 57
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    sget v12, Lcom/buzzfeed/nativecontent/R$dimen;->padding_medium:I

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    int-to-float v11, v11

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/buzzfeed/spicerack/ui/utils/CustomQuoteSpan;-><init>(IIFF)V

    .line 53
    invoke-interface {p1, v7, v4, v0, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 48
    add-int/lit8 v5, v5, 0x1

    goto :goto_e

    .line 62
    .end local v0    # "end":I
    .end local v1    # "flags":I
    .end local v2    # "quoteSpan":Landroid/text/style/QuoteSpan;
    .end local v4    # "start":I
    :cond_57
    return-void
.end method

.method public static spannedFromMarkdown(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "markdown"    # Ljava/lang/String;

    .prologue
    .line 41
    new-instance v0, Landroid/text/SpannableString;

    invoke-static {p1}, Lcom/buzzfeed/spicerack/ui/utils/MarkdownConverter;->fromMarkdownWithPreprocessing(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 42
    .local v0, "spannable":Landroid/text/Spannable;
    invoke-static {p0, v0}, Lcom/buzzfeed/spicerack/ui/utils/MarkdownConverter;->replaceQuoteSpans(Landroid/content/Context;Landroid/text/Spannable;)V

    .line 43
    invoke-static {v0}, Lcom/buzzfeed/spicerack/ui/utils/MarkdownConverter;->trimTrailingWhitespace(Landroid/text/Spannable;)Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1
.end method

.method public static trimTrailingWhitespace(Landroid/text/Spannable;)Ljava/lang/CharSequence;
    .registers 4
    .param p0, "source"    # Landroid/text/Spannable;

    .prologue
    .line 68
    if-nez p0, :cond_5

    .line 69
    const-string v1, ""

    .line 77
    :goto_4
    return-object v1

    .line 71
    :cond_5
    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v0

    .line 74
    .local v0, "i":I
    :cond_9
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_17

    invoke-interface {p0, v0}, Landroid/text/Spannable;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-nez v1, :cond_9

    .line 77
    :cond_17
    const/4 v1, 0x0

    add-int/lit8 v2, v0, 0x1

    invoke-interface {p0, v1, v2}, Landroid/text/Spannable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_4
.end method
