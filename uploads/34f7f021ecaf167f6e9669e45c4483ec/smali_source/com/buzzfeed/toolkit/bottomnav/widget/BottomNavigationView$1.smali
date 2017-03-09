.class Lcom/buzzfeed/toolkit/bottomnav/widget/BottomNavigationView$1;
.super Ljava/lang/Object;
.source "BottomNavigationView.java"

# interfaces
.implements Landroid/support/v7/view/menu/MenuBuilder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/buzzfeed/toolkit/bottomnav/widget/BottomNavigationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/buzzfeed/toolkit/bottomnav/widget/BottomNavigationView;


# direct methods
.method constructor <init>(Lcom/buzzfeed/toolkit/bottomnav/widget/BottomNavigationView;)V
    .registers 2
    .param p1, "this$0"    # Lcom/buzzfeed/toolkit/bottomnav/widget/BottomNavigationView;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/buzzfeed/toolkit/bottomnav/widget/BottomNavigationView$1;->this$0:Lcom/buzzfeed/toolkit/bottomnav/widget/BottomNavigationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemSelected(Landroid/support/v7/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .registers 4
    .param p1, "menu"    # Landroid/support/v7/view/menu/MenuBuilder;
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/buzzfeed/toolkit/bottomnav/widget/BottomNavigationView$1;->this$0:Lcom/buzzfeed/toolkit/bottomnav/widget/BottomNavigationView;

    # getter for: Lcom/buzzfeed/toolkit/bottomnav/widget/BottomNavigationView;->mListener:Lcom/buzzfeed/toolkit/bottomnav/widget/BottomNavigationView$OnNavigationItemSelectedListener;
    invoke-static {v0}, Lcom/buzzfeed/toolkit/bottomnav/widget/BottomNavigationView;->access$000(Lcom/buzzfeed/toolkit/bottomnav/widget/BottomNavigationView;)Lcom/buzzfeed/toolkit/bottomnav/widget/BottomNavigationView$OnNavigationItemSelectedListener;

    move-result-object v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/buzzfeed/toolkit/bottomnav/widget/BottomNavigationView$1;->this$0:Lcom/buzzfeed/toolkit/bottomnav/widget/BottomNavigationView;

    # getter for: Lcom/buzzfeed/toolkit/bottomnav/widget/BottomNavigationView;->mListener:Lcom/buzzfeed/toolkit/bottomnav/widget/BottomNavigationView$OnNavigationItemSelectedListener;
    invoke-static {v0}, Lcom/buzzfeed/toolkit/bottomnav/widget/BottomNavigationView;->access$000(Lcom/buzzfeed/toolkit/bottomnav/widget/BottomNavigationView;)Lcom/buzzfeed/toolkit/bottomnav/widget/BottomNavigationView$OnNavigationItemSelectedListener;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/buzzfeed/toolkit/bottomnav/widget/BottomNavigationView$OnNavigationItemSelectedListener;->onNavigationItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    if-nez v0, :cond_16

    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public onMenuModeChange(Landroid/support/v7/view/menu/MenuBuilder;)V
    .registers 2
    .param p1, "menu"    # Landroid/support/v7/view/menu/MenuBuilder;

    .prologue
    .line 69
    return-void
.end method
