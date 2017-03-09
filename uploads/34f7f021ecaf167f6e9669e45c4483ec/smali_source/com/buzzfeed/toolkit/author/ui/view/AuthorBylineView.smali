.class public Lcom/buzzfeed/toolkit/author/ui/view/AuthorBylineView;
.super Landroid/widget/RelativeLayout;
.source "AuthorBylineView.java"


# static fields
.field private static final AUTHOR_IMAGE_SIZE:I = 0x40

.field private static final BRAND_PUBLISHER:Ljava/lang/CharSequence;

.field private static final COMMUNITY_CONTRIBUTOR:Ljava/lang/CharSequence;

.field private static final UK_BYLINE_DESCRIPTION:Ljava/lang/CharSequence;


# instance fields
.field private mAuthorDescriptionTextView:Landroid/widget/TextView;

.field private mAuthorImageContainer:Landroid/widget/FrameLayout;

.field private mAuthorNameTextView:Landroid/widget/TextView;

.field private mCircleImageView:Lcom/buzzfeed/toolkit/ui/view/CircularImageView;

.field private mSquareImageView:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 30
    const-string v0, "Community"

    sput-object v0, Lcom/buzzfeed/toolkit/author/ui/view/AuthorBylineView;->COMMUNITY_CONTRIBUTOR:Ljava/lang/CharSequence;

    .line 31
    const-string v0, "Promoted Content"

    sput-object v0, Lcom/buzzfeed/toolkit/author/ui/view/AuthorBylineView;->UK_BYLINE_DESCRIPTION:Ljava/lang/CharSequence;

    .line 32
    const-string v0, "Brand Publisher"

    sput-object v0, Lcom/buzzfeed/toolkit/author/ui/view/AuthorBylineView;->BRAND_PUBLISHER:Ljava/lang/CharSequence;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 46
    invoke-direct {p0}, Lcom/buzzfeed/toolkit/author/ui/view/AuthorBylineView;->init()V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    invoke-direct {p0}, Lcom/buzzfeed/toolkit/author/ui/view/AuthorBylineView;->init()V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 55
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 56
    invoke-direct {p0}, Lcom/buzzfeed/toolkit/author/ui/view/AuthorBylineView;->init()V

    .line 57
    return-void
.end method

.method static synthetic access$000(Lcom/buzzfeed/toolkit/author/ui/view/AuthorBylineView;)Lcom/buzzfeed/toolkit/ui/view/CircularImageView;
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/toolkit/author/ui/view/AuthorBylineView;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/buzzfeed/toolkit/author/ui/view/AuthorBylineView;->mCircleImageView:Lcom/buzzfeed/toolkit/ui/view/CircularImageView;

    return-object v0
.end method

.method private init()V
    .registers 5

    .prologue
    const/16 v3, 0x40

    .line 60
    invoke-virtual {p0}, Lcom/buzzfeed/toolkit/author/ui/view/AuthorBylineView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/buzzfeed/toolkit/R$layout;->author_byline:I

    invoke-static {v0, v1, p0}, Lcom/buzzfeed/toolkit/author/ui/view/AuthorBylineView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 61
    sget v0, Lcom/buzzfeed/toolkit/R$id;->byline_image_layout:I

    invoke-static {p0, v0}, Lcom/buzzfeed/toolkit/util/UIUtil;->findView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/buzzfeed/toolkit/author/ui/view/AuthorBylineView;->mAuthorImageContainer:Landroid/widget/FrameLayout;

    .line 62
    sget v0, Lcom/buzzfeed/toolkit/R$id;->byline_staff_thumbnail:I

    invoke-static {p0, v0}, Lcom/buzzfeed/toolkit/util/UIUtil;->findView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/buzzfeed/toolkit/ui/view/CircularImageView;

    iput-object v0, p0, Lcom/buzzfeed/toolkit/author/ui/view/AuthorBylineView;->mCircleImageView:Lcom/buzzfeed/toolkit/ui/view/CircularImageView;

    .line 63
    sget v0, Lcom/buzzfeed/toolkit/R$id;->byline_sponsor_thumbnail:I

    invoke-static {p0, v0}, Lcom/buzzfeed/toolkit/util/UIUtil;->findView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/buzzfeed/toolkit/author/ui/view/AuthorBylineView;->mSquareImageView:Landroid/widget/ImageView;

    .line 64
    sget v0, Lcom/buzzfeed/toolkit/R$id;->byline_name:I

    invoke-static {p0, v0}, Lcom/buzzfeed/toolkit/util/UIUtil;->findView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/buzzfeed/toolkit/author/ui/view/AuthorBylineView;->mAuthorNameTextView:Landroid/widget/TextView;

    .line 65
    sget v0, Lcom/buzzfeed/toolkit/R$id;->byline_description:I

    invoke-static {p0, v0}, Lcom/buzzfeed/toolkit/util/UIUtil;->findView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/buzzfeed/toolkit/author/ui/view/AuthorBylineView;->mAuthorDescriptionTextView:Landroid/widget/TextView;

    .line 66
    iget-object v0, p0, Lcom/buzzfeed/toolkit/author/ui/view/AuthorBylineView;->mCircleImageView:Lcom/buzzfeed/toolkit/ui/view/CircularImageView;

    invoke-virtual {p0}, Lcom/buzzfeed/toolkit/author/ui/view/AuthorBylineView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/buzzfeed/toolkit/R$color;->buzzfeed_light_gray:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-static {v1, v3, v3}, Lcom/buzzfeed/toolkit/util/UIUtil;->createColorBitmap(III)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/buzzfeed/toolkit/ui/view/CircularImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 67
    return-void
