.class Lcom/buzzfeed/spicerack/ui/view/SpicyView$4$1;
.super Ljava/lang/Object;
.source "SpicyView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/buzzfeed/spicerack/ui/view/SpicyView$4;->onException(Ljava/lang/Exception;Ljava/lang/String;Lcom/bumptech/glide/request/target/Target;Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/buzzfeed/spicerack/ui/view/SpicyView$4;


# direct methods
.method constructor <init>(Lcom/buzzfeed/spicerack/ui/view/SpicyView$4;)V
    .registers 2
    .param p1, "this$1"    # Lcom/buzzfeed/spicerack/ui/view/SpicyView$4;

    .prologue
    .line 335
    iput-object p1, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyView$4$1;->this$1:Lcom/buzzfeed/spicerack/ui/view/SpicyView$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 338
    iget-object v1, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyView$4$1;->this$1:Lcom/buzzfeed/spicerack/ui/view/SpicyView$4;

    iget-object v1, v1, Lcom/buzzfeed/spicerack/ui/view/SpicyView$4;->this$0:Lcom/buzzfeed/spicerack/ui/view/SpicyView;

    iget-object v1, v1, Lcom/buzzfeed/spicerack/ui/view/SpicyView;->mRecyclerView:Lcom/buzzfeed/spicerack/ui/view/SpicyRecyclerView;

    if-nez v1, :cond_9

    .line 350
    :cond_8
    :goto_8
    return-void

    .line 341
    :cond_9
    invoke-static {}, Lcom/buzzfeed/toolkit/util/VersionUtil;->hasLollipop()Z

    move-result v1

    if-eqz v1, :cond_24

    iget-object v1, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyView$4$1;->this$1:Lcom/buzzfeed/spicerack/ui/view/SpicyView$4;

    iget-object v1, v1, Lcom/buzzfeed/spicerack/ui/view/SpicyView$4;->this$0:Lcom/buzzfeed/spicerack/ui/view/SpicyView;

    # getter for: Lcom/buzzfeed/spicerack/ui/view/SpicyView;->mSpicyTransitionStartListener:Lcom/buzzfeed/spicerack/ui/protocol/SpicyTransitionStartListener;
    invoke-static {v1}, Lcom/buzzfeed/spicerack/ui/view/SpicyView;->access$300(Lcom/buzzfeed/spicerack/ui/view/SpicyView;)Lcom/buzzfeed/spicerack/ui/protocol/SpicyTransitionStartListener;

    move-result-object v1

    if-eqz v1, :cond_24

    .line 342
    iget-object v1, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyView$4$1;->this$1:Lcom/buzzfeed/spicerack/ui/view/SpicyView$4;

    iget-object v1, v1, Lcom/buzzfeed/spicerack/ui/view/SpicyView$4;->this$0:Lcom/buzzfeed/spicerack/ui/view/SpicyView;

    # getter for: Lcom/buzzfeed/spicerack/ui/view/SpicyView;->mSpicyTransitionStartListener:Lcom/buzzfeed/spicerack/ui/protocol/SpicyTransitionStartListener;
    invoke-static {v1}, Lcom/buzzfeed/spicerack/ui/view/SpicyView;->access$300(Lcom/buzzfeed/spicerack/ui/view/SpicyView;)Lcom/buzzfeed/spicerack/ui/protocol/SpicyTransitionStartListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/buzzfeed/spicerack/ui/protocol/SpicyTransitionStartListener;->start()Z

    .line 345
    :cond_24
    iget-object v1, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyView$4$1;->this$1:Lcom/buzzfeed/spicerack/ui/view/SpicyView$4;

    iget-object v1, v1, Lcom/buzzfeed/spicerack/ui/view/SpicyView$4;->this$0:Lcom/buzzfeed/spicerack/ui/view/SpicyView;

    invoke-virtual {v1}, Lcom/buzzfeed/spicerack/ui/view/SpicyView;->dismissLoading()V

    .line 346
    iget-object v1, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyView$4$1;->this$1:Lcom/buzzfeed/spicerack/ui/view/SpicyView$4;

    iget-object v1, v1, Lcom/buzzfeed/spicerack/ui/view/SpicyView$4;->this$0:Lcom/buzzfeed/spicerack/ui/view/SpicyView;

    iget-object v1, v1, Lcom/buzzfeed/spicerack/ui/view/SpicyView;->mRecyclerView:Lcom/buzzfeed/spicerack/ui/view/SpicyRecyclerView;

    invoke-virtual {v1}, Lcom/buzzfeed/spicerack/ui/view/SpicyRecyclerView;->getHeaderViewHolder()Lcom/buzzfeed/spicerack/ui/holder/HeaderSpiceViewHolder;

    move-result-object v0

    .line 347
    .local v0, "header":Lcom/buzzfeed/spicerack/ui/holder/HeaderSpiceViewHolder;
    if-eqz v0, :cond_8

    .line 348
    invoke-virtual {v0}, Lcom/buzzfeed/spicerack/ui/holder/HeaderSpiceViewHolder;->animateIn()I

    goto :goto_8
.end method
