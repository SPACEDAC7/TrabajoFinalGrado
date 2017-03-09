.class Lcom/buzzfeed/android/ui/dialog/BuzzDialogFragment$FeedNameArrayAdapter;
.super Landroid/widget/ArrayAdapter;
.source "BuzzDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/buzzfeed/android/ui/dialog/BuzzDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FeedNameArrayAdapter"
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
.field mItems:[Ljava/lang/String;

.field final synthetic this$0:Lcom/buzzfeed/android/ui/dialog/BuzzDialogFragment;


# direct methods
.method public constructor <init>(Lcom/buzzfeed/android/ui/dialog/BuzzDialogFragment;Landroid/content/Context;I[Ljava/lang/String;)V
    .registers 5
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "textViewLayoutId"    # I
    .param p4, "items"    # [Ljava/lang/String;

    .prologue
    .line 371
    iput-object p1, p0, Lcom/buzzfeed/android/ui/dialog/BuzzDialogFragment$FeedNameArrayAdapter;->this$0:Lcom/buzzfeed/android/ui/dialog/BuzzDialogFragment;

    .line 372
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 373
    iput-object p4, p0, Lcom/buzzfeed/android/ui/dialog/BuzzDialogFragment$FeedNameArrayAdapter;->mItems:[Ljava/lang/String;

    .line 374
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 10
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v5, 0x2

    .line 379
    if-nez p2, :cond_41

    .line 380
    iget-object v3, p0, Lcom/buzzfeed/android/ui/dialog/BuzzDialogFragment$FeedNameArrayAdapter;->this$0:Lcom/buzzfeed/android/ui/dialog/BuzzDialogFragment;

    invoke-virtual {v3}, Lcom/buzzfeed/android/ui/dialog/BuzzDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 381
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v3, 0x7f0300af

    const/4 v4, 0x0

    invoke-virtual {v1, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 382
    const v3, 0x7f1101d7

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 383
    .local v2, "text":Landroid/widget/TextView;
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setMinLines(I)V

    .line 384
    const/high16 v3, 0x41900000

    invoke-virtual {v2, v5, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 385
    iget-object v3, p0, Lcom/buzzfeed/android/ui/dialog/BuzzDialogFragment$FeedNameArrayAdapter;->mItems:[Ljava/lang/String;

    aget-object v3, v3, p1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 386
    new-instance v0, Lcom/buzzfeed/android/ui/dialog/BuzzDialogFragment$ViewHolderItem;

    invoke-direct {v0}, Lcom/buzzfeed/android/ui/dialog/BuzzDialogFragment$ViewHolderItem;-><init>()V

    .line 387
    .local v0, "holder":Lcom/buzzfeed/android/ui/dialog/BuzzDialogFragment$ViewHolderItem;
    iput-object v2, v0, Lcom/buzzfeed/android/ui/dialog/BuzzDialogFragment$ViewHolderItem;->textViewItem:Landroid/widget/TextView;

    .line 388
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 392
    .end local v1    # "inflater":Landroid/view/LayoutInflater;
    .end local v2    # "text":Landroid/widget/TextView;
    :goto_37
    iget-object v3, v0, Lcom/buzzfeed/android/ui/dialog/BuzzDialogFragment$ViewHolderItem;->textViewItem:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/buzzfeed/android/ui/dialog/BuzzDialogFragment$FeedNameArrayAdapter;->mItems:[Ljava/lang/String;

    aget-object v4, v4, p1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 393
    return-object p2

    .line 390
    .end local v0    # "holder":Lcom/buzzfeed/android/ui/dialog/BuzzDialogFragment$ViewHolderItem;
    :cond_41
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/buzzfeed/android/ui/dialog/BuzzDialogFragment$ViewHolderItem;

    .restart local v0    # "holder":Lcom/buzzfeed/android/ui/dialog/BuzzDialogFragment$ViewHolderItem;
    goto :goto_37
.end method
