.class public Lcom/buzzfeed/showx/showpage/ui/holder/ShowPageVideoCardFixedHeight;
.super Lcom/buzzfeed/buffet/ui/holder/VideoCardFixedHeight;
.source "ShowPageVideoCardFixedHeight.java"


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/buzzfeed/buffet/ui/holder/VideoCardFixedHeight;-><init>(Landroid/view/View;)V

    .line 15
    return-void
.end method


# virtual methods
.method protected updateIcons()V
    .registers 2

    .prologue
    .line 19
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/buzzfeed/showx/showpage/ui/holder/ShowPageVideoCardFixedHeight;->setShowAvatarVisibility(Z)V

    .line 20
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/buzzfeed/showx/showpage/ui/holder/ShowPageVideoCardFixedHeight;->setAudioIconVisibility(Z)V

    .line 21
    return-void
.end method
