.class public Lcom/buzzfeed/buffet/ui/holder/FeaturedProximaNovaTitleCard;
.super Lcom/buzzfeed/buffet/ui/holder/FeaturedCard;
.source "FeaturedProximaNovaTitleCard.java"


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lcom/buzzfeed/buffet/ui/holder/FeaturedCard;-><init>(Landroid/view/View;)V

    .line 13
    iget-object v0, p0, Lcom/buzzfeed/buffet/ui/holder/FeaturedProximaNovaTitleCard;->mHeadline:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/buzzfeed/buffet/ui/holder/FeaturedProximaNovaTitleCard;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "fonts/ProximaNova-Sbold.ttf"

    invoke-static {v1, v2}, Luk/co/chrisjenx/calligraphy/TypefaceUtils;->load(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 14
    return-void
.end method
