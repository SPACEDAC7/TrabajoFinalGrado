.class Lcom/buzzfeed/spicerack/ui/holder/YouTubeSpiceViewHolder$2;
.super Ljava/lang/Object;
.source "YouTubeSpiceViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/buzzfeed/spicerack/ui/holder/YouTubeSpiceViewHolder;->populateFrom(Lcom/buzzfeed/toolkit/content/Content;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/buzzfeed/spicerack/ui/holder/YouTubeSpiceViewHolder;


# direct methods
.method constructor <init>(Lcom/buzzfeed/spicerack/ui/holder/YouTubeSpiceViewHolder;)V
    .registers 2
    .param p1, "this$0"    # Lcom/buzzfeed/spicerack/ui/holder/YouTubeSpiceViewHolder;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/buzzfeed/spicerack/ui/holder/YouTubeSpiceViewHolder$2;->this$0:Lcom/buzzfeed/spicerack/ui/holder/YouTubeSpiceViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/buzzfeed/spicerack/ui/holder/YouTubeSpiceViewHolder$2;->this$0:Lcom/buzzfeed/spicerack/ui/holder/YouTubeSpiceViewHolder;

    # getter for: Lcom/buzzfeed/spicerack/ui/holder/YouTubeSpiceViewHolder;->mSpicyEventListener:Lcom/buzzfeed/spicerack/ui/protocol/SpicyEventListener;
    invoke-static {v0}, Lcom/buzzfeed/spicerack/ui/holder/YouTubeSpiceViewHolder;->access$100(Lcom/buzzfeed/spicerack/ui/holder/YouTubeSpiceViewHolder;)Lcom/buzzfeed/spicerack/ui/protocol/SpicyEventListener;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 48
    iget-object v0, p0, Lcom/buzzfeed/spicerack/ui/holder/YouTubeSpiceViewHolder$2;->this$0:Lcom/buzzfeed/spicerack/ui/holder/YouTubeSpiceViewHolder;

    # getter for: Lcom/buzzfeed/spicerack/ui/holder/YouTubeSpiceViewHolder;->mSpicyEventListener:Lcom/buzzfeed/spicerack/ui/protocol/SpicyEventListener;
    invoke-static {v0}, Lcom/buzzfeed/spicerack/ui/holder/YouTubeSpiceViewHolder;->access$100(Lcom/buzzfeed/spicerack/ui/holder/YouTubeSpiceViewHolder;)Lcom/buzzfeed/spicerack/ui/protocol/SpicyEventListener;

    move-result-object v0

    iget-object v1, p0, Lcom/buzzfeed/spicerack/ui/holder/YouTubeSpiceViewHolder$2;->this$0:Lcom/buzzfeed/spicerack/ui/holder/YouTubeSpiceViewHolder;

    # getter for: Lcom/buzzfeed/spicerack/ui/holder/YouTubeSpiceViewHolder;->mVideoSpice:Lcom/buzzfeed/spicerack/data/model/subbuzz/YoutubeSpice;
    invoke-static {v1}, Lcom/buzzfeed/spicerack/ui/holder/YouTubeSpiceViewHolder;->access$000(Lcom/buzzfeed/spicerack/ui/holder/YouTubeSpiceViewHolder;)Lcom/buzzfeed/spicerack/data/model/subbuzz/YoutubeSpice;

    move-result-object v1

    invoke-interface {v1}, Lcom/buzzfeed/spicerack/data/model/subbuzz/YoutubeSpice;->getSourceId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/buzzfeed/spicerack/ui/protocol/SpicyEventListener;->playYoutube(Ljava/lang/String;)V

    .line 50
    :cond_1b
    return-void
.end method
