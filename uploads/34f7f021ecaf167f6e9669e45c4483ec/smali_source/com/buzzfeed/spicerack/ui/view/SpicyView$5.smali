.class Lcom/buzzfeed/spicerack/ui/view/SpicyView$5;
.super Ljava/lang/Object;
.source "SpicyView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/buzzfeed/spicerack/ui/view/SpicyView;->populatePost(Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/buzzfeed/spicerack/ui/view/SpicyView;

.field final synthetic val$spiceItem:Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem;


# direct methods
.method constructor <init>(Lcom/buzzfeed/spicerack/ui/view/SpicyView;Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem;)V
    .registers 3
    .param p1, "this$0"    # Lcom/buzzfeed/spicerack/ui/view/SpicyView;

    .prologue
    .line 399
    iput-object p1, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyView$5;->this$0:Lcom/buzzfeed/spicerack/ui/view/SpicyView;

    iput-object p2, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyView$5;->val$spiceItem:Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 402
    iget-object v0, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyView$5;->this$0:Lcom/buzzfeed/spicerack/ui/view/SpicyView;

    invoke-virtual {v0}, Lcom/buzzfeed/spicerack/ui/view/SpicyView;->isFallingBack()Z

    move-result v0

    if-nez v0, :cond_d

    .line 403
    iget-object v0, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyView$5;->this$0:Lcom/buzzfeed/spicerack/ui/view/SpicyView;

    invoke-virtual {v0}, Lcom/buzzfeed/spicerack/ui/view/SpicyView;->pageLoaded()V

    .line 406
    :cond_d
    iget-object v0, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyView$5;->this$0:Lcom/buzzfeed/spicerack/ui/view/SpicyView;

    iget-object v0, v0, Lcom/buzzfeed/spicerack/ui/view/SpicyView;->mRecyclerView:Lcom/buzzfeed/spicerack/ui/view/SpicyRecyclerView;

    invoke-virtual {v0}, Lcom/buzzfeed/spicerack/ui/view/SpicyRecyclerView;->getHeaderViewHolder()Lcom/buzzfeed/spicerack/ui/holder/HeaderSpiceViewHolder;

    move-result-object v0

    if-eqz v0, :cond_24

    .line 407
    iget-object v0, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyView$5;->this$0:Lcom/buzzfeed/spicerack/ui/view/SpicyView;

    iget-object v0, v0, Lcom/buzzfeed/spicerack/ui/view/SpicyView;->mRecyclerView:Lcom/buzzfeed/spicerack/ui/view/SpicyRecyclerView;

    invoke-virtual {v0}, Lcom/buzzfeed/spicerack/ui/view/SpicyRecyclerView;->getHeaderViewHolder()Lcom/buzzfeed/spicerack/ui/holder/HeaderSpiceViewHolder;

    move-result-object v0

    iget-object v1, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyView$5;->val$spiceItem:Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem;

    invoke-virtual {v0, v1}, Lcom/buzzfeed/spicerack/ui/holder/HeaderSpiceViewHolder;->populatePost(Lcom/buzzfeed/toolkit/content/PostContent;)V

    .line 409
    :cond_24
    return-void
.end method
