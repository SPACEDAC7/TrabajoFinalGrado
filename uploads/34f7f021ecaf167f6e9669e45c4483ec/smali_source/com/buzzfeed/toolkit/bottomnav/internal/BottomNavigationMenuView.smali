.class public Lcom/buzzfeed/toolkit/bottomnav/internal/BottomNavigationMenuView;
.super Landroid/widget/FrameLayout;
.source "BottomNavigationMenuView.java"

# interfaces
.implements Landroid/support/v7/view/menu/MenuView;


# static fields
.field private static final sItemPool:Landroid/support/v4/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/Pools$Pool",
            "<",
            "Lcom/buzzfeed/toolkit/bottomnav/internal/BottomNavigationItemView;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mActiveButton:I

.field private final mActiveItemMaxWidth:I

.field private mButtons:[Lcom/buzzfeed/toolkit/bottomnav/internal/BottomNavigationItemView;

.field private final mItemHeight:I

.field private mMenu:Landroid/support/v7/view/menu/MenuBuilder;

.field private final mOnClickListener:Landroid/view/View$OnClickListener;

.field private mPresenter:Lcom/buzzfeed/toolkit/bottomnav/internal/BottomNavigationPresenter;

.field private mTempChildWidths:[I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 33
    new-instance v0, Landroid/support/v4/util/Pools$SynchronizedPool;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Landroid/support/v4/util/Pools$SynchronizedPool;-><init>(I)V

    sput-object v0, Lcom/buzzfeed/toolkit/bottomnav/internal/BottomNavigationMenuView;->sItemPool:Landroid/support/v4/util/Pools$Pool;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/buzzfeed/toolkit/bottomnav/internal/BottomNavigationMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    const/4 v1, 0x0

    iput v1, p0, Lcom/buzzfeed/toolkit/bottomnav/internal/BottomNavigationMenuView;->mActiveButton:I

    .line 43
    invoke-virtual {p0}, Lcom/buzzfeed/toolkit/bottomnav/internal/BottomNavigationMenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 44
    .local v0, "res":Landroid/content/res/Resources;
    sget v1, Lcom/buzzfeed/toolkit/R$dimen;->design_bottom_navigation_active_item_max_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/buzzfeed/toolkit/bottomnav/internal/BottomNavigationMenuView;->mActiveItemMaxWidth:I

    .line 45
    sget v1, Lcom/buzzfeed/toolkit/R$dimen;->design_bottom_navigation_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/buzzfeed/toolkit/bottomnav/internal/BottomNavigationMenuView;->mItemHeight:I

    .line 47
    new-instance v1, Lcom/buzzfeed/toolkit/bottomnav/internal/BottomNavigationMenuView$1;

    invoke-direct {v1, p0}, Lcom/buzzfeed/toolkit/bottomnav/internal/BottomNavigationMenuView$1;-><init>(Lcom/buzzfeed/toolkit/bottomnav/internal/BottomNavigationMenuView;)V

    iput-object v1, p0, Lcom/buzzfeed/toolkit/bottomnav/internal/BottomNavigationMenuView;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 58
    const/4 v1, 0x5

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/buzzfeed/toolkit/bottomnav/internal/BottomNavigationMenuView;->mTempChildWidths:[I

    .line 59
    return-void
.end method

.method static synthetic access$000(Lcom/buzzfeed/toolkit/bottomnav/internal/BottomNavigationMenuView;)Lcom/buzzfeed/toolkit/bottomnav/internal/BottomNavigationPresenter;
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/toolkit/bottomnav/internal/BottomNavigationMenuView;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/buzzfeed/toolkit/bottomnav/internal/BottomNavigationMenuView;->mPresenter:Lcom/buzzfeed/toolkit/bottomnav/internal/BottomNavigationPresenter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/buzzfeed/toolkit/bottomnav/internal/BottomNavigationMenuView;)Landroid/support/v7/view/menu/MenuBuilder;
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/toolkit/bottomnav/internal/BottomNavigationMenuView;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/buzzfeed/toolkit/bottomnav/internal/BottomNavigationMenuView;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    return-object v0
.end method

.method private getNewItem()Lcom/buzzfeed/toolkit/bottomnav/internal/BottomNavigationItemView;
    .registers 3

    .prologue
    .line 189
    sget-object v1, Lcom/buzzfeed/toolkit/bottomnav/internal/BottomNavigationMenuView;->sItemPool:Landroid/support/v4/util/Pools$Pool;

    invoke-interface {v1}, Landroid/support/v4/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/buzzfeed/toolkit/bottomnav/internal/BottomNavigationItemView;

    .line 190
    .local v0, "item":Lcom/buzzfeed/toolkit/bottomnav/internal/BottomNavigationItemView;
    if-nez v0, :cond_13

    .line 191
    new-instance v0, Lcom/buzzfeed/toolkit/bottomnav/internal/BottomNavigationItemView;

    .end local v0    # "item":Lcom/buzzfeed/toolkit/bottomnav/internal/BottomNavigationItemView;
    invoke-virtual {p0}, Lcom/buzzfeed/toolkit/bottomnav/internal/BottomNavigationMenuView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/buzzfeed/toolkit/bottomnav/internal/BottomNavigationItemView;-><init>(Landroid/content/Context;)V

    .line 193
    .restart local v0    # "item":Lcom/buzzfeed/toolkit/bottomnav/internal/BottomNavigationItemView;
    :cond_13
    return-object v0
.end method


# virtual methods
.method public activateNewButton(I)V
    .registers 4
    .param p1, "newButton"    # I

    .prologue
    .line 180
    iget v0, p0, Lcom/buzzfeed/toolkit/bottomnav/internal/BottomNavigationMenuView;->mActiveButton:I

    if-ne v0, p1, :cond_5

    .line 186
    :goto_4
    return-void

    .line 182
    :cond_5
    iget-object v0, p0, Lcom/buzzfeed/toolkit/bottomnav/internal/BottomNavigationMenuView;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    iget v1, p0, Lcom/buzzfeed/toolkit/bottomnav/internal/BottomNavigationMenuView;->mActiveButton:I

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 183
    iget-object v0, p0, Lcom/buzzfeed/toolkit/bottomnav/internal/BottomNavigationMenuView;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v0, p1}, Landroid/support/v7/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 185
    iput p1, p0, Lcom/buzzfeed/toolkit/bottomnav/internal/BottomNavigationMenuView;->mActiveButton:I

    goto :goto_4
.end method

.method public buildMenuView()V
    .registers 12

    .prologue
    const/4 v10, -0x1

    const/4 v9, 0x1

    const/4 v5, 0x0

    .line 134
    iget-object v4, p0, Lcom/buzzfeed/toolkit/bottomnav/internal/BottomNavigationMenuView;->mButtons:[Lcom/buzzfeed/toolkit/bottomnav/internal/BottomNavigationItemView;

    if-eqz v4, :cond_17

    .line 135
    iget-object v6, p0, Lcom/buzzfeed/toolkit/bottomnav/internal/BottomNavigationMenuView;->mButtons:[Lcom/buzzfeed/toolkit/bottomnav/internal/BottomNavigationItemView;

    array-length v7, v6

    move v4, v5

    :goto_b
    if-ge v4, v7, :cond_17

    aget-object v2, v6, v4

    .line 136
    .local v2, "item":Lcom/buzzfeed/toolkit/bottomnav/internal/BottomNavigationItemView;
    sget-object v8, Lcom/buzzfeed/toolkit/bottomnav/internal/BottomNavigationMenuView;->sItemPool:Landroid/support/v4/util/Pools$Pool;

    invoke-interface {v8, v2}, Landroid/support/v4/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    .line 135
    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    .line 139
    .end local v2    # "item":Lcom/buzzfeed/toolkit/bottomnav/internal/BottomNavigationItemView;
    :cond_17
    invoke-virtual {p0}, Lcom/buzzfeed/toolkit/bottomnav/internal/BottomNavigationMenuView;->removeAllViews()V

    .line 140
    iget-object v4, p0, Lcom/buzzfeed/toolkit/bottomnav/internal/BottomNavigationMenuView;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v4}, Landroid/support/v7/view/menu/MenuBuilder;->size()I

    move-result v4

    if-nez v4, :cond_26

    .line 141
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/buzzfeed/toolkit/bottomnav/internal/BottomNavigationMenuView;->mButtons:[Lcom/buzzfeed/toolkit/bottomnav/internal/BottomNavigationItemView;

    .line 160
    :goto_25
    return-void

    .line 144
    :cond_26
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v4, 0x3f800000

    invoke-direct {v3, v10, v10, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 145
    .local v3, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v4, p0, Lcom/buzzfeed/toolkit/bottomnav/internal/BottomNavigationMenuView;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v4}, Landroid/support/v7/view/menu/MenuBuilder;->size()I

    move-result v4

    new-array v4, v4, [Lcom/buzzfeed/toolkit/bottomnav/internal/BottomNavigationItemView;

    iput-object v4, p0, Lcom/buzzfeed/toolkit/bottomnav/internal/BottomNavigationMenuView;->mButtons:[Lcom/buzzfeed/toolkit/bottomnav/internal/BottomNavigationItemView;

    .line 146
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_38
    iget-object v4, p0, Lcom/buzzfeed/toolkit/bottomnav/internal/BottomNavigationMenuView;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v4}, Landroid/support/v7/view/menu/MenuBuilder;->size()I

    move-result v4

    if-ge v1, v4, :cond_77

    .line 147
    iget-object v4, p0, Lcom/buzzfeed/toolkit/bottomnav/internal/BottomNavigationMenuView;->mPresenter:Lcom/buzzfeed/toolkit/bottomnav/internal/BottomNavigationPresenter;

    invoke-virtual {v4, v9}, Lcom/buzzfeed/toolkit/bottomnav/internal/BottomNavigationPresenter;->setUpdateSuspended(Z)V

    .line 148
    iget-object v4, p0, Lcom/buzzfeed/toolkit/bottomnav/internal/BottomNavigationMenuView;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v4, v1}, Landroid/support/v7/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v9}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    .line 149
    iget-object v4, p0, Lcom/buzzfeed/toolkit/bottomnav/internal/BottomNavigationMenuView;->mPresenter:Lcom/buzzfeed/toolkit/bottomnav/internal/BottomNavigationPresenter;

    invoke-virtual {v4, v5}, Lcom/buzzfeed/toolkit/bottomnav/internal/BottomNavigationPresenter;->setUpdateSuspended(Z)V

    .line 150
    invoke-direct {p0}, Lcom/buzzfeed/toolkit/bottomnav/internal/BottomNavigationMenuView;->getNewItem()Lcom/buzzfeed/toolkit/bottomnav/internal/BottomNavigationItemView;

    move-result-object v0

    .line 151
    .local v0, "child":Lcom/buzzfeed/toolkit/bottomnav/internal/BottomNavigationItemView;
    iget-object v4, p0, Lcom/buzzfeed/toolkit/bottomnav/internal/BottomNavigationMenuView;->mButtons:[Lcom/buzzfeed/toolkit/bottomnav/internal/BottomNavigationItemView;

    aput-object v0, v4, v1

    .line 152
    invoke-virtual {v0, v3}, Lcom/buzzfeed/toolkit/bottomnav/internal/BottomNavigationItemView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 153
    iget-object v4, p0, Lcom/buzzfeed/toolkit/bottomnav/internal/BottomNavigationMenuView;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v4, v1}, Landroid/support/v7/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v4

    check-cast v4, Landroid/support/v7/view/menu/MenuItemImpl;

    invoke-virtual {v0, v4, v5}, Lcom/buzzfeed/toolkit/bottomnav/internal/BottomNavigationItemView;->initialize(Landroid/support/v7/view/menu/MenuItemImpl;I)V

    .line 154
    invoke-virtual {v0, v1}, Lcom/buzzfeed/toolkit/bottomnav/internal/BottomNavigationItemView;->setItemPosition(I)V

    .line 155
    iget-object v4, p0, Lcom/buzzfeed/toolkit/bottomnav/internal/BottomNavigationMenuView;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v4}, Lcom/buzzfeed/toolkit/bottomnav/internal/BottomNavigationItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    invoke-virtual {p0, v0}, Lcom/buzzfeed/toolkit/bottomnav/internal/BottomNavigationMenuView;->addView(Landroid/view/View;)V

    .line 146
    add-int/lit8 v1, v1, 0x1

    goto :goto_38

    .line 158
    .end local v0    # "child":Lcom/buzzfeed/toolkit/bottomnav/internal/BottomNavigationItemView;
    :cond_77
    iget-object v4, p0, Lcom/buzzfeed/toolkit/bottomnav/internal/BottomNavigationMenuView;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v4}, Landroid/support/v7/view/menu/MenuBuilder;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    iget v5, p0, Lcom/buzzfeed/toolkit/bottomnav/internal/BottomNavigationMenuView;->mActiveButton:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    iput v4, p0, Lcom/buzzfeed/toolkit/bottomnav/internal/BottomNavigationMenuView;->mActiveButton:I

    .line 159
    iget-object v4, p0, Lcom/buzzfeed/toolkit/bottomnav/internal/BottomNavigationMenuView;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    iget v5, p0, Lcom/buzzfeed/toolkit/bottomnav/internal/BottomNavigationMenuView;->mActiveButton:I

    invoke-virtual {v4, v5}, Landroid/support/v7/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v9}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    goto :goto_25
