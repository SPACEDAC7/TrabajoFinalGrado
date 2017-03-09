.class public abstract Lcom/buzzfeed/spicerack/ui/holder/SpiceViewHolder;
.super Lcom/buzzfeed/spicerack/ui/holder/BaseViewHolder;
.source "SpiceViewHolder.java"


# instance fields
.field protected mHeader:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/buzzfeed/spicerack/ui/holder/BaseViewHolder;-><init>(Landroid/view/View;)V

    .line 21
    sget v0, Lcom/buzzfeed/nativecontent/R$id;->spice_component_header:I

    invoke-static {p1, v0}, Lcom/buzzfeed/toolkit/util/UIUtil;->findView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/buzzfeed/spicerack/ui/holder/SpiceViewHolder;->mHeader:Landroid/widget/TextView;

    .line 22
    return-void
.end method


# virtual methods
.method public populateFrom(Lcom/buzzfeed/toolkit/content/Content;)V
    .registers 7
    .param p1, "content"    # Lcom/buzzfeed/toolkit/content/Content;

    .prologue
    .line 26
    instance-of v3, p1, Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz;

    if-eqz v3, :cond_35

    move-object v2, p1

    .line 27
    check-cast v2, Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz;

    .line 28
    .local v2, "subBuzz":Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz;
    invoke-virtual {v2}, Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz;->getHeader()Ljava/lang/String;

    move-result-object v0

    .line 29
    .local v0, "headerText":Ljava/lang/String;
    invoke-virtual {v2}, Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz;->getNumber()I

    move-result v3

    if-lez v3, :cond_2f

    .line 30
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz;->getNumber()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\\. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 31
    .local v1, "num":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_36

    .line 32
    move-object v0, v1

    .line 37
    .end local v1    # "num":Ljava/lang/String;
    :cond_2f
    :goto_2f
    iget-object v3, p0, Lcom/buzzfeed/spicerack/ui/holder/SpiceViewHolder;->mHeader:Landroid/widget/TextView;

    const/4 v4, 0x1

    invoke-virtual {p0, v3, v0, v4}, Lcom/buzzfeed/spicerack/ui/holder/SpiceViewHolder;->setText(Landroid/widget/TextView;Ljava/lang/String;Z)V

    .line 39
    .end local v0    # "headerText":Ljava/lang/String;
    .end local v2    # "subBuzz":Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz;
    :cond_35
    return-void

    .line 34
    .restart local v0    # "headerText":Ljava/lang/String;
    .restart local v1    # "num":Ljava/lang/String;
    .restart local v2    # "subBuzz":Lcom/buzzfeed/spicerack/data/model/subbuzz/SubBuzz;
    :cond_36
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2f
.end method
