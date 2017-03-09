.class Lcom/buzzfeed/android/activity/ContributionSubmitActivity$1;
.super Ljava/lang/Object;
.source "ContributionSubmitActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->onPostResume()V
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
    .line 204
    iput-object p1, p0, Lcom/buzzfeed/android/activity/ContributionSubmitActivity$1;->this$0:Lcom/buzzfeed/android/activity/ContributionSubmitActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 207
    iget-object v1, p0, Lcom/buzzfeed/android/activity/ContributionSubmitActivity$1;->this$0:Lcom/buzzfeed/android/activity/ContributionSubmitActivity;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 208
    .local v0, "keyboard":Landroid/view/inputmethod/InputMethodManager;
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    .line 209
    return-void
.end method
