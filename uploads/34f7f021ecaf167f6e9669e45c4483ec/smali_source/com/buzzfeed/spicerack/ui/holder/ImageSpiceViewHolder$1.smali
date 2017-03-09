.class Lcom/buzzfeed/spicerack/ui/holder/ImageSpiceViewHolder$1;
.super Ljava/lang/Object;
.source "ImageSpiceViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/buzzfeed/spicerack/ui/holder/ImageSpiceViewHolder;->populateFrom(Lcom/buzzfeed/toolkit/content/Content;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/buzzfeed/spicerack/ui/holder/ImageSpiceViewHolder;

.field final synthetic val$spice:Lcom/buzzfeed/spicerack/data/model/subbuzz/ImageSpice;


# direct methods
.method constructor <init>(Lcom/buzzfeed/spicerack/ui/holder/ImageSpiceViewHolder;Lcom/buzzfeed/spicerack/data/model/subbuzz/ImageSpice;)V
    .registers 3
    .param p1, "this$0"    # Lcom/buzzfeed/spicerack/ui/holder/ImageSpiceViewHolder;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/buzzfeed/spicerack/ui/holder/ImageSpiceViewHolder$1;->this$0:Lcom/buzzfeed/spicerack/ui/holder/ImageSpiceViewHolder;

    iput-object p2, p0, Lcom/buzzfeed/spicerack/ui/holder/ImageSpiceViewHolder$1;->val$spice:Lcom/buzzfeed/spicerack/data/model/subbuzz/ImageSpice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/buzzfeed/spicerack/ui/holder/ImageSpiceViewHolder$1;->this$0:Lcom/buzzfeed/spicerack/ui/holder/ImageSpiceViewHolder;

    invoke-virtual {v0}, Lcom/buzzfeed/spicerack/ui/holder/ImageSpiceViewHolder;->getSpicyEventListener()Lcom/buzzfeed/spicerack/ui/protocol/SpicyEventListener;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 48
    iget-object v0, p0, Lcom/buzzfeed/spicerack/ui/holder/ImageSpiceViewHolder$1;->this$0:Lcom/buzzfeed/spicerack/ui/holder/ImageSpiceViewHolder;

    invoke-virtual {v0}, Lcom/buzzfeed/spicerack/ui/holder/ImageSpiceViewHolder;->getSpicyEventListener()Lcom/buzzfeed/spicerack/ui/protocol/SpicyEventListener;

    move-result-object v0

    iget-object v1, p0, Lcom/buzzfeed/spicerack/ui/holder/ImageSpiceViewHolder$1;->val$spice:Lcom/buzzfeed/spicerack/data/model/subbuzz/ImageSpice;

    invoke-interface {v0, v1}, Lcom/buzzfeed/spicerack/ui/protocol/SpicyEventListener;->onImageShare(Lcom/buzzfeed/spicerack/data/model/subbuzz/ImageSpice;)V

    .line 50
    :cond_13
    return-void
.end method
