.class public Lcom/buzzfeed/spicerack/ui/holder/LoadingSpiceViewHolder;
.super Lcom/buzzfeed/spicerack/ui/holder/BaseViewHolder;
.source "LoadingSpiceViewHolder.java"


# instance fields
.field private mProgressBar:Landroid/widget/ProgressBar;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/buzzfeed/spicerack/ui/holder/BaseViewHolder;-><init>(Landroid/view/View;)V

    .line 16
    sget v0, Lcom/buzzfeed/nativecontent/R$id;->loading_view:I

    invoke-static {p1, v0}, Lcom/buzzfeed/toolkit/util/UIUtil;->findView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/buzzfeed/spicerack/ui/holder/LoadingSpiceViewHolder;->mProgressBar:Landroid/widget/ProgressBar;

    .line 17
    return-void
.end method


# virtual methods
.method public hide()V
    .registers 3

    .prologue
    .line 20
    iget-object v0, p0, Lcom/buzzfeed/spicerack/ui/holder/LoadingSpiceViewHolder;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 21
    return-void
.end method
