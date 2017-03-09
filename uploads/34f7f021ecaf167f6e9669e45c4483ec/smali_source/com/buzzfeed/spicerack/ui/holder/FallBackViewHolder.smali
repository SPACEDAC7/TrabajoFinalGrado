.class public Lcom/buzzfeed/spicerack/ui/holder/FallBackViewHolder;
.super Lcom/buzzfeed/spicerack/ui/holder/BaseViewHolder;
.source "FallBackViewHolder.java"


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/buzzfeed/spicerack/ui/holder/BaseViewHolder;-><init>(Landroid/view/View;)V

    .line 14
    return-void
.end method


# virtual methods
.method public populateFrom(Lcom/buzzfeed/toolkit/content/Content;)V
    .registers 4
    .param p1, "content"    # Lcom/buzzfeed/toolkit/content/Content;

    .prologue
    .line 18
    move-object v1, p1

    check-cast v1, Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem;

    .line 19
    .local v1, "spiceItem":Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem;
    iget-object v0, p0, Lcom/buzzfeed/spicerack/ui/holder/FallBackViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lcom/buzzfeed/spicerack/ui/view/SpicyWebView;

    .line 20
    .local v0, "fallbackView":Lcom/buzzfeed/spicerack/ui/view/SpicyWebView;
    invoke-virtual {v0, v1}, Lcom/buzzfeed/spicerack/ui/view/SpicyWebView;->populateFrom(Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem;)V

    .line 21
    return-void
.end method
