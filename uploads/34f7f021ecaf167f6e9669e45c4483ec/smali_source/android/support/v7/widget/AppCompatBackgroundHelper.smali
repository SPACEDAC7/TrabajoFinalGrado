.class Landroid/support/v7/widget/AppCompatBackgroundHelper;
.super Ljava/lang/Object;
.source "AppCompatBackgroundHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;
    }
.end annotation


# instance fields
.field private mBackgroundResId:I

.field private mBackgroundTint:Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;

.field private final mDrawableManager:Landroid/support/v7/widget/AppCompatDrawableManager;

.field private mInternalBackgroundTint:Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;

.field private mTmpInfo:Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;

.field private final mView:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mBackgroundResId:I

    .line 41
    iput-object p1, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mView:Landroid/view/View;

    .line 42
    invoke-static {}, Landroid/support/v7/widget/AppCompatDrawableManager;->get()Landroid/support/v7/widget/AppCompatDrawableManager;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mDrawableManager:Landroid/support/v7/widget/AppCompatDrawableManager;

    .line 43
    return-void
.end method

.method private applyFrameworkTintUsingColorFilter(Landroid/graphics/drawable/Drawable;)Z
    .registers 7
    .param p1, "background"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x1

    .line 211
    iget-object v4, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mTmpInfo:Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;

    if-nez v4, :cond_c

    .line 212
    new-instance v4, Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;

    invoke-direct {v4}, Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;-><init>()V

    iput-object v4, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mTmpInfo:Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;

    .line 214
    :cond_c
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mTmpInfo:Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;

    .line 215
    .local v0, "info":Landroid/support/v7/widget/TintInfo;
    invoke-virtual {v0}, Landroid/support/v7/widget/TintInfo;->clear()V

    .line 217
    iget-object v4, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mView:Landroid/view/View;

    invoke-static {v4}, Landroid/support/v4/view/ViewCompat;->getBackgroundTintList(Landroid/view/View;)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 218
    .local v2, "tintList":Landroid/content/res/ColorStateList;
    if-eqz v2, :cond_1d

    .line 219
    iput-boolean v3, v0, Landroid/support/v7/widget/TintInfo;->mHasTintList:Z

    .line 220
    iput-object v2, v0, Landroid/support/v7/widget/TintInfo;->mTintList:Landroid/content/res/ColorStateList;

    .line 222
    :cond_1d
    iget-object v4, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mView:Landroid/view/View;

    invoke-static {v4}, Landroid/support/v4/view/ViewCompat;->getBackgroundTintMode(Landroid/view/View;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v1

    .line 223
    .local v1, "mode":Landroid/graphics/PorterDuff$Mode;
    if-eqz v1, :cond_29

    .line 224
    iput-boolean v3, v0, Landroid/support/v7/widget/TintInfo;->mHasTintMode:Z

    .line 225
    iput-object v1, v0, Landroid/support/v7/widget/TintInfo;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 228
    :cond_29
    iget-boolean v4, v0, Landroid/support/v7/widget/TintInfo;->mHasTintList:Z

    if-nez v4, :cond_31

    iget-boolean v4, v0, Landroid/support/v7/widget/TintInfo;->mHasTintMode:Z

    if-eqz v4, :cond_3b

    .line 229
    :cond_31
    iget-object v4, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getDrawableState()[I

    move-result-object v4

    invoke-static {p1, v0, v4}, Landroid/support/v7/widget/AppCompatDrawableManager;->tintDrawable(Landroid/graphics/drawable/Drawable;Landroid/support/v7/widget/TintInfo;[I)V

    .line 233
    :goto_3a
    return v3

    :cond_3b
    const/4 v3, 0x0

    goto :goto_3a
.end method

.method private shouldApplyFrameworkTintUsingColorFilter()Z
    .registers 5

    .prologue
    const/16 v3, 0x15

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 189
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 190
    .local v0, "sdk":I
    if-ge v0, v3, :cond_a

    move v1, v2

    .line 201
    :cond_9
    :goto_9
    return v1

    .line 193
    :cond_a
    if-eq v0, v3, :cond_9

    .line 201
    iget-object v3, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mInternalBackgroundTint:Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;

    if-nez v3, :cond_9

    move v1, v2

    goto :goto_9
.end method

.method private updateBackgroundTint()Z
    .registers 7

    .prologue
    const/4 v1, 0x1

    .line 116
    iget-object v2, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mBackgroundTint:Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;

    if-eqz v2, :cond_3b

    iget-object v2, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mBackgroundTint:Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;

    iget-boolean v2, v2, Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;->mHasTintList:Z

    if-eqz v2, :cond_3b

    .line 117
    iget v2, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mBackgroundResId:I

    if-ltz v2, :cond_28

    .line 120
    iget-object v2, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mDrawableManager:Landroid/support/v7/widget/AppCompatDrawableManager;

    iget-object v3, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mView:Landroid/view/View;

    .line 121
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    iget v4, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mBackgroundResId:I

    iget-object v5, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mBackgroundTint:Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;

    iget-object v5, v5, Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;->mOriginalTintList:Landroid/content/res/ColorStateList;

    .line 120
    invoke-virtual {v2, v3, v4, v5}, Landroid/support/v7/widget/AppCompatDrawableManager;->getTintList(Landroid/content/Context;ILandroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 122
    .local v0, "updated":Landroid/content/res/ColorStateList;
    if-eqz v0, :cond_28

    .line 123
    iget-object v2, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mBackgroundTint:Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;

    iput-object v0, v2, Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;->mTintList:Landroid/content/res/ColorStateList;

    .line 134
    .end local v0    # "updated":Landroid/content/res/ColorStateList;
    :goto_27
    return v1

    .line 129
    :cond_28
    iget-object v2, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mBackgroundTint:Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;

    iget-object v2, v2, Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;->mTintList:Landroid/content/res/ColorStateList;

    iget-object v3, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mBackgroundTint:Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;

    iget-object v3, v3, Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;->mOriginalTintList:Landroid/content/res/ColorStateList;

    if-eq v2, v3, :cond_3b

    .line 130
    iget-object v2, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mBackgroundTint:Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;

    iget-object v3, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mBackgroundTint:Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;

    iget-object v3, v3, Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;->mOriginalTintList:Landroid/content/res/ColorStateList;

    iput-object v3, v2, Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;->mTintList:Landroid/content/res/ColorStateList;

    goto :goto_27

    .line 134
    :cond_3b
    const/4 v1, 0x0

    goto :goto_27
.end method


# virtual methods
.method applySupportBackgroundTint()V
    .registers 4

    .prologue
    .line 156
    iget-object v1, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 157
    .local v0, "background":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_14

    .line 158
    invoke-direct {p0}, Landroid/support/v7/widget/AppCompatBackgroundHelper;->shouldApplyFrameworkTintUsingColorFilter()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 159
    invoke-direct {p0, v0}, Landroid/support/v7/widget/AppCompatBackgroundHelper;->applyFrameworkTintUsingColorFilter(Landroid/graphics/drawable/Drawable;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 173
    :cond_14
    :goto_14
    return-void

    .line 165
    :cond_15
    iget-object v1, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mBackgroundTint:Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;

    if-eqz v1, :cond_25

    .line 166
    iget-object v1, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mBackgroundTint:Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;

    iget-object v2, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mView:Landroid/view/View;

    .line 167
    invoke-virtual {v2}, Landroid/view/View;->getDrawableState()[I

    move-result-object v2

    .line 166
    invoke-static {v0, v1, v2}, Landroid/support/v7/widget/AppCompatDrawableManager;->tintDrawable(Landroid/graphics/drawable/Drawable;Landroid/support/v7/widget/TintInfo;[I)V

    goto :goto_14

    .line 168
    :cond_25
    iget-object v1, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mInternalBackgroundTint:Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;

    if-eqz v1, :cond_14

    .line 169
    iget-object v1, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mInternalBackgroundTint:Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;

    iget-object v2, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mView:Landroid/view/View;

    .line 170
    invoke-virtual {v2}, Landroid/view/View;->getDrawableState()[I

    move-result-object v2

    .line 169
    invoke-static {v0, v1, v2}, Landroid/support/v7/widget/AppCompatDrawableManager;->tintDrawable(Landroid/graphics/drawable/Drawable;Landroid/support/v7/widget/TintInfo;[I)V

    goto :goto_14
.end method

.method getSupportBackgroundTintList()Landroid/content/res/ColorStateList;
    .registers 2

    .prologue
    .line 138
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mBackgroundTint:Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mBackgroundTint:Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;

    iget-object v0, v0, Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;->mTintList:Landroid/content/res/ColorStateList;

    :goto_8
    return-object v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .registers 2

    .prologue
    .line 152
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mBackgroundTint:Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mBackgroundTint:Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;

    iget-object v0, v0, Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    :goto_8
    return-object v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method loadFromAttributes(Landroid/util/AttributeSet;I)V
    .registers 8
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "defStyleAttr"    # I

    .prologue
    .line 46
    iget-object v2, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Landroid/support/v7/appcompat/R$styleable;->ViewBackgroundHelper:[I

    const/4 v4, 0x0

    invoke-static {v2, p1, v3, p2, v4}, Landroid/support/v7/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/support/v7/widget/TintTypedArray;

    move-result-object v0

    .line 49
    .local v0, "a":Landroid/support/v7/widget/TintTypedArray;
    :try_start_d
    sget v2, Landroid/support/v7/appcompat/R$styleable;->ViewBackgroundHelper_android_background:I

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_31

    .line 50
    sget v2, Landroid/support/v7/appcompat/R$styleable;->ViewBackgroundHelper_android_background:I

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/support/v7/widget/TintTypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mBackgroundResId:I

    .line 52
    iget-object v2, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mDrawableManager:Landroid/support/v7/widget/AppCompatDrawableManager;

    iget-object v3, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mView:Landroid/view/View;

    .line 53
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    iget v4, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mBackgroundResId:I

    invoke-virtual {v2, v3, v4}, Landroid/support/v7/widget/AppCompatDrawableManager;->getTintList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 54
    .local v1, "tint":Landroid/content/res/ColorStateList;
    if-eqz v1, :cond_31

    .line 55
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/AppCompatBackgroundHelper;->setInternalBackgroundTint(Landroid/content/res/ColorStateList;)V

    .line 58
    .end local v1    # "tint":Landroid/content/res/ColorStateList;
    :cond_31
    sget v2, Landroid/support/v7/appcompat/R$styleable;->ViewBackgroundHelper_backgroundTint:I

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_44

    .line 59
    iget-object v2, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mView:Landroid/view/View;

    sget v3, Landroid/support/v7/appcompat/R$styleable;->ViewBackgroundHelper_backgroundTint:I

    .line 60
    invoke-virtual {v0, v3}, Landroid/support/v7/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    .line 59
    invoke-static {v2, v3}, Landroid/support/v4/view/ViewCompat;->setBackgroundTintList(Landroid/view/View;Landroid/content/res/ColorStateList;)V

    .line 62
    :cond_44
    sget v2, Landroid/support/v7/appcompat/R$styleable;->ViewBackgroundHelper_backgroundTintMode:I

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_5d

    .line 63
    iget-object v2, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mView:Landroid/view/View;

    sget v3, Landroid/support/v7/appcompat/R$styleable;->ViewBackgroundHelper_backgroundTintMode:I

    const/4 v4, -0x1

    .line 65
    invoke-virtual {v0, v3, v4}, Landroid/support/v7/widget/TintTypedArray;->getInt(II)I

    move-result v3

    const/4 v4, 0x0

    .line 64
    invoke-static {v3, v4}, Landroid/support/v7/widget/DrawableUtils;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v3

    .line 63
    invoke-static {v2, v3}, Landroid/support/v4/view/ViewCompat;->setBackgroundTintMode(Landroid/view/View;Landroid/graphics/PorterDuff$Mode;)V
    :try_end_5d
    .catchall {:try_start_d .. :try_end_5d} :catchall_61

    .line 69
    :cond_5d
    invoke-virtual {v0}, Landroid/support/v7/widget/TintTypedArray;->recycle()V

    .line 71
    return-void

    .line 69
    :catchall_61
    move-exception v2

    invoke-virtual {v0}, Landroid/support/v7/widget/TintTypedArray;->recycle()V

    throw v2
.end method

.method onSetBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .param p1, "background"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 86
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mBackgroundResId:I

    .line 88
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/AppCompatBackgroundHelper;->setInternalBackgroundTint(Landroid/content/res/ColorStateList;)V

    .line 90
    invoke-direct {p0}, Landroid/support/v7/widget/AppCompatBackgroundHelper;->updateBackgroundTint()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 91
    invoke-virtual {p0}, Landroid/support/v7/widget/AppCompatBackgroundHelper;->applySupportBackgroundTint()V

    .line 93
    :cond_10
    return-void
.end method

.method onSetBackgroundResource(I)V
    .registers 4
    .param p1, "resId"    # I

    .prologue
    .line 74
    iput p1, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mBackgroundResId:I

    .line 76
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mDrawableManager:Landroid/support/v7/widget/AppCompatDrawableManager;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mDrawableManager:Landroid/support/v7/widget/AppCompatDrawableManager;

    iget-object v1, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mView:Landroid/view/View;

    .line 77
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/support/v7/widget/AppCompatDrawableManager;->getTintList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 76
    :goto_12
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/AppCompatBackgroundHelper;->setInternalBackgroundTint(Landroid/content/res/ColorStateList;)V

    .line 80
    invoke-direct {p0}, Landroid/support/v7/widget/AppCompatBackgroundHelper;->updateBackgroundTint()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 81
    invoke-virtual {p0}, Landroid/support/v7/widget/AppCompatBackgroundHelper;->applySupportBackgroundTint()V

    .line 83
    :cond_1e
    return-void

    .line 77
    :cond_1f
    const/4 v0, 0x0

    goto :goto_12
.end method

.method setInternalBackgroundTint(Landroid/content/res/ColorStateList;)V
    .registers 4
    .param p1, "tint"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 176
    if-eqz p1, :cond_1a

    .line 177
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mInternalBackgroundTint:Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;

    if-nez v0, :cond_d

    .line 178
    new-instance v0, Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;

    invoke-direct {v0}, Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mInternalBackgroundTint:Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;

    .line 180
    :cond_d
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mInternalBackgroundTint:Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;

    iput-object p1, v0, Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;->mTintList:Landroid/content/res/ColorStateList;

    .line 181
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mInternalBackgroundTint:Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;->mHasTintList:Z

    .line 185
    :goto_16
    invoke-virtual {p0}, Landroid/support/v7/widget/AppCompatBackgroundHelper;->applySupportBackgroundTint()V

    .line 186
    return-void

    .line 183
    :cond_1a
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mInternalBackgroundTint:Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;

    goto :goto_16
.end method

.method setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .registers 4
    .param p1, "tint"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 96
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mBackgroundTint:Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;

    if-nez v0, :cond_b

    .line 97
    new-instance v0, Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;

    invoke-direct {v0}, Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mBackgroundTint:Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;

    .line 102
    :cond_b
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mBackgroundTint:Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;

    iput-object p1, v0, Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;->mOriginalTintList:Landroid/content/res/ColorStateList;

    .line 103
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mBackgroundTint:Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;->mTintList:Landroid/content/res/ColorStateList;

    .line 104
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mBackgroundTint:Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;->mHasTintList:Z

    .line 106
    invoke-direct {p0}, Landroid/support/v7/widget/AppCompatBackgroundHelper;->updateBackgroundTint()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 107
    invoke-virtual {p0}, Landroid/support/v7/widget/AppCompatBackgroundHelper;->applySupportBackgroundTint()V

    .line 109
    :cond_22
    return-void
.end method

.method setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .registers 4
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;

    .prologue
    .line 142
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mBackgroundTint:Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;

    if-nez v0, :cond_b

    .line 143
    new-instance v0, Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;

    invoke-direct {v0}, Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mBackgroundTint:Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;

    .line 145
    :cond_b
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mBackgroundTint:Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;

    iput-object p1, v0, Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 146
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mBackgroundTint:Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;->mHasTintMode:Z

    .line 148
    invoke-virtual {p0}, Landroid/support/v7/widget/AppCompatBackgroundHelper;->applySupportBackgroundTint()V

    .line 149
    return-void
.end method
