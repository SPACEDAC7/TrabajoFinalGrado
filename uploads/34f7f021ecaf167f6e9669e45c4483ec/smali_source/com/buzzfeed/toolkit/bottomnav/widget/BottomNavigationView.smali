.class public Lcom/buzzfeed/toolkit/bottomnav/widget/BottomNavigationView;
.super Landroid/widget/FrameLayout;
.source "BottomNavigationView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/buzzfeed/toolkit/bottomnav/widget/BottomNavigationView$OnNavigationItemSelectedListener;
    }
.end annotation


# instance fields
.field private mListener:Lcom/buzzfeed/toolkit/bottomnav/widget/BottomNavigationView$OnNavigationItemSelectedListener;

.field private final mMenu:Landroid/support/v7/view/menu/MenuBuilder;

.field private final mMenuView:Lcom/buzzfeed/toolkit/bottomnav/internal/BottomNavigationMenuView;

.field private final mPresenter:Lcom/buzzfeed/toolkit/bottomnav/internal/BottomNavigationPresenter;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/buzzfeed/toolkit/bottomnav/widget/BottomNavigationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 39
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/buzzfeed/toolkit/bottomnav/widget/BottomNavigationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v2, -0x1

    .line 43
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    new-instance v1, Lcom/buzzfeed/toolkit/bottomnav/internal/BottomNavigationPresenter;

    invoke-direct {v1}, Lcom/buzzfeed/toolkit/bottomnav/internal/BottomNavigationPresenter;-><init>()V

    iput-object v1, p0, Lcom/buzzfeed/toolkit/bottomnav/widget/BottomNavigationView;->mPresenter:Lcom/buzzfeed/toolkit/bottomnav/internal/BottomNavigationPresenter;

    .line 45
    new-instance v1, Landroid/support/v7/view/menu/MenuBuilder;

    invoke-direct {v1, p1}, Landroid/support/v7/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/buzzfeed/toolkit/bottomnav/widget/BottomNavigationView;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    .line 47
    new-instance v1, Lcom/buzzfeed/toolkit/bottomnav/internal/BottomNavigationMenuView;

    invoke-direct {v1, p1}, Lcom/buzzfeed/toolkit/bottomnav/internal/BottomNavigationMenuView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/buzzfeed/toolkit/bottomnav/widget/BottomNavigationView;->mMenuView:Lcom/buzzfeed/toolkit/bottomnav/internal/BottomNavigationMenuView;

    .line 48
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 51
    .local v0, "params":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 52
    iget-object v1, p0, Lcom/buzzfeed/toolkit/bottomnav/widget/BottomNavigationView;->mMenuView:Lcom/buzzfeed/toolkit/bottomnav/internal/BottomNavigationMenuView;

    invoke-virtual {v1, v0}, Lcom/buzzfeed/toolkit/bottomnav/internal/BottomNavigationMenuView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 54
    iget-object v1, p0, Lcom/buzzfeed/toolkit/bottomnav/widget/BottomNavigationView;->mPresenter:Lcom/buzzfeed/toolkit/bottomnav/internal/BottomNavigationPresenter;

    iget-object v2, p0, Lcom/buzzfeed/toolkit/bottomnav/widget/BottomNavigationView;->mMenuView:Lcom/buzzfeed/toolkit/bottomnav/internal/BottomNavigationMenuView;

    invoke-virtual {v1, v2}, Lcom/buzzfeed/toolkit/bottomnav/internal/BottomNavigationPresenter;->setBottomNavigationMenuView(Lcom/buzzfeed/toolkit/bottomnav/internal/BottomNavigationMenuView;)V

    .line 55
    iget-object v1, p0, Lcom/buzzfeed/toolkit/bottomnav/widget/BottomNavigationView;->mMenuView:Lcom/buzzfeed/toolkit/bottomnav/internal/BottomNavigationMenuView;

    iget-object v2, p0, Lcom/buzzfeed/toolkit/bottomnav/widget/BottomNavigationView;->mPresenter:Lcom/buzzfeed/toolkit/bottomnav/internal/BottomNavigationPresenter;

    invoke-virtual {v1, v2}, Lcom/buzzfeed/toolkit/bottomnav/internal/BottomNavigationMenuView;->setPresenter(Lcom/buzzfeed/toolkit/bottomnav/internal/BottomNavigationPresenter;)V

    .line 56
    iget-object v1, p0, Lcom/buzzfeed/toolkit/bottomnav/widget/BottomNavigationView;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    iget-object v2, p0, Lcom/buzzfeed/toolkit/bottomnav/widget/BottomNavigationView;->mPresenter:Lcom/buzzfeed/toolkit/bottomnav/internal/BottomNavigationPresenter;

    invoke-virtual {v1, v2}, Landroid/support/v7/view/menu/MenuBuilder;->addMenuPresenter(Landroid/support/v7/view/menu/MenuPresenter;)V

    .line 57
    iget-object v1, p0, Lcom/buzzfeed/toolkit/bottomnav/widget/BottomNavigationView;->mPresenter:Lcom/buzzfeed/toolkit/bottomnav/internal/BottomNavigationPresenter;

    invoke-virtual {p0}, Lcom/buzzfeed/toolkit/bottomnav/widget/BottomNavigationView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/buzzfeed/toolkit/bottomnav/widget/BottomNavigationView;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v1, v2, v3}, Lcom/buzzfeed/toolkit/bottomnav/internal/BottomNavigationPresenter;->initForMenu(Landroid/content/Context;Landroid/support/v7/view/menu/MenuBuilder;)V

    .line 59
    iget-object v1, p0, Lcom/buzzfeed/toolkit/bottomnav/widget/BottomNavigationView;->mMenuView:Lcom/buzzfeed/toolkit/bottomnav/internal/BottomNavigationMenuView;

    invoke-virtual {p0, v1, v0}, Lcom/buzzfeed/toolkit/bottomnav/widget/BottomNavigationView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 61
    iget-object v1, p0, Lcom/buzzfeed/toolkit/bottomnav/widget/BottomNavigationView;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    new-instance v2, Lcom/buzzfeed/toolkit/bottomnav/widget/BottomNavigationView$1;

    invoke-direct {v2, p0}, Lcom/buzzfeed/toolkit/bottomnav/widget/BottomNavigationView$1;-><init>(Lcom/buzzfeed/toolkit/bottomnav/widget/BottomNavigationView;)V

    invoke-virtual {v1, v2}, Landroid/support/v7/view/menu/MenuBuilder;->setCallback(Landroid/support/v7/view/menu/MenuBuilder$Callback;)V

    .line 71
    return-void
