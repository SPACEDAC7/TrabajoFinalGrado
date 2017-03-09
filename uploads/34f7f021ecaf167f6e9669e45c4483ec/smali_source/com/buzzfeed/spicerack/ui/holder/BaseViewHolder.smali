.class public abstract Lcom/buzzfeed/spicerack/ui/holder/BaseViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "BaseViewHolder.java"


# instance fields
.field private mSpicyEventListenerProvider:Lcom/buzzfeed/spicerack/ui/protocol/SpicyEventListenerProvider;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 23
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 24
    return-void
.end method

.method private setTextViewText(Landroid/widget/TextView;Ljava/lang/String;Z)V
    .registers 6
    .param p1, "textView"    # Landroid/widget/TextView;
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "markdown"    # Z

    .prologue
    .line 49
    if-nez p1, :cond_3

    .line 74
    :goto_2
    return-void

    .line 53
    :cond_3
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2d

    .line 54
    if-eqz p3, :cond_29

    .line 55
    new-instance v0, Lcom/buzzfeed/toolkit/ui/CallbackLinkMovementMethod;

    new-instance v1, Lcom/buzzfeed/spicerack/ui/holder/BaseViewHolder$1;

    invoke-direct {v1, p0}, Lcom/buzzfeed/spicerack/ui/holder/BaseViewHolder$1;-><init>(Lcom/buzzfeed/spicerack/ui/holder/BaseViewHolder;)V

    invoke-direct {v0, v1}, Lcom/buzzfeed/toolkit/ui/CallbackLinkMovementMethod;-><init>(Lcom/buzzfeed/toolkit/ui/CallbackLinkMovementMethod$LinkClickListener;)V

    .line 64
    .local v0, "linkListener":Lcom/buzzfeed/toolkit/ui/CallbackLinkMovementMethod;
    iget-object v1, p0, Lcom/buzzfeed/spicerack/ui/holder/BaseViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/buzzfeed/spicerack/ui/utils/MarkdownConverter;->spannedFromMarkdown(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 66
    invoke-static {p1}, Lcom/buzzfeed/toolkit/util/UIUtil;->stripUnderlines(Landroid/widget/TextView;)V

    goto :goto_2

    .line 68
    .end local v0    # "linkListener":Lcom/buzzfeed/toolkit/ui/CallbackLinkMovementMethod;
    :cond_29
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 72
    :cond_2d
    const-string v1, ""

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method private updateTextViewVisibility(Landroid/widget/TextView;)V
    .registers 3
    .param p1, "textView"    # Landroid/widget/TextView;

    .prologue
    .line 77
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_16

    :cond_10
    const/16 v0, 0x8

    :goto_12
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 78
    return-void

    .line 77
    :cond_16
    const/4 v0, 0x0

    goto :goto_12
.end method


# virtual methods
.method protected getSpicyEventListener()Lcom/buzzfeed/spicerack/ui/protocol/SpicyEventListener;
    .registers 2

    .prologue
    .line 128
    iget-object v0, p0, Lcom/buzzfeed/spicerack/ui/holder/BaseViewHolder;->mSpicyEventListenerProvider:Lcom/buzzfeed/spicerack/ui/protocol/SpicyEventListenerProvider;

    invoke-interface {v0}, Lcom/buzzfeed/spicerack/ui/protocol/SpicyEventListenerProvider;->getSpicyEventListener()Lcom/buzzfeed/spicerack/ui/protocol/SpicyEventListener;

    move-result-object v0

    return-object v0
.end method

.method public onAttachedToWindow(Lcom/buzzfeed/spicerack/ui/protocol/SpicyEventListenerProvider;Z)V
    .registers 3
    .param p1, "listener"    # Lcom/buzzfeed/spicerack/ui/protocol/SpicyEventListenerProvider;
    .param p2, "alreadySeen"    # Z

    .prologue
    .line 117
    iput-object p1, p0, Lcom/buzzfeed/spicerack/ui/holder/BaseViewHolder;->mSpicyEventListenerProvider:Lcom/buzzfeed/spicerack/ui/protocol/SpicyEventListenerProvider;

    .line 118
    if-eqz p2, :cond_7

    .line 119
    invoke-virtual {p0}, Lcom/buzzfeed/spicerack/ui/holder/BaseViewHolder;->showContent()V

    .line 121
    :cond_7
    return-void
.end method

.method public onDetachedToWindow(Lcom/buzzfeed/spicerack/ui/protocol/SpicyEventListenerProvider;)V
    .registers 2
    .param p1, "listener"    # Lcom/buzzfeed/spicerack/ui/protocol/SpicyEventListenerProvider;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/buzzfeed/spicerack/ui/holder/BaseViewHolder;->mSpicyEventListenerProvider:Lcom/buzzfeed/spicerack/ui/protocol/SpicyEventListenerProvider;

    .line 125
    return-void
.end method

.method public populateFrom(Lcom/buzzfeed/toolkit/content/Content;)V
    .registers 2
    .param p1, "content"    # Lcom/buzzfeed/toolkit/content/Content;

    .prologue
    .line 28
    return-void
.end method

.method protected setDate(J)Ljava/lang/String;
    .registers 6
    .param p1, "timestampSeconds"    # J

    .prologue
    .line 104
    const-wide/16 v0, 0x3e8

    mul-long/2addr v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/buzzfeed/spicerack/ui/holder/BaseViewHolder;->setDateMilliseconds(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected setDate(Ljava/util/Date;)Ljava/lang/String;
    .registers 6
    .param p1, "timestamp"    # Ljava/util/Date;

    .prologue
    .line 88
    if-nez p1, :cond_5

    .line 89
    const-string v0, ""

    .line 91
    :goto_4
    return-object v0

    :cond_5
    iget-object v0, p0, Lcom/buzzfeed/spicerack/ui/holder/BaseViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    const v1, 0x10015

    invoke-static {v0, v2, v3, v1}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v0

    goto :goto_4
.end method

.method protected setDateMilliseconds(J)Ljava/lang/String;
    .registers 4
    .param p1, "timestampMilliseconds"    # J

    .prologue
    .line 113
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p0, v0}, Lcom/buzzfeed/spicerack/ui/holder/BaseViewHolder;->setDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected setText(Landroid/widget/TextView;Ljava/lang/String;Z)V
    .registers 4
    .param p1, "textView"    # Landroid/widget/TextView;
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "markdown"    # Z

    .prologue
    .line 40
    invoke-direct {p0, p1, p2, p3}, Lcom/buzzfeed/spicerack/ui/holder/BaseViewHolder;->setTextViewText(Landroid/widget/TextView;Ljava/lang/String;Z)V

    .line 41
    invoke-direct {p0, p1}, Lcom/buzzfeed/spicerack/ui/holder/BaseViewHolder;->updateTextViewVisibility(Landroid/widget/TextView;)V

    .line 42
    return-void
.end method

.method protected setTextIgnoreVisibility(Landroid/widget/TextView;Ljava/lang/String;Z)V
    .registers 4
    .param p1, "textView"    # Landroid/widget/TextView;
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "markdown"    # Z

    .prologue
    .line 45
    invoke-direct {p0, p1, p2, p3}, Lcom/buzzfeed/spicerack/ui/holder/BaseViewHolder;->setTextViewText(Landroid/widget/TextView;Ljava/lang/String;Z)V

    .line 46
    return-void
.end method

.method protected showContent()V
    .registers 1

    .prologue
    .line 30
    return-void
.end method
