.class Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder$1;
.super Ljava/lang/Object;
.source "BuzzFeedAlertDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;

.field final synthetic val$dialog:Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog;


# direct methods
.method constructor <init>(Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog;)V
    .registers 3
    .param p1, "this$0"    # Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;

    .prologue
    .line 294
    iput-object p1, p0, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder$1;->this$0:Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;

    iput-object p2, p0, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder$1;->val$dialog:Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .registers 8
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;

    .prologue
    .line 297
    iget-object v2, p0, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder$1;->val$dialog:Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog;

    invoke-virtual {v2}, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const v3, 0x7f110066

    invoke-virtual {v2, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 298
    .local v1, "parentPanel":Landroid/view/View;
    const v2, 0x7f110064

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 299
    .local v0, "defaultButtonPanel":Landroid/view/View;
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    iget-object v4, p0, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder$1;->this$0:Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;

    # getter for: Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;->access$200(Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b00b9

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 300
    return-void
.end method
