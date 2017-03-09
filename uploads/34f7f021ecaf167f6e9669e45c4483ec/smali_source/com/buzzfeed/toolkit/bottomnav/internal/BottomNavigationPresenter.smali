.class public Lcom/buzzfeed/toolkit/bottomnav/internal/BottomNavigationPresenter;
.super Ljava/lang/Object;
.source "BottomNavigationPresenter.java"

# interfaces
.implements Landroid/support/v7/view/menu/MenuPresenter;


# instance fields
.field private mMenu:Landroid/support/v7/view/menu/MenuBuilder;

.field private mMenuView:Lcom/buzzfeed/toolkit/bottomnav/internal/BottomNavigationMenuView;

.field private mUpdateSuspended:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/buzzfeed/toolkit/bottomnav/internal/BottomNavigationPresenter;->mUpdateSuspended:Z

    return-void
.end method


# virtual methods
.method public collapseItemActionView(Landroid/support/v7/view/menu/MenuBuilder;Landroid/support/v7/view/menu/MenuItemImpl;)Z
    .registers 4
    .param p1, "menu"    # Landroid/support/v7/view/menu/MenuBuilder;
    .param p2, "item"    # Landroid/support/v7/view/menu/MenuItemImpl;

    .prologue
    .line 68
    const/4 v0, 0x0

    return v0
.end method

.method public expandItemActionView(Landroid/support/v7/view/menu/MenuBuilder;Landroid/support/v7/view/menu/MenuItemImpl;)Z
    .registers 4
    .param p1, "menu"    # Landroid/support/v7/view/menu/MenuBuilder;
    .param p2, "item"    # Landroid/support/v7/view/menu/MenuItemImpl;

    .prologue
    .line 63
    const/4 v0, 0x0

    return v0
.end method

.method public flagActionItems()Z
    .registers 2

    .prologue
    .line 58
    const/4 v0, 0x0

    return v0
.end method

.method public getId()I
    .registers 2

    .prologue
    .line 73
    const/4 v0, -0x1

    return v0
.end method

.method public getMenuView(Landroid/view/ViewGroup;)Landroid/support/v7/view/menu/MenuView;
    .registers 3
    .param p1, "root"    # Landroid/view/ViewGroup;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/buzzfeed/toolkit/bottomnav/internal/BottomNavigationPresenter;->mMenuView:Lcom/buzzfeed/toolkit/bottomnav/internal/BottomNavigationMenuView;

    return-object v0
.end method

.method public initForMenu(Landroid/content/Context;Landroid/support/v7/view/menu/MenuBuilder;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "menu"    # Landroid/support/v7/view/menu/MenuBuilder;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/buzzfeed/toolkit/bottomnav/internal/BottomNavigationPresenter;->mMenuView:Lcom/buzzfeed/toolkit/bottomnav/internal/BottomNavigationMenuView;

    iget-object v1, p0, Lcom/buzzfeed/toolkit/bottomnav/internal/BottomNavigationPresenter;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v0, v1}, Lcom/buzzfeed/toolkit/bottomnav/internal/BottomNavigationMenuView;->initialize(Landroid/support/v7/view/menu/MenuBuilder;)V

    .line 27
    iput-object p2, p0, Lcom/buzzfeed/toolkit/bottomnav/internal/BottomNavigationPresenter;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    .line 28
    return-void
.end method

.method public onCloseMenu(Landroid/support/v7/view/menu/MenuBuilder;Z)V
    .registers 3
    .param p1, "menu"    # Landroid/support/v7/view/menu/MenuBuilder;
    .param p2, "allMenusAreClosing"    # Z

    .prologue
    .line 54
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 82
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .registers 2

    .prologue
    .line 78
    const/4 v0, 0x0

    return-object v0
.end method

.method public onSubMenuSelected(Landroid/support/v7/view/menu/SubMenuBuilder;)Z
    .registers 3
    .param p1, "subMenu"    # Landroid/support/v7/view/menu/SubMenuBuilder;

    .prologue
    .line 50
    const/4 v0, 0x0

    return v0
.end method

.method public setBottomNavigationMenuView(Lcom/buzzfeed/toolkit/bottomnav/internal/BottomNavigationMenuView;)V
    .registers 2
    .param p1, "menuView"    # Lcom/buzzfeed/toolkit/bottomnav/internal/BottomNavigationMenuView;

    .prologue
    .line 21
    iput-object p1, p0, Lcom/buzzfeed/toolkit/bottomnav/internal/BottomNavigationPresenter;->mMenuView:Lcom/buzzfeed/toolkit/bottomnav/internal/BottomNavigationMenuView;

    .line 22
    return-void
.end method

.method public setCallback(Landroid/support/v7/view/menu/MenuPresenter$Callback;)V
    .registers 2
    .param p1, "cb"    # Landroid/support/v7/view/menu/MenuPresenter$Callback;

    .prologue
    .line 46
    return-void
.end method

.method public setUpdateSuspended(Z)V
    .registers 2
    .param p1, "updateSuspended"    # Z

    .prologue
    .line 85
    iput-boolean p1, p0, Lcom/buzzfeed/toolkit/bottomnav/internal/BottomNavigationPresenter;->mUpdateSuspended:Z

    .line 86
    return-void
.end method

.method public updateMenuView(Z)V
    .registers 3
    .param p1, "cleared"    # Z

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/buzzfeed/toolkit/bottomnav/internal/BottomNavigationPresenter;->mUpdateSuspended:Z

    if-eqz v0, :cond_5

    .line 43
    :goto_4
    return-void

    .line 38
    :cond_5
    if-eqz p1, :cond_d

    .line 39
    iget-object v0, p0, Lcom/buzzfeed/toolkit/bottomnav/internal/BottomNavigationPresenter;->mMenuView:Lcom/buzzfeed/toolkit/bottomnav/internal/BottomNavigationMenuView;

    invoke-virtual {v0}, Lcom/buzzfeed/toolkit/bottomnav/internal/BottomNavigationMenuView;->buildMenuView()V

    goto :goto_4

    .line 41
    :cond_d
    iget-object v0, p0, Lcom/buzzfeed/toolkit/bottomnav/internal/BottomNavigationPresenter;->mMenuView:Lcom/buzzfeed/toolkit/bottomnav/internal/BottomNavigationMenuView;

    invoke-virtual {v0}, Lcom/buzzfeed/toolkit/bottomnav/internal/BottomNavigationMenuView;->updateMenuView()V

    goto :goto_4
.end method