.end method

.method public getWindowAnimations()I
    .registers 2

    .prologue
    .line 126
    const/4 v0, 0x0

    return v0
.end method

.method public initialize(Landroid/support/v7/view/menu/MenuBuilder;)V
    .registers 2
    .param p1, "menu"    # Landroid/support/v7/view/menu/MenuBuilder;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/buzzfeed/toolkit/bottomnav/internal/BottomNavigationMenuView;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    .line 64
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

    .line 106
    invoke-virtual {p0}, Lcom/buzzfeed/toolkit/bottomnav/internal/BottomNavigationMenuView;->getChildCount()I

    move-result v1

    .line 107
    .local v1, "count":I
    sub-int v5, p4, p2

    .line 108
    .local v5, "width":I
    sub-int v2, p5, p3

    .line 109
    .local v2, "height":I
    const/4 v4, 0x0

    .line 110
    .local v4, "used":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_b
    if-ge v3, v1, :cond_3e

    .line 111
    invoke-virtual {p0, v3}, Lcom/buzzfeed/toolkit/bottomnav/internal/BottomNavigationMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 112
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v6

    const/16 v7, 0x8

    if-ne v6, v7, :cond_1c

    .line 110
    :goto_19
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 115
    :cond_1c
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_35

    .line 116
    sub-int v6, v5, v4

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    sub-int/2addr v6, v7

    sub-int v7, v5, v4

    invoke-virtual {v0, v6, v8, v7, v2}, Landroid/view/View;->layout(IIII)V

    .line 120
    :goto_2f
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    add-int/2addr v4, v6

    goto :goto_19

    .line 118
    :cond_35
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    add-int/2addr v6, v4

    invoke-virtual {v0, v4, v8, v6, v2}, Landroid/view/View;->layout(IIII)V

    goto :goto_2f

    .line 122
    .end local v0    # "child":Landroid/view/View;
    :cond_3e
    return-void
