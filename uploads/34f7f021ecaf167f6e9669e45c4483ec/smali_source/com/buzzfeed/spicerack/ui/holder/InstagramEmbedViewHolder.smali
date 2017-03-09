.class public Lcom/buzzfeed/spicerack/ui/holder/InstagramEmbedViewHolder;
.super Lcom/buzzfeed/spicerack/ui/holder/SpiceViewHolder;
.source "InstagramEmbedViewHolder.java"


# instance fields
.field private mAttribution:Landroid/widget/TextView;

.field private mDescription:Landroid/widget/TextView;

.field private mEmbedWebView:Lcom/buzzfeed/spicerack/ui/view/EmbedWebView;

.field private mSpice:Lcom/buzzfeed/spicerack/data/model/subbuzz/EmbedSpice;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/buzzfeed/spicerack/ui/protocol/SpicyEventListener;)V
    .registers 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "spicyEventListener"    # Lcom/buzzfeed/spicerack/ui/protocol/SpicyEventListener;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/buzzfeed/spicerack/ui/holder/SpiceViewHolder;-><init>(Landroid/view/View;)V

    .line 25
    sget v0, Lcom/buzzfeed/nativecontent/R$id;->spice_embed_instagram_description:I

    invoke-static {p1, v0}, Lcom/buzzfeed/toolkit/util/UIUtil;->findView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/buzzfeed/spicerack/ui/holder/InstagramEmbedViewHolder;->mDescription:Landroid/widget/TextView;

    .line 26
    sget v0, Lcom/buzzfeed/nativecontent/R$id;->spice_embed_attribution:I

    invoke-static {p1, v0}, Lcom/buzzfeed/toolkit/util/UIUtil;->findView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/buzzfeed/spicerack/ui/holder/InstagramEmbedViewHolder;->mAttribution:Landroid/widget/TextView;

    .line 27
    sget v0, Lcom/buzzfeed/nativecontent/R$id;->spice_embed_instagram_webview:I

    invoke-static {p1, v0}, Lcom/buzzfeed/toolkit/util/UIUtil;->findView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/buzzfeed/spicerack/ui/view/EmbedWebView;

    iput-object v0, p0, Lcom/buzzfeed/spicerack/ui/holder/InstagramEmbedViewHolder;->mEmbedWebView:Lcom/buzzfeed/spicerack/ui/view/EmbedWebView;

    .line 28
    iget-object v0, p0, Lcom/buzzfeed/spicerack/ui/holder/InstagramEmbedViewHolder;->mEmbedWebView:Lcom/buzzfeed/spicerack/ui/view/EmbedWebView;

    new-instance v1, Lcom/buzzfeed/spicerack/ui/holder/InstagramEmbedViewHolder$1;

    invoke-direct {v1, p0, p2}, Lcom/buzzfeed/spicerack/ui/holder/InstagramEmbedViewHolder$1;-><init>(Lcom/buzzfeed/spicerack/ui/holder/InstagramEmbedViewHolder;Lcom/buzzfeed/spicerack/ui/protocol/SpicyEventListener;)V

    invoke-virtual {v0, v1}, Lcom/buzzfeed/spicerack/ui/view/EmbedWebView;->setEmbedWebViewClickListener(Lcom/buzzfeed/spicerack/ui/view/EmbedWebView$EmbedWebViewClickListener;)V

    .line 36
    return-void
.end method


# virtual methods
.method public onAttachedToWindow(Lcom/buzzfeed/spicerack/ui/protocol/SpicyEventListenerProvider;Z)V
    .registers 6
    .param p1, "listener"    # Lcom/buzzfeed/spicerack/ui/protocol/SpicyEventListenerProvider;
    .param p2, "alreadySeen"    # Z

    .prologue
    .line 56
    invoke-super {p0, p1, p2}, Lcom/buzzfeed/spicerack/ui/holder/SpiceViewHolder;->onAttachedToWindow(Lcom/buzzfeed/spicerack/ui/protocol/SpicyEventListenerProvider;Z)V

    .line 57
    iget-object v0, p0, Lcom/buzzfeed/spicerack/ui/holder/InstagramEmbedViewHolder;->mEmbedWebView:Lcom/buzzfeed/spicerack/ui/view/EmbedWebView;

    iget-object v1, p0, Lcom/buzzfeed/spicerack/ui/holder/InstagramEmbedViewHolder;->mSpice:Lcom/buzzfeed/spicerack/data/model/subbuzz/EmbedSpice;

    invoke-interface {v1}, Lcom/buzzfeed/spicerack/data/model/subbuzz/EmbedSpice;->getUrl()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/buzzfeed/spicerack/ui/holder/InstagramEmbedViewHolder;->mSpice:Lcom/buzzfeed/spicerack/data/model/subbuzz/EmbedSpice;

    invoke-virtual {v0, v1, v2}, Lcom/buzzfeed/spicerack/ui/view/EmbedWebView;->loadUrlWithEmbedSpice(Ljava/lang/String;Lcom/buzzfeed/spicerack/data/model/subbuzz/EmbedSpice;)V

    .line 58
    return-void