.end method

.method static synthetic access$000(Lcom/buzzfeed/toolkit/bottomnav/widget/BottomNavigationView;)Lcom/buzzfeed/toolkit/bottomnav/widget/BottomNavigationView$OnNavigationItemSelectedListener;
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/toolkit/bottomnav/widget/BottomNavigationView;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/buzzfeed/toolkit/bottomnav/widget/BottomNavigationView;->mListener:Lcom/buzzfeed/toolkit/bottomnav/widget/BottomNavigationView$OnNavigationItemSelectedListener;

    return-object v0
.end method


# virtual methods
.method public getMenu()Landroid/view/Menu;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 91
    iget-object v0, p0, Lcom/buzzfeed/toolkit/bottomnav/widget/BottomNavigationView;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    return-object v0
.end method

.method public setOnNavigationItemSelectedListener(Lcom/buzzfeed/toolkit/bottomnav/widget/BottomNavigationView$OnNavigationItemSelectedListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/buzzfeed/toolkit/bottomnav/widget/BottomNavigationView$OnNavigationItemSelectedListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 85
    iput-object p1, p0, Lcom/buzzfeed/toolkit/bottomnav/widget/BottomNavigationView;->mListener:Lcom/buzzfeed/toolkit/bottomnav/widget/BottomNavigationView$OnNavigationItemSelectedListener;

    .line 86
    return-void
.end method

.method public setSelected(I)V
    .registers 3
    .param p1, "index"    # I

    .prologue
    .line 75
    iget-object v0, p0, Lcom/buzzfeed/toolkit/bottomnav/widget/BottomNavigationView;->mMenuView:Lcom/buzzfeed/toolkit/bottomnav/internal/BottomNavigationMenuView;

    invoke-virtual {v0, p1}, Lcom/buzzfeed/toolkit/bottomnav/internal/BottomNavigationMenuView;->activateNewButton(I)V

    .line 76
    return-void
.end method
