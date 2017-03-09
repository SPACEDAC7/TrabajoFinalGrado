.class Lcom/buzzfeed/showx/showpage/ui/holder/SubscribeCard$1;
.super Ljava/lang/Object;
.source "SubscribeCard.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/buzzfeed/showx/showpage/ui/holder/SubscribeCard;->initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/buzzfeed/showx/showpage/ui/holder/SubscribeCard;

.field final synthetic val$listener:Lcom/buzzfeed/showx/showpage/listener/ShowPageBuffetEventListener;


# direct methods
.method constructor <init>(Lcom/buzzfeed/showx/showpage/ui/holder/SubscribeCard;Lcom/buzzfeed/showx/showpage/listener/ShowPageBuffetEventListener;)V
    .registers 3
    .param p1, "this$0"    # Lcom/buzzfeed/showx/showpage/ui/holder/SubscribeCard;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/buzzfeed/showx/showpage/ui/holder/SubscribeCard$1;->this$0:Lcom/buzzfeed/showx/showpage/ui/holder/SubscribeCard;

    iput-object p2, p0, Lcom/buzzfeed/showx/showpage/ui/holder/SubscribeCard$1;->val$listener:Lcom/buzzfeed/showx/showpage/listener/ShowPageBuffetEventListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/buzzfeed/showx/showpage/ui/holder/SubscribeCard$1;->val$listener:Lcom/buzzfeed/showx/showpage/listener/ShowPageBuffetEventListener;

    invoke-interface {v0}, Lcom/buzzfeed/showx/showpage/listener/ShowPageBuffetEventListener;->onSubscribeButtonClicked()V

    .line 56
    iget-object v0, p0, Lcom/buzzfeed/showx/showpage/ui/holder/SubscribeCard$1;->this$0:Lcom/buzzfeed/showx/showpage/ui/holder/SubscribeCard;

    iget-object v1, p0, Lcom/buzzfeed/showx/showpage/ui/holder/SubscribeCard$1;->val$listener:Lcom/buzzfeed/showx/showpage/listener/ShowPageBuffetEventListener;

    invoke-interface {v1}, Lcom/buzzfeed/showx/showpage/listener/ShowPageBuffetEventListener;->isSubscribedToShow()Z

    move-result v1

    # invokes: Lcom/buzzfeed/showx/showpage/ui/holder/SubscribeCard;->updateSubscribeModuleState(Z)V
    invoke-static {v0, v1}, Lcom/buzzfeed/showx/showpage/ui/holder/SubscribeCard;->access$000(Lcom/buzzfeed/showx/showpage/ui/holder/SubscribeCard;Z)V

    .line 57
    return-void
.end method
