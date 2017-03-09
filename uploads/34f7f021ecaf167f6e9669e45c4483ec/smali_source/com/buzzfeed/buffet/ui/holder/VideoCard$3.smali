.class Lcom/buzzfeed/buffet/ui/holder/VideoCard$3;
.super Ljava/lang/Object;
.source "VideoCard.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/buzzfeed/buffet/ui/holder/VideoCard;->setupClickListeners(Lcom/buzzfeed/toolkit/content/FlowItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/buzzfeed/buffet/ui/holder/VideoCard;


# direct methods
.method constructor <init>(Lcom/buzzfeed/buffet/ui/holder/VideoCard;)V
    .registers 2
    .param p1, "this$0"    # Lcom/buzzfeed/buffet/ui/holder/VideoCard;

    .prologue
    .line 154
    iput-object p1, p0, Lcom/buzzfeed/buffet/ui/holder/VideoCard$3;->this$0:Lcom/buzzfeed/buffet/ui/holder/VideoCard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 157
    iget-object v0, p0, Lcom/buzzfeed/buffet/ui/holder/VideoCard$3;->this$0:Lcom/buzzfeed/buffet/ui/holder/VideoCard;

    invoke-virtual {v0}, Lcom/buzzfeed/buffet/ui/holder/VideoCard;->getBuffetEventListener()Lcom/buzzfeed/buffet/ui/listener/BuffetEventListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 158
    iget-object v0, p0, Lcom/buzzfeed/buffet/ui/holder/VideoCard$3;->this$0:Lcom/buzzfeed/buffet/ui/holder/VideoCard;

    invoke-virtual {v0}, Lcom/buzzfeed/buffet/ui/holder/VideoCard;->getBuffetEventListener()Lcom/buzzfeed/buffet/ui/listener/BuffetEventListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/buzzfeed/buffet/ui/listener/BuffetEventListener;->onVideoReloadClicked()V

    .line 160
    :cond_11
    return-void
.end method
