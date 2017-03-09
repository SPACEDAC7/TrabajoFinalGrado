.class Lcom/buzzfeed/android/activity/PagerActivity$2;
.super Ljava/lang/Object;
.source "PagerActivity.java"

# interfaces
.implements Landroid/support/v4/view/MenuItemCompat$OnActionExpandListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/buzzfeed/android/activity/PagerActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/buzzfeed/android/activity/PagerActivity;


# direct methods
.method constructor <init>(Lcom/buzzfeed/android/activity/PagerActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/buzzfeed/android/activity/PagerActivity;

    .prologue
    .line 323
    iput-object p1, p0, Lcom/buzzfeed/android/activity/PagerActivity$2;->this$0:Lcom/buzzfeed/android/activity/PagerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemActionCollapse(Landroid/view/MenuItem;)Z
    .registers 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 332
    iget-object v0, p0, Lcom/buzzfeed/android/activity/PagerActivity$2;->this$0:Lcom/buzzfeed/android/activity/PagerActivity;

    # getter for: Lcom/buzzfeed/android/activity/PagerActivity;->mTabLayout:Landroid/support/design/widget/TabLayout;
    invoke-static {v0}, Lcom/buzzfeed/android/activity/PagerActivity;->access$200(Lcom/buzzfeed/android/activity/PagerActivity;)Landroid/support/design/widget/TabLayout;

    move-result-object v1

    iget-object v0, p0, Lcom/buzzfeed/android/activity/PagerActivity$2;->this$0:Lcom/buzzfeed/android/activity/PagerActivity;

    # invokes: Lcom/buzzfeed/android/activity/PagerActivity;->shouldShowTabs()Z
    invoke-static {v0}, Lcom/buzzfeed/android/activity/PagerActivity;->access$300(Lcom/buzzfeed/android/activity/PagerActivity;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x0

    :goto_f
    invoke-virtual {v1, v0}, Landroid/support/design/widget/TabLayout;->setVisibility(I)V

    .line 333
    const/4 v0, 0x1

    return v0

    .line 332
    :cond_14
    const/16 v0, 0x8

    goto :goto_f
.end method

.method public onMenuItemActionExpand(Landroid/view/MenuItem;)Z
    .registers 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 326
    iget-object v0, p0, Lcom/buzzfeed/android/activity/PagerActivity$2;->this$0:Lcom/buzzfeed/android/activity/PagerActivity;

    # getter for: Lcom/buzzfeed/android/activity/PagerActivity;->mTabLayout:Landroid/support/design/widget/TabLayout;
    invoke-static {v0}, Lcom/buzzfeed/android/activity/PagerActivity;->access$200(Lcom/buzzfeed/android/activity/PagerActivity;)Landroid/support/design/widget/TabLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout;->setVisibility(I)V

    .line 327
    const/4 v0, 0x1

    return v0
.end method
