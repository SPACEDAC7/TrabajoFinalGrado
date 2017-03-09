.class public Lcom/buzzfeed/android/ui/widget/DrawShadowLinearLayout;
.super Landroid/widget/LinearLayout;
.source "DrawShadowLinearLayout.java"


# static fields
.field private static SHADOW_ALPHA:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Lcom/buzzfeed/android/ui/widget/DrawShadowLinearLayout;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAlpha:F

.field private mAnimator:Landroid/animation/ObjectAnimator;

.field private mHeight:I

.field private mShadowDrawable:Landroid/graphics/drawable/Drawable;

.field private mShadowNinePatchDrawable:Landroid/graphics/drawable/NinePatchDrawable;

.field private mShadowTopOffset:I

.field private mShadowVisible:Z

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 108
    new-instance v0, Lcom/buzzfeed/android/ui/widget/DrawShadowLinearLayout$1;

    const-class v1, Ljava/lang/Float;

    const-string v2, "shadowAlpha"

    invoke-direct {v0, v1, v2}, Lcom/buzzfeed/android/ui/widget/DrawShadowLinearLayout$1;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/buzzfeed/android/ui/widget/DrawShadowLinearLayout;->SHADOW_ALPHA:Landroid/util/Property;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/buzzfeed/android/ui/widget/DrawShadowLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 32
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/buzzfeed/android/ui/widget/DrawShadowLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 36
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    const/high16 v1, 0x3f800000

    iput v1, p0, Lcom/buzzfeed/android/ui/widget/DrawShadowLinearLayout;->mAlpha:F

    .line 37
    sget-object v1, Lcom/buzzfeed/android/R$styleable;->DrawShadowLayout:[I

    invoke-virtual {p1, p2, v1, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 40
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/buzzfeed/android/ui/widget/DrawShadowLinearLayout;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    .line 41
    iget-object v1, p0, Lcom/buzzfeed/android/ui/widget/DrawShadowLinearLayout;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2a

    .line 42
    iget-object v1, p0, Lcom/buzzfeed/android/ui/widget/DrawShadowLinearLayout;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 43
    iget-object v1, p0, Lcom/buzzfeed/android/ui/widget/DrawShadowLinearLayout;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v1, v1, Landroid/graphics/drawable/NinePatchDrawable;

    if-eqz v1, :cond_2a

    .line 44
    iget-object v1, p0, Lcom/buzzfeed/android/ui/widget/DrawShadowLinearLayout;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v1, Landroid/graphics/drawable/NinePatchDrawable;

    iput-object v1, p0, Lcom/buzzfeed/android/ui/widget/DrawShadowLinearLayout;->mShadowNinePatchDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    .line 48
    :cond_2a
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/buzzfeed/android/ui/widget/DrawShadowLinearLayout;->mShadowVisible:Z

    .line 49
    iget-boolean v1, p0, Lcom/buzzfeed/android/ui/widget/DrawShadowLinearLayout;->mShadowVisible:Z

    if-eqz v1, :cond_38

    iget-object v1, p0, Lcom/buzzfeed/android/ui/widget/DrawShadowLinearLayout;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_40

    :cond_38
    move v1, v3

    :goto_39
    invoke-virtual {p0, v1}, Lcom/buzzfeed/android/ui/widget/DrawShadowLinearLayout;->setWillNotDraw(Z)V

    .line 51
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 52
    return-void

    :cond_40
    move v1, v2

    .line 49
    goto :goto_39
.end method

.method static synthetic access$000(Lcom/buzzfeed/android/ui/widget/DrawShadowLinearLayout;)F
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/android/ui/widget/DrawShadowLinearLayout;

    .prologue
    .line 17
    iget v0, p0, Lcom/buzzfeed/android/ui/widget/DrawShadowLinearLayout;->mAlpha:F

    return v0
.end method

.method static synthetic access$002(Lcom/buzzfeed/android/ui/widget/DrawShadowLinearLayout;F)F
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/android/ui/widget/DrawShadowLinearLayout;
    .param p1, "x1"    # F

    .prologue
    .line 17
    iput p1, p0, Lcom/buzzfeed/android/ui/widget/DrawShadowLinearLayout;->mAlpha:F

    return p1
.end method

.method private updateShadowBounds()V
    .registers 6

    .prologue
    .line 63
    iget-object v0, p0, Lcom/buzzfeed/android/ui/widget/DrawShadowLinearLayout;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_10

    .line 64
    iget-object v0, p0, Lcom/buzzfeed/android/ui/widget/DrawShadowLinearLayout;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    iget v2, p0, Lcom/buzzfeed/android/ui/widget/DrawShadowLinearLayout;->mShadowTopOffset:I

    iget v3, p0, Lcom/buzzfeed/android/ui/widget/DrawShadowLinearLayout;->mWidth:I

    iget v4, p0, Lcom/buzzfeed/android/ui/widget/DrawShadowLinearLayout;->mHeight:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 66
    :cond_10
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 70
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->draw(Landroid/graphics/Canvas;)V

    .line 71
    iget-object v0, p0, Lcom/buzzfeed/android/ui/widget/DrawShadowLinearLayout;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_23

    iget-boolean v0, p0, Lcom/buzzfeed/android/ui/widget/DrawShadowLinearLayout;->mShadowVisible:Z

    if-eqz v0, :cond_23

    .line 72
    iget-object v0, p0, Lcom/buzzfeed/android/ui/widget/DrawShadowLinearLayout;->mShadowNinePatchDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    if-eqz v0, :cond_1e

    .line 73
    iget-object v0, p0, Lcom/buzzfeed/android/ui/widget/DrawShadowLinearLayout;->mShadowNinePatchDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/NinePatchDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    const/high16 v1, 0x437f0000

    iget v2, p0, Lcom/buzzfeed/android/ui/widget/DrawShadowLinearLayout;->mAlpha:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 75
    :cond_1e
    iget-object v0, p0, Lcom/buzzfeed/android/ui/widget/DrawShadowLinearLayout;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 77
    :cond_23
    return-void
.end method

.method public isShadowVisible()Z
    .registers 2

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/buzzfeed/android/ui/widget/DrawShadowLinearLayout;->mShadowVisible:Z

    return v0
.end method

.method protected onSizeChanged(IIII)V
    .registers 5
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 56
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->onSizeChanged(IIII)V

    .line 57
    iput p1, p0, Lcom/buzzfeed/android/ui/widget/DrawShadowLinearLayout;->mWidth:I

    .line 58
    iput p2, p0, Lcom/buzzfeed/android/ui/widget/DrawShadowLinearLayout;->mHeight:I

    .line 59
    invoke-direct {p0}, Lcom/buzzfeed/android/ui/widget/DrawShadowLinearLayout;->updateShadowBounds()V

    .line 60
    return-void
.end method

.method public setShadowTopOffset(I)V
    .registers 2
    .param p1, "shadowTopOffset"    # I

    .prologue
    .line 80
    iput p1, p0, Lcom/buzzfeed/android/ui/widget/DrawShadowLinearLayout;->mShadowTopOffset:I

    .line 81
    invoke-direct {p0}, Lcom/buzzfeed/android/ui/widget/DrawShadowLinearLayout;->updateShadowBounds()V

    .line 82
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 83
    return-void
.end method

.method public setShadowVisible(ZZ)V
    .registers 11
    .param p1, "shadowVisible"    # Z
    .param p2, "animate"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/high16 v2, 0x3f800000

    const/4 v1, 0x0

    .line 90
    iput-boolean p1, p0, Lcom/buzzfeed/android/ui/widget/DrawShadowLinearLayout;->mShadowVisible:Z

    .line 91
    iget-object v0, p0, Lcom/buzzfeed/android/ui/widget/DrawShadowLinearLayout;->mAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_13

    .line 92
    iget-object v0, p0, Lcom/buzzfeed/android/ui/widget/DrawShadowLinearLayout;->mAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 93
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/buzzfeed/android/ui/widget/DrawShadowLinearLayout;->mAnimator:Landroid/animation/ObjectAnimator;

    .line 96
    :cond_13
    if-eqz p2, :cond_39

    iget-object v0, p0, Lcom/buzzfeed/android/ui/widget/DrawShadowLinearLayout;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_39

    .line 97
    sget-object v5, Lcom/buzzfeed/android/ui/widget/DrawShadowLinearLayout;->SHADOW_ALPHA:Landroid/util/Property;

    const/4 v0, 0x2

    new-array v6, v0, [F

    if-eqz p1, :cond_49

    move v0, v1

    :goto_21
    aput v0, v6, v3

    if-eqz p1, :cond_4b

    :goto_25
    aput v2, v6, v4

    invoke-static {p0, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/buzzfeed/android/ui/widget/DrawShadowLinearLayout;->mAnimator:Landroid/animation/ObjectAnimator;

    .line 100
    iget-object v0, p0, Lcom/buzzfeed/android/ui/widget/DrawShadowLinearLayout;->mAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v6, 0x3e8

    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 101
    iget-object v0, p0, Lcom/buzzfeed/android/ui/widget/DrawShadowLinearLayout;->mAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 104
    :cond_39
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 105
    iget-boolean v0, p0, Lcom/buzzfeed/android/ui/widget/DrawShadowLinearLayout;->mShadowVisible:Z

    if-eqz v0, :cond_44

    iget-object v0, p0, Lcom/buzzfeed/android/ui/widget/DrawShadowLinearLayout;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_4d

    :cond_44
    move v0, v4

    :goto_45
    invoke-virtual {p0, v0}, Lcom/buzzfeed/android/ui/widget/DrawShadowLinearLayout;->setWillNotDraw(Z)V

    .line 106
    return-void

    :cond_49
    move v0, v2

    .line 97
    goto :goto_21

    :cond_4b
    move v2, v1

    goto :goto_25

    :cond_4d
    move v0, v3

    .line 105
    goto :goto_45
.end method
