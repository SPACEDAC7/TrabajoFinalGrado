.class public Lcom/buzzfeed/buffet/ui/holder/BreakingBarCard;
.super Lcom/buzzfeed/buffet/ui/holder/BaseCard;
.source "BreakingBarCard.java"


# instance fields
.field protected mCaret:Landroid/widget/ImageView;

.field private mContext:Landroid/content/Context;

.field protected mHeader:Landroid/widget/TextView;

.field protected mHeadline:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/buzzfeed/buffet/ui/holder/BaseCard;-><init>(Landroid/view/View;)V

    .line 26
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/buzzfeed/buffet/ui/holder/BreakingBarCard;->mContext:Landroid/content/Context;

    .line 27
    sget v0, Lcom/buzzfeed/buffet/R$id;->breaking_bar_card_header:I

    invoke-static {p1, v0}, Lcom/buzzfeed/toolkit/util/UIUtil;->findView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/buzzfeed/buffet/ui/holder/BreakingBarCard;->mHeader:Landroid/widget/TextView;

    .line 28
    invoke-static {}, Lcom/buzzfeed/toolkit/util/VersionUtil;->hasLollipop()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 29
    iget-object v0, p0, Lcom/buzzfeed/buffet/ui/holder/BreakingBarCard;->mHeader:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/buzzfeed/buffet/ui/holder/BreakingBarCard;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/buzzfeed/buffet/R$dimen;->breaking_letter_spacing:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLetterSpacing(F)V

    .line 31
    :cond_2a
    sget v0, Lcom/buzzfeed/buffet/R$id;->breaking_bar_card_headline:I

    invoke-static {p1, v0}, Lcom/buzzfeed/toolkit/util/UIUtil;->findView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/buzzfeed/buffet/ui/holder/BreakingBarCard;->mHeadline:Landroid/widget/TextView;

    .line 32
    sget v0, Lcom/buzzfeed/buffet/R$id;->breaking_bar_card_caret:I

    invoke-static {p1, v0}, Lcom/buzzfeed/toolkit/util/UIUtil;->findView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/buzzfeed/buffet/ui/holder/BreakingBarCard;->mCaret:Landroid/widget/ImageView;

    .line 33
    return-void
.end method

