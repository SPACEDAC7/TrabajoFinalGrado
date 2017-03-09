.class public Lcom/buzzfeed/showx/showpage/ui/holder/ShowPageVideoCard;
.super Lcom/buzzfeed/buffet/ui/holder/VideoCard;
.source "ShowPageVideoCard.java"


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/buzzfeed/buffet/ui/holder/VideoCard;-><init>(Landroid/view/View;)V

    .line 14
    return-void
.end method


# virtual methods
.method protected updateIcons()V
    .registers 2

    .prologue
    .line 18
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/buzzfeed/showx/showpage/ui/holder/ShowPageVideoCard;->setShowAvatarVisibility(Z)V

    .line 19
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/buzzfeed/showx/showpage/ui/holder/ShowPageVideoCard;->setAudioIconVisibility(Z)V

    .line 20
    return-void
.end method
