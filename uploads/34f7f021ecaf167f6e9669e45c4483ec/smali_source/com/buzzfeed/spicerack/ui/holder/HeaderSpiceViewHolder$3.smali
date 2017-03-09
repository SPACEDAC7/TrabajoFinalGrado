.class Lcom/buzzfeed/spicerack/ui/holder/HeaderSpiceViewHolder$3;
.super Ljava/lang/Object;
.source "HeaderSpiceViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/buzzfeed/spicerack/ui/holder/HeaderSpiceViewHolder;->generateMoreAuthorsByline(Lcom/buzzfeed/toolkit/content/PostContent;I)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/buzzfeed/spicerack/ui/holder/HeaderSpiceViewHolder;

.field final synthetic val$PostContent:Lcom/buzzfeed/toolkit/content/PostContent;


# direct methods
.method constructor <init>(Lcom/buzzfeed/spicerack/ui/holder/HeaderSpiceViewHolder;Lcom/buzzfeed/toolkit/content/PostContent;)V
    .registers 3
    .param p1, "this$0"    # Lcom/buzzfeed/spicerack/ui/holder/HeaderSpiceViewHolder;

    .prologue
    .line 140
    iput-object p1, p0, Lcom/buzzfeed/spicerack/ui/holder/HeaderSpiceViewHolder$3;->this$0:Lcom/buzzfeed/spicerack/ui/holder/HeaderSpiceViewHolder;

    iput-object p2, p0, Lcom/buzzfeed/spicerack/ui/holder/HeaderSpiceViewHolder$3;->val$PostContent:Lcom/buzzfeed/toolkit/content/PostContent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 143
    iget-object v0, p0, Lcom/buzzfeed/spicerack/ui/holder/HeaderSpiceViewHolder$3;->this$0:Lcom/buzzfeed/spicerack/ui/holder/HeaderSpiceViewHolder;

    iget-object v1, p0, Lcom/buzzfeed/spicerack/ui/holder/HeaderSpiceViewHolder$3;->val$PostContent:Lcom/buzzfeed/toolkit/content/PostContent;

    # invokes: Lcom/buzzfeed/spicerack/ui/holder/HeaderSpiceViewHolder;->onMoreAuthorsClicked(Lcom/buzzfeed/toolkit/content/PostContent;)V
    invoke-static {v0, v1}, Lcom/buzzfeed/spicerack/ui/holder/HeaderSpiceViewHolder;->access$000(Lcom/buzzfeed/spicerack/ui/holder/HeaderSpiceViewHolder;Lcom/buzzfeed/toolkit/content/PostContent;)V

    .line 144
    return-void
.end method