.end method


# virtual methods
.method public populateFrom(Lcom/buzzfeed/toolkit/content/AuthorContent;Z)V
    .registers 9
    .param p1, "author"    # Lcom/buzzfeed/toolkit/content/AuthorContent;
    .param p2, "isAdvertiser"    # Z

    .prologue
    const/16 v5, 0x40

    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 70
    iget-object v1, p0, Lcom/buzzfeed/toolkit/author/ui/view/AuthorBylineView;->mAuthorImageContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 71
    invoke-interface {p1}, Lcom/buzzfeed/toolkit/content/AuthorContent;->getAvatar()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_38

    .line 72
    if-nez p2, :cond_70

    .line 73
    iget-object v1, p0, Lcom/buzzfeed/toolkit/author/ui/view/AuthorBylineView;->mSquareImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 74
    iget-object v1, p0, Lcom/buzzfeed/toolkit/author/ui/view/AuthorBylineView;->mCircleImageView:Lcom/buzzfeed/toolkit/ui/view/CircularImageView;

    invoke-virtual {v1, v3}, Lcom/buzzfeed/toolkit/ui/view/CircularImageView;->setVisibility(I)V

    .line 77
    invoke-virtual {p0}, Lcom/buzzfeed/toolkit/author/ui/view/AuthorBylineView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    .line 78
    invoke-interface {p1}, Lcom/buzzfeed/toolkit/content/AuthorContent;->getAvatar()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v1

    .line 79
    invoke-virtual {v1}, Lcom/bumptech/glide/DrawableTypeRequest;->asBitmap()Lcom/bumptech/glide/BitmapTypeRequest;

    move-result-object v1

    new-instance v2, Lcom/buzzfeed/toolkit/author/ui/view/AuthorBylineView$1;

    invoke-direct {v2, p0, v5, v5}, Lcom/buzzfeed/toolkit/author/ui/view/AuthorBylineView$1;-><init>(Lcom/buzzfeed/toolkit/author/ui/view/AuthorBylineView;II)V

    .line 80
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/BitmapTypeRequest;->into(Lcom/bumptech/glide/request/target/Target;)Lcom/bumptech/glide/request/target/Target;

    .line 102
    :cond_38
    :goto_38
    iget-object v1, p0, Lcom/buzzfeed/toolkit/author/ui/view/AuthorBylineView;->mAuthorNameTextView:Landroid/widget/TextView;

    invoke-interface {p1}, Lcom/buzzfeed/toolkit/content/AuthorContent;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    invoke-interface {p1}, Lcom/buzzfeed/toolkit/content/AuthorContent;->getTitle()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_a3

    .line 104
    iget-object v1, p0, Lcom/buzzfeed/toolkit/author/ui/view/AuthorBylineView;->mAuthorDescriptionTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 105
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->UK:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9a

    invoke-interface {p1}, Lcom/buzzfeed/toolkit/content/AuthorContent;->getTitle()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/buzzfeed/toolkit/author/ui/view/AuthorBylineView;->BRAND_PUBLISHER:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9a

    sget-object v0, Lcom/buzzfeed/toolkit/author/ui/view/AuthorBylineView;->UK_BYLINE_DESCRIPTION:Ljava/lang/CharSequence;

    .line 106
    .local v0, "byLine":Ljava/lang/CharSequence;
    :goto_6a
    iget-object v1, p0, Lcom/buzzfeed/toolkit/author/ui/view/AuthorBylineView;->mAuthorDescriptionTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    .end local v0    # "byLine":Ljava/lang/CharSequence;
    :goto_6f
    return-void

    .line 93
    :cond_70
    iget-object v1, p0, Lcom/buzzfeed/toolkit/author/ui/view/AuthorBylineView;->mSquareImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 94
    iget-object v1, p0, Lcom/buzzfeed/toolkit/author/ui/view/AuthorBylineView;->mCircleImageView:Lcom/buzzfeed/toolkit/ui/view/CircularImageView;

    invoke-virtual {v1, v4}, Lcom/buzzfeed/toolkit/ui/view/CircularImageView;->setVisibility(I)V

    .line 95
    invoke-virtual {p0}, Lcom/buzzfeed/toolkit/author/ui/view/AuthorBylineView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    invoke-interface {p1}, Lcom/buzzfeed/toolkit/content/AuthorContent;->getAvatar()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v1

    sget-object v2, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->ALL:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 96
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/DrawableTypeRequest;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v1

    .line 97
    invoke-virtual {v1}, Lcom/bumptech/glide/DrawableRequestBuilder;->centerCrop()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/buzzfeed/toolkit/author/ui/view/AuthorBylineView;->mSquareImageView:Landroid/widget/ImageView;

    .line 98
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    goto :goto_38

    .line 105
    :cond_9a
    invoke-interface {p1}, Lcom/buzzfeed/toolkit/content/AuthorContent;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    goto :goto_6a

    .line 108
    :cond_a3
    iget-object v1, p0, Lcom/buzzfeed/toolkit/author/ui/view/AuthorBylineView;->mAuthorDescriptionTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_6f
.end method
