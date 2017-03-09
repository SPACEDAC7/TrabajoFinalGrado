.class public Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog;
.super Landroid/support/v7/app/AlertDialog;
.source "BuzzFeedAlertDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$Builder;
    }
.end annotation


# instance fields
.field private mDialogAlertView:Landroid/view/View;

.field private mIsBookmarkWarningDialog:Z


# direct methods
.method protected constructor <init>(Landroid/content/Context;I)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "themeResId"    # I

    .prologue
    const/4 v3, 0x0

    .line 31
    new-instance v1, Landroid/view/ContextThemeWrapper;

    const v2, 0x7f0d00a5

    invoke-direct {v1, p1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {p0, v1, p2}, Landroid/support/v7/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 28
    iput-boolean v3, p0, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog;->mIsBookmarkWarningDialog:Z

    .line 32
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 33
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v1, 0x7f030063

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog;->mDialogAlertView:Landroid/view/View;

    .line 34
    iget-object v1, p0, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog;->mDialogAlertView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog;->setView(Landroid/view/View;)V

    .line 35
    invoke-virtual {p0, v3}, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 36
    return-void
.end method

.method static synthetic access$000(Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog;)Z
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog;

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog;->mIsBookmarkWarningDialog:Z

    return v0
.end method

.method private setSingleChoiceButtons(Landroid/widget/ArrayAdapter;Landroid/widget/AdapterView$OnItemClickListener;I)V
    .registers 8
    .param p1, "arrayAdapter"    # Landroid/widget/ArrayAdapter;
    .param p2, "onItemClickListener"    # Landroid/widget/AdapterView$OnItemClickListener;
    .param p3, "checkedItem"    # I

    .prologue
    const/4 v3, 0x1

    .line 101
    iget-object v1, p0, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog;->mDialogAlertView:Landroid/view/View;

    const v2, 0x7f110154

    invoke-static {v1, v2}, Lcom/buzzfeed/toolkit/util/UIUtil;->findView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 102
    .local v0, "listView":Landroid/widget/ListView;
    iget-object v1, p0, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog;->mDialogAlertView:Landroid/view/View;

    const v2, 0x7f110153

    invoke-static {v1, v2}, Lcom/buzzfeed/toolkit/util/UIUtil;->findView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 103
    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 104
    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 105
    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 106
    invoke-virtual {v0, p2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 107
    invoke-virtual {v0, p3, v3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 108
    return-void
.end method


# virtual methods
.method public setIsBookmarkWarningDialog(Z)V
    .registers 2
    .param p1, "isWarningBookmarkDialog"    # Z

    .prologue
    .line 120
    iput-boolean p1, p0, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog;->mIsBookmarkWarningDialog:Z

    .line 121
    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .registers 5
    .param p1, "message"    # Ljava/lang/CharSequence;

    .prologue
    .line 51
    iget-object v1, p0, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog;->mDialogAlertView:Landroid/view/View;

    const v2, 0x7f1100cc

    invoke-static {v1, v2}, Lcom/buzzfeed/toolkit/util/UIUtil;->findView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 52
    .local v0, "messageTextView":Landroid/widget/TextView;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 53
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    return-void
.end method

.method public setProgressBarVisibility(Z)V
    .registers 4
    .param p1, "progressContentVisible"    # Z

    .prologue
    .line 114
    if-eqz p1, :cond_f

    .line 115
    iget-object v0, p0, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog;->mDialogAlertView:Landroid/view/View;

    const v1, 0x7f1100c9

    invoke-static {v0, v1}, Lcom/buzzfeed/toolkit/util/UIUtil;->findView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 117
    :cond_f
    return-void
.end method

.method public setSingleChoiceButtons([Ljava/lang/Object;Landroid/widget/AdapterView$OnItemClickListener;I)V
    .registers 7
    .param p1, "items"    # [Ljava/lang/Object;
    .param p2, "onItemClickListener"    # Landroid/widget/AdapterView$OnItemClickListener;
    .param p3, "checkedItem"    # I

    .prologue
    .line 96
    new-instance v0, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f030065

    invoke-direct {v0, v1, v2, p1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 97
    .local v0, "arrayAdapter":Landroid/widget/ArrayAdapter;
    invoke-direct {p0, v0, p2, p3}, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog;->setSingleChoiceButtons(Landroid/widget/ArrayAdapter;Landroid/widget/AdapterView$OnItemClickListener;I)V

    .line 98
    return-void
.end method

.method public setSingleChoiceButtons([Ljava/lang/String;Landroid/widget/AdapterView$OnItemClickListener;I)V
    .registers 7
    .param p1, "items"    # [Ljava/lang/String;
    .param p2, "onItemClickListener"    # Landroid/widget/AdapterView$OnItemClickListener;
    .param p3, "checkedItem"    # I

    .prologue
    .line 88
    new-instance v0, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f030065

    invoke-direct {v0, v1, v2, p1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 89
    .local v0, "arrayAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    invoke-direct {p0, v0, p2, p3}, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog;->setSingleChoiceButtons(Landroid/widget/ArrayAdapter;Landroid/widget/AdapterView$OnItemClickListener;I)V

    .line 90
    return-void
.end method

.method public setStackedButtons([Ljava/lang/String;Landroid/widget/AdapterView$OnItemClickListener;)V
    .registers 8
    .param p1, "items"    # [Ljava/lang/String;
    .param p2, "onItemClickListener"    # Landroid/widget/AdapterView$OnItemClickListener;

    .prologue
    const/4 v4, 0x1

    .line 60
    iget-object v2, p0, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog;->mDialogAlertView:Landroid/view/View;

    const v3, 0x7f1100cf

    invoke-static {v2, v3}, Lcom/buzzfeed/toolkit/util/UIUtil;->findView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 61
    .local v1, "listView":Landroid/widget/ListView;
    new-instance v0, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$1;

    invoke-virtual {p0}, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f030067

    invoke-direct {v0, p0, v2, v3, p1}, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog$1;-><init>(Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog;Landroid/content/Context;I[Ljava/lang/String;)V

    .line 78
    .local v0, "arrayAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 79
    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 80
    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 81
    invoke-virtual {v1, p2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 82
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .registers 4
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/buzzfeed/android/ui/dialog/BuzzFeedAlertDialog;->mDialogAlertView:Landroid/view/View;

    const v1, 0x7f1100cb

    invoke-static {v0, v1}, Lcom/buzzfeed/toolkit/util/UIUtil;->findView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    return-void
.end method
