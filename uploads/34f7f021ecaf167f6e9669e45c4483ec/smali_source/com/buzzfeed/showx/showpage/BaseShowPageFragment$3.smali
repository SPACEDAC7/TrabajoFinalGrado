.class Lcom/buzzfeed/showx/showpage/BaseShowPageFragment$3;
.super Ljava/lang/Object;
.source "BaseShowPageFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->configureFab()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;


# direct methods
.method constructor <init>(Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;)V
    .registers 2
    .param p1, "this$0"    # Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;

    .prologue
    .line 409
    iput-object p1, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment$3;->this$0:Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 412
    iget-object v1, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment$3;->this$0:Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;

    iget-object v1, v1, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->mShowPagePresenter:Lcom/buzzfeed/showx/showpage/ShowPagePresenter;

    if-nez v1, :cond_7

    .line 416
    :goto_6
    return-void

    .line 414
    :cond_7
    iget-object v1, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment$3;->this$0:Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;

    # getter for: Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->mShowTitle:Ljava/lang/String;
    invoke-static {v1}, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->access$400(Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2b

    iget-object v1, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment$3;->this$0:Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;

    # getter for: Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->mShowTitle:Ljava/lang/String;
    invoke-static {v1}, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->access$400(Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;)Ljava/lang/String;

    move-result-object v0

    .line 415
    .local v0, "shareTitle":Ljava/lang/String;
    :goto_19
    iget-object v1, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment$3;->this$0:Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;

    iget-object v1, v1, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->mShowPagePresenter:Lcom/buzzfeed/showx/showpage/ShowPagePresenter;

    iget-object v2, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment$3;->this$0:Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;

    invoke-virtual {v2}, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment$3;->this$0:Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;

    iget-object v3, v3, Lcom/buzzfeed/showx/showpage/BaseShowPageFragment;->mShowId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v0}, Lcom/buzzfeed/showx/showpage/ShowPagePresenter;->onShareShowButtonClicked(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 414
    .end local v0    # "shareTitle":Ljava/lang/String;
    :cond_2b
    const-string v0, ""

    goto :goto_19
.end method
