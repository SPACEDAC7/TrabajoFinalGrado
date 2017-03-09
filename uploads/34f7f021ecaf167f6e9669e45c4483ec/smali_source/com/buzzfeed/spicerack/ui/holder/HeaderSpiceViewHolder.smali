.class public Lcom/buzzfeed/spicerack/ui/holder/HeaderSpiceViewHolder;
.super Lcom/buzzfeed/spicerack/ui/holder/BaseViewHolder;
.source "HeaderSpiceViewHolder.java"


# static fields
.field private static final BYLINE_ANIM_DURATION:I = 0x64

.field private static final MORE_PLUS:Ljava/lang/String; = "&#43;"

.field private static final OFFSET_INCREMENT:I = 0x32


# instance fields
.field private mBlurbTextView:Landroid/widget/TextView;

.field private mBylineContainer:Landroid/view/ViewGroup;

.field private mBylineMoreContainer:Landroid/view/ViewGroup;

.field private mHasLastUpdated:Z

.field private mLastUpdatedTextView:Landroid/widget/TextView;

.field private mNameTextView:Landroid/widget/TextView;

.field private mPostContent:Lcom/buzzfeed/toolkit/content/PostContent;

.field private mPostedOnTextView:Landroid/widget/TextView;

.field private showedMultiAuthor:Z


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/buzzfeed/spicerack/ui/holder/BaseViewHolder;-><init>(Landroid/view/View;)V

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/buzzfeed/spicerack/ui/holder/HeaderSpiceViewHolder;->showedMultiAuthor:Z

    .line 45
    sget v0, Lcom/buzzfeed/nativecontent/R$id;->header_name:I

    invoke-static {p1, v0}, Lcom/buzzfeed/toolkit/util/UIUtil;->findView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/buzzfeed/spicerack/ui/holder/HeaderSpiceViewHolder;->mNameTextView:Landroid/widget/TextView;

    .line 46
    sget v0, Lcom/buzzfeed/nativecontent/R$id;->header_blurb:I

    invoke-static {p1, v0}, Lcom/buzzfeed/toolkit/util/UIUtil;->findView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/buzzfeed/spicerack/ui/holder/HeaderSpiceViewHolder;->mBlurbTextView:Landroid/widget/TextView;

    .line 47
    sget v0, Lcom/buzzfeed/nativecontent/R$id;->header_posted:I

    invoke-static {p1, v0}, Lcom/buzzfeed/toolkit/util/UIUtil;->findView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/buzzfeed/spicerack/ui/holder/HeaderSpiceViewHolder;->mPostedOnTextView:Landroid/widget/TextView;

    .line 48
    sget v0, Lcom/buzzfeed/nativecontent/R$id;->header_updated:I

    invoke-static {p1, v0}, Lcom/buzzfeed/toolkit/util/UIUtil;->findView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/buzzfeed/spicerack/ui/holder/HeaderSpiceViewHolder;->mLastUpdatedTextView:Landroid/widget/TextView;

    .line 49
    sget v0, Lcom/buzzfeed/nativecontent/R$id;->header_contributors:I

    invoke-static {p1, v0}, Lcom/buzzfeed/toolkit/util/UIUtil;->findView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/buzzfeed/spicerack/ui/holder/HeaderSpiceViewHolder;->mBylineContainer:Landroid/view/ViewGroup;

    .line 50
    sget v0, Lcom/buzzfeed/nativecontent/R$id;->header_contributors_more:I

    invoke-static {p1, v0}, Lcom/buzzfeed/toolkit/util/UIUtil;->findView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/buzzfeed/spicerack/ui/holder/HeaderSpiceViewHolder;->mBylineMoreContainer:Landroid/view/ViewGroup;

    .line 51
    return-void
.end method