.method private extractUrlFromContent(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 66
    const-string v3, "href=\"(.*?)\""

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 67
    .local v1, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 68
    .local v0, "m":Ljava/util/regex/Matcher;
    const/4 v2, 0x0

    .line 69
    .local v2, "url":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_16

    .line 70
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 72
    :cond_16
    return-object v2
.end method

.method private getUrl(Lcom/buzzfeed/toolkit/content/BreakingNewsContent;)Ljava/lang/String;
    .registers 4
    .param p1, "content"    # Lcom/buzzfeed/toolkit/content/BreakingNewsContent;

    .prologue
    .line 58
    invoke-interface {p1}, Lcom/buzzfeed/toolkit/content/BreakingNewsContent;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 59
    .local v0, "url":Ljava/lang/String;
    if-nez v0, :cond_e

    .line 60
    invoke-interface {p1}, Lcom/buzzfeed/toolkit/content/BreakingNewsContent;->getNewsAlert()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/buzzfeed/buffet/ui/holder/BreakingBarCard;->extractUrlFromContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 62
    :cond_e
    return-object v0
.end method

.method private removeUrlFromContent(Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 76
    const-string v5, "<"

    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 77
    .local v0, "firstLeftBracketIndex":I
    const-string v5, ">"

    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 78
    .local v2, "firstRightBracketIndex":I
    if-ltz v0, :cond_10

    if-gez v2, :cond_12

    :cond_10
    move-object v3, p1

    .line 84
    :goto_11
    return-object v3

    .line 81
    :cond_12
    const/4 v5, 0x0

    invoke-virtual {p1, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 82
    .local v1, "firstPart":Ljava/lang/String;
    add-int/lit8 v5, v2, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 83
    .local v4, "secondPart":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "</a>"

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 84
    .local v3, "headline":Ljava/lang/String;
    goto :goto_11
.end method

.method private setupClickListeners(Lcom/buzzfeed/toolkit/content/FlowItem;Ljava/lang/String;)V
    .registers 5
    .param p1, "flowItem"    # Lcom/buzzfeed/toolkit/content/FlowItem;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/buzzfeed/buffet/ui/holder/BreakingBarCard;->itemView:Landroid/view/View;

    new-instance v1, Lcom/buzzfeed/buffet/ui/holder/BreakingBarCard$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/buzzfeed/buffet/ui/holder/BreakingBarCard$1;-><init>(Lcom/buzzfeed/buffet/ui/holder/BreakingBarCard;Lcom/buzzfeed/toolkit/content/FlowItem;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    return-void
.end method


# virtual methods
.method public populateFrom(Lcom/buzzfeed/toolkit/content/FlowItem;)V
    .registers 10
    .param p1, "flowItem"    # Lcom/buzzfeed/toolkit/content/FlowItem;

    .prologue
    const/4 v7, 0x0

    .line 38
    invoke-virtual {p1}, Lcom/buzzfeed/toolkit/content/FlowItem;->getContent()Lcom/buzzfeed/toolkit/content/Content;

    move-result-object v1

    check-cast v1, Lcom/buzzfeed/toolkit/content/BreakingNewsContent;

    .line 39
    .local v1, "item":Lcom/buzzfeed/toolkit/content/BreakingNewsContent;
    invoke-interface {v1}, Lcom/buzzfeed/toolkit/content/BreakingNewsContent;->getNewsAlert()Ljava/lang/String;

    move-result-object v2

    .line 40
    .local v2, "newsAlert":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/buzzfeed/buffet/ui/holder/BreakingBarCard;->getUrl(Lcom/buzzfeed/toolkit/content/BreakingNewsContent;)Ljava/lang/String;

    move-result-object v4

    .line 41
    .local v4, "url":Ljava/lang/String;
    invoke-direct {p0, p1, v4}, Lcom/buzzfeed/buffet/ui/holder/BreakingBarCard;->setupClickListeners(Lcom/buzzfeed/toolkit/content/FlowItem;Ljava/lang/String;)V

    .line 42
    iget-object v5, p0, Lcom/buzzfeed/buffet/ui/holder/BreakingBarCard;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/buzzfeed/buffet/R$dimen;->padding_large:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    .line 43
    .local v3, "padding":I
    if-eqz v4, :cond_3a

    .line 44
    iget-object v5, p0, Lcom/buzzfeed/buffet/ui/holder/BreakingBarCard;->itemView:Landroid/view/View;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/view/View;->setClickable(Z)V

    .line 45
    iget-object v5, p0, Lcom/buzzfeed/buffet/ui/holder/BreakingBarCard;->mCaret:Landroid/widget/ImageView;

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 47
    iget-object v5, p0, Lcom/buzzfeed/buffet/ui/holder/BreakingBarCard;->mHeadline:Landroid/widget/TextView;

    invoke-virtual {v5, v3, v3, v7, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 53
    :goto_30
    invoke-direct {p0, v2}, Lcom/buzzfeed/buffet/ui/holder/BreakingBarCard;->removeUrlFromContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 54
    .local v0, "headlineText":Ljava/lang/String;
    iget-object v5, p0, Lcom/buzzfeed/buffet/ui/holder/BreakingBarCard;->mHeadline:Landroid/widget/TextView;

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    return-void

    .line 49
    .end local v0    # "headlineText":Ljava/lang/String;
    :cond_3a
    iget-object v5, p0, Lcom/buzzfeed/buffet/ui/holder/BreakingBarCard;->itemView:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/view/View;->setClickable(Z)V

    .line 50
    iget-object v5, p0, Lcom/buzzfeed/buffet/ui/holder/BreakingBarCard;->mCaret:Landroid/widget/ImageView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 51
    iget-object v5, p0, Lcom/buzzfeed/buffet/ui/holder/BreakingBarCard;->mHeadline:Landroid/widget/TextView;

    invoke-virtual {v5, v3, v3, v3, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_30
.end method

.method public bridge synthetic populateFrom(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 18
    check-cast p1, Lcom/buzzfeed/toolkit/content/FlowItem;

    invoke-virtual {p0, p1}, Lcom/buzzfeed/buffet/ui/holder/BreakingBarCard;->populateFrom(Lcom/buzzfeed/toolkit/content/FlowItem;)V

    return-void
.end method
