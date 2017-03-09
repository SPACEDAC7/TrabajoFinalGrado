.class Lcom/buzzfeed/spicerack/ui/holder/InstagramEmbedViewHolder$1;
.super Ljava/lang/Object;
.source "InstagramEmbedViewHolder.java"

# interfaces
.implements Lcom/buzzfeed/spicerack/ui/view/EmbedWebView$EmbedWebViewClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/buzzfeed/spicerack/ui/holder/InstagramEmbedViewHolder;-><init>(Landroid/view/View;Lcom/buzzfeed/spicerack/ui/protocol/SpicyEventListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/buzzfeed/spicerack/ui/holder/InstagramEmbedViewHolder;

.field final synthetic val$spicyEventListener:Lcom/buzzfeed/spicerack/ui/protocol/SpicyEventListener;


# direct methods
.method constructor <init>(Lcom/buzzfeed/spicerack/ui/holder/InstagramEmbedViewHolder;Lcom/buzzfeed/spicerack/ui/protocol/SpicyEventListener;)V
    .registers 3
    .param p1, "this$0"    # Lcom/buzzfeed/spicerack/ui/holder/InstagramEmbedViewHolder;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/buzzfeed/spicerack/ui/holder/InstagramEmbedViewHolder$1;->this$0:Lcom/buzzfeed/spicerack/ui/holder/InstagramEmbedViewHolder;

    iput-object p2, p0, Lcom/buzzfeed/spicerack/ui/holder/InstagramEmbedViewHolder$1;->val$spicyEventListener:Lcom/buzzfeed/spicerack/ui/protocol/SpicyEventListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onWebViewClicked(Ljava/lang/String;)V
    .registers 4
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/buzzfeed/spicerack/ui/holder/InstagramEmbedViewHolder$1;->val$spicyEventListener:Lcom/buzzfeed/spicerack/ui/protocol/SpicyEventListener;

    if-eqz v0, :cond_a

    .line 32
    iget-object v0, p0, Lcom/buzzfeed/spicerack/ui/holder/InstagramEmbedViewHolder$1;->val$spicyEventListener:Lcom/buzzfeed/spicerack/ui/protocol/SpicyEventListener;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/buzzfeed/spicerack/ui/protocol/SpicyEventListener;->onUrlClicked(Ljava/lang/String;Z)Z

    .line 34
    :cond_a
    return-void
.end method
