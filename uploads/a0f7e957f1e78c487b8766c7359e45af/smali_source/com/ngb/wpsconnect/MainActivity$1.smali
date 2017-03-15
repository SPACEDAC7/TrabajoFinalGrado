.class Lcom/ngb/wpsconnect/MainActivity$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ngb/wpsconnect/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ngb/wpsconnect/MainActivity;


# direct methods
.method constructor <init>(Lcom/ngb/wpsconnect/MainActivity;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ngb/wpsconnect/MainActivity$1;->this$0:Lcom/ngb/wpsconnect/MainActivity;

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 10
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
    .line 88
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/ngb/wpsconnect/MainActivity$1;->this$0:Lcom/ngb/wpsconnect/MainActivity;

    iget-object v1, v1, Lcom/ngb/wpsconnect/MainActivity;->list:Landroid/widget/ListView;

    invoke-virtual {v1, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ngb/wpsconnect/Network;

    .line 90
    .local v0, "net":Lcom/ngb/wpsconnect/Network;
    iget-object v1, p0, Lcom/ngb/wpsconnect/MainActivity$1;->this$0:Lcom/ngb/wpsconnect/MainActivity;

    iget v1, v1, Lcom/ngb/wpsconnect/MainActivity;->lastNet:I

    if-eq v1, p3, :cond_1e

    .line 92
    iget-object v1, p0, Lcom/ngb/wpsconnect/MainActivity$1;->this$0:Lcom/ngb/wpsconnect/MainActivity;

    iget-object v1, v1, Lcom/ngb/wpsconnect/MainActivity;->intent:Landroid/content/Intent;

    const-string v2, "List_Position"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 93
    iget-object v1, p0, Lcom/ngb/wpsconnect/MainActivity$1;->this$0:Lcom/ngb/wpsconnect/MainActivity;

    iput p3, v1, Lcom/ngb/wpsconnect/MainActivity;->lastNet:I

    .line 96
    :cond_1e
    iget-object v1, p0, Lcom/ngb/wpsconnect/MainActivity$1;->this$0:Lcom/ngb/wpsconnect/MainActivity;

    # invokes: Lcom/ngb/wpsconnect/MainActivity;->showNetworkOptionsDialog(Lcom/ngb/wpsconnect/Network;)V
    invoke-static {v1, v0}, Lcom/ngb/wpsconnect/MainActivity;->access$3(Lcom/ngb/wpsconnect/MainActivity;Lcom/ngb/wpsconnect/Network;)V

    .line 98
    return-void
.end method
