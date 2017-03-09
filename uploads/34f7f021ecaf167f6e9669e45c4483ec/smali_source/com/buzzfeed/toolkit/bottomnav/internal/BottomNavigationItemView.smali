.class public Lcom/buzzfeed/toolkit/bottomnav/internal/BottomNavigationItemView;
.super Landroid/widget/FrameLayout;
.source "BottomNavigationItemView.java"

# interfaces
.implements Landroid/support/v7/view/menu/MenuView$ItemView;


# static fields
.field private static final CHECKED_STATE_SET:[I

.field public static final INVALID_ITEM_POSITION:I = -0x1


# instance fields
.field private final mDefaultMargin:I

.field private mIcon:Landroid/widget/ImageView;

.field private mItemData:Landroid/support/v7/view/menu/MenuItemImpl;

.field private mItemPosition:I

.field private final mLargeLabel:Landroid/widget/TextView;

.field private final mScaleDownFactor:F

.field private final mScaleUpFactor:F

.field private final mShiftAmount:I

.field private final mSmallLabel:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 31
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a0

    aput v2, v0, v1

    sput-object v0, Lcom/buzzfeed/toolkit/bottomnav/internal/BottomNavigationItemView;->CHECKED_STATE_SET:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/buzzfeed/toolkit/bottomnav/internal/BottomNavigationItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 46
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/buzzfeed/toolkit/bottomnav/internal/BottomNavigationItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/high16 v5, 0x3f800000

    .line 50
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    const/4 v3, -0x1

    iput v3, p0, Lcom/buzzfeed/toolkit/bottomnav/internal/BottomNavigationItemView;->mItemPosition:I

    .line 51
    invoke-virtual {p0}, Lcom/buzzfeed/toolkit/bottomnav/internal/BottomNavigationItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 52
    .local v2, "res":Landroid/content/res/Resources;
    sget v3, Lcom/buzzfeed/toolkit/R$dimen;->design_bottom_navigation_text_size:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 53
    .local v1, "inactiveLabelSize":I
    sget v3, Lcom/buzzfeed/toolkit/R$dimen;->design_bottom_navigation_active_text_size:I

    .line 54
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 55
    .local v0, "activeLabelSize":I
    sget v3, Lcom/buzzfeed/toolkit/R$dimen;->design_bottom_navigation_margin:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/buzzfeed/toolkit/bottomnav/internal/BottomNavigationItemView;->mDefaultMargin:I

    .line 56
    sub-int v3, v1, v0

    iput v3, p0, Lcom/buzzfeed/toolkit/bottomnav/internal/BottomNavigationItemView;->mShiftAmount:I

    .line 57
    int-to-float v3, v0

    mul-float/2addr v3, v5

    int-to-float v4, v1

    div-float/2addr v3, v4

    iput v3, p0, Lcom/buzzfeed/toolkit/bottomnav/internal/BottomNavigationItemView;->mScaleUpFactor:F

    .line 58
    int-to-float v3, v1

    mul-float/2addr v3, v5

    int-to-float v4, v0

    div-float/2addr v3, v4

    iput v3, p0, Lcom/buzzfeed/toolkit/bottomnav/internal/BottomNavigationItemView;->mScaleDownFactor:F

    .line 60
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    sget v4, Lcom/buzzfeed/toolkit/R$layout;->design_bottom_navigation_item:I

    const/4 v5, 0x1

    invoke-virtual {v3, v4, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 61
    sget v3, Lcom/buzzfeed/toolkit/R$drawable;->bottom_navigation_item_background:I

    invoke-virtual {p0, v3}, Lcom/buzzfeed/toolkit/bottomnav/internal/BottomNavigationItemView;->setBackgroundResource(I)V

    .line 62
    sget v3, Lcom/buzzfeed/toolkit/R$id;->icon:I

    invoke-virtual {p0, v3}, Lcom/buzzfeed/toolkit/bottomnav/internal/BottomNavigationItemView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/buzzfeed/toolkit/bottomnav/internal/BottomNavigationItemView;->mIcon:Landroid/widget/ImageView;

    .line 63
    sget v3, Lcom/buzzfeed/toolkit/R$id;->smallLabel:I

    invoke-virtual {p0, v3}, Lcom/buzzfeed/toolkit/bottomnav/internal/BottomNavigationItemView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/buzzfeed/toolkit/bottomnav/internal/BottomNavigationItemView;->mSmallLabel:Landroid/widget/TextView;

    .line 64
    sget v3, Lcom/buzzfeed/toolkit/R$id;->largeLabel:I

    invoke-virtual {p0, v3}, Lcom/buzzfeed/toolkit/bottomnav/internal/BottomNavigationItemView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/buzzfeed/toolkit/bottomnav/internal/BottomNavigationItemView;->mLargeLabel:Landroid/widget/TextView;

    .line 65
    invoke-virtual {p0}, Lcom/buzzfeed/toolkit/bottomnav/internal/BottomNavigationItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/buzzfeed/toolkit/R$color;->bottom_nav_color_state:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/buzzfeed/toolkit/bottomnav/internal/BottomNavigationItemView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 66
    return-void
.end method


# virtual methods
.method public getItemData()Landroid/support/v7/view/menu/MenuItemImpl;
    .registers 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/buzzfeed/toolkit/bottomnav/internal/BottomNavigationItemView;->mItemData:Landroid/support/v7/view/menu/MenuItemImpl;

    return-object v0
.end method

.method public getItemPosition()I
    .registers 2

    .prologue
    .line 85
    iget v0, p0, Lcom/buzzfeed/toolkit/bottomnav/internal/BottomNavigationItemView;->mItemPosition:I

    return v0
.end method

.method public initialize(Landroid/support/v7/view/menu/MenuItemImpl;I)V
    .registers 4
    .param p1, "itemData"    # Landroid/support/v7/view/menu/MenuItemImpl;
    .param p2, "menuType"    # I

    .prologue
    .line 70
    iput-object p1, p0, Lcom/buzzfeed/toolkit/bottomnav/internal/BottomNavigationItemView;->mItemData:Landroid/support/v7/view/menu/MenuItemImpl;

    .line 71
    invoke-virtual {p1}, Landroid/support/v7/view/menu/MenuItemImpl;->isCheckable()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/buzzfeed/toolkit/bottomnav/internal/BottomNavigationItemView;->setCheckable(Z)V

    .line 72
    invoke-virtual {p1}, Landroid/support/v7/view/menu/MenuItemImpl;->isChecked()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/buzzfeed/toolkit/bottomnav/internal/BottomNavigationItemView;->setChecked(Z)V

    .line 73
    invoke-virtual {p1}, Landroid/support/v7/view/menu/MenuItemImpl;->isEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/buzzfeed/toolkit/bottomnav/internal/BottomNavigationItemView;->setEnabled(Z)V

    .line 74
    invoke-virtual {p1}, Landroid/support/v7/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/buzzfeed/toolkit/bottomnav/internal/BottomNavigationItemView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 75
    invoke-virtual {p1}, Landroid/support/v7/view/menu/MenuItemImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/buzzfeed/toolkit/bottomnav/internal/BottomNavigationItemView;->setTitle(Ljava/lang/CharSequence;)V

    .line 76
    invoke-virtual {p1}, Landroid/support/v7/view/menu/MenuItemImpl;->getItemId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/buzzfeed/toolkit/bottomnav/internal/BottomNavigationItemView;->setId(I)V

    .line 78
    return-void
.end method

.method public onCreateDrawableState(I)[I
    .registers 4
    .param p1, "extraSpace"    # I

    .prologue
    .line 171
    add-int/lit8 v1, p1, 0x1

    invoke-super {p0, v1}, Landroid/widget/FrameLayout;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 172
    .local v0, "drawableState":[I
    iget-object v1, p0, Lcom/buzzfeed/toolkit/bottomnav/internal/BottomNavigationItemView;->mItemData:Landroid/support/v7/view/menu/MenuItemImpl;

    if-eqz v1, :cond_1f

    iget-object v1, p0, Lcom/buzzfeed/toolkit/bottomnav/internal/BottomNavigationItemView;->mItemData:Landroid/support/v7/view/menu/MenuItemImpl;

    invoke-virtual {v1}, Landroid/support/v7/view/menu/MenuItemImpl;->isCheckable()Z

    move-result v1

    if-eqz v1, :cond_1f

    iget-object v1, p0, Lcom/buzzfeed/toolkit/bottomnav/internal/BottomNavigationItemView;->mItemData:Landroid/support/v7/view/menu/MenuItemImpl;

    invoke-virtual {v1}, Landroid/support/v7/view/menu/MenuItemImpl;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 173
    sget-object v1, Lcom/buzzfeed/toolkit/bottomnav/internal/BottomNavigationItemView;->CHECKED_STATE_SET:[I

    invoke-static {v0, v1}, Lcom/buzzfeed/toolkit/bottomnav/internal/BottomNavigationItemView;->mergeDrawableStates([I[I)[I

    .line 175
    :cond_1f
    return-object v0
.end method

.method public prefersCondensedTitle()Z
    .registers 2

    .prologue
    .line 161
    const/4 v0, 0x0

    return v0
.end method

.method public setCheckable(Z)V
    .registers 2
    .param p1, "checkable"    # Z

    .prologue
    .line 102
    invoke-virtual {p0}, Lcom/buzzfeed/toolkit/bottomnav/internal/BottomNavigationItemView;->refreshDrawableState()V

    .line 103
    return-void
.end method

.method public setChecked(Z)V
    .registers 9
    .param p1, "checked"    # Z

    .prologue
    const/16 v6, 0x31

    const/4 v5, 0x4

    const/4 v4, 0x0

    const/high16 v3, 0x3f800000

    .line 107
    iget-object v1, p0, Lcom/buzzfeed/toolkit/bottomnav/internal/BottomNavigationItemView;->mLargeLabel:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/buzzfeed/toolkit/bottomnav/internal/BottomNavigationItemView;->mLargeLabel:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-static {v1, v2}, Landroid/support/v4/view/ViewCompat;->setPivotX(Landroid/view/View;F)V

    .line 108
    iget-object v1, p0, Lcom/buzzfeed/toolkit/bottomnav/internal/BottomNavigationItemView;->mLargeLabel:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/buzzfeed/toolkit/bottomnav/internal/BottomNavigationItemView;->mLargeLabel:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getBaseline()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v1, v2}, Landroid/support/v4/view/ViewCompat;->setPivotY(Landroid/view/View;F)V

    .line 109
    iget-object v1, p0, Lcom/buzzfeed/toolkit/bottomnav/internal/BottomNavigationItemView;->mSmallLabel:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/buzzfeed/toolkit/bottomnav/internal/BottomNavigationItemView;->mSmallLabel:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-static {v1, v2}, Landroid/support/v4/view/ViewCompat;->setPivotX(Landroid/view/View;F)V

    .line 110
    iget-object v1, p0, Lcom/buzzfeed/toolkit/bottomnav/internal/BottomNavigationItemView;->mSmallLabel:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/buzzfeed/toolkit/bottomnav/internal/BottomNavigationItemView;->mSmallLabel:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getBaseline()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v1, v2}, Landroid/support/v4/view/ViewCompat;->setPivotY(Landroid/view/View;F)V

    .line 112
    if-eqz p1, :cond_78

    .line 113
    iget-object v1, p0, Lcom/buzzfeed/toolkit/bottomnav/internal/BottomNavigationItemView;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 114
    .local v0, "iconParams":Landroid/widget/FrameLayout$LayoutParams;
    iput v6, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 115
    iget v1, p0, Lcom/buzzfeed/toolkit/bottomnav/internal/BottomNavigationItemView;->mDefaultMargin:I

    iget v2, p0, Lcom/buzzfeed/toolkit/bottomnav/internal/BottomNavigationItemView;->mShiftAmount:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 116
    iget-object v1, p0, Lcom/buzzfeed/toolkit/bottomnav/internal/BottomNavigationItemView;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 118
    iget-object v1, p0, Lcom/buzzfeed/toolkit/bottomnav/internal/BottomNavigationItemView;->mSmallLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 119
    iget-object v1, p0, Lcom/buzzfeed/toolkit/bottomnav/internal/BottomNavigationItemView;->mLargeLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 120
    iget-object v1, p0, Lcom/buzzfeed/toolkit/bottomnav/internal/BottomNavigationItemView;->mLargeLabel:Landroid/widget/TextView;

    invoke-static {v1, v3}, Landroid/support/v4/view/ViewCompat;->setScaleX(Landroid/view/View;F)V

    .line 121
    iget-object v1, p0, Lcom/buzzfeed/toolkit/bottomnav/internal/BottomNavigationItemView;->mLargeLabel:Landroid/widget/TextView;

    invoke-static {v1, v3}, Landroid/support/v4/view/ViewCompat;->setScaleY(Landroid/view/View;F)V

    .line 122
    iget-object v1, p0, Lcom/buzzfeed/toolkit/bottomnav/internal/BottomNavigationItemView;->mSmallLabel:Landroid/widget/TextView;

    iget v2, p0, Lcom/buzzfeed/toolkit/bottomnav/internal/BottomNavigationItemView;->mScaleUpFactor:F

    invoke-static {v1, v2}, Landroid/support/v4/view/ViewCompat;->setScaleX(Landroid/view/View;F)V

    .line 123
    iget-object v1, p0, Lcom/buzzfeed/toolkit/bottomnav/internal/BottomNavigationItemView;->mSmallLabel:Landroid/widget/TextView;

    iget v2, p0, Lcom/buzzfeed/toolkit/bottomnav/internal/BottomNavigationItemView;->mScaleUpFactor:F

    invoke-static {v1, v2}, Landroid/support/v4/view/ViewCompat;->setScaleY(Landroid/view/View;F)V

    .line 139
    .end local v0    # "iconParams":Landroid/widget/FrameLayout$LayoutParams;
    :cond_74
    :goto_74
    invoke-virtual {p0}, Lcom/buzzfeed/toolkit/bottomnav/internal/BottomNavigationItemView;->refreshDrawableState()V

    .line 140
    return-void

    .line 125
    :cond_78
    iget-object v1, p0, Lcom/buzzfeed/toolkit/bottomnav/internal/BottomNavigationItemView;->mLargeLabel:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_74

    .line 126
    iget-object v1, p0, Lcom/buzzfeed/toolkit/bottomnav/internal/BottomNavigationItemView;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 127
    .restart local v0    # "iconParams":Landroid/widget/FrameLayout$LayoutParams;
    iput v6, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 128
    iget v1, p0, Lcom/buzzfeed/toolkit/bottomnav/internal/BottomNavigationItemView;->mDefaultMargin:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 129
    iget-object v1, p0, Lcom/buzzfeed/toolkit/bottomnav/internal/BottomNavigationItemView;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 130
    iget-object v1, p0, Lcom/buzzfeed/toolkit/bottomnav/internal/BottomNavigationItemView;->mSmallLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 131
    iget-object v1, p0, Lcom/buzzfeed/toolkit/bottomnav/internal/BottomNavigationItemView;->mLargeLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 132
    iget-object v1, p0, Lcom/buzzfeed/toolkit/bottomnav/internal/BottomNavigationItemView;->mSmallLabel:Landroid/widget/TextView;

    invoke-static {v1, v3}, Landroid/support/v4/view/ViewCompat;->setScaleX(Landroid/view/View;F)V

    .line 133
    iget-object v1, p0, Lcom/buzzfeed/toolkit/bottomnav/internal/BottomNavigationItemView;->mSmallLabel:Landroid/widget/TextView;

    invoke-static {v1, v3}, Landroid/support/v4/view/ViewCompat;->setScaleY(Landroid/view/View;F)V

    .line 134
    iget-object v1, p0, Lcom/buzzfeed/toolkit/bottomnav/internal/BottomNavigationItemView;->mLargeLabel:Landroid/widget/TextView;

    iget v2, p0, Lcom/buzzfeed/toolkit/bottomnav/internal/BottomNavigationItemView;->mScaleDownFactor:F

    invoke-static {v1, v2}, Landroid/support/v4/view/ViewCompat;->setScaleX(Landroid/view/View;F)V

    .line 135
    iget-object v1, p0, Lcom/buzzfeed/toolkit/bottomnav/internal/BottomNavigationItemView;->mLargeLabel:Landroid/widget/TextView;

    iget v2, p0, Lcom/buzzfeed/toolkit/bottomnav/internal/BottomNavigationItemView;->mScaleDownFactor:F

    invoke-static {v1, v2}, Landroid/support/v4/view/ViewCompat;->setScaleY(Landroid/view/View;F)V

    goto :goto_74
.end method

.method public setEnabled(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .prologue
    .line 144
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 145
    iget-object v0, p0, Lcom/buzzfeed/toolkit/bottomnav/internal/BottomNavigationItemView;->mSmallLabel:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 146
    iget-object v0, p0, Lcom/buzzfeed/toolkit/bottomnav/internal/BottomNavigationItemView;->mLargeLabel:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 147
    iget-object v0, p0, Lcom/buzzfeed/toolkit/bottomnav/internal/BottomNavigationItemView;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 148
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 156
    iget-object v0, p0, Lcom/buzzfeed/toolkit/bottomnav/internal/BottomNavigationItemView;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 157
    return-void
.end method

.method public setItemPosition(I)V
    .registers 2
    .param p1, "position"    # I

    .prologue
    .line 81
    iput p1, p0, Lcom/buzzfeed/toolkit/bottomnav/internal/BottomNavigationItemView;->mItemPosition:I

    .line 82
    return-void
.end method

.method public setShortcut(ZC)V
    .registers 3
    .param p1, "showShortcut"    # Z
    .param p2, "shortcutKey"    # C

    .prologue
    .line 152
    return-void
.end method

.method public setTextColor(Landroid/content/res/ColorStateList;)V
    .registers 3
    .param p1, "color"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 180
    iget-object v0, p0, Lcom/buzzfeed/toolkit/bottomnav/internal/BottomNavigationItemView;->mSmallLabel:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 181
    iget-object v0, p0, Lcom/buzzfeed/toolkit/bottomnav/internal/BottomNavigationItemView;->mLargeLabel:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 182
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/buzzfeed/toolkit/bottomnav/internal/BottomNavigationItemView;->mSmallLabel:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    iget-object v0, p0, Lcom/buzzfeed/toolkit/bottomnav/internal/BottomNavigationItemView;->mLargeLabel:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    return-void
.end method

.method public showsIcon()Z
    .registers 2

    .prologue
    .line 166
    const/4 v0, 0x1

    return v0
.end method
