.class Lcom/buzzfeed/spicerack/ui/holder/ShareBarViewHolder$1;
.super Ljava/lang/Object;
.source "ShareBarViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/buzzfeed/spicerack/ui/holder/ShareBarViewHolder;->populateFrom(Lcom/buzzfeed/toolkit/content/Content;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/buzzfeed/spicerack/ui/holder/ShareBarViewHolder;

.field final synthetic val$finalI:I

.field final synthetic val$shareBarContent:Lcom/buzzfeed/spicerack/data/sharebar/ShareBarContent;

.field final synthetic val$shareBarItems:[Lcom/buzzfeed/spicerack/data/sharebar/ShareBarItem;


# direct methods
.method constructor <init>(Lcom/buzzfeed/spicerack/ui/holder/ShareBarViewHolder;[Lcom/buzzfeed/spicerack/data/sharebar/ShareBarItem;ILcom/buzzfeed/spicerack/data/sharebar/ShareBarContent;)V
    .registers 5
    .param p1, "this$0"    # Lcom/buzzfeed/spicerack/ui/holder/ShareBarViewHolder;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/buzzfeed/spicerack/ui/holder/ShareBarViewHolder$1;->this$0:Lcom/buzzfeed/spicerack/ui/holder/ShareBarViewHolder;

    iput-object p2, p0, Lcom/buzzfeed/spicerack/ui/holder/ShareBarViewHolder$1;->val$shareBarItems:[Lcom/buzzfeed/spicerack/data/sharebar/ShareBarItem;

    iput p3, p0, Lcom/buzzfeed/spicerack/ui/holder/ShareBarViewHolder$1;->val$finalI:I

    iput-object p4, p0, Lcom/buzzfeed/spicerack/ui/holder/ShareBarViewHolder$1;->val$shareBarContent:Lcom/buzzfeed/spicerack/data/sharebar/ShareBarContent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/buzzfeed/spicerack/ui/holder/ShareBarViewHolder$1;->this$0:Lcom/buzzfeed/spicerack/ui/holder/ShareBarViewHolder;

    # getter for: Lcom/buzzfeed/spicerack/ui/holder/ShareBarViewHolder;->mListenerProvider:Lcom/buzzfeed/spicerack/ui/protocol/SpicyShareBarListenerProvider;
    invoke-static {v0}, Lcom/buzzfeed/spicerack/ui/holder/ShareBarViewHolder;->access$000(Lcom/buzzfeed/spicerack/ui/holder/ShareBarViewHolder;)Lcom/buzzfeed/spicerack/ui/protocol/SpicyShareBarListenerProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/buzzfeed/spicerack/ui/protocol/SpicyShareBarListenerProvider;->getShareBarListener()Lcom/buzzfeed/spicerack/ui/protocol/SpicyShareBarListener;

    move-result-object v0

    if-eqz v0, :cond_29

    .line 51
    iget-object v0, p0, Lcom/buzzfeed/spicerack/ui/holder/ShareBarViewHolder$1;->this$0:Lcom/buzzfeed/spicerack/ui/holder/ShareBarViewHolder;

    # getter for: Lcom/buzzfeed/spicerack/ui/holder/ShareBarViewHolder;->mListenerProvider:Lcom/buzzfeed/spicerack/ui/protocol/SpicyShareBarListenerProvider;
    invoke-static {v0}, Lcom/buzzfeed/spicerack/ui/holder/ShareBarViewHolder;->access$000(Lcom/buzzfeed/spicerack/ui/holder/ShareBarViewHolder;)Lcom/buzzfeed/spicerack/ui/protocol/SpicyShareBarListenerProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/buzzfeed/spicerack/ui/protocol/SpicyShareBarListenerProvider;->getShareBarListener()Lcom/buzzfeed/spicerack/ui/protocol/SpicyShareBarListener;

    move-result-object v0

    iget-object v1, p0, Lcom/buzzfeed/spicerack/ui/holder/ShareBarViewHolder$1;->val$shareBarItems:[Lcom/buzzfeed/spicerack/data/sharebar/ShareBarItem;

    iget v2, p0, Lcom/buzzfeed/spicerack/ui/holder/ShareBarViewHolder$1;->val$finalI:I

    aget-object v1, v1, v2

    invoke-interface {v1}, Lcom/buzzfeed/spicerack/data/sharebar/ShareBarItem;->getShareType()Lcom/buzzfeed/toolkit/util/ShareItemType;

    move-result-object v1

    iget-object v2, p0, Lcom/buzzfeed/spicerack/ui/holder/ShareBarViewHolder$1;->val$shareBarContent:Lcom/buzzfeed/spicerack/data/sharebar/ShareBarContent;

    invoke-virtual {v2}, Lcom/buzzfeed/spicerack/data/sharebar/ShareBarContent;->getLocation()Lcom/buzzfeed/spicerack/data/sharebar/SpicyShareBarLocation;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/buzzfeed/spicerack/ui/protocol/SpicyShareBarListener;->onShareEvent(Lcom/buzzfeed/toolkit/util/ShareItemType;Lcom/buzzfeed/spicerack/data/sharebar/SpicyShareBarLocation;)V

    .line 53
    :cond_29
    return-void
.end method
