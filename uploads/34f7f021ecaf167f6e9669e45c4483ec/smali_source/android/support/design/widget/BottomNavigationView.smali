.class public Landroid/support/design/widget/BottomNavigationView;
.super Landroid/widget/FrameLayout;
.source "BottomNavigationView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/widget/BottomNavigationView$OnNavigationItemSelectedListener;
    }
.end annotation


# static fields
.field private static final CHECKED_STATE_SET:[I

.field private static final DISABLED_STATE_SET:[I


# instance fields
.field private mListener:Landroid/support/design/widget/BottomNavigationView$OnNavigationItemSelectedListener;

.field private final mMenu:Landroid/support/v7/view/menu/MenuBuilder;

.field private mMenuInflater:Landroid/view/MenuInflater;

.field private final mMenuView:Landroid/support/design/internal/BottomNavigationMenuView;

.field private final mPresenter:Landroid/support/design/internal/BottomNavigationPresenter;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 89
    new-array v0, v3, [I

    const v1, 0x10100a0

    aput v1, v0, v2

    sput-object v0, Landroid/support/design/widget/BottomNavigationView;->CHECKED_STATE_SET:[I

    .line 90
    new-array v0, v3, [I

    const v1, -0x101009e

    aput v1, v0, v2

    sput-object v0, Landroid/support/design/widget/BottomNavigationView;->DISABLED_STATE_SET:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 100
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/design/widget/BottomNavigationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 101
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 104
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/design/widget/BottomNavigationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 105
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const v7, 0x1010038

    const/4 v4, -0x2

    const/4 v6, 0x0

    .line 108
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 94
    new-instance v3, Landroid/support/design/internal/BottomNavigationPresenter;

    invoke-direct {v3}, Landroid/support/design/internal/BottomNavigationPresenter;-><init>()V

    iput-object v3, p0, Landroid/support/design/widget/BottomNavigationView;->mPresenter:Landroid/support/design/internal/BottomNavigationPresenter;

    .line 110
    invoke-static {p1}, Landroid/support/design/widget/ThemeUtils;->checkAppCompatTheme(Landroid/content/Context;)V

    .line 113
    new-instance v3, Landroid/support/design/internal/BottomNavigationMenu;

    invoke-direct {v3, p1}, Landroid/support/design/internal/BottomNavigationMenu;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Landroid/support/design/widget/BottomNavigationView;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    .line 115
    new-instance v3, Landroid/support/design/internal/BottomNavigationMenuView;

    invoke-direct {v3, p1}, Landroid/support/design/internal/BottomNavigationMenuView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Landroid/support/design/widget/BottomNavigationView;->mMenuView:Landroid/support/design/internal/BottomNavigationMenuView;

    .line 116
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 118
    .local v2, "params":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v3, 0x11

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 119
    iget-object v3, p0, Landroid/support/design/widget/BottomNavigationView;->mMenuView:Landroid/support/design/internal/BottomNavigationMenuView;

    invoke-virtual {v3, v2}, Landroid/support/design/internal/BottomNavigationMenuView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 121
    iget-object v3, p0, Landroid/support/design/widget/BottomNavigationView;->mPresenter:Landroid/support/design/internal/BottomNavigationPresenter;

    iget-object v4, p0, Landroid/support/design/widget/BottomNavigationView;->mMenuView:Landroid/support/design/internal/BottomNavigationMenuView;

    invoke-virtual {v3, v4}, Landroid/support/design/internal/BottomNavigationPresenter;->setBottomNavigationMenuView(Landroid/support/design/internal/BottomNavigationMenuView;)V

    .line 122
    iget-object v3, p0, Landroid/support/design/widget/BottomNavigationView;->mMenuView:Landroid/support/design/internal/BottomNavigationMenuView;

    iget-object v4, p0, Landroid/support/design/widget/BottomNavigationView;->mPresenter:Landroid/support/design/internal/BottomNavigationPresenter;

    invoke-virtual {v3, v4}, Landroid/support/design/internal/BottomNavigationMenuView;->setPresenter(Landroid/support/design/internal/BottomNavigationPresenter;)V

    .line 123
    iget-object v3, p0, Landroid/support/design/widget/BottomNavigationView;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    iget-object v4, p0, Landroid/support/design/widget/BottomNavigationView;->mPresenter:Landroid/support/design/internal/BottomNavigationPresenter;

    invoke-virtual {v3, v4}, Landroid/support/v7/view/menu/MenuBuilder;->addMenuPresenter(Landroid/support/v7/view/menu/MenuPresenter;)V

    .line 124
    iget-object v3, p0, Landroid/support/design/widget/BottomNavigationView;->mPresenter:Landroid/support/design/internal/BottomNavigationPresenter;

    invoke-virtual {p0}, Landroid/support/design/widget/BottomNavigationView;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Landroid/support/design/widget/BottomNavigationView;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v3, v4, v5}, Landroid/support/design/internal/BottomNavigationPresenter;->initForMenu(Landroid/content/Context;Landroid/support/v7/view/menu/MenuBuilder;)V

    .line 127
    sget-object v3, Landroid/support/design/R$styleable;->BottomNavigationView:[I

    sget v4, Landroid/support/design/R$style;->Widget_Design_BottomNavigationView:I

    invoke-static {p1, p2, v3, p3, v4}, Landroid/support/v7/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/support/v7/widget/TintTypedArray;

    move-result-object v0

    .line 131
    .local v0, "a":Landroid/support/v7/widget/TintTypedArray;
    sget v3, Landroid/support/design/R$styleable;->BottomNavigationView_itemIconTint:I

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_c6

    .line 132
    iget-object v3, p0, Landroid/support/design/widget/BottomNavigationView;->mMenuView:Landroid/support/design/internal/BottomNavigationMenuView;

    sget v4, Landroid/support/design/R$styleable;->BottomNavigationView_itemIconTint:I

    .line 133
    invoke-virtual {v0, v4}, Landroid/support/v7/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    .line 132
    invoke-virtual {v3, v4}, Landroid/support/design/internal/BottomNavigationMenuView;->setIconTintList(Landroid/content/res/ColorStateList;)V

    .line 138
    :goto_69
    sget v3, Landroid/support/design/R$styleable;->BottomNavigationView_itemTextColor:I

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_d0

    .line 139
    iget-object v3, p0, Landroid/support/design/widget/BottomNavigationView;->mMenuView:Landroid/support/design/internal/BottomNavigationMenuView;

    sget v4, Landroid/support/design/R$styleable;->BottomNavigationView_itemTextColor:I

    .line 140
    invoke-virtual {v0, v4}, Landroid/support/v7/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    .line 139
    invoke-virtual {v3, v4}, Landroid/support/design/internal/BottomNavigationMenuView;->setItemTextColor(Landroid/content/res/ColorStateList;)V

    .line 145
    :goto_7c
    sget v3, Landroid/support/design/R$styleable;->BottomNavigationView_elevation:I

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_8e

    .line 146
    sget v3, Landroid/support/design/R$styleable;->BottomNavigationView_elevation:I

    invoke-virtual {v0, v3, v6}, Landroid/support/v7/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v3

    int-to-float v3, v3

    invoke-static {p0, v3}, Landroid/support/v4/view/ViewCompat;->setElevation(Landroid/view/View;F)V

    .line 150
    :cond_8e
    sget v3, Landroid/support/design/R$styleable;->BottomNavigationView_itemBackground:I

    invoke-virtual {v0, v3, v6}, Landroid/support/v7/widget/TintTypedArray;->getResourceId(II)I

    move-result v1

    .line 151
    .local v1, "itemBackground":I
    iget-object v3, p0, Landroid/support/design/widget/BottomNavigationView;->mMenuView:Landroid/support/design/internal/BottomNavigationMenuView;

    invoke-virtual {v3, v1}, Landroid/support/design/internal/BottomNavigationMenuView;->setItemBackgroundRes(I)V

    .line 153
    sget v3, Landroid/support/design/R$styleable;->BottomNavigationView_menu:I

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_aa

    .line 154
    sget v3, Landroid/support/design/R$styleable;->BottomNavigationView_menu:I

    invoke-virtual {v0, v3, v6}, Landroid/support/v7/widget/TintTypedArray;->getResourceId(II)I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/support/design/widget/BottomNavigationView;->inflateMenu(I)V

    .line 156
    :cond_aa
    invoke-virtual {v0}, Landroid/support/v7/widget/TintTypedArray;->recycle()V

    .line 158
    iget-object v3, p0, Landroid/support/design/widget/BottomNavigationView;->mMenuView:Landroid/support/design/internal/BottomNavigationMenuView;

    invoke-virtual {p0, v3, v2}, Landroid/support/design/widget/BottomNavigationView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 159
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-ge v3, v4, :cond_bb

    .line 160
    invoke-direct {p0, p1}, Landroid/support/design/widget/BottomNavigationView;->addCompatibilityTopDivider(Landroid/content/Context;)V

    .line 163
    :cond_bb
    iget-object v3, p0, Landroid/support/design/widget/BottomNavigationView;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    new-instance v4, Landroid/support/design/widget/BottomNavigationView$1;

    invoke-direct {v4, p0}, Landroid/support/design/widget/BottomNavigationView$1;-><init>(Landroid/support/design/widget/BottomNavigationView;)V

    invoke-virtual {v3, v4}, Landroid/support/v7/view/menu/MenuBuilder;->setCallback(Landroid/support/v7/view/menu/MenuBuilder$Callback;)V

    .line 172
    return-void

    .line 135
    .end local v1    # "itemBackground":I
    :cond_c6
    iget-object v3, p0, Landroid/support/design/widget/BottomNavigationView;->mMenuView:Landroid/support/design/internal/BottomNavigationMenuView;

    .line 136
    invoke-direct {p0, v7}, Landroid/support/design/widget/BottomNavigationView;->createDefaultColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    .line 135
    invoke-virtual {v3, v4}, Landroid/support/design/internal/BottomNavigationMenuView;->setIconTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_69

    .line 142
    :cond_d0
    iget-object v3, p0, Landroid/support/design/widget/BottomNavigationView;->mMenuView:Landroid/support/design/internal/BottomNavigationMenuView;

    .line 143
    invoke-direct {p0, v7}, Landroid/support/design/widget/BottomNavigationView;->createDefaultColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    .line 142
    invoke-virtual {v3, v4}, Landroid/support/design/internal/BottomNavigationMenuView;->setItemTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_7c
.end method

.method static synthetic access$000(Landroid/support/design/widget/BottomNavigationView;)Landroid/support/design/widget/BottomNavigationView$OnNavigationItemSelectedListener;
    .registers 2
    .param p0, "x0"    # Landroid/support/design/widget/BottomNavigationView;

    .prologue
    .line 87
    iget-object v0, p0, Landroid/support/design/widget/BottomNavigationView;->mListener:Landroid/support/design/widget/BottomNavigationView$OnNavigationItemSelectedListener;

    return-object v0
.end method

.method private addCompatibilityTopDivider(Landroid/content/Context;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 304
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 305
    .local v0, "divider":Landroid/view/View;
    sget v2, Landroid/support/design/R$color;->design_bottom_navigation_shadow_color:I

    .line 306
    invoke-static {p1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    .line 305
    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 307
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    .line 309
    invoke-virtual {p0}, Landroid/support/design/widget/BottomNavigationView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Landroid/support/design/R$dimen;->design_bottom_navigation_shadow_height:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 311
    .local v1, "dividerParams":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 312
    invoke-virtual {p0, v0}, Landroid/support/design/widget/BottomNavigationView;->addView(Landroid/view/View;)V

    .line 313
    return-void
.end method

.method private createDefaultColorStateList(I)Landroid/content/res/ColorStateList;
    .registers 13
    .param p1, "baseColorThemeAttr"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 323
    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    .line 324
    .local v3, "value":Landroid/util/TypedValue;
    invoke-virtual {p0}, Landroid/support/design/widget/BottomNavigationView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    invoke-virtual {v5, p1, v3, v8}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v5

    if-nez v5, :cond_19

    .line 340
    :cond_18
    :goto_18
    return-object v4

    .line 328
    :cond_19
    invoke-virtual {p0}, Landroid/support/design/widget/BottomNavigationView;->getContext()Landroid/content/Context;

    move-result-object v5

    iget v6, v3, Landroid/util/TypedValue;->resourceId:I

    .line 327
    invoke-static {v5, v6}, Landroid/support/v7/content/res/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 329
    .local v0, "baseColor":Landroid/content/res/ColorStateList;
    invoke-virtual {p0}, Landroid/support/design/widget/BottomNavigationView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    sget v6, Landroid/support/v7/appcompat/R$attr;->colorPrimary:I

    invoke-virtual {v5, v6, v3, v8}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v5

    if-eqz v5, :cond_18

    .line 333
    iget v1, v3, Landroid/util/TypedValue;->data:I

    .line 334
    .local v1, "colorPrimary":I
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

    .line 335
    .local v2, "defaultColor":I
    new-instance v4, Landroid/content/res/ColorStateList;

    new-array v5, v7, [[I

    sget-object v6, Landroid/support/design/widget/BottomNavigationView;->DISABLED_STATE_SET:[I

    aput-object v6, v5, v9

    sget-object v6, Landroid/support/design/widget/BottomNavigationView;->CHECKED_STATE_SET:[I

    aput-object v6, v5, v8

    sget-object v6, Landroid/support/design/widget/BottomNavigationView;->EMPTY_STATE_SET:[I

    aput-object v6, v5, v10

    new-array v6, v7, [I

    sget-object v7, Landroid/support/design/widget/BottomNavigationView;->DISABLED_STATE_SET:[I

    .line 340
    invoke-virtual {v0, v7, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v7

    aput v7, v6, v9

    aput v1, v6, v8

    aput v2, v6, v10

    invoke-direct {v4, v5, v6}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    goto :goto_18
.end method

.method private getMenuInflater()Landroid/view/MenuInflater;
    .registers 3

    .prologue
    .line 316
    iget-object v0, p0, Landroid/support/design/widget/BottomNavigationView;->mMenuInflater:Landroid/view/MenuInflater;

    if-nez v0, :cond_f

    .line 317
    new-instance v0, Landroid/support/v7/view/SupportMenuInflater;

    invoke-virtual {p0}, Landroid/support/design/widget/BottomNavigationView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/view/SupportMenuInflater;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/design/widget/BottomNavigationView;->mMenuInflater:Landroid/view/MenuInflater;

    .line 319
    :cond_f
    iget-object v0, p0, Landroid/support/design/widget/BottomNavigationView;->mMenuInflater:Landroid/view/MenuInflater;

    return-object v0
.end method


# virtual methods
.method public getItemBackgroundResource()I
    .registers 2
    .annotation build Landroid/support/annotation/DrawableRes;
    .end annotation

    .prologue
    .line 272
    iget-object v0, p0, Landroid/support/design/widget/BottomNavigationView;->mMenuView:Landroid/support/design/internal/BottomNavigationMenuView;

    invoke-virtual {v0}, Landroid/support/design/internal/BottomNavigationMenuView;->getItemBackgroundRes()I

    move-result v0

    return v0
.end method

.method public getItemIconTintList()Landroid/content/res/ColorStateList;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 222
    iget-object v0, p0, Landroid/support/design/widget/BottomNavigationView;->mMenuView:Landroid/support/design/internal/BottomNavigationMenuView;

    invoke-virtual {v0}, Landroid/support/design/internal/BottomNavigationMenuView;->getIconTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public getItemTextColor()Landroid/content/res/ColorStateList;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 248
    iget-object v0, p0, Landroid/support/design/widget/BottomNavigationView;->mMenuView:Landroid/support/design/internal/BottomNavigationMenuView;

    invoke-virtual {v0}, Landroid/support/design/internal/BottomNavigationMenuView;->getItemTextColor()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public getMaxItemCount()I
    .registers 2

    .prologue
    .line 210
    const/4 v0, 0x5

    return v0
.end method

.method public getMenu()Landroid/view/Menu;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 189
    iget-object v0, p0, Landroid/support/design/widget/BottomNavigationView;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    return-object v0
.end method

.method public inflateMenu(I)V
    .registers 5
    .param p1, "resId"    # I

    .prologue
    const/4 v2, 0x1

    .line 200
    iget-object v0, p0, Landroid/support/design/widget/BottomNavigationView;->mPresenter:Landroid/support/design/internal/BottomNavigationPresenter;

    invoke-virtual {v0, v2}, Landroid/support/design/internal/BottomNavigationPresenter;->setUpdateSuspended(Z)V

    .line 201
    invoke-direct {p0}, Landroid/support/design/widget/BottomNavigationView;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    iget-object v1, p0, Landroid/support/design/widget/BottomNavigationView;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v0, p1, v1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 202
    iget-object v0, p0, Landroid/support/design/widget/BottomNavigationView;->mPresenter:Landroid/support/design/internal/BottomNavigationPresenter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/design/internal/BottomNavigationPresenter;->setUpdateSuspended(Z)V

    .line 203
    iget-object v0, p0, Landroid/support/design/widget/BottomNavigationView;->mPresenter:Landroid/support/design/internal/BottomNavigationPresenter;

    invoke-virtual {v0, v2}, Landroid/support/design/internal/BottomNavigationPresenter;->updateMenuView(Z)V

    .line 204
    return-void
.end method

.method public setItemBackgroundResource(I)V
    .registers 3
    .param p1, "resId"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 283
    iget-object v0, p0, Landroid/support/design/widget/BottomNavigationView;->mMenuView:Landroid/support/design/internal/BottomNavigationMenuView;

    invoke-virtual {v0, p1}, Landroid/support/design/internal/BottomNavigationMenuView;->setItemBackgroundRes(I)V

    .line 284
    return-void
.end method

.method public setItemIconTintList(Landroid/content/res/ColorStateList;)V
    .registers 3
    .param p1, "tint"    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 233
    iget-object v0, p0, Landroid/support/design/widget/BottomNavigationView;->mMenuView:Landroid/support/design/internal/BottomNavigationMenuView;

    invoke-virtual {v0, p1}, Landroid/support/design/internal/BottomNavigationMenuView;->setIconTintList(Landroid/content/res/ColorStateList;)V

    .line 234
    return-void
.end method

.method public setItemTextColor(Landroid/content/res/ColorStateList;)V
    .registers 3
    .param p1, "textColor"    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 260
    iget-object v0, p0, Landroid/support/design/widget/BottomNavigationView;->mMenuView:Landroid/support/design/internal/BottomNavigationMenuView;

    invoke-virtual {v0, p1}, Landroid/support/design/internal/BottomNavigationMenuView;->setItemTextColor(Landroid/content/res/ColorStateList;)V

    .line 261
    return-void
.end method

.method public setOnNavigationItemSelectedListener(Landroid/support/design/widget/BottomNavigationView$OnNavigationItemSelectedListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/support/design/widget/BottomNavigationView$OnNavigationItemSelectedListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 181
    iput-object p1, p0, Landroid/support/design/widget/BottomNavigationView;->mListener:Landroid/support/design/widget/BottomNavigationView$OnNavigationItemSelectedListener;

    .line 182
    return-void
.end method