.method static synthetic access$000(Lcom/buzzfeed/spicerack/ui/holder/HeaderSpiceViewHolder;Lcom/buzzfeed/toolkit/content/PostContent;)V
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/spicerack/ui/holder/HeaderSpiceViewHolder;
    .param p1, "x1"    # Lcom/buzzfeed/toolkit/content/PostContent;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/buzzfeed/spicerack/ui/holder/HeaderSpiceViewHolder;->onMoreAuthorsClicked(Lcom/buzzfeed/toolkit/content/PostContent;)V

    return-void
.end method

.method static synthetic access$100(Lcom/buzzfeed/spicerack/ui/holder/HeaderSpiceViewHolder;)Landroid/view/ViewGroup;
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/spicerack/ui/holder/HeaderSpiceViewHolder;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/buzzfeed/spicerack/ui/holder/HeaderSpiceViewHolder;->mBylineMoreContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$200(Lcom/buzzfeed/spicerack/ui/holder/HeaderSpiceViewHolder;)Landroid/view/ViewGroup;
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/spicerack/ui/holder/HeaderSpiceViewHolder;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/buzzfeed/spicerack/ui/holder/HeaderSpiceViewHolder;->mBylineContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method private generateByline(Lcom/buzzfeed/toolkit/content/PostContent;Lcom/buzzfeed/toolkit/content/AuthorContent;)Landroid/view/View;
    .registers 5
    .param p1, "PostContent"    # Lcom/buzzfeed/toolkit/content/PostContent;
    .param p2, "author"    # Lcom/buzzfeed/toolkit/content/AuthorContent;

    .prologue
    .line 132
    new-instance v0, Lcom/buzzfeed/toolkit/author/ui/view/AuthorBylineView;

    iget-object v1, p0, Lcom/buzzfeed/spicerack/ui/holder/HeaderSpiceViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/buzzfeed/toolkit/author/ui/view/AuthorBylineView;-><init>(Landroid/content/Context;)V

    .line 133
    .local v0, "view":Lcom/buzzfeed/toolkit/author/ui/view/AuthorBylineView;
    invoke-interface {p1}, Lcom/buzzfeed/toolkit/content/PostContent;->isAd()Z

    move-result v1

    invoke-virtual {v0, p2, v1}, Lcom/buzzfeed/toolkit/author/ui/view/AuthorBylineView;->populateFrom(Lcom/buzzfeed/toolkit/content/AuthorContent;Z)V

    .line 134
    return-object v0
.end method

