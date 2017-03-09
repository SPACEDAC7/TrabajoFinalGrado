.class Landroid/support/design/internal/BottomNavigationMenuView$1;
.super Ljava/lang/Object;
.source "BottomNavigationMenuView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/design/internal/BottomNavigationMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/design/internal/BottomNavigationMenuView;


# direct methods
.method constructor <init>(Landroid/support/design/internal/BottomNavigationMenuView;)V
    .registers 2
    .param p1, "this$0"    # Landroid/support/design/internal/BottomNavigationMenuView;

    .prologue
    .line 84
    iput-object p1, p0, Landroid/support/design/internal/BottomNavigationMenuView$1;->this$0:Landroid/support/design/internal/BottomNavigationMenuView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 87
    move-object v1, p1

    check-cast v1, Landroid/support/design/internal/BottomNavigationItemView;

    .line 88
    .local v1, "itemView":Landroid/support/design/internal/BottomNavigationItemView;
    invoke-virtual {v1}, Landroid/support/design/internal/BottomNavigationItemView;->getItemPosition()I

    move-result v0

    .line 89
    .local v0, "itemPosition":I
    iget-object v2, p0, Landroid/support/design/internal/BottomNavigationMenuView$1;->this$0:Landroid/support/design/internal/BottomNavigationMenuView;

    # getter for: Landroid/support/design/internal/BottomNavigationMenuView;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;
    invoke-static {v2}, Landroid/support/design/internal/BottomNavigationMenuView;->access$100(Landroid/support/design/internal/BottomNavigationMenuView;)Landroid/support/v7/view/menu/MenuBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/support/design/internal/BottomNavigationItemView;->getItemData()Landroid/support/v7/view/menu/MenuItemImpl;

    move-result-object v3

    iget-object v4, p0, Landroid/support/design/internal/BottomNavigationMenuView$1;->this$0:Landroid/support/design/internal/BottomNavigationMenuView;

    # getter for: Landroid/support/design/internal/BottomNavigationMenuView;->mPresenter:Landroid/support/design/internal/BottomNavigationPresenter;
    invoke-static {v4}, Landroid/support/design/internal/BottomNavigationMenuView;->access$000(Landroid/support/design/internal/BottomNavigationMenuView;)Landroid/support/design/internal/BottomNavigationPresenter;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/support/v7/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;Landroid/support/v7/view/menu/MenuPresenter;I)Z

    move-result v2

    if-nez v2, :cond_23

    .line 90
    iget-object v2, p0, Landroid/support/design/internal/BottomNavigationMenuView$1;->this$0:Landroid/support/design/internal/BottomNavigationMenuView;

    # invokes: Landroid/support/design/internal/BottomNavigationMenuView;->activateNewButton(I)V
    invoke-static {v2, v0}, Landroid/support/design/internal/BottomNavigationMenuView;->access$200(Landroid/support/design/internal/BottomNavigationMenuView;I)V

    .line 92
    :cond_23
    return-void
.end method
