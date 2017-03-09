.class Lcom/facebook/share/widget/ShareButton$1;
.super Ljava/lang/Object;
.source "ShareButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/share/widget/ShareButton;->getShareOnClickListener()Landroid/view/View$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/share/widget/ShareButton;


# direct methods
.method constructor <init>(Lcom/facebook/share/widget/ShareButton;)V
    .registers 2

    .prologue
    .line 63
    iput-object p1, p0, Lcom/facebook/share/widget/ShareButton$1;->this$0:Lcom/facebook/share/widget/ShareButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 67
    iget-object v1, p0, Lcom/facebook/share/widget/ShareButton$1;->this$0:Lcom/facebook/share/widget/ShareButton;

    invoke-virtual {v1}, Lcom/facebook/share/widget/ShareButton;->getFragment()Landroid/support/v4/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_28

    .line 68
    new-instance v0, Lcom/facebook/share/widget/ShareDialog;

    iget-object v1, p0, Lcom/facebook/share/widget/ShareButton$1;->this$0:Lcom/facebook/share/widget/ShareButton;

    invoke-virtual {v1}, Lcom/facebook/share/widget/ShareButton;->getFragment()Landroid/support/v4/app/Fragment;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/share/widget/ShareButton$1;->this$0:Lcom/facebook/share/widget/ShareButton;

    invoke-virtual {v2}, Lcom/facebook/share/widget/ShareButton;->getRequestCode()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/facebook/share/widget/ShareDialog;-><init>(Landroid/support/v4/app/Fragment;I)V

    .line 72
    .local v0, "dialog":Lcom/facebook/share/widget/ShareDialog;
    :goto_19
    iget-object v1, p0, Lcom/facebook/share/widget/ShareButton$1;->this$0:Lcom/facebook/share/widget/ShareButton;

    invoke-virtual {v1}, Lcom/facebook/share/widget/ShareButton;->getShareContent()Lcom/facebook/share/model/ShareContent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/share/widget/ShareDialog;->show(Ljava/lang/Object;)V

    .line 73
    iget-object v1, p0, Lcom/facebook/share/widget/ShareButton$1;->this$0:Lcom/facebook/share/widget/ShareButton;

    # invokes: Lcom/facebook/share/widget/ShareButton;->callExternalOnClickListener(Landroid/view/View;)V
    invoke-static {v1, p1}, Lcom/facebook/share/widget/ShareButton;->access$100(Lcom/facebook/share/widget/ShareButton;Landroid/view/View;)V

    .line 74
    return-void

    .line 70
    .end local v0    # "dialog":Lcom/facebook/share/widget/ShareDialog;
    :cond_28
    new-instance v0, Lcom/facebook/share/widget/ShareDialog;

    iget-object v1, p0, Lcom/facebook/share/widget/ShareButton$1;->this$0:Lcom/facebook/share/widget/ShareButton;

    # invokes: Lcom/facebook/share/widget/ShareButton;->getActivity()Landroid/app/Activity;
    invoke-static {v1}, Lcom/facebook/share/widget/ShareButton;->access$000(Lcom/facebook/share/widget/ShareButton;)Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/share/widget/ShareButton$1;->this$0:Lcom/facebook/share/widget/ShareButton;

    invoke-virtual {v2}, Lcom/facebook/share/widget/ShareButton;->getRequestCode()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/facebook/share/widget/ShareDialog;-><init>(Landroid/app/Activity;I)V

    .restart local v0    # "dialog":Lcom/facebook/share/widget/ShareDialog;
    goto :goto_19
.end method
