.class public Lcom/buzzfeed/toolkit/author/ui/view/AuthorMoreBylineView;
.super Landroid/widget/RelativeLayout;
.source "AuthorMoreBylineView.java"


# instance fields
.field private mAuthorDescriptionTextView:Landroid/widget/TextView;

.field private mMoreAuthorsTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 19
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 20
    invoke-direct {p0}, Lcom/buzzfeed/toolkit/author/ui/view/AuthorMoreBylineView;->init()V

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    invoke-direct {p0}, Lcom/buzzfeed/toolkit/author/ui/view/AuthorMoreBylineView;->init()V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    invoke-direct {p0}, Lcom/buzzfeed/toolkit/author/ui/view/AuthorMoreBylineView;->init()V

    .line 31
    return-void
.end method

.method private init()V
    .registers 3

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/buzzfeed/toolkit/author/ui/view/AuthorMoreBylineView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/buzzfeed/toolkit/R$layout;->author_byline_more:I

    invoke-static {v0, v1, p0}, Lcom/buzzfeed/toolkit/author/ui/view/AuthorMoreBylineView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 35
    sget v0, Lcom/buzzfeed/toolkit/R$id;->byline_more_text:I

    invoke-static {p0, v0}, Lcom/buzzfeed/toolkit/util/UIUtil;->findView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/buzzfeed/toolkit/author/ui/view/AuthorMoreBylineView;->mMoreAuthorsTextView:Landroid/widget/TextView;

    .line 36
    sget v0, Lcom/buzzfeed/toolkit/R$id;->byline_description:I

    invoke-static {p0, v0}, Lcom/buzzfeed/toolkit/util/UIUtil;->findView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/buzzfeed/toolkit/author/ui/view/AuthorMoreBylineView;->mAuthorDescriptionTextView:Landroid/widget/TextView;

    .line 37
    return-void
.end method


# virtual methods
.method public populateFrom(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "moreText"    # Ljava/lang/String;
    .param p2, "descriptionText"    # Ljava/lang/String;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/buzzfeed/toolkit/author/ui/view/AuthorMoreBylineView;->mMoreAuthorsTextView:Landroid/widget/TextView;

    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    iget-object v0, p0, Lcom/buzzfeed/toolkit/author/ui/view/AuthorMoreBylineView;->mAuthorDescriptionTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/buzzfeed/toolkit/author/ui/view/AuthorMoreBylineView;->setClickable(Z)V

    .line 43
    return-void
.end method
