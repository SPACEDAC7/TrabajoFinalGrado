.class Lcom/buzzfeed/toolkit/bottomnav/internal/BottomNavigationMenuView$1;
.super Ljava/lang/Object;
.source "BottomNavigationMenuView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/buzzfeed/toolkit/bottomnav/internal/BottomNavigationMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/buzzfeed/toolkit/bottomnav/internal/BottomNavigationMenuView;


# direct methods
.method constructor <init>(Lcom/buzzfeed/toolkit/bottomnav/internal/BottomNavigationMenuView;)V
    .registers 2
    .param p1, "this$0"    # Lcom/buzzfeed/toolkit/bottomnav/internal/BottomNavigationMenuView;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/buzzfeed/toolkit/bottomnav/internal/BottomNavigationMenuView$1;->this$0:Lcom/buzzfeed/toolkit/bottomnav/internal/BottomNavigationMenuView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 51
    move-object v1, p1

    check-cast v1, Lcom/buzzfeed/toolkit/bottomnav/internal/BottomNavigationItemView;

    .line 52
    .local v1, "itemView":Lcom/buzzfeed/toolkit/bottomnav/internal/BottomNavigationItemView;
    invoke-virtual {v1}, Lcom/buzzfeed/toolkit/bottomnav/internal/BottomNavigationItemView;->getItemPosition()I

    move-result v0

    .line 53
    .local v0, "itemPosition":I
    iget-object v2, p0, Lcom/buzzfeed/toolkit/bottomnav/internal/BottomNavigationMenuView$1;->this$0:Lcom/buzzfeed/toolkit/bottomnav/internal/BottomNavigationMenuView;

    # getter for: Lcom/buzzfeed/toolkit/bottomnav/internal/BottomNavigationMenuView;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;
    invoke-static {v2}, Lcom/buzzfeed/toolkit/bottomnav/internal/BottomNavigationMenuView;->access$100(Lcom/buzzfeed/toolkit/bottomnav/internal/BottomNavigationMenuView;)Landroid/support/v7/view/menu/MenuBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/buzzfeed/toolkit/bottomnav/internal/BottomNavigationItemView;->getItemData()Landroid/support/v7/view/menu/MenuItemImpl;

    move-result-object v3

    iget-object v4, p0, Lcom/buzzfeed/toolkit/bottomnav/internal/BottomNavigationMenuView$1;->this$0:Lcom/buzzfeed/toolkit/bottomnav/internal/BottomNavigationMenuView;

    # getter for: Lcom/buzzfeed/toolkit/bottomnav/internal/BottomNavigationMenuView;->mPresenter:Lcom/buzzfeed/toolkit/bottomnav/internal/BottomNavigationPresenter;
    invoke-static {v4}, Lcom/buzzfeed/toolkit/bottomnav/internal/BottomNavigationMenuView;->access$000(Lcom/buzzfeed/toolkit/bottomnav/internal/BottomNavigationMenuView;)Lcom/buzzfeed/toolkit/bottomnav/internal/BottomNavigationPresenter;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/support/v7/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;Landroid/support/v7/view/menu/MenuPresenter;I)Z

    move-result v2

    if-nez v2, :cond_23

    .line 54
    iget-object v2, p0, Lcom/buzzfeed/toolkit/bottomnav/internal/BottomNavigationMenuView$1;->this$0:Lcom/buzzfeed/toolkit/bottomnav/internal/BottomNavigationMenuView;

    invoke-virtual {v2, v0}, Lcom/buzzfeed/toolkit/bottomnav/internal/BottomNavigationMenuView;->activateNewButton(I)V

    .line 56
    :cond_23
    return-void
.end method