.end method

.method public onDetachedToWindow(Lcom/buzzfeed/spicerack/ui/protocol/SpicyEventListenerProvider;)V
    .registers 4
    .param p1, "listener"    # Lcom/buzzfeed/spicerack/ui/protocol/SpicyEventListenerProvider;

    .prologue
    .line 50
    invoke-super {p0, p1}, Lcom/buzzfeed/spicerack/ui/holder/SpiceViewHolder;->onDetachedToWindow(Lcom/buzzfeed/spicerack/ui/protocol/SpicyEventListenerProvider;)V

    .line 51
    iget-object v0, p0, Lcom/buzzfeed/spicerack/ui/holder/InstagramEmbedViewHolder;->mEmbedWebView:Lcom/buzzfeed/spicerack/ui/view/EmbedWebView;

    const-string v1, "about:blank"

    invoke-virtual {v0, v1}, Lcom/buzzfeed/spicerack/ui/view/EmbedWebView;->loadUrl(Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method public populateFrom(Lcom/buzzfeed/toolkit/content/Content;)V
    .registers 5
    .param p1, "content"    # Lcom/buzzfeed/toolkit/content/Content;

    .prologue
    const/4 v2, 0x1

    .line 40
    invoke-super {p0, p1}, Lcom/buzzfeed/spicerack/ui/holder/SpiceViewHolder;->populateFrom(Lcom/buzzfeed/toolkit/content/Content;)V

    .line 41
    check-cast p1, Lcom/buzzfeed/spicerack/data/model/subbuzz/EmbedSpice;

    .end local p1    # "content":Lcom/buzzfeed/toolkit/content/Content;
    iput-object p1, p0, Lcom/buzzfeed/spicerack/ui/holder/InstagramEmbedViewHolder;->mSpice:Lcom/buzzfeed/spicerack/data/model/subbuzz/EmbedSpice;

    .line 42
    iget-object v0, p0, Lcom/buzzfeed/spicerack/ui/holder/InstagramEmbedViewHolder;->mDescription:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/buzzfeed/spicerack/ui/holder/InstagramEmbedViewHolder;->mSpice:Lcom/buzzfeed/spicerack/data/model/subbuzz/EmbedSpice;

    invoke-interface {v1}, Lcom/buzzfeed/spicerack/data/model/subbuzz/EmbedSpice;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/buzzfeed/spicerack/ui/holder/InstagramEmbedViewHolder;->setText(Landroid/widget/TextView;Ljava/lang/String;Z)V

    .line 43
    iget-object v0, p0, Lcom/buzzfeed/spicerack/ui/holder/InstagramEmbedViewHolder;->mAttribution:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/buzzfeed/spicerack/ui/holder/InstagramEmbedViewHolder;->mSpice:Lcom/buzzfeed/spicerack/data/model/subbuzz/EmbedSpice;

    invoke-interface {v1}, Lcom/buzzfeed/spicerack/data/model/subbuzz/EmbedSpice;->getAttribution()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/buzzfeed/spicerack/ui/holder/InstagramEmbedViewHolder;->setText(Landroid/widget/TextView;Ljava/lang/String;Z)V

    .line 44
    iget-object v0, p0, Lcom/buzzfeed/spicerack/ui/holder/InstagramEmbedViewHolder;->mEmbedWebView:Lcom/buzzfeed/spicerack/ui/view/EmbedWebView;

    iget-object v1, p0, Lcom/buzzfeed/spicerack/ui/holder/InstagramEmbedViewHolder;->mSpice:Lcom/buzzfeed/spicerack/data/model/subbuzz/EmbedSpice;

    invoke-interface {v1}, Lcom/buzzfeed/spicerack/data/model/subbuzz/EmbedSpice;->getUrl()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/buzzfeed/spicerack/ui/holder/InstagramEmbedViewHolder;->mSpice:Lcom/buzzfeed/spicerack/data/model/subbuzz/EmbedSpice;

    invoke-virtual {v0, v1, v2}, Lcom/buzzfeed/spicerack/ui/view/EmbedWebView;->loadUrlWithEmbedSpice(Ljava/lang/String;Lcom/buzzfeed/spicerack/data/model/subbuzz/EmbedSpice;)V

    .line 45
    return-void
.end method
