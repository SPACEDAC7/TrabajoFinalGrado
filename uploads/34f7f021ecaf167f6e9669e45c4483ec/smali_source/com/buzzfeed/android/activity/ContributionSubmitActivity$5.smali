.class Lcom/buzzfeed/android/activity/ContributionSubmitActivity$5;
.super Ljava/lang/Object;
.source "ContributionSubmitActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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
    .line 757
    iput-object p1, p0, Lcom/buzzfeed/android/activity/ContributionSubmitActivity$5;->this$0:Lcom/buzzfeed/android/activity/ContributionSubmitActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 760
    const/4 v0, 0x1

    return v0
.end method
