.class Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$1;
.super Landroid/widget/ArrayAdapter;
.source "BuzzFeedAlertDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog;->setStackedButtons([Ljava/lang/String;Landroid/widget/AdapterView$OnItemClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog;


# direct methods
.method constructor <init>(Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog;Landroid/content/Context;I[Ljava/lang/String;)V
    .registers 5
    .param p1, "this$0"    # Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog;
    .param p2, "x0"    # Landroid/content/Context;
    .param p3, "x1"    # I
    .param p4, "x2"    # [Ljava/lang/String;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$1;->this$0:Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog;

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 8
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 65
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 66
    .local v0, "rootView":Landroid/view/View;
    iget-object v2, p0, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$1;->this$0:Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog;

    # getter for: Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog;->mIsBookmarkWarningDialog:Z
    invoke-static {v2}, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog;->access$000(Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog;)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 68
    const v2, 0x7f110155

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 69
    .local v1, "textView":Landroid/widget/TextView;
    const/4 v2, 0x1

    if-ne p1, v2, :cond_27

    .line 70
    invoke-virtual {p0}, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$1;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f100025

    invoke-static {v2, v3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 75
    .end local v1    # "textView":Landroid/widget/TextView;
    :cond_26
    :goto_26
    return-object v0

    .line 72
    .restart local v1    # "textView":Landroid/widget/TextView;
    :cond_27
    invoke-virtual {p0}, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$1;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f100015

    invoke-static {v2, v3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_26
.end method
