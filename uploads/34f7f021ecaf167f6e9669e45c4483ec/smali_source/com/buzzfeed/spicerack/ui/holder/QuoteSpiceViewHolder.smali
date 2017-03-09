.class public Lcom/buzzfeed/spicerack/ui/holder/QuoteSpiceViewHolder;
.super Lcom/buzzfeed/spicerack/ui/holder/SpiceViewHolder;
.source "QuoteSpiceViewHolder.java"


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lcom/buzzfeed/spicerack/ui/holder/SpiceViewHolder;-><init>(Landroid/view/View;)V

    .line 12
    return-void
.end method


# virtual methods
.method public populateFrom(Lcom/buzzfeed/toolkit/content/Content;)V
    .registers 2
    .param p1, "content"    # Lcom/buzzfeed/toolkit/content/Content;

    .prologue
    .line 16
    invoke-super {p0, p1}, Lcom/buzzfeed/spicerack/ui/holder/SpiceViewHolder;->populateFrom(Lcom/buzzfeed/toolkit/content/Content;)V

    .line 18
    return-void
.end method
