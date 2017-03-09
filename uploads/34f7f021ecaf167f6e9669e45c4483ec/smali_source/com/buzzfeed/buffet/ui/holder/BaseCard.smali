.class public abstract Lcom/buzzfeed/buffet/ui/holder/BaseCard;
.super Lcom/buzzfeed/toolkit/ui/holder/BaseViewHolder;
.source "BaseCard.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/buzzfeed/toolkit/ui/holder/BaseViewHolder",
        "<",
        "Lcom/buzzfeed/toolkit/content/FlowItem;",
        ">;"
    }
.end annotation


# instance fields
.field private mListenerProvider:Lcom/buzzfeed/buffet/ui/listener/BuffetEventListenerProvider;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/buzzfeed/toolkit/ui/holder/BaseViewHolder;-><init>(Landroid/view/View;)V

    .line 20
    return-void
.end method


# virtual methods
.method protected formatViewCount(J)Ljava/lang/String;
    .registers 6
    .param p1, "viewCount"    # J

    .prologue
    .line 52
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#,###,###,###"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 53
    .local v0, "formatter":Ljava/text/DecimalFormat;
    invoke-virtual {v0, p1, p2}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected getBuffetEventListener()Lcom/buzzfeed/buffet/ui/listener/BuffetEventListener;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 48
    iget-object v0, p0, Lcom/buzzfeed/buffet/ui/holder/BaseCard;->mListenerProvider:Lcom/buzzfeed/buffet/ui/listener/BuffetEventListenerProvider;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/buzzfeed/buffet/ui/holder/BaseCard;->mListenerProvider:Lcom/buzzfeed/buffet/ui/listener/BuffetEventListenerProvider;

    invoke-interface {v0}, Lcom/buzzfeed/buffet/ui/listener/BuffetEventListenerProvider;->getBuffetEventListener()Lcom/buzzfeed/buffet/ui/listener/BuffetEventListener;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method protected getColor(I)I
    .registers 3
    .param p1, "colorResId"    # I

    .prologue
    .line 35
    iget-object v0, p0, Lcom/buzzfeed/buffet/ui/holder/BaseCard;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    return v0
.end method

.method protected getString(I)Ljava/lang/String;
    .registers 3
    .param p1, "stringResId"    # I

    .prologue
    .line 39
    iget-object v0, p0, Lcom/buzzfeed/buffet/ui/holder/BaseCard;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs getString(I[Ljava/lang/Object;)Ljava/lang/String;
    .registers 4
    .param p1, "stringResId"    # I
    .param p2, "formatArgs"    # [Ljava/lang/Object;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/buzzfeed/buffet/ui/holder/BaseCard;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isAd()Z
    .registers 2

    .prologue
    .line 31
    const/4 v0, 0x0

    return v0
.end method

.method public onViewHolderRecycled()V
    .registers 1

    .prologue
    .line 24
    return-void
.end method

.method public setBuffetListenerProvider(Lcom/buzzfeed/buffet/ui/listener/BuffetEventListenerProvider;)V
    .registers 2
    .param p1, "listenerProvider"    # Lcom/buzzfeed/buffet/ui/listener/BuffetEventListenerProvider;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 27
    iput-object p1, p0, Lcom/buzzfeed/buffet/ui/holder/BaseCard;->mListenerProvider:Lcom/buzzfeed/buffet/ui/listener/BuffetEventListenerProvider;

    .line 28
    return-void
.end method
