.class Lcom/buzzfeed/android/activity/ContributionSubmitActivity$4;
.super Ljava/lang/Object;
.source "ContributionSubmitActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->buildImageDialog()V
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
    .line 701
    iput-object p1, p0, Lcom/buzzfeed/android/activity/ContributionSubmitActivity$4;->this$0:Lcom/buzzfeed/android/activity/ContributionSubmitActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 7
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 704
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    packed-switch p3, :pswitch_data_22

    .line 712
    :goto_3
    iget-object v0, p0, Lcom/buzzfeed/android/activity/ContributionSubmitActivity$4;->this$0:Lcom/buzzfeed/android/activity/ContributionSubmitActivity;

    # getter for: Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->mCurrentAlertDialog:Landroid/support/v7/app/AlertDialog;
    invoke-static {v0}, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->access$1300(Lcom/buzzfeed/android/activity/ContributionSubmitActivity;)Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 713
    iget-object v0, p0, Lcom/buzzfeed/android/activity/ContributionSubmitActivity$4;->this$0:Lcom/buzzfeed/android/activity/ContributionSubmitActivity;

    # getter for: Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->mCurrentAlertDialog:Landroid/support/v7/app/AlertDialog;
    invoke-static {v0}, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->access$1300(Lcom/buzzfeed/android/activity/ContributionSubmitActivity;)Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->dismiss()V

    .line 715
    :cond_14
    return-void

    .line 706
    :pswitch_15
    iget-object v0, p0, Lcom/buzzfeed/android/activity/ContributionSubmitActivity$4;->this$0:Lcom/buzzfeed/android/activity/ContributionSubmitActivity;

    # invokes: Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->launchGallery()V
    invoke-static {v0}, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->access$1100(Lcom/buzzfeed/android/activity/ContributionSubmitActivity;)V

    goto :goto_3

    .line 709
    :pswitch_1b
    iget-object v0, p0, Lcom/buzzfeed/android/activity/ContributionSubmitActivity$4;->this$0:Lcom/buzzfeed/android/activity/ContributionSubmitActivity;

    # invokes: Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->launchCamera()V
    invoke-static {v0}, Lcom/buzzfeed/android/activity/ContributionSubmitActivity;->access$1200(Lcom/buzzfeed/android/activity/ContributionSubmitActivity;)V

    goto :goto_3

    .line 704
    nop

    :pswitch_data_22
    .packed-switch 0x0
        :pswitch_15
        :pswitch_1b
    .end packed-switch
.end method
