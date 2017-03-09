.class public Lcom/buzzfeed/spicerack/ui/holder/LinkSpiceViewHolder;
.super Lcom/buzzfeed/spicerack/ui/holder/SpiceViewHolder;
.source "LinkSpiceViewHolder.java"


# static fields
.field private static final PREPENDED_URI:Ljava/lang/String; = "www."

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCaptionText:Landroid/widget/TextView;

.field private mDescriptionText:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 18
    const-class v0, Lcom/buzzfeed/spicerack/ui/holder/LinkSpiceViewHolder;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/buzzfeed/spicerack/ui/holder/LinkSpiceViewHolder;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/buzzfeed/spicerack/ui/holder/SpiceViewHolder;-><init>(Landroid/view/View;)V

    .line 26
    sget v0, Lcom/buzzfeed/nativecontent/R$id;->spice_link_caption:I

    invoke-static {p1, v0}, Lcom/buzzfeed/toolkit/util/UIUtil;->findView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/buzzfeed/spicerack/ui/holder/LinkSpiceViewHolder;->mCaptionText:Landroid/widget/TextView;

    .line 27
    sget v0, Lcom/buzzfeed/nativecontent/R$id;->spice_link_description:I

    invoke-static {p1, v0}, Lcom/buzzfeed/toolkit/util/UIUtil;->findView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/buzzfeed/spicerack/ui/holder/LinkSpiceViewHolder;->mDescriptionText:Landroid/widget/TextView;

    .line 28
    sget v0, Lcom/buzzfeed/nativecontent/R$id;->spice_link_header:I

    invoke-static {p1, v0}, Lcom/buzzfeed/toolkit/util/UIUtil;->findView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/buzzfeed/spicerack/ui/holder/LinkSpiceViewHolder;->mHeader:Landroid/widget/TextView;

    .line 29
    return-void
.end method

.method private getBaseUrl(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "link"    # Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 67
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 68
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 69
    .local v0, "host":Ljava/lang/String;
    if-eqz v0, :cond_1e

    const-string/jumbo v2, "www."

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 70
    const-string/jumbo v2, "www."

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 73
    :cond_1e
    return-object v0
.end method

.method private makeLink(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "link"    # Ljava/lang/String;
    .param p2, "header"    # Ljava/lang/String;

    .prologue
    .line 54
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 55
    invoke-direct {p0, p1}, Lcom/buzzfeed/spicerack/ui/holder/LinkSpiceViewHolder;->getBaseUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/buzzfeed/spicerack/ui/holder/LinkSpiceViewHolder;->makeLinkMarkdown(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 58
    :goto_e
    return-object v0

    :cond_f
    invoke-direct {p0, p1, p2}, Lcom/buzzfeed/spicerack/ui/holder/LinkSpiceViewHolder;->makeLinkMarkdown(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_e
.end method

.method private makeLinkMarkdown(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "link"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public populateFrom(Lcom/buzzfeed/toolkit/content/Content;)V
    .registers 10
    .param p1, "content"    # Lcom/buzzfeed/toolkit/content/Content;

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x1

    .line 33
    move-object v2, p1

    check-cast v2, Lcom/buzzfeed/spicerack/data/model/subbuzz/LinkSpice;

    .line 35
    .local v2, "linkSpice":Lcom/buzzfeed/spicerack/data/model/subbuzz/LinkSpice;
    invoke-interface {v2}, Lcom/buzzfeed/spicerack/data/model/subbuzz/LinkSpice;->getLink()Ljava/lang/String;

    move-result-object v1

    .line 37
    .local v1, "link":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/buzzfeed/spicerack/ui/holder/LinkSpiceViewHolder;->getBaseUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 38
    .local v0, "baseUrl":Ljava/lang/String;
    if-eqz v0, :cond_32

    .line 39
    iget-object v3, p0, Lcom/buzzfeed/spicerack/ui/holder/LinkSpiceViewHolder;->mHeader:Landroid/widget/TextView;

    invoke-interface {v2}, Lcom/buzzfeed/spicerack/data/model/subbuzz/LinkSpice;->getHeader()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v1, v4}, Lcom/buzzfeed/spicerack/ui/holder/LinkSpiceViewHolder;->makeLink(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4, v6}, Lcom/buzzfeed/spicerack/ui/holder/LinkSpiceViewHolder;->setText(Landroid/widget/TextView;Ljava/lang/String;Z)V

    .line 40
    iget-object v3, p0, Lcom/buzzfeed/spicerack/ui/holder/LinkSpiceViewHolder;->mCaptionText:Landroid/widget/TextView;

    invoke-virtual {p0, v3, v0, v6}, Lcom/buzzfeed/spicerack/ui/holder/LinkSpiceViewHolder;->setText(Landroid/widget/TextView;Ljava/lang/String;Z)V

    .line 46
    :goto_22
    invoke-interface {v2}, Lcom/buzzfeed/spicerack/data/model/subbuzz/LinkSpice;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_59

    .line 47
    iget-object v3, p0, Lcom/buzzfeed/spicerack/ui/holder/LinkSpiceViewHolder;->mDescriptionText:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 51
    :goto_31
    return-void

    .line 42
    :cond_32
    sget-object v3, Lcom/buzzfeed/spicerack/ui/holder/LinkSpiceViewHolder;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cannot display link with invalid url: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/buzzfeed/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    iget-object v3, p0, Lcom/buzzfeed/spicerack/ui/holder/LinkSpiceViewHolder;->mHeader:Landroid/widget/TextView;

    invoke-interface {v2}, Lcom/buzzfeed/spicerack/data/model/subbuzz/LinkSpice;->getHeader()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4, v6}, Lcom/buzzfeed/spicerack/ui/holder/LinkSpiceViewHolder;->setText(Landroid/widget/TextView;Ljava/lang/String;Z)V

    .line 44
    iget-object v3, p0, Lcom/buzzfeed/spicerack/ui/holder/LinkSpiceViewHolder;->mCaptionText:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_22

    .line 49
    :cond_59
    iget-object v3, p0, Lcom/buzzfeed/spicerack/ui/holder/LinkSpiceViewHolder;->mDescriptionText:Landroid/widget/TextView;

    invoke-interface {v2}, Lcom/buzzfeed/spicerack/data/model/subbuzz/LinkSpice;->getDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4, v6}, Lcom/buzzfeed/spicerack/ui/holder/LinkSpiceViewHolder;->setText(Landroid/widget/TextView;Ljava/lang/String;Z)V

    goto :goto_31
.end method
