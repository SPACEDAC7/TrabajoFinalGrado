.class public Lcom/buzzfeed/spicerack/ui/utils/AnimationUtil;
.super Ljava/lang/Object;
.source "AnimationUtil.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static startReveal(Landroid/view/View;II)I
    .registers 4
    .param p0, "view"    # Landroid/view/View;
    .param p1, "offset"    # I
    .param p2, "increment"    # I

    .prologue
    .line 18
    invoke-static {p0, p1}, Lcom/buzzfeed/spicerack/ui/utils/AnimationUtil;->startReveal(Landroid/view/View;I)V

    .line 19
    add-int v0, p1, p2

    return v0
.end method

.method public static startReveal(Landroid/view/View;I)V
    .registers 6
    .param p0, "view"    # Landroid/view/View;
    .param p1, "offset"    # I

    .prologue
    .line 11
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/buzzfeed/nativecontent/R$anim;->scale_reveal_reverse:I

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 13
    .local v0, "animation":Landroid/view/animation/Animation;
    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 14
    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 15
    return-void
.end method
