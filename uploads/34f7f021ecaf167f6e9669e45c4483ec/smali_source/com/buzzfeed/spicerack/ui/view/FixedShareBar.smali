.class public Lcom/buzzfeed/spicerack/ui/view/FixedShareBar;
.super Landroid/widget/LinearLayout;
.source "FixedShareBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/buzzfeed/spicerack/ui/view/FixedShareBar$FixedShareBarListener;
    }
.end annotation


# instance fields
.field private mFacebookButton:Landroid/widget/ImageButton;

.field private mFixedShareBarListener:Lcom/buzzfeed/spicerack/ui/view/FixedShareBar$FixedShareBarListener;

.field private mForumButton:Landroid/widget/ImageButton;

.field private mShareButton:Landroid/widget/ImageButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 20
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/buzzfeed/spicerack/ui/view/FixedShareBar;->mFixedShareBarListener:Lcom/buzzfeed/spicerack/ui/view/FixedShareBar$FixedShareBarListener;

    if-nez v0, :cond_5

    .line 61
    :cond_4
    :goto_4
    return-void

    .line 52
    :cond_5
    iget-object v0, p0, Lcom/buzzfeed/spicerack/ui/view/FixedShareBar;->mForumButton:Landroid/widget/ImageButton;

    if-ne p1, v0, :cond_f

    .line 53
    iget-object v0, p0, Lcom/buzzfeed/spicerack/ui/view/FixedShareBar;->mFixedShareBarListener:Lcom/buzzfeed/spicerack/ui/view/FixedShareBar$FixedShareBarListener;

    invoke-interface {v0}, Lcom/buzzfeed/spicerack/ui/view/FixedShareBar$FixedShareBarListener;->forumButtonClicked()V

    goto :goto_4

    .line 55
    :cond_f
    iget-object v0, p0, Lcom/buzzfeed/spicerack/ui/view/FixedShareBar;->mFacebookButton:Landroid/widget/ImageButton;

    if-ne p1, v0, :cond_19

    .line 56
    iget-object v0, p0, Lcom/buzzfeed/spicerack/ui/view/FixedShareBar;->mFixedShareBarListener:Lcom/buzzfeed/spicerack/ui/view/FixedShareBar$FixedShareBarListener;

    invoke-interface {v0}, Lcom/buzzfeed/spicerack/ui/view/FixedShareBar$FixedShareBarListener;->facebookButtonClicked()V

    goto :goto_4

    .line 58
    :cond_19
    iget-object v0, p0, Lcom/buzzfeed/spicerack/ui/view/FixedShareBar;->mShareButton:Landroid/widget/ImageButton;

    if-ne p1, v0, :cond_4

    .line 59
    iget-object v0, p0, Lcom/buzzfeed/spicerack/ui/view/FixedShareBar;->mFixedShareBarListener:Lcom/buzzfeed/spicerack/ui/view/FixedShareBar$FixedShareBarListener;

    invoke-interface {v0}, Lcom/buzzfeed/spicerack/ui/view/FixedShareBar$FixedShareBarListener;->shareButtonClicked()V

    goto :goto_4
.end method

.method public setVariant(Lcom/buzzfeed/spicerack/experiment/FixedShareBarVariant;Lcom/buzzfeed/spicerack/ui/view/FixedShareBar$FixedShareBarListener;)V
    .registers 5
    .param p1, "variant"    # Lcom/buzzfeed/spicerack/experiment/FixedShareBarVariant;
    .param p2, "listener"    # Lcom/buzzfeed/spicerack/ui/view/FixedShareBar$FixedShareBarListener;

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/buzzfeed/spicerack/ui/view/FixedShareBar;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v0, Lcom/buzzfeed/spicerack/experiment/FixedShareBarVariant;->SolidButtons:Lcom/buzzfeed/spicerack/experiment/FixedShareBarVariant;

    if-ne p1, v0, :cond_3d

    sget v0, Lcom/buzzfeed/nativecontent/R$layout;->view_fixed_share_bar_a_variant:I

    :goto_a
    invoke-static {v1, v0, p0}, Lcom/buzzfeed/spicerack/ui/view/FixedShareBar;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 35
    iput-object p2, p0, Lcom/buzzfeed/spicerack/ui/view/FixedShareBar;->mFixedShareBarListener:Lcom/buzzfeed/spicerack/ui/view/FixedShareBar$FixedShareBarListener;

    .line 37
    sget v0, Lcom/buzzfeed/nativecontent/R$id;->fixed_share_bar_button_forum:I

    invoke-virtual {p0, v0}, Lcom/buzzfeed/spicerack/ui/view/FixedShareBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/buzzfeed/spicerack/ui/view/FixedShareBar;->mForumButton:Landroid/widget/ImageButton;

    .line 38
    sget v0, Lcom/buzzfeed/nativecontent/R$id;->fixed_share_bar_button_facebook:I

    invoke-virtual {p0, v0}, Lcom/buzzfeed/spicerack/ui/view/FixedShareBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/buzzfeed/spicerack/ui/view/FixedShareBar;->mFacebookButton:Landroid/widget/ImageButton;

    .line 39
    sget v0, Lcom/buzzfeed/nativecontent/R$id;->fixed_share_bar_button_share:I

    invoke-virtual {p0, v0}, Lcom/buzzfeed/spicerack/ui/view/FixedShareBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/buzzfeed/spicerack/ui/view/FixedShareBar;->mShareButton:Landroid/widget/ImageButton;

    .line 41
    iget-object v0, p0, Lcom/buzzfeed/spicerack/ui/view/FixedShareBar;->mForumButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 42
    iget-object v0, p0, Lcom/buzzfeed/spicerack/ui/view/FixedShareBar;->mFacebookButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    iget-object v0, p0, Lcom/buzzfeed/spicerack/ui/view/FixedShareBar;->mShareButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    return-void

    .line 32
    :cond_3d
    sget v0, Lcom/buzzfeed/nativecontent/R$layout;->view_fixed_share_bar_b_variant:I

    goto :goto_a
.end method