.method private generateMoreAuthorsByline(Lcom/buzzfeed/toolkit/content/PostContent;I)Landroid/view/View;
    .registers 6
    .param p1, "PostContent"    # Lcom/buzzfeed/toolkit/content/PostContent;
    .param p2, "moreCount"    # I

    .prologue
    .line 138
    new-instance v0, Lcom/buzzfeed/toolkit/author/ui/view/AuthorMoreBylineView;

    iget-object v1, p0, Lcom/buzzfeed/spicerack/ui/holder/HeaderSpiceViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/buzzfeed/toolkit/author/ui/view/AuthorMoreBylineView;-><init>(Landroid/content/Context;)V

    .line 139
    .local v0, "view":Lcom/buzzfeed/toolkit/author/ui/view/AuthorMoreBylineView;
    invoke-direct {p0, p2}, Lcom/buzzfeed/spicerack/ui/holder/HeaderSpiceViewHolder;->getMoreCountText(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p2}, Lcom/buzzfeed/spicerack/ui/holder/HeaderSpiceViewHolder;->getMoreDescriptionText(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/buzzfeed/toolkit/author/ui/view/AuthorMoreBylineView;->populateFrom(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    new-instance v1, Lcom/buzzfeed/spicerack/ui/holder/HeaderSpiceViewHolder$3;

    invoke-direct {v1, p0, p1}, Lcom/buzzfeed/spicerack/ui/holder/HeaderSpiceViewHolder$3;-><init>(Lcom/buzzfeed/spicerack/ui/holder/HeaderSpiceViewHolder;Lcom/buzzfeed/toolkit/content/PostContent;)V

    invoke-virtual {v0, v1}, Lcom/buzzfeed/toolkit/author/ui/view/AuthorMoreBylineView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    return-object v0
.end method

.method private getMoreCountText(I)Ljava/lang/String;
    .registers 4
    .param p1, "count"    # I

    .prologue
    .line 152
    const/16 v0, 0xa

    if-lt p1, v0, :cond_9

    .line 153
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 155
    :goto_8
    return-object v0

    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "&#43;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_8
.end method

.method private getMoreDescriptionText(I)Ljava/lang/String;
    .registers 6
    .param p1, "count"    # I

    .prologue
    .line 159
    iget-object v0, p0, Lcom/buzzfeed/spicerack/ui/holder/HeaderSpiceViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/buzzfeed/nativecontent/R$string;->byline_view_more:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private onMoreAuthorsClicked(Lcom/buzzfeed/toolkit/content/PostContent;)V
    .registers 13
    .param p1, "PostContent"    # Lcom/buzzfeed/toolkit/content/PostContent;

    .prologue
    .line 163
    invoke-interface {p1}, Lcom/buzzfeed/toolkit/content/PostContent;->getAuthorContents()Ljava/util/List;

    move-result-object v4

    .line 164
    .local v4, "contributors":Ljava/util/List;, "Ljava/util/List<Lcom/buzzfeed/toolkit/content/AuthorContent;>;"
    if-eqz v4, :cond_c

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_d

    .line 202
    :cond_c
    :goto_c
    return-void

    .line 165
    :cond_d
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/buzzfeed/spicerack/ui/holder/HeaderSpiceViewHolder;->showedMultiAuthor:Z

    .line 166
    iget-object v8, p0, Lcom/buzzfeed/spicerack/ui/holder/HeaderSpiceViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    sget v9, Lcom/buzzfeed/nativecontent/R$anim;->byline_more_out:I

    invoke-static {v8, v9}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    .line 167
    .local v2, "bylineMoreAwayAnimation":Landroid/view/animation/Animation;
    new-instance v8, Lcom/buzzfeed/spicerack/ui/holder/HeaderSpiceViewHolder$4;

    invoke-direct {v8, p0}, Lcom/buzzfeed/spicerack/ui/holder/HeaderSpiceViewHolder$4;-><init>(Lcom/buzzfeed/spicerack/ui/holder/HeaderSpiceViewHolder;)V

    invoke-virtual {v2, v8}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 176
    iget-object v8, p0, Lcom/buzzfeed/spicerack/ui/holder/HeaderSpiceViewHolder;->mBylineMoreContainer:Landroid/view/ViewGroup;

    invoke-virtual {v8, v2}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 178
    const/4 v7, 0x1

    .local v7, "i":I
    :goto_2a
    iget-object v8, p0, Lcom/buzzfeed/spicerack/ui/holder/HeaderSpiceViewHolder;->mBylineContainer:Landroid/view/ViewGroup;

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    if-ge v7, v8, :cond_59

    .line 179
    iget-object v8, p0, Lcom/buzzfeed/spicerack/ui/holder/HeaderSpiceViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    sget v9, Lcom/buzzfeed/nativecontent/R$anim;->byline_additional_contrib_in:I

    invoke-static {v8, v9}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 180
    .local v1, "anim":Landroid/view/animation/Animation;
    move v5, v7

    .line 181
    .local v5, "finalI":I
    new-instance v8, Lcom/buzzfeed/spicerack/ui/holder/HeaderSpiceViewHolder$5;

    invoke-direct {v8, p0, v5}, Lcom/buzzfeed/spicerack/ui/holder/HeaderSpiceViewHolder$5;-><init>(Lcom/buzzfeed/spicerack/ui/holder/HeaderSpiceViewHolder;I)V

    invoke-virtual {v1, v8}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 192
    mul-int/lit8 v8, v7, 0x64

    int-to-long v8, v8

    invoke-virtual {v1, v8, v9}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 193
    iget-object v8, p0, Lcom/buzzfeed/spicerack/ui/holder/HeaderSpiceViewHolder;->mBylineContainer:Landroid/view/ViewGroup;

    invoke-virtual {v8, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 178
    add-int/lit8 v7, v7, 0x1

    goto :goto_2a

    .line 196
    .end local v1    # "anim":Landroid/view/animation/Animation;
    .end local v5    # "finalI":I
    :cond_59
    iget-object v8, p0, Lcom/buzzfeed/spicerack/ui/holder/HeaderSpiceViewHolder;->mBylineContainer:Landroid/view/ViewGroup;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 197
    .local v3, "cellHeight":I
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    if-nez v3, :cond_76

    iget-object v9, p0, Lcom/buzzfeed/spicerack/ui/holder/HeaderSpiceViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lcom/buzzfeed/nativecontent/R$dimen;->byline_min_height:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .end local v3    # "cellHeight":I
    :cond_76
    mul-int v6, v8, v3

    .line 198
    .local v6, "height":I
    new-instance v0, Lcom/buzzfeed/toolkit/ui/animation/ResizeHeightAnimation;

    iget-object v8, p0, Lcom/buzzfeed/spicerack/ui/holder/HeaderSpiceViewHolder;->mBylineContainer:Landroid/view/ViewGroup;

    invoke-direct {v0, v8, v6}, Lcom/buzzfeed/toolkit/ui/animation/ResizeHeightAnimation;-><init>(Landroid/view/View;I)V

    .line 199
    .local v0, "a":Lcom/buzzfeed/toolkit/ui/animation/ResizeHeightAnimation;
    new-instance v8, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v8}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v8}, Lcom/buzzfeed/toolkit/ui/animation/ResizeHeightAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 200
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    mul-int/lit8 v8, v8, 0x64

    int-to-long v8, v8

    invoke-virtual {v0, v8, v9}, Lcom/buzzfeed/toolkit/ui/animation/ResizeHeightAnimation;->setDuration(J)V

    .line 201
    iget-object v8, p0, Lcom/buzzfeed/spicerack/ui/holder/HeaderSpiceViewHolder;->mBylineContainer:Landroid/view/ViewGroup;

    invoke-virtual {v8, v0}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_c
.end method

.method private reloadMoreAuthors()V
    .registers 5

    .prologue
    .line 225
    iget-boolean v2, p0, Lcom/buzzfeed/spicerack/ui/holder/HeaderSpiceViewHolder;->showedMultiAuthor:Z

    if-eqz v2, :cond_1e

    .line 226
    iget-object v2, p0, Lcom/buzzfeed/spicerack/ui/holder/HeaderSpiceViewHolder;->mPostContent:Lcom/buzzfeed/toolkit/content/PostContent;

    invoke-interface {v2}, Lcom/buzzfeed/toolkit/content/PostContent;->getAuthorContents()Ljava/util/List;

    move-result-object v0

    .line 227
    .local v0, "contributors":Ljava/util/List;, "Ljava/util/List<Lcom/buzzfeed/toolkit/content/AuthorContent;>;"
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_b
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1e

    .line 228
    iget-object v2, p0, Lcom/buzzfeed/spicerack/ui/holder/HeaderSpiceViewHolder;->mBylineContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 227
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 231
    .end local v0    # "contributors":Ljava/util/List;, "Ljava/util/List<Lcom/buzzfeed/toolkit/content/AuthorContent;>;"
    .end local v1    # "i":I
    :cond_1e
    return-void
.end method

.method private setBylines(Lcom/buzzfeed/toolkit/content/PostContent;Ljava/util/List;)V
    .registers 11
    .param p1, "PostContent"    # Lcom/buzzfeed/toolkit/content/PostContent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/buzzfeed/toolkit/content/PostContent;",
            "Ljava/util/List",
            "<",
            "Lcom/buzzfeed/toolkit/content/AuthorContent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 84
    .local p2, "authors":Ljava/util/List;, "Ljava/util/List<Lcom/buzzfeed/toolkit/content/AuthorContent;>;"
    iget-object v5, p0, Lcom/buzzfeed/spicerack/ui/holder/HeaderSpiceViewHolder;->mBylineContainer:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 85
    iget-object v5, p0, Lcom/buzzfeed/spicerack/ui/holder/HeaderSpiceViewHolder;->mBylineMoreContainer:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 87
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x2

    if-gt v5, v6, :cond_33

    .line 88
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_15
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_79

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/buzzfeed/toolkit/content/AuthorContent;

    .line 89
    .local v0, "author":Lcom/buzzfeed/toolkit/content/AuthorContent;
    invoke-direct {p0, p1, v0}, Lcom/buzzfeed/spicerack/ui/holder/HeaderSpiceViewHolder;->generateByline(Lcom/buzzfeed/toolkit/content/PostContent;Lcom/buzzfeed/toolkit/content/AuthorContent;)Landroid/view/View;

    move-result-object v3

    .line 90
    .local v3, "view":Landroid/view/View;
    new-instance v6, Lcom/buzzfeed/spicerack/ui/holder/HeaderSpiceViewHolder$1;

    invoke-direct {v6, p0, v0}, Lcom/buzzfeed/spicerack/ui/holder/HeaderSpiceViewHolder$1;-><init>(Lcom/buzzfeed/spicerack/ui/holder/HeaderSpiceViewHolder;Lcom/buzzfeed/toolkit/content/AuthorContent;)V

    invoke-virtual {v3, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    iget-object v6, p0, Lcom/buzzfeed/spicerack/ui/holder/HeaderSpiceViewHolder;->mBylineContainer:Landroid/view/ViewGroup;

    invoke-virtual {v6, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_15

    .line 101
    .end local v0    # "author":Lcom/buzzfeed/toolkit/content/AuthorContent;
    .end local v3    # "view":Landroid/view/View;
    :cond_33
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_34
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_62

    .line 102
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/buzzfeed/toolkit/content/AuthorContent;

    .line 103
    .restart local v0    # "author":Lcom/buzzfeed/toolkit/content/AuthorContent;
    invoke-direct {p0, p1, v0}, Lcom/buzzfeed/spicerack/ui/holder/HeaderSpiceViewHolder;->generateByline(Lcom/buzzfeed/toolkit/content/PostContent;Lcom/buzzfeed/toolkit/content/AuthorContent;)Landroid/view/View;

    move-result-object v2

    .line 106
    .local v2, "newView":Landroid/view/View;
    if-nez v1, :cond_5a

    .line 107
    const/4 v4, 0x0

    .line 113
    .local v4, "visibility":I
    :goto_47
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 114
    iget-object v5, p0, Lcom/buzzfeed/spicerack/ui/holder/HeaderSpiceViewHolder;->mBylineContainer:Landroid/view/ViewGroup;

    invoke-virtual {v5, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 116
    new-instance v5, Lcom/buzzfeed/spicerack/ui/holder/HeaderSpiceViewHolder$2;

    invoke-direct {v5, p0, v0}, Lcom/buzzfeed/spicerack/ui/holder/HeaderSpiceViewHolder$2;-><init>(Lcom/buzzfeed/spicerack/ui/holder/HeaderSpiceViewHolder;Lcom/buzzfeed/toolkit/content/AuthorContent;)V

    invoke-virtual {v2, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    add-int/lit8 v1, v1, 0x1

    goto :goto_34

    .line 108
    .end local v4    # "visibility":I
    :cond_5a
    const/4 v5, 0x1

    if-ne v1, v5, :cond_5f

    .line 109
    const/4 v4, 0x4

    .restart local v4    # "visibility":I
    goto :goto_47

    .line 111
    .end local v4    # "visibility":I
    :cond_5f
    const/16 v4, 0x8

    .restart local v4    # "visibility":I
    goto :goto_47

    .line 125
    .end local v0    # "author":Lcom/buzzfeed/toolkit/content/AuthorContent;
    .end local v2    # "newView":Landroid/view/View;
    .end local v4    # "visibility":I
    :cond_62
    iget-object v5, p0, Lcom/buzzfeed/spicerack/ui/holder/HeaderSpiceViewHolder;->mBylineMoreContainer:Landroid/view/ViewGroup;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-direct {p0, p1, v6}, Lcom/buzzfeed/spicerack/ui/holder/HeaderSpiceViewHolder;->generateMoreAuthorsByline(Lcom/buzzfeed/toolkit/content/PostContent;I)Landroid/view/View;

    move-result-object v6

    iget-object v7, p0, Lcom/buzzfeed/spicerack/ui/holder/HeaderSpiceViewHolder;->mBylineMoreContainer:Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v5, v6, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 128
    .end local v1    # "i":I
    :cond_79
    return-void
.end method

.method private setEditUpdated()V
    .registers 6

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 77
    iget-object v0, p0, Lcom/buzzfeed/spicerack/ui/holder/HeaderSpiceViewHolder;->mPostContent:Lcom/buzzfeed/toolkit/content/PostContent;

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/buzzfeed/spicerack/ui/holder/HeaderSpiceViewHolder;->mPostContent:Lcom/buzzfeed/toolkit/content/PostContent;

    invoke-interface {v0}, Lcom/buzzfeed/toolkit/content/PostContent;->hasEditUpdated()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 78
    iput-boolean v3, p0, Lcom/buzzfeed/spicerack/ui/holder/HeaderSpiceViewHolder;->mHasLastUpdated:Z

    .line 79
    iget-object v0, p0, Lcom/buzzfeed/spicerack/ui/holder/HeaderSpiceViewHolder;->mLastUpdatedTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/buzzfeed/spicerack/ui/holder/HeaderSpiceViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/buzzfeed/nativecontent/R$string;->updated:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/buzzfeed/spicerack/ui/holder/HeaderSpiceViewHolder;->mPostContent:Lcom/buzzfeed/toolkit/content/PostContent;

    invoke-interface {v3}, Lcom/buzzfeed/toolkit/content/PostContent;->getEditUpdated()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/buzzfeed/spicerack/ui/holder/HeaderSpiceViewHolder;->setDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, v4}, Lcom/buzzfeed/spicerack/ui/holder/HeaderSpiceViewHolder;->setText(Landroid/widget/TextView;Ljava/lang/String;Z)V

    .line 81
    :cond_33
    return-void
.end method

.method private startAnimate()I
    .registers 4

    .prologue
    const/16 v2, 0x32

    .line 212
    const/16 v0, 0x32

    .line 213
    .local v0, "offset":I
    iget-object v1, p0, Lcom/buzzfeed/spicerack/ui/holder/HeaderSpiceViewHolder;->mNameTextView:Landroid/widget/TextView;

    invoke-static {v1, v0, v2}, Lcom/buzzfeed/spicerack/ui/utils/AnimationUtil;->startReveal(Landroid/view/View;II)I

    move-result v0

    .line 214
    iget-object v1, p0, Lcom/buzzfeed/spicerack/ui/holder/HeaderSpiceViewHolder;->mBlurbTextView:Landroid/widget/TextView;

    invoke-static {v1, v0, v2}, Lcom/buzzfeed/spicerack/ui/utils/AnimationUtil;->startReveal(Landroid/view/View;II)I

    move-result v0

    .line 215
    iget-object v1, p0, Lcom/buzzfeed/spicerack/ui/holder/HeaderSpiceViewHolder;->mPostedOnTextView:Landroid/widget/TextView;

    invoke-static {v1, v0, v2}, Lcom/buzzfeed/spicerack/ui/utils/AnimationUtil;->startReveal(Landroid/view/View;II)I

    move-result v0

    .line 216
    iget-boolean v1, p0, Lcom/buzzfeed/spicerack/ui/holder/HeaderSpiceViewHolder;->mHasLastUpdated:Z

    if-eqz v1, :cond_20

    .line 217
    iget-object v1, p0, Lcom/buzzfeed/spicerack/ui/holder/HeaderSpiceViewHolder;->mLastUpdatedTextView:Landroid/widget/TextView;

    invoke-static {v1, v0, v2}, Lcom/buzzfeed/spicerack/ui/utils/AnimationUtil;->startReveal(Landroid/view/View;II)I

    move-result v0

    .line 219
    :cond_20
    iget-object v1, p0, Lcom/buzzfeed/spicerack/ui/holder/HeaderSpiceViewHolder;->mBylineContainer:Landroid/view/ViewGroup;

    invoke-static {v1, v0, v2}, Lcom/buzzfeed/spicerack/ui/utils/AnimationUtil;->startReveal(Landroid/view/View;II)I

    move-result v0

    .line 220
    iget-object v1, p0, Lcom/buzzfeed/spicerack/ui/holder/HeaderSpiceViewHolder;->mBylineMoreContainer:Landroid/view/ViewGroup;

    invoke-static {v1, v0, v2}, Lcom/buzzfeed/spicerack/ui/utils/AnimationUtil;->startReveal(Landroid/view/View;II)I

    move-result v0

    .line 221
    return v0
.end method


# virtual methods
.method public animateIn()I
    .registers 2

    .prologue
    .line 205
    iget-object v0, p0, Lcom/buzzfeed/spicerack/ui/holder/HeaderSpiceViewHolder;->mNameTextView:Landroid/widget/TextView;

    if-nez v0, :cond_6

    .line 206
    const/4 v0, 0x0

    .line 208
    :goto_5
    return v0

    :cond_6
    invoke-direct {p0}, Lcom/buzzfeed/spicerack/ui/holder/HeaderSpiceViewHolder;->startAnimate()I

    move-result v0

    goto :goto_5
.end method

.method public populateFrom(Lcom/buzzfeed/toolkit/content/Content;)V
    .registers 8
    .param p1, "content"    # Lcom/buzzfeed/toolkit/content/Content;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 55
    check-cast p1, Lcom/buzzfeed/toolkit/content/PostContent;

    .end local p1    # "content":Lcom/buzzfeed/toolkit/content/Content;
    iput-object p1, p0, Lcom/buzzfeed/spicerack/ui/holder/HeaderSpiceViewHolder;->mPostContent:Lcom/buzzfeed/toolkit/content/PostContent;

    .line 56
    iget-object v2, p0, Lcom/buzzfeed/spicerack/ui/holder/HeaderSpiceViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 58
    .local v1, "res":Landroid/content/res/Resources;
    iget-object v2, p0, Lcom/buzzfeed/spicerack/ui/holder/HeaderSpiceViewHolder;->mNameTextView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/buzzfeed/spicerack/ui/holder/HeaderSpiceViewHolder;->mPostContent:Lcom/buzzfeed/toolkit/content/PostContent;

    invoke-interface {v3}, Lcom/buzzfeed/toolkit/content/PostContent;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3, v4}, Lcom/buzzfeed/spicerack/ui/holder/HeaderSpiceViewHolder;->setTextIgnoreVisibility(Landroid/widget/TextView;Ljava/lang/String;Z)V

    .line 59
    iget-object v2, p0, Lcom/buzzfeed/spicerack/ui/holder/HeaderSpiceViewHolder;->mBlurbTextView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/buzzfeed/spicerack/ui/holder/HeaderSpiceViewHolder;->mPostContent:Lcom/buzzfeed/toolkit/content/PostContent;

    invoke-interface {v3}, Lcom/buzzfeed/toolkit/content/PostContent;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3, v4}, Lcom/buzzfeed/spicerack/ui/holder/HeaderSpiceViewHolder;->setTextIgnoreVisibility(Landroid/widget/TextView;Ljava/lang/String;Z)V

    .line 61
    iget-object v2, p0, Lcom/buzzfeed/spicerack/ui/holder/HeaderSpiceViewHolder;->mPostContent:Lcom/buzzfeed/toolkit/content/PostContent;

    invoke-interface {v2}, Lcom/buzzfeed/toolkit/content/PostContent;->isBreaking()Z

    move-result v2

    if-eqz v2, :cond_61

    sget v2, Lcom/buzzfeed/nativecontent/R$string;->originally_posted:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 62
    .local v0, "formatted":Ljava/lang/String;
    :goto_30
    iget-object v2, p0, Lcom/buzzfeed/spicerack/ui/holder/HeaderSpiceViewHolder;->mPostedOnTextView:Landroid/widget/TextView;

    new-array v3, v4, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/buzzfeed/spicerack/ui/holder/HeaderSpiceViewHolder;->mPostContent:Lcom/buzzfeed/toolkit/content/PostContent;

    invoke-interface {v4}, Lcom/buzzfeed/toolkit/content/PostContent;->getPublished()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/buzzfeed/spicerack/ui/holder/HeaderSpiceViewHolder;->setDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3, v5}, Lcom/buzzfeed/spicerack/ui/holder/HeaderSpiceViewHolder;->setTextIgnoreVisibility(Landroid/widget/TextView;Ljava/lang/String;Z)V

    .line 63
    iget-object v2, p0, Lcom/buzzfeed/spicerack/ui/holder/HeaderSpiceViewHolder;->mPostContent:Lcom/buzzfeed/toolkit/content/PostContent;

    invoke-interface {v2}, Lcom/buzzfeed/toolkit/content/PostContent;->hasEditUpdated()Z

    move-result v2

    if-eqz v2, :cond_52

    .line 64
    invoke-direct {p0}, Lcom/buzzfeed/spicerack/ui/holder/HeaderSpiceViewHolder;->setEditUpdated()V

    .line 67
    :cond_52
    iget-object v2, p0, Lcom/buzzfeed/spicerack/ui/holder/HeaderSpiceViewHolder;->mPostContent:Lcom/buzzfeed/toolkit/content/PostContent;

    iget-object v3, p0, Lcom/buzzfeed/spicerack/ui/holder/HeaderSpiceViewHolder;->mPostContent:Lcom/buzzfeed/toolkit/content/PostContent;

    invoke-interface {v3}, Lcom/buzzfeed/toolkit/content/PostContent;->getAuthorContents()Ljava/util/List;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/buzzfeed/spicerack/ui/holder/HeaderSpiceViewHolder;->setBylines(Lcom/buzzfeed/toolkit/content/PostContent;Ljava/util/List;)V

    .line 68
    invoke-direct {p0}, Lcom/buzzfeed/spicerack/ui/holder/HeaderSpiceViewHolder;->reloadMoreAuthors()V

    .line 69
    return-void

    .line 61
    .end local v0    # "formatted":Ljava/lang/String;
    :cond_61
    const-string v0, "%1$s"

    goto :goto_30
.end method

.method public populatePost(Lcom/buzzfeed/toolkit/content/PostContent;)V
    .registers 2
    .param p1, "content"    # Lcom/buzzfeed/toolkit/content/PostContent;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/buzzfeed/spicerack/ui/holder/HeaderSpiceViewHolder;->mPostContent:Lcom/buzzfeed/toolkit/content/PostContent;

    .line 73
    invoke-direct {p0}, Lcom/buzzfeed/spicerack/ui/holder/HeaderSpiceViewHolder;->setEditUpdated()V

    .line 74
    return-void
.end method
