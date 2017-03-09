.class Lcom/buzzfeed/android/activity/ContributionSubmitActivity$3;
.super Ljava/lang/Object;
.source "ContributionSubmitActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->showResults()V
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
    .line 508
    iput-object p1, p0, Lcom/buzzfeed/android/activity/ContributionSubmitActivity$3;->this$0:Lcom/buzzfeed/android/activity/ContributionSubmitActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 15

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 510
    iget-object v0, p0, Lcom/buzzfeed/android/activity/ContributionSubmitActivity$3;->this$0:Lcom/buzzfeed/android/activity/ContributionSubmitActivity;

    # getter for: Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->responseTextView:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->access$000(Lcom/buzzfeed/android/activity/ContributionSubmitActivity;)Landroid/widget/EditText;

    move-result-object v8

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    move v6, v5

    move v7, v4

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/widget/EditText;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 511
    iget-object v0, p0, Lcom/buzzfeed/android/activity/ContributionSubmitActivity$3;->this$0:Lcom/buzzfeed/android/activity/ContributionSubmitActivity;

    # getter for: Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->responseTextView:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->access$000(Lcom/buzzfeed/android/activity/ContributionSubmitActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    const/4 v10, 0x1

    move v11, v5

    move v12, v5

    move v13, v4

    invoke-static/range {v6 .. v13}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 512
    return-void
.end method
