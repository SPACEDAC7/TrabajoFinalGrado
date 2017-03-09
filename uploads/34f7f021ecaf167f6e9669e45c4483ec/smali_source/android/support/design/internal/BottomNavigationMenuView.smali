.class public Landroid/support/design/internal/BottomNavigationMenuView;
.super Landroid/view/ViewGroup;
.source "BottomNavigationMenuView.java"

# interfaces
.implements Landroid/support/v7/view/menu/MenuView;


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->GROUP_ID:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final sItemPool:Landroid/support/v4/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/Pools$Pool",
            "<",
            "Landroid/support/design/internal/BottomNavigationItemView;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mActiveButton:I

.field private final mActiveItemMaxWidth:I

.field private final mAnimationHelper:Landroid/support/design/internal/BottomNavigationAnimationHelperBase;

.field private mButtons:[Landroid/support/design/internal/BottomNavigationItemView;

.field private final mInactiveItemMaxWidth:I

.field private final mInactiveItemMinWidth:I

.field private mItemBackgroundRes:I

.field private final mItemHeight:I

.field private mItemIconTint:Landroid/content/res/ColorStateList;

.field private mItemTextColor:Landroid/content/res/ColorStateList;

.field private mMenu:Landroid/support/v7/view/menu/MenuBuilder;

.field private final mOnClickListener:Landroid/view/View$OnClickListener;

.field private mPresenter:Landroid/support/design/internal/BottomNavigationPresenter;

.field private mShiftingMode:Z

.field private mTempChildWidths:[I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 48
    new-instance v0, Landroid/support/v4/util/Pools$SynchronizedPool;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Landroid/support/v4/util/Pools$SynchronizedPool;-><init>(I)V

    sput-object v0, Landroid/support/design/internal/BottomNavigationMenuView;->sItemPool:Landroid/support/v4/util/Pools$Pool;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 64
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/design/internal/BottomNavigationMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 68
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mShiftingMode:Z

    .line 54
    const/4 v1, 0x0

    iput v1, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mActiveButton:I

    .line 69
    invoke-virtual {p0}, Landroid/support/design/internal/BottomNavigationMenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 70
    .local v0, "res":Landroid/content/res/Resources;
    sget v1, Landroid/support/design/R$dimen;->design_bottom_navigation_item_max_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mInactiveItemMaxWidth:I

    .line 72
    sget v1, Landroid/support/design/R$dimen;->design_bottom_navigation_item_min_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mInactiveItemMinWidth:I

    .line 74
    sget v1, Landroid/support/design/R$dimen;->design_bottom_navigation_active_item_max_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mActiveItemMaxWidth:I

    .line 76
    sget v1, Landroid/support/design/R$dimen;->design_bottom_navigation_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mItemHeight:I

    .line 78
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_47

    .line 79
    new-instance v1, Landroid/support/design/internal/BottomNavigationAnimationHelperIcs;

    invoke-direct {v1}, Landroid/support/design/internal/BottomNavigationAnimationHelperIcs;-><init>()V

    iput-object v1, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mAnimationHelper:Landroid/support/design/internal/BottomNavigationAnimationHelperBase;

    .line 84
    :goto_3a
    new-instance v1, Landroid/support/design/internal/BottomNavigationMenuView$1;

    invoke-direct {v1, p0}, Landroid/support/design/internal/BottomNavigationMenuView$1;-><init>(Landroid/support/design/internal/BottomNavigationMenuView;)V

    iput-object v1, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 94
    const/4 v1, 0x5

    new-array v1, v1, [I

    iput-object v1, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mTempChildWidths:[I

    .line 95
    return-void

    .line 81
    :cond_47
    new-instance v1, Landroid/support/design/internal/BottomNavigationAnimationHelperBase;

    invoke-direct {v1}, Landroid/support/design/internal/BottomNavigationAnimationHelperBase;-><init>()V

    iput-object v1, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mAnimationHelper:Landroid/support/design/internal/BottomNavigationAnimationHelperBase;

    goto :goto_3a
.end method

.method static synthetic access$000(Landroid/support/design/internal/BottomNavigationMenuView;)Landroid/support/design/internal/BottomNavigationPresenter;
    .registers 2
    .param p0, "x0"    # Landroid/support/design/internal/BottomNavigationMenuView;

    .prologue
    .line 41
    iget-object v0, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mPresenter:Landroid/support/design/internal/BottomNavigationPresenter;

    return-object v0
.end method

.method static synthetic access$100(Landroid/support/design/internal/BottomNavigationMenuView;)Landroid/support/v7/view/menu/MenuBuilder;
    .registers 2
    .param p0, "x0"    # Landroid/support/design/internal/BottomNavigationMenuView;

    .prologue
    .line 41
    iget-object v0, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    return-object v0
.end method

.method static synthetic access$200(Landroid/support/design/internal/BottomNavigationMenuView;I)V
    .registers 2
    .param p0, "x0"    # Landroid/support/design/internal/BottomNavigationMenuView;
    .param p1, "x1"    # I

    .prologue
    .line 41
    invoke-direct {p0, p1}, Landroid/support/design/internal/BottomNavigationMenuView;->activateNewButton(I)V

    return-void
.end method

.method private activateNewButton(I)V
    .registers 6
    .param p1, "newButton"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 296
    iget v0, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mActiveButton:I

    if-ne v0, p1, :cond_7

    .line 306
    :goto_6
    return-void

    .line 298
    :cond_7
    iget-object v0, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mAnimationHelper:Landroid/support/design/internal/BottomNavigationAnimationHelperBase;

    invoke-virtual {v0, p0}, Landroid/support/design/internal/BottomNavigationAnimationHelperBase;->beginDelayedTransition(Landroid/view/ViewGroup;)V

    .line 300
    iget-object v0, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mPresenter:Landroid/support/design/internal/BottomNavigationPresenter;

    invoke-virtual {v0, v3}, Landroid/support/design/internal/BottomNavigationPresenter;->setUpdateSuspended(Z)V

    .line 301
    iget-object v0, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mButtons:[Landroid/support/design/internal/BottomNavigationItemView;

    iget v1, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mActiveButton:I

    aget-object v0, v0, v1

    invoke-virtual {v0, v2}, Landroid/support/design/internal/BottomNavigationItemView;->setChecked(Z)V

    .line 302
    iget-object v0, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mButtons:[Landroid/support/design/internal/BottomNavigationItemView;

    aget-object v0, v0, p1

    invoke-virtual {v0, v3}, Landroid/support/design/internal/BottomNavigationItemView;->setChecked(Z)V

    .line 303
    iget-object v0, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mPresenter:Landroid/support/design/internal/BottomNavigationPresenter;

    invoke-virtual {v0, v2}, Landroid/support/design/internal/BottomNavigationPresenter;->setUpdateSuspended(Z)V

    .line 305
    iput p1, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mActiveButton:I

    goto :goto_6
.end method

.method private getNewItem()Landroid/support/design/internal/BottomNavigationItemView;
    .registers 3

    .prologue
    .line 309
    sget-object v1, Landroid/support/design/internal/BottomNavigationMenuView;->sItemPool:Landroid/support/v4/util/Pools$Pool;

    invoke-interface {v1}, Landroid/support/v4/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/internal/BottomNavigationItemView;

    .line 310
    .local v0, "item":Landroid/support/design/internal/BottomNavigationItemView;
    if-nez v0, :cond_13

    .line 311
    new-instance v0, Landroid/support/design/internal/BottomNavigationItemView;

    .end local v0    # "item":Landroid/support/design/internal/BottomNavigationItemView;
    invoke-virtual {p0}, Landroid/support/design/internal/BottomNavigationMenuView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/design/internal/BottomNavigationItemView;-><init>(Landroid/content/Context;)V

    .line 313
    .restart local v0    # "item":Landroid/support/design/internal/BottomNavigationItemView;
    :cond_13
    return-object v0
.end method


# virtual methods
.method public buildMenuView()V
    .registers 10

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 251
    iget-object v3, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mButtons:[Landroid/support/design/internal/BottomNavigationItemView;

    if-eqz v3, :cond_16

    .line 252
    iget-object v6, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mButtons:[Landroid/support/design/internal/BottomNavigationItemView;

    array-length v7, v6

    move v3, v5

    :goto_a
    if-ge v3, v7, :cond_16

    aget-object v2, v6, v3

    .line 253
    .local v2, "item":Landroid/support/design/internal/BottomNavigationItemView;
    sget-object v8, Landroid/support/design/internal/BottomNavigationMenuView;->sItemPool:Landroid/support/v4/util/Pools$Pool;

    invoke-interface {v8, v2}, Landroid/support/v4/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    .line 252
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 256
    .end local v2    # "item":Landroid/support/design/internal/BottomNavigationItemView;
    :cond_16
    invoke-virtual {p0}, Landroid/support/design/internal/BottomNavigationMenuView;->removeAllViews()V

    .line 257
    iget-object v3, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v3}, Landroid/support/v7/view/menu/MenuBuilder;->size()I

    move-result v3

    if-nez v3, :cond_22

    .line 279
    :goto_21
    return-void

    .line 260
    :cond_22
    iget-object v3, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v3}, Landroid/support/v7/view/menu/MenuBuilder;->size()I

    move-result v3

    new-array v3, v3, [Landroid/support/design/internal/BottomNavigationItemView;

    iput-object v3, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mButtons:[Landroid/support/design/internal/BottomNavigationItemView;

    .line 261
    iget-object v3, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v3}, Landroid/support/v7/view/menu/MenuBuilder;->size()I

    move-result v3

    const/4 v6, 0x3

    if-le v3, v6, :cond_89

    move v3, v4

    :goto_36
    iput-boolean v3, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mShiftingMode:Z

    .line 262
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_39
    iget-object v3, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v3}, Landroid/support/v7/view/menu/MenuBuilder;->size()I

    move-result v3

    if-ge v1, v3, :cond_8b

    .line 263
    iget-object v3, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mPresenter:Landroid/support/design/internal/BottomNavigationPresenter;

    invoke-virtual {v3, v4}, Landroid/support/design/internal/BottomNavigationPresenter;->setUpdateSuspended(Z)V

    .line 264
    iget-object v3, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v3, v1}, Landroid/support/v7/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    .line 265
    iget-object v3, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mPresenter:Landroid/support/design/internal/BottomNavigationPresenter;

    invoke-virtual {v3, v5}, Landroid/support/design/internal/BottomNavigationPresenter;->setUpdateSuspended(Z)V

    .line 266
    invoke-direct {p0}, Landroid/support/design/internal/BottomNavigationMenuView;->getNewItem()Landroid/support/design/internal/BottomNavigationItemView;

    move-result-object v0

    .line 267
    .local v0, "child":Landroid/support/design/internal/BottomNavigationItemView;
    iget-object v3, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mButtons:[Landroid/support/design/internal/BottomNavigationItemView;

    aput-object v0, v3, v1

    .line 268
    iget-object v3, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mItemIconTint:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v3}, Landroid/support/design/internal/BottomNavigationItemView;->setIconTintList(Landroid/content/res/ColorStateList;)V

    .line 269
    iget-object v3, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mItemTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v3}, Landroid/support/design/internal/BottomNavigationItemView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 270
    iget v3, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mItemBackgroundRes:I

    invoke-virtual {v0, v3}, Landroid/support/design/internal/BottomNavigationItemView;->setItemBackground(I)V

    .line 271
    iget-boolean v3, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mShiftingMode:Z

    invoke-virtual {v0, v3}, Landroid/support/design/internal/BottomNavigationItemView;->setShiftingMode(Z)V

    .line 272
    iget-object v3, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v3, v1}, Landroid/support/v7/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    check-cast v3, Landroid/support/v7/view/menu/MenuItemImpl;

    invoke-virtual {v0, v3, v5}, Landroid/support/design/internal/BottomNavigationItemView;->initialize(Landroid/support/v7/view/menu/MenuItemImpl;I)V

    .line 273
    invoke-virtual {v0, v1}, Landroid/support/design/internal/BottomNavigationItemView;->setItemPosition(I)V

    .line 274
    iget-object v3, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Landroid/support/design/internal/BottomNavigationItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 275
    invoke-virtual {p0, v0}, Landroid/support/design/internal/BottomNavigationMenuView;->addView(Landroid/view/View;)V

    .line 262
    add-int/lit8 v1, v1, 0x1

    goto :goto_39

    .end local v0    # "child":Landroid/support/design/internal/BottomNavigationItemView;
    .end local v1    # "i":I
    :cond_89
    move v3, v5

    .line 261
    goto :goto_36

    .line 277
    .restart local v1    # "i":I
    :cond_8b
    iget-object v3, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v3}, Landroid/support/v7/view/menu/MenuBuilder;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    iget v5, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mActiveButton:I

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mActiveButton:I

    .line 278
    iget-object v3, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    iget v5, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mActiveButton:I

    invoke-virtual {v3, v5}, Landroid/support/v7/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    goto/16 :goto_21
.end method

.method public getIconTintList()Landroid/content/res/ColorStateList;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 199
    iget-object v0, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mItemIconTint:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getItemBackgroundRes()I
    .registers 2

    .prologue
    .line 243
    iget v0, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mItemBackgroundRes:I

    return v0
.end method

.method public getItemTextColor()Landroid/content/res/ColorStateList;
    .registers 2

    .prologue
    .line 221
    iget-object v0, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mItemTextColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getWindowAnimations()I
    .registers 2

    .prologue
    .line 176
    const/4 v0, 0x0

    return v0
.end method

.method public initialize(Landroid/support/v7/view/menu/MenuBuilder;)V
    .registers 2
    .param p1, "menu"    # Landroid/support/v7/view/menu/MenuBuilder;

    .prologue
    .line 99
    iput-object p1, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    .line 100
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 15
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    const/4 v8, 0x0

    .line 156
    invoke-virtual {p0}, Landroid/support/design/internal/BottomNavigationMenuView;->getChildCount()I

    move-result v1

    .line 157
    .local v1, "count":I
    sub-int v5, p4, p2

    .line 158
    .local v5, "width":I
    sub-int v2, p5, p3

    .line 159
    .local v2, "height":I
    const/4 v4, 0x0

    .line 160
    .local v4, "used":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_b
    if-ge v3, v1, :cond_3e

    .line 161
    invoke-virtual {p0, v3}, Landroid/support/design/internal/BottomNavigationMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 162
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v6

    const/16 v7, 0x8

    if-ne v6, v7, :cond_1c

    .line 160
    :goto_19
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 165
    :cond_1c
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_35

    .line 166
    sub-int v6, v5, v4

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    sub-int/2addr v6, v7

    sub-int v7, v5, v4

    invoke-virtual {v0, v6, v8, v7, v2}, Landroid/view/View;->layout(IIII)V

    .line 170
    :goto_2f
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    add-int/2addr v4, v6

    goto :goto_19

    .line 168
    :cond_35
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    add-int/2addr v6, v4

    invoke-virtual {v0, v4, v8, v6, v2}, Landroid/view/View;->layout(IIII)V

    goto :goto_2f

    .line 172
    .end local v0    # "child":Landroid/view/View;
    :cond_3e
    return-void
.end method

.method protected onMeasure(II)V
    .registers 24
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 104
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v17

    .line 105
    .local v17, "width":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/design/internal/BottomNavigationMenuView;->getChildCount()I

    move-result v7

    .line 107
    .local v7, "count":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/design/internal/BottomNavigationMenuView;->mItemHeight:I

    move/from16 v18, v0

    const/high16 v19, 0x40000000

    invoke-static/range {v18 .. v19}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 109
    .local v9, "heightSpec":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/design/internal/BottomNavigationMenuView;->mShiftingMode:Z

    move/from16 v18, v0

    if-eqz v18, :cond_77

    .line 110
    add-int/lit8 v11, v7, -0x1

    .line 111
    .local v11, "inactiveCount":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/design/internal/BottomNavigationMenuView;->mInactiveItemMinWidth:I

    move/from16 v18, v0

    mul-int v18, v18, v11

    sub-int v3, v17, v18

    .line 112
    .local v3, "activeMaxAvailable":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/design/internal/BottomNavigationMenuView;->mActiveItemMaxWidth:I

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 113
    .local v4, "activeWidth":I
    sub-int v18, v17, v4

    div-int v12, v18, v11

    .line 114
    .local v12, "inactiveMaxAvailable":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/design/internal/BottomNavigationMenuView;->mInactiveItemMaxWidth:I

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-static {v12, v0}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 115
    .local v13, "inactiveWidth":I
    sub-int v18, v17, v4

    mul-int v19, v13, v11

    sub-int v8, v18, v19

    .line 116
    .local v8, "extra":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_4b
    if-ge v10, v7, :cond_ae

    .line 117
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/design/internal/BottomNavigationMenuView;->mTempChildWidths:[I

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/design/internal/BottomNavigationMenuView;->mActiveButton:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-ne v10, v0, :cond_74

    move/from16 v18, v4

    :goto_5f
    aput v18, v19, v10

    .line 118
    if-lez v8, :cond_71

    .line 119
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/design/internal/BottomNavigationMenuView;->mTempChildWidths:[I

    move-object/from16 v18, v0

    aget v19, v18, v10

    add-int/lit8 v19, v19, 0x1

    aput v19, v18, v10

    .line 120
    add-int/lit8 v8, v8, -0x1

    .line 116
    :cond_71
    add-int/lit8 v10, v10, 0x1

    goto :goto_4b

    :cond_74
    move/from16 v18, v13

    .line 117
    goto :goto_5f

    .line 124
    .end local v3    # "activeMaxAvailable":I
    .end local v4    # "activeWidth":I
    .end local v8    # "extra":I
    .end local v10    # "i":I
    .end local v11    # "inactiveCount":I
    .end local v12    # "inactiveMaxAvailable":I
    .end local v13    # "inactiveWidth":I
    :cond_77
    if-nez v7, :cond_ab

    const/16 v18, 0x1

    :goto_7b
    div-int v14, v17, v18

    .line 125
    .local v14, "maxAvailable":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/design/internal/BottomNavigationMenuView;->mActiveItemMaxWidth:I

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-static {v14, v0}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 126
    .local v6, "childWidth":I
    mul-int v18, v6, v7

    sub-int v8, v17, v18

    .line 127
    .restart local v8    # "extra":I
    const/4 v10, 0x0

    .restart local v10    # "i":I
    :goto_8e
    if-ge v10, v7, :cond_ae

    .line 128
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/design/internal/BottomNavigationMenuView;->mTempChildWidths:[I

    move-object/from16 v18, v0

    aput v6, v18, v10

    .line 129
    if-lez v8, :cond_a8

    .line 130
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/design/internal/BottomNavigationMenuView;->mTempChildWidths:[I

    move-object/from16 v18, v0

    aget v19, v18, v10

    add-int/lit8 v19, v19, 0x1

    aput v19, v18, v10

    .line 131
    add-int/lit8 v8, v8, -0x1

    .line 127
    :cond_a8
    add-int/lit8 v10, v10, 0x1

    goto :goto_8e

    .end local v6    # "childWidth":I
    .end local v8    # "extra":I
    .end local v10    # "i":I
    .end local v14    # "maxAvailable":I
    :cond_ab
    move/from16 v18, v7

    .line 124
    goto :goto_7b

    .line 136
    .restart local v8    # "extra":I
    .restart local v10    # "i":I
    :cond_ae
    const/16 v16, 0x0

    .line 137
    .local v16, "totalWidth":I
    const/4 v10, 0x0

    :goto_b1
    if-ge v10, v7, :cond_ee

    .line 138
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/support/design/internal/BottomNavigationMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 139
    .local v5, "child":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v18

    const/16 v19, 0x8

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_c8

    .line 137
    :goto_c5
    add-int/lit8 v10, v10, 0x1

    goto :goto_b1

    .line 142
    :cond_c8
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/design/internal/BottomNavigationMenuView;->mTempChildWidths:[I

    move-object/from16 v18, v0

    aget v18, v18, v10

    const/high16 v19, 0x40000000

    invoke-static/range {v18 .. v19}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v5, v0, v9}, Landroid/view/View;->measure(II)V

    .line 144
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    .line 145
    .local v15, "params":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v18

    move/from16 v0, v18

    iput v0, v15, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 146
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v18

    add-int v16, v16, v18

    goto :goto_c5

    .line 148
    .end local v5    # "child":Landroid/view/View;
    .end local v15    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_ee
    const/high16 v18, 0x40000000

    .line 150
    move/from16 v0, v16

    move/from16 v1, v18

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v18

    const/16 v19, 0x0

    .line 149
    move/from16 v0, v16

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v2}, Landroid/support/v4/view/ViewCompat;->resolveSizeAndState(III)I

    move-result v18

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/design/internal/BottomNavigationMenuView;->mItemHeight:I

    move/from16 v19, v0

    const/16 v20, 0x0

    .line 151
    move/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v0, v9, v1}, Landroid/support/v4/view/ViewCompat;->resolveSizeAndState(III)I

    move-result v19

    .line 148
    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/support/design/internal/BottomNavigationMenuView;->setMeasuredDimension(II)V

    .line 152
    return-void
.end method

.method public setIconTintList(Landroid/content/res/ColorStateList;)V
    .registers 6
    .param p1, "tint"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 185
    iput-object p1, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mItemIconTint:Landroid/content/res/ColorStateList;

    .line 186
    iget-object v1, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mButtons:[Landroid/support/design/internal/BottomNavigationItemView;

    if-nez v1, :cond_7

    .line 190
    :cond_6
    return-void

    .line 187
    :cond_7
    iget-object v2, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mButtons:[Landroid/support/design/internal/BottomNavigationItemView;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_b
    if-ge v1, v3, :cond_6

    aget-object v0, v2, v1

    .line 188
    .local v0, "item":Landroid/support/design/internal/BottomNavigationItemView;
    invoke-virtual {v0, p1}, Landroid/support/design/internal/BottomNavigationItemView;->setIconTintList(Landroid/content/res/ColorStateList;)V

    .line 187
    add-int/lit8 v1, v1, 0x1

    goto :goto_b
.end method

.method public setItemBackgroundRes(I)V
    .registers 6
    .param p1, "background"    # I

    .prologue
    .line 230
    iput p1, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mItemBackgroundRes:I

    .line 231
    iget-object v1, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mButtons:[Landroid/support/design/internal/BottomNavigationItemView;

    if-nez v1, :cond_7

    .line 235
    :cond_6
    return-void

    .line 232
    :cond_7
    iget-object v2, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mButtons:[Landroid/support/design/internal/BottomNavigationItemView;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_b
    if-ge v1, v3, :cond_6

    aget-object v0, v2, v1

    .line 233
    .local v0, "item":Landroid/support/design/internal/BottomNavigationItemView;
    invoke-virtual {v0, p1}, Landroid/support/design/internal/BottomNavigationItemView;->setItemBackground(I)V

    .line 232
    add-int/lit8 v1, v1, 0x1

    goto :goto_b
.end method

.method public setItemTextColor(Landroid/content/res/ColorStateList;)V
    .registers 6
    .param p1, "color"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 208
    iput-object p1, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mItemTextColor:Landroid/content/res/ColorStateList;

    .line 209
    iget-object v1, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mButtons:[Landroid/support/design/internal/BottomNavigationItemView;

    if-nez v1, :cond_7

    .line 213
    :cond_6
    return-void

    .line 210
    :cond_7
    iget-object v2, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mButtons:[Landroid/support/design/internal/BottomNavigationItemView;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_b
    if-ge v1, v3, :cond_6

    aget-object v0, v2, v1

    .line 211
    .local v0, "item":Landroid/support/design/internal/BottomNavigationItemView;
    invoke-virtual {v0, p1}, Landroid/support/design/internal/BottomNavigationItemView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 210
    add-int/lit8 v1, v1, 0x1

    goto :goto_b
.end method

.method public setPresenter(Landroid/support/design/internal/BottomNavigationPresenter;)V
    .registers 2
    .param p1, "presenter"    # Landroid/support/design/internal/BottomNavigationPresenter;

    .prologue
    .line 247
    iput-object p1, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mPresenter:Landroid/support/design/internal/BottomNavigationPresenter;

    .line 248
    return-void
.end method

.method public updateMenuView()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 282
    iget-object v2, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v2}, Landroid/support/v7/view/menu/MenuBuilder;->size()I

    move-result v1

    .line 283
    .local v1, "menuSize":I
    iget-object v2, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mButtons:[Landroid/support/design/internal/BottomNavigationItemView;

    array-length v2, v2

    if-eq v1, v2, :cond_10

    .line 285
    invoke-virtual {p0}, Landroid/support/design/internal/BottomNavigationMenuView;->buildMenuView()V

    .line 293
    :cond_f
    return-void

    .line 288
    :cond_10
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_11
    if-ge v0, v1, :cond_f

    .line 289
    iget-object v2, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mPresenter:Landroid/support/design/internal/BottomNavigationPresenter;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/support/design/internal/BottomNavigationPresenter;->setUpdateSuspended(Z)V

    .line 290
    iget-object v2, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mButtons:[Landroid/support/design/internal/BottomNavigationItemView;

    aget-object v3, v2, v0

    iget-object v2, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v2, v0}, Landroid/support/v7/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    check-cast v2, Landroid/support/v7/view/menu/MenuItemImpl;

    invoke-virtual {v3, v2, v4}, Landroid/support/design/internal/BottomNavigationItemView;->initialize(Landroid/support/v7/view/menu/MenuItemImpl;I)V

    .line 291
    iget-object v2, p0, Landroid/support/design/internal/BottomNavigationMenuView;->mPresenter:Landroid/support/design/internal/BottomNavigationPresenter;

    invoke-virtual {v2, v4}, Landroid/support/design/internal/BottomNavigationPresenter;->setUpdateSuspended(Z)V

    .line 288
    add-int/lit8 v0, v0, 0x1

    goto :goto_11
.end method