.end method

.method protected onMeasure(II)V
    .registers 16
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 68
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v9

    .line 69
    .local v9, "width":I
    invoke-virtual {p0}, Lcom/buzzfeed/toolkit/bottomnav/internal/BottomNavigationMenuView;->getChildCount()I

    move-result v2

    .line 71
    .local v2, "count":I
    iget v10, p0, Lcom/buzzfeed/toolkit/bottomnav/internal/BottomNavigationMenuView;->mItemHeight:I

    const/high16 v11, 0x40000000

    invoke-static {v10, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 74
    .local v4, "heightSpec":I
    if-nez v2, :cond_35

    const/4 v10, 0x1

    :goto_13
    div-int v6, v9, v10

    .line 75
    .local v6, "maxAvailable":I
    iget v10, p0, Lcom/buzzfeed/toolkit/bottomnav/internal/BottomNavigationMenuView;->mActiveItemMaxWidth:I

    invoke-static {v6, v10}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 76
    .local v1, "childWidth":I
    mul-int v10, v1, v2

    sub-int v3, v9, v10

    .line 77
    .local v3, "extra":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_20
    if-ge v5, v2, :cond_37

    .line 78
    iget-object v10, p0, Lcom/buzzfeed/toolkit/bottomnav/internal/BottomNavigationMenuView;->mTempChildWidths:[I

    aput v1, v10, v5

    .line 79
    if-lez v3, :cond_32

    .line 80
    iget-object v10, p0, Lcom/buzzfeed/toolkit/bottomnav/internal/BottomNavigationMenuView;->mTempChildWidths:[I

    aget v11, v10, v5

    add-int/lit8 v11, v11, 0x1

    aput v11, v10, v5

    .line 81
    add-int/lit8 v3, v3, -0x1

    .line 77
    :cond_32
    add-int/lit8 v5, v5, 0x1

    goto :goto_20

    .end local v1    # "childWidth":I
    .end local v3    # "extra":I
    .end local v5    # "i":I
    .end local v6    # "maxAvailable":I
    :cond_35
    move v10, v2

    .line 74
    goto :goto_13

    .line 86
    .restart local v1    # "childWidth":I
    .restart local v3    # "extra":I
    .restart local v5    # "i":I
    .restart local v6    # "maxAvailable":I
    :cond_37
    const/4 v8, 0x0

    .line 87
    .local v8, "totalWidth":I
    const/4 v5, 0x0

    :goto_39
    if-ge v5, v2, :cond_67

    .line 88
    invoke-virtual {p0, v5}, Lcom/buzzfeed/toolkit/bottomnav/internal/BottomNavigationMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 89
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v10

    const/16 v11, 0x8

    if-ne v10, v11, :cond_4a

    .line 87
    :goto_47
    add-int/lit8 v5, v5, 0x1

    goto :goto_39

    .line 92
    :cond_4a
    iget-object v10, p0, Lcom/buzzfeed/toolkit/bottomnav/internal/BottomNavigationMenuView;->mTempChildWidths:[I

    aget v10, v10, v5

    const/high16 v11, 0x40000000

    .line 93
    invoke-static {v10, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    .line 92
    invoke-virtual {v0, v10, v4}, Landroid/view/View;->measure(II)V

    .line 94
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    .line 95
    .local v7, "params":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    iput v10, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 96
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    add-int/2addr v8, v10

    goto :goto_47

    .line 98
    .end local v0    # "child":Landroid/view/View;
    .end local v7    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_67
    const/high16 v10, 0x40000000

    .line 100
    invoke-static {v8, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    const/4 v11, 0x0

    .line 99
    invoke-static {v8, v10, v11}, Landroid/support/v4/view/ViewCompat;->resolveSizeAndState(III)I

    move-result v10

    iget v11, p0, Lcom/buzzfeed/toolkit/bottomnav/internal/BottomNavigationMenuView;->mItemHeight:I

    const/4 v12, 0x0

    .line 101
    invoke-static {v11, v4, v12}, Landroid/support/v4/view/ViewCompat;->resolveSizeAndState(III)I

    move-result v11

    .line 98
    invoke-virtual {p0, v10, v11}, Lcom/buzzfeed/toolkit/bottomnav/internal/BottomNavigationMenuView;->setMeasuredDimension(II)V

    .line 102
    return-void
.end method

.method public setPresenter(Lcom/buzzfeed/toolkit/bottomnav/internal/BottomNavigationPresenter;)V
    .registers 2
    .param p1, "presenter"    # Lcom/buzzfeed/toolkit/bottomnav/internal/BottomNavigationPresenter;

    .prologue
    .line 130
    iput-object p1, p0, Lcom/buzzfeed/toolkit/bottomnav/internal/BottomNavigationMenuView;->mPresenter:Lcom/buzzfeed/toolkit/bottomnav/internal/BottomNavigationPresenter;

    .line 131
    return-void
.end method

.method public updateMenuView()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 163
    iget-object v2, p0, Lcom/buzzfeed/toolkit/bottomnav/internal/BottomNavigationMenuView;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v2}, Landroid/support/v7/view/menu/MenuBuilder;->size()I

    move-result v1

    .line 164
    .local v1, "menuSize":I
    iget-object v2, p0, Lcom/buzzfeed/toolkit/bottomnav/internal/BottomNavigationMenuView;->mButtons:[Lcom/buzzfeed/toolkit/bottomnav/internal/BottomNavigationItemView;

    array-length v2, v2

    if-eq v1, v2, :cond_10

    .line 166
    invoke-virtual {p0}, Lcom/buzzfeed/toolkit/bottomnav/internal/BottomNavigationMenuView;->buildMenuView()V

    .line 177
    :cond_f
    return-void

    .line 169
    :cond_10
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_11
    if-ge v0, v1, :cond_f

    .line 170
    iget-object v2, p0, Lcom/buzzfeed/toolkit/bottomnav/internal/BottomNavigationMenuView;->mPresenter:Lcom/buzzfeed/toolkit/bottomnav/internal/BottomNavigationPresenter;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/buzzfeed/toolkit/bottomnav/internal/BottomNavigationPresenter;->setUpdateSuspended(Z)V

    .line 171
    iget-object v2, p0, Lcom/buzzfeed/toolkit/bottomnav/internal/BottomNavigationMenuView;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v2, v0}, Landroid/support/v7/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/MenuItem;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_27

    .line 172
    iput v0, p0, Lcom/buzzfeed/toolkit/bottomnav/internal/BottomNavigationMenuView;->mActiveButton:I

    .line 174
    :cond_27
    iget-object v2, p0, Lcom/buzzfeed/toolkit/bottomnav/internal/BottomNavigationMenuView;->mButtons:[Lcom/buzzfeed/toolkit/bottomnav/internal/BottomNavigationItemView;

    aget-object v3, v2, v0

    iget-object v2, p0, Lcom/buzzfeed/toolkit/bottomnav/internal/BottomNavigationMenuView;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v2, v0}, Landroid/support/v7/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    check-cast v2, Landroid/support/v7/view/menu/MenuItemImpl;

    invoke-virtual {v3, v2, v4}, Lcom/buzzfeed/toolkit/bottomnav/internal/BottomNavigationItemView;->initialize(Landroid/support/v7/view/menu/MenuItemImpl;I)V

    .line 175
    iget-object v2, p0, Lcom/buzzfeed/toolkit/bottomnav/internal/BottomNavigationMenuView;->mPresenter:Lcom/buzzfeed/toolkit/bottomnav/internal/BottomNavigationPresenter;

    invoke-virtual {v2, v4}, Lcom/buzzfeed/toolkit/bottomnav/internal/BottomNavigationPresenter;->setUpdateSuspended(Z)V

    .line 169
    add-int/lit8 v0, v0, 0x1

    goto :goto_11
.end method
