.class Lcom/buzzfeed/android/activity/PagerActivity$3;
.super Ljava/lang/Object;
.source "PagerActivity.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/buzzfeed/android/activity/PagerActivity;->setupViewPager()V
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
    .line 372
    iput-object p1, p0, Lcom/buzzfeed/android/activity/PagerActivity$3;->this$0:Lcom/buzzfeed/android/activity/PagerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .registers 2
    .param p1, "state"    # I

    .prologue
    .line 387
    return-void
.end method

.method public onPageScrolled(IFI)V
    .registers 4
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 376
    return-void
.end method

.method public onPageSelected(I)V
    .registers 4
    .param p1, "position"    # I

    .prologue
    const/4 v1, 0x1

    .line 380
    iget-object v0, p0, Lcom/buzzfeed/android/activity/PagerActivity$3;->this$0:Lcom/buzzfeed/android/activity/PagerActivity;

    # setter for: Lcom/buzzfeed/android/activity/PagerActivity;->mSelectedViewPagerPosition:I
    invoke-static {v0, p1}, Lcom/buzzfeed/android/activity/PagerActivity;->access$402(Lcom/buzzfeed/android/activity/PagerActivity;I)I

    .line 381
    iget-object v0, p0, Lcom/buzzfeed/android/activity/PagerActivity$3;->this$0:Lcom/buzzfeed/android/activity/PagerActivity;

    # getter for: Lcom/buzzfeed/android/activity/PagerActivity;->mAppBarLayout:Landroid/support/design/widget/AppBarLayout;
    invoke-static {v0}, Lcom/buzzfeed/android/activity/PagerActivity;->access$500(Lcom/buzzfeed/android/activity/PagerActivity;)Landroid/support/design/widget/AppBarLayout;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/support/design/widget/AppBarLayout;->setExpanded(ZZ)V

    .line 382
    return-void
.end method
