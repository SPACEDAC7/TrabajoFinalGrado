.class public Lcom/buzzfeed/android/ui/widget/TextCardView;
.super Landroid/support/v7/widget/CardView;
.source "TextCardView.java"


# instance fields
.field private mTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/buzzfeed/android/ui/widget/TextCardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 33
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/buzzfeed/android/ui/widget/TextCardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/CardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    invoke-virtual {p0}, Lcom/buzzfeed/android/ui/widget/TextCardView;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-direct {p0, p2, p3}, Lcom/buzzfeed/android/ui/widget/TextCardView;->initialize(Landroid/util/AttributeSet;I)V

    .line 39
    :cond_c
    return-void
.end method

.method static synthetic access$000(Lcom/buzzfeed/android/ui/widget/TextCardView;)Landroid/widget/TextView;
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/android/ui/widget/TextCardView;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/buzzfeed/android/ui/widget/TextCardView;->mTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method private static convertDpToPx(Landroid/content/Context;F)F
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dp"    # F

    .prologue
    .line 95
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 96
    .local v2, "resources":Landroid/content/res/Resources;
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 97
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    iget v3, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v3, v3

    const/high16 v4, 0x43200000

    div-float/2addr v3, v4

    mul-float v1, p1, v3

    .line 98
    .local v1, "px":F
    return v1
.end method

.method private initialize(Landroid/util/AttributeSet;I)V
    .registers 11
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "defStyleAttr"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v5, -0x1

    const/4 v6, 0x0

    .line 42
    invoke-virtual {p0}, Lcom/buzzfeed/android/ui/widget/TextCardView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 43
    .local v0, "context":Landroid/content/Context;
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, v0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    .local v3, "view":Landroid/widget/TextView;
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setClickable(Z)V

    .line 46
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 47
    .local v1, "params":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 48
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 49
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setFocusableInTouchMode(Z)V

    .line 50
    const/16 v4, 0x11

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 51
    invoke-virtual {p0}, Lcom/buzzfeed/android/ui/widget/TextCardView;->getContext()Landroid/content/Context;

    move-result-object v4

    const/high16 v5, 0x41200000

    invoke-static {v4, v5}, Lcom/buzzfeed/android/ui/widget/TextCardView;->convertDpToPx(Landroid/content/Context;F)F

    move-result v4

    float-to-int v2, v4

    .line 52
    .local v2, "sidePadding":I
    invoke-virtual {v3, v2, v6, v2, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 53
    invoke-virtual {p0, v3}, Lcom/buzzfeed/android/ui/widget/TextCardView;->addView(Landroid/view/View;)V

    .line 54
    iput-object v3, p0, Lcom/buzzfeed/android/ui/widget/TextCardView;->mTextView:Landroid/widget/TextView;

    .line 55
    iget-object v4, p0, Lcom/buzzfeed/android/ui/widget/TextCardView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    const-string v6, "fonts/ProximaNova-Sbold.ttf"

    invoke-static {v5, v6}, Luk/co/chrisjenx/calligraphy/TypefaceUtils;->load(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 56
    return-void
.end method


# virtual methods
.method public getText()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/buzzfeed/android/ui/widget/TextCardView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getTextView()Landroid/widget/TextView;
    .registers 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/buzzfeed/android/ui/widget/TextCardView;->mTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method public setText(I)V
    .registers 3
    .param p1, "resId"    # I

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/buzzfeed/android/ui/widget/TextCardView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/buzzfeed/android/ui/widget/TextCardView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/buzzfeed/android/ui/widget/TextCardView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Z)V
    .registers 8
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "animate"    # Z

    .prologue
    .line 59
    if-nez p2, :cond_8

    .line 60
    iget-object v2, p0, Lcom/buzzfeed/android/ui/widget/TextCardView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    :goto_7
    return-void

    .line 62
    :cond_8
    move-object v1, p1

    .line 63
    .local v1, "newText":Ljava/lang/CharSequence;
    iget-object v2, p0, Lcom/buzzfeed/android/ui/widget/TextCardView;->mTextView:Landroid/widget/TextView;

    const-string v3, "alpha"

    const/4 v4, 0x2

    new-array v4, v4, [F

    fill-array-data v4, :array_28

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 64
    .local v0, "fadeOutAnimation":Landroid/animation/ObjectAnimator;
    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 65
    new-instance v2, Lcom/buzzfeed/android/ui/widget/TextCardView$1;

    invoke-direct {v2, p0, v1}, Lcom/buzzfeed/android/ui/widget/TextCardView$1;-><init>(Lcom/buzzfeed/android/ui/widget/TextCardView;Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 74
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_7

    .line 63
    :array_28
    .array-data 4
        0x3f800000
        0x0
    .end array-data
.end method
