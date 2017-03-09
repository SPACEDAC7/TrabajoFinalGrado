.class Lcom/buzzfeed/spicerack/ui/holder/HeaderSpiceViewHolder$1;
.super Ljava/lang/Object;
.source "HeaderSpiceViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/buzzfeed/spicerack/ui/holder/HeaderSpiceViewHolder;->setBylines(Lcom/buzzfeed/toolkit/content/PostContent;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/buzzfeed/spicerack/ui/holder/HeaderSpiceViewHolder;

.field final synthetic val$author:Lcom/buzzfeed/toolkit/content/AuthorContent;


# direct methods
.method constructor <init>(Lcom/buzzfeed/spicerack/ui/holder/HeaderSpiceViewHolder;Lcom/buzzfeed/toolkit/content/AuthorContent;)V
    .registers 3
    .param p1, "this$0"    # Lcom/buzzfeed/spicerack/ui/holder/HeaderSpiceViewHolder;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/buzzfeed/spicerack/ui/holder/HeaderSpiceViewHolder$1;->this$0:Lcom/buzzfeed/spicerack/ui/holder/HeaderSpiceViewHolder;

    iput-object p2, p0, Lcom/buzzfeed/spicerack/ui/holder/HeaderSpiceViewHolder$1;->val$author:Lcom/buzzfeed/toolkit/content/AuthorContent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/buzzfeed/spicerack/ui/holder/HeaderSpiceViewHolder$1;->this$0:Lcom/buzzfeed/spicerack/ui/holder/HeaderSpiceViewHolder;

    invoke-virtual {v0}, Lcom/buzzfeed/spicerack/ui/holder/HeaderSpiceViewHolder;->getSpicyEventListener()Lcom/buzzfeed/spicerack/ui/protocol/SpicyEventListener;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 94
    iget-object v0, p0, Lcom/buzzfeed/spicerack/ui/holder/HeaderSpiceViewHolder$1;->this$0:Lcom/buzzfeed/spicerack/ui/holder/HeaderSpiceViewHolder;

    invoke-virtual {v0}, Lcom/buzzfeed/spicerack/ui/holder/HeaderSpiceViewHolder;->getSpicyEventListener()Lcom/buzzfeed/spicerack/ui/protocol/SpicyEventListener;

    move-result-object v0

    iget-object v1, p0, Lcom/buzzfeed/spicerack/ui/holder/HeaderSpiceViewHolder$1;->val$author:Lcom/buzzfeed/toolkit/content/AuthorContent;

    invoke-interface {v0, v1}, Lcom/buzzfeed/spicerack/ui/protocol/SpicyEventListener;->authorClicked(Lcom/buzzfeed/toolkit/content/AuthorContent;)V

    .line 96
    :cond_13
    return-void
.end method
