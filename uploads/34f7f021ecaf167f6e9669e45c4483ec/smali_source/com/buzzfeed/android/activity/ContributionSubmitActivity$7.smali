.class Lcom/buzzfeed/android/activity/ContributionSubmitActivity$7;
.super Lcom/buzzfeed/toolkit/util/AnimationListener;
.source "ContributionSubmitActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->setupOverlay()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/buzzfeed/android/activity/ContributionSubmitActivity;


# direct methods
.method constructor <init>(Lcom/buzzfeed/android/activity/ContributionSubmitActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/buzzfeed/android/activity/ContributionSubmitActivity;

    .prologue
    .line 773
    iput-object p1, p0, Lcom/buzzfeed/android/activity/ContributionSubmitActivity$7;->this$0:Lcom/buzzfeed/android/activity/ContributionSubmitActivity;

    invoke-direct {p0}, Lcom/buzzfeed/toolkit/util/AnimationListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 4
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 776
    iget-object v0, p0, Lcom/buzzfeed/android/activity/ContributionSubmitActivity$7;->this$0:Lcom/buzzfeed/android/activity/ContributionSubmitActivity;

    # getter for: Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->overlay:Landroid/view/View;
    invoke-static {v0}, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->access$1400(Lcom/buzzfeed/android/activity/ContributionSubmitActivity;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 777
    return-void
.end method
