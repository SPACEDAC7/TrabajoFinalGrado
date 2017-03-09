.class public Lcom/buzzfeed/spicerack/ui/holder/TextSpiceViewHolder;
.super Lcom/buzzfeed/spicerack/ui/holder/SpiceViewHolder;
.source "TextSpiceViewHolder.java"


# instance fields
.field mDescription:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/buzzfeed/spicerack/ui/holder/SpiceViewHolder;-><init>(Landroid/view/View;)V

    .line 20
    sget v0, Lcom/buzzfeed/nativecontent/R$id;->spice_text_description:I

    invoke-static {p1, v0}, Lcom/buzzfeed/toolkit/util/UIUtil;->findView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/buzzfeed/spicerack/ui/holder/TextSpiceViewHolder;->mDescription:Landroid/widget/TextView;

    .line 21
    return-void
.end method


# virtual methods
.method public populateFrom(Lcom/buzzfeed/toolkit/content/Content;)V
    .registers 6
    .param p1, "content"    # Lcom/buzzfeed/toolkit/content/Content;

    .prologue
    .line 25
    invoke-super {p0, p1}, Lcom/buzzfeed/spicerack/ui/holder/SpiceViewHolder;->populateFrom(Lcom/buzzfeed/toolkit/content/Content;)V

    .line 26
    instance-of v1, p1, Lcom/buzzfeed/spicerack/data/model/subbuzz/TextSpice;

    if-eqz v1, :cond_14

    move-object v0, p1

    .line 27
    check-cast v0, Lcom/buzzfeed/spicerack/data/model/subbuzz/TextSpice;

    .line 28
    .local v0, "spice":Lcom/buzzfeed/spicerack/data/model/subbuzz/TextSpice;
    iget-object v1, p0, Lcom/buzzfeed/spicerack/ui/holder/TextSpiceViewHolder;->mDescription:Landroid/widget/TextView;

    invoke-interface {v0}, Lcom/buzzfeed/spicerack/data/model/subbuzz/TextSpice;->getDescription()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v2, v3}, Lcom/buzzfeed/spicerack/ui/holder/TextSpiceViewHolder;->setText(Landroid/widget/TextView;Ljava/lang/String;Z)V

    .line 30
    .end local v0    # "spice":Lcom/buzzfeed/spicerack/data/model/subbuzz/TextSpice;
    :cond_14
    return-void
.end method
