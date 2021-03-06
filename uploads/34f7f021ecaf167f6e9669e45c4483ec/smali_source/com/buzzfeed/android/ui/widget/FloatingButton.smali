.class public Lcom/buzzfeed/android/ui/widget/FloatingButton;
.super Landroid/support/v7/widget/CardView;
.source "FloatingButton.java"


# instance fields
.field private mTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/buzzfeed/android/ui/widget/FloatingButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 29
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/buzzfeed/android/ui/widget/FloatingButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/CardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    invoke-virtual {p0}, Lcom/buzzfeed/android/ui/widget/FloatingButton;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-direct {p0, p2, p3}, Lcom/buzzfeed/android/ui/widget/FloatingButton;->initialize(Landroid/util/AttributeSet;I)V

    .line 35
    :cond_c
    return-void
.end method

.method private static convertDpToPx(Landroid/content/Context;F)F
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dp"    # F

    .prologue
    .line 71
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 72
    .local v2, "resources":Landroid/content/res/Resources;
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 73
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    iget v3, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v3, v3

    const/high16 v4, 0x43200000

    div-float/2addr v3, v4

    mul-float v1, p1, v3

    .line 74
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

    .line 38
    invoke-virtual {p0}, Lcom/buzzfeed/android/ui/widget/FloatingButton;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 39
    .local v0, "context":Landroid/content/Context;
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, v0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    .local v3, "view":Landroid/widget/TextView;
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setClickable(Z)V

    .line 42
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 43
    .local v1, "params":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 44
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 45
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setFocusableInTouchMode(Z)V

    .line 46
    const/16 v4, 0x11

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 47
    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    const-string v5, "fonts/ProximaNova-Sbold.ttf"

    invoke-static {v4, v5}, Luk/co/chrisjenx/calligraphy/TypefaceUtils;->load(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 48
    invoke-virtual {p0}, Lcom/buzzfeed/android/ui/widget/FloatingButton;->getContext()Landroid/content/Context;

    move-result-object v4

    const/high16 v5, 0x41200000

    invoke-static {v4, v5}, Lcom/buzzfeed/android/ui/widget/FloatingButton;->convertDpToPx(Landroid/content/Context;F)F

    move-result v4

    float-to-int v2, v4

    .line 49
    .local v2, "sidePadding":I
    invoke-virtual {v3, v2, v6, v2, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 50
    invoke-virtual {p0, v3}, Lcom/buzzfeed/android/ui/widget/FloatingButton;->addView(Landroid/view/View;)V

    .line 51
    iput-object v3, p0, Lcom/buzzfeed/android/ui/widget/FloatingButton;->mTextView:Landroid/widget/TextView;

    .line 52
    return-void
.end method


# virtual methods
.method public getText()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/buzzfeed/android/ui/widget/FloatingButton;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getTextView()Landroid/widget/TextView;
    .registers 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/buzzfeed/android/ui/widget/FloatingButton;->mTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method public setText(I)V
    .registers 3
    .param p1, "resId"    # I

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/buzzfeed/android/ui/widget/FloatingButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/buzzfeed/android/ui/widget/FloatingButton;->setText(Ljava/lang/CharSequence;)V

    .line 64
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/buzzfeed/android/ui/widget/FloatingButton;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    return-void
.end method
