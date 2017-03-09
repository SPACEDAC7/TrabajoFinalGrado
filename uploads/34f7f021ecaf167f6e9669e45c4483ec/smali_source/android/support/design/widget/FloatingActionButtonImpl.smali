.class abstract Landroid/support/design/widget/FloatingActionButtonImpl;
.super Ljava/lang/Object;
.source "FloatingActionButtonImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/widget/FloatingActionButtonImpl$InternalVisibilityChangedListener;
    }
.end annotation


# static fields
.field static final ANIM_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field static final ANIM_STATE_HIDING:I = 0x1

.field static final ANIM_STATE_NONE:I = 0x0

.field static final ANIM_STATE_SHOWING:I = 0x2

.field static final EMPTY_STATE_SET:[I

.field static final ENABLED_STATE_SET:[I

.field static final FOCUSED_ENABLED_STATE_SET:[I

.field static final PRESSED_ANIM_DELAY:J = 0x64L

.field static final PRESSED_ANIM_DURATION:J = 0x64L

.field static final PRESSED_ENABLED_STATE_SET:[I

.field static final SHOW_HIDE_ANIM_DURATION:I = 0xc8


# instance fields
.field mAnimState:I

.field final mAnimatorCreator:Landroid/support/design/widget/ValueAnimatorCompat$Creator;

.field mBorderDrawable:Landroid/support/design/widget/CircularBorderDrawable;

.field mContentBackground:Landroid/graphics/drawable/Drawable;

.field mElevation:F

.field private mPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field mPressedTranslationZ:F

.field mRippleDrawable:Landroid/graphics/drawable/Drawable;

.field final mShadowViewDelegate:Landroid/support/design/widget/ShadowViewDelegate;

.field mShapeDrawable:Landroid/graphics/drawable/Drawable;

.field private final mTmpRect:Landroid/graphics/Rect;

.field final mView:Landroid/support/design/widget/VisibilityAwareImageButton;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 36
    sget-object v0, Landroid/support/design/widget/AnimationUtils;->FAST_OUT_LINEAR_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    sput-object v0, Landroid/support/design/widget/FloatingActionButtonImpl;->ANIM_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 61
    new-array v0, v1, [I

    fill-array-data v0, :array_24

    sput-object v0, Landroid/support/design/widget/FloatingActionButtonImpl;->PRESSED_ENABLED_STATE_SET:[I

    .line 63
    new-array v0, v1, [I

    fill-array-data v0, :array_2c

    sput-object v0, Landroid/support/design/widget/FloatingActionButtonImpl;->FOCUSED_ENABLED_STATE_SET:[I

    .line 65
    const/4 v0, 0x1

    new-array v0, v0, [I

    const v1, 0x101009e

    aput v1, v0, v2

    sput-object v0, Landroid/support/design/widget/FloatingActionButtonImpl;->ENABLED_STATE_SET:[I

    .line 66
    new-array v0, v2, [I

    sput-object v0, Landroid/support/design/widget/FloatingActionButtonImpl;->EMPTY_STATE_SET:[I

    return-void

    .line 61
    nop

    :array_24
    .array-data 4
        0x10100a7
        0x101009e
    .end array-data

    .line 63
    :array_2c
    .array-data 4
        0x101009c
        0x101009e
    .end array-data
.end method

.method constructor <init>(Landroid/support/design/widget/VisibilityAwareImageButton;Landroid/support/design/widget/ShadowViewDelegate;Landroid/support/design/widget/ValueAnimatorCompat$Creator;)V
    .registers 5
    .param p1, "view"    # Landroid/support/design/widget/VisibilityAwareImageButton;
    .param p2, "shadowViewDelegate"    # Landroid/support/design/widget/ShadowViewDelegate;
    .param p3, "animatorCreator"    # Landroid/support/design/widget/ValueAnimatorCompat$Creator;

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->mAnimState:I

    .line 72
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->mTmpRect:Landroid/graphics/Rect;

    .line 77
    iput-object p1, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->mView:Landroid/support/design/widget/VisibilityAwareImageButton;

    .line 78
    iput-object p2, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->mShadowViewDelegate:Landroid/support/design/widget/ShadowViewDelegate;

    .line 79
    iput-object p3, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->mAnimatorCreator:Landroid/support/design/widget/ValueAnimatorCompat$Creator;

    .line 80
    return-void
.end method

.method private ensurePreDrawListener()V
    .registers 2

    .prologue
    .line 173
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->mPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    if-nez v0, :cond_b

    .line 174
    new-instance v0, Landroid/support/design/widget/FloatingActionButtonImpl$1;

    invoke-direct {v0, p0}, Landroid/support/design/widget/FloatingActionButtonImpl$1;-><init>(Landroid/support/design/widget/FloatingActionButtonImpl;)V

    iput-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->mPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 182
    :cond_b
    return-void
.end method


# virtual methods
.method createBorderDrawable(ILandroid/content/res/ColorStateList;)Landroid/support/design/widget/CircularBorderDrawable;
    .registers 9
    .param p1, "borderWidth"    # I
    .param p2, "backgroundTint"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 153
    iget-object v2, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->mView:Landroid/support/design/widget/VisibilityAwareImageButton;

    invoke-virtual {v2}, Landroid/support/design/widget/VisibilityAwareImageButton;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 154
    .local v1, "context":Landroid/content/Context;
    invoke-virtual {p0}, Landroid/support/design/widget/FloatingActionButtonImpl;->newCircularDrawable()Landroid/support/design/widget/CircularBorderDrawable;

    move-result-object v0

    .line 155
    .local v0, "borderDrawable":Landroid/support/design/widget/CircularBorderDrawable;
    sget v2, Landroid/support/design/R$color;->design_fab_stroke_top_outer_color:I

    .line 156
    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    sget v3, Landroid/support/design/R$color;->design_fab_stroke_top_inner_color:I

    .line 157
    invoke-static {v1, v3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    sget v4, Landroid/support/design/R$color;->design_fab_stroke_end_inner_color:I

    .line 158
    invoke-static {v1, v4}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    sget v5, Landroid/support/design/R$color;->design_fab_stroke_end_outer_color:I

    .line 159
    invoke-static {v1, v5}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v5

    .line 155
    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/support/design/widget/CircularBorderDrawable;->setGradientColors(IIII)V

    .line 160
    int-to-float v2, p1

    invoke-virtual {v0, v2}, Landroid/support/design/widget/CircularBorderDrawable;->setBorderWidth(F)V

    .line 161
    invoke-virtual {v0, p2}, Landroid/support/design/widget/CircularBorderDrawable;->setBorderTint(Landroid/content/res/ColorStateList;)V

    .line 162
    return-object v0
.end method

.method createShapeDrawable()Landroid/graphics/drawable/GradientDrawable;
    .registers 3

    .prologue
    .line 185
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 186
    .local v0, "d":Landroid/graphics/drawable/GradientDrawable;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 187
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 188
    return-object v0
.end method

.method final getContentBackground()Landroid/graphics/drawable/Drawable;
    .registers 2

    .prologue
    .line 118
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->mContentBackground:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method abstract getElevation()F
.end method

.method abstract getPadding(Landroid/graphics/Rect;)V
.end method

.method abstract hide(Landroid/support/design/widget/FloatingActionButtonImpl$InternalVisibilityChangedListener;Z)V
    .param p1    # Landroid/support/design/widget/FloatingActionButtonImpl$InternalVisibilityChangedListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
.end method

.method isOrWillBeHidden()Z
    .registers 5

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 202
    iget-object v2, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->mView:Landroid/support/design/widget/VisibilityAwareImageButton;

    invoke-virtual {v2}, Landroid/support/design/widget/VisibilityAwareImageButton;->getVisibility()I

    move-result v2

    if-nez v2, :cond_11

    .line 204
    iget v2, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->mAnimState:I

    if-ne v2, v0, :cond_f

    .line 207
    :cond_e
    :goto_e
    return v0

    :cond_f
    move v0, v1

    .line 204
    goto :goto_e

    .line 207
    :cond_11
    iget v2, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->mAnimState:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_e

    move v0, v1

    goto :goto_e
.end method

.method isOrWillBeShown()Z
    .registers 5

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 192
    iget-object v2, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->mView:Landroid/support/design/widget/VisibilityAwareImageButton;

    invoke-virtual {v2}, Landroid/support/design/widget/VisibilityAwareImageButton;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_12

    .line 194
    iget v2, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->mAnimState:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_10

    .line 197
    :cond_f
    :goto_f
    return v0

    :cond_10
    move v0, v1

    .line 194
    goto :goto_f

    .line 197
    :cond_12
    iget v2, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->mAnimState:I

    if-ne v2, v0, :cond_f

    move v0, v1

    goto :goto_f
.end method

.method abstract jumpDrawableToCurrentState()V
.end method

.method newCircularDrawable()Landroid/support/design/widget/CircularBorderDrawable;
    .registers 2

    .prologue
    .line 166
    new-instance v0, Landroid/support/design/widget/CircularBorderDrawable;

    invoke-direct {v0}, Landroid/support/design/widget/CircularBorderDrawable;-><init>()V

    return-object v0
.end method

.method onAttachedToWindow()V
    .registers 3

    .prologue
    .line 135
    invoke-virtual {p0}, Landroid/support/design/widget/FloatingActionButtonImpl;->requirePreDrawListener()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 136
    invoke-direct {p0}, Landroid/support/design/widget/FloatingActionButtonImpl;->ensurePreDrawListener()V

    .line 137
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->mView:Landroid/support/design/widget/VisibilityAwareImageButton;

    invoke-virtual {v0}, Landroid/support/design/widget/VisibilityAwareImageButton;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->mPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 139
    :cond_14
    return-void
.end method

.method abstract onCompatShadowChanged()V
.end method

.method onDetachedFromWindow()V
    .registers 3

    .prologue
    .line 142
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->mPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    if-eqz v0, :cond_12

    .line 143
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->mView:Landroid/support/design/widget/VisibilityAwareImageButton;

    invoke-virtual {v0}, Landroid/support/design/widget/VisibilityAwareImageButton;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->mPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 144
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->mPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 146
    :cond_12
    return-void
.end method

.method abstract onDrawableStateChanged([I)V
.end method

.method abstract onElevationsChanged(FF)V
.end method

.method onPaddingUpdated(Landroid/graphics/Rect;)V
    .registers 2
    .param p1, "padding"    # Landroid/graphics/Rect;

    .prologue
    .line 132
    return-void
.end method

.method onPreDraw()V
    .registers 1

    .prologue
    .line 170
    return-void
.end method

.method requirePreDrawListener()Z
    .registers 2

    .prologue
    .line 149
    const/4 v0, 0x0

    return v0
.end method

.method abstract setBackgroundDrawable(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;II)V
.end method

.method abstract setBackgroundTintList(Landroid/content/res/ColorStateList;)V
.end method

.method abstract setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
.end method

.method final setElevation(F)V
    .registers 3
    .param p1, "elevation"    # F

    .prologue
    .line 92
    iget v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->mElevation:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_d

    .line 93
    iput p1, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->mElevation:F

    .line 94
    iget v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->mPressedTranslationZ:F

    invoke-virtual {p0, p1, v0}, Landroid/support/design/widget/FloatingActionButtonImpl;->onElevationsChanged(FF)V

    .line 96
    :cond_d
    return-void
.end method

.method final setPressedTranslationZ(F)V
    .registers 3
    .param p1, "translationZ"    # F

    .prologue
    .line 101
    iget v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->mPressedTranslationZ:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_d

    .line 102
    iput p1, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->mPressedTranslationZ:F

    .line 103
    iget v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->mElevation:F

    invoke-virtual {p0, v0, p1}, Landroid/support/design/widget/FloatingActionButtonImpl;->onElevationsChanged(FF)V

    .line 105
    :cond_d
    return-void
.end method

.method abstract setRippleColor(I)V
.end method

.method abstract show(Landroid/support/design/widget/FloatingActionButtonImpl$InternalVisibilityChangedListener;Z)V
    .param p1    # Landroid/support/design/widget/FloatingActionButtonImpl$InternalVisibilityChangedListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
.end method

.method final updatePadding()V
    .registers 7

    .prologue
    .line 124
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->mTmpRect:Landroid/graphics/Rect;

    .line 125
    .local v0, "rect":Landroid/graphics/Rect;
    invoke-virtual {p0, v0}, Landroid/support/design/widget/FloatingActionButtonImpl;->getPadding(Landroid/graphics/Rect;)V

    .line 126
    invoke-virtual {p0, v0}, Landroid/support/design/widget/FloatingActionButtonImpl;->onPaddingUpdated(Landroid/graphics/Rect;)V

    .line 127
    iget-object v1, p0, Landroid/support/design/widget/FloatingActionButtonImpl;->mShadowViewDelegate:Landroid/support/design/widget/ShadowViewDelegate;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget v4, v0, Landroid/graphics/Rect;->right:I

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    invoke-interface {v1, v2, v3, v4, v5}, Landroid/support/design/widget/ShadowViewDelegate;->setShadowPadding(IIII)V

    .line 128
    return-void
.end method
