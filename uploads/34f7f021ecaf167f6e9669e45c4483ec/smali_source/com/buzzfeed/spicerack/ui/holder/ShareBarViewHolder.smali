.class public Lcom/buzzfeed/spicerack/ui/holder/ShareBarViewHolder;
.super Lcom/buzzfeed/spicerack/ui/holder/BaseViewHolder;
.source "ShareBarViewHolder.java"


# static fields
.field private static final OFFSET_INCREMENT:I = 0x32


# instance fields
.field private mContainer:Landroid/widget/LinearLayout;

.field private mListenerProvider:Lcom/buzzfeed/spicerack/ui/protocol/SpicyShareBarListenerProvider;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/buzzfeed/spicerack/ui/protocol/SpicyShareBarListenerProvider;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "listener"    # Lcom/buzzfeed/spicerack/ui/protocol/SpicyShareBarListenerProvider;

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/buzzfeed/spicerack/ui/holder/BaseViewHolder;-><init>(Landroid/view/View;)V

    .line 23
    iput-object p2, p0, Lcom/buzzfeed/spicerack/ui/holder/ShareBarViewHolder;->mListenerProvider:Lcom/buzzfeed/spicerack/ui/protocol/SpicyShareBarListenerProvider;

    .line 24
    sget v0, Lcom/buzzfeed/nativecontent/R$id;->spice_share_bar_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/buzzfeed/spicerack/ui/holder/ShareBarViewHolder;->mContainer:Landroid/widget/LinearLayout;

    .line 25
    return-void
.end method

.method static synthetic access$000(Lcom/buzzfeed/spicerack/ui/holder/ShareBarViewHolder;)Lcom/buzzfeed/spicerack/ui/protocol/SpicyShareBarListenerProvider;
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/spicerack/ui/holder/ShareBarViewHolder;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/buzzfeed/spicerack/ui/holder/ShareBarViewHolder;->mListenerProvider:Lcom/buzzfeed/spicerack/ui/protocol/SpicyShareBarListenerProvider;

    return-object v0
.end method

.method static synthetic access$100(Lcom/buzzfeed/spicerack/ui/holder/ShareBarViewHolder;)Landroid/widget/LinearLayout;
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/spicerack/ui/holder/ShareBarViewHolder;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/buzzfeed/spicerack/ui/holder/ShareBarViewHolder;->mContainer:Landroid/widget/LinearLayout;

    return-object v0
.end method


# virtual methods
.method public animateIn(I)V
    .registers 4
    .param p1, "startDelay"    # I

    .prologue
    .line 73
    iget-object v0, p0, Lcom/buzzfeed/spicerack/ui/holder/ShareBarViewHolder;->mContainer:Landroid/widget/LinearLayout;

    if-nez v0, :cond_5

    .line 85
    :goto_4
    return-void

    .line 76
    :cond_5
    iget-object v0, p0, Lcom/buzzfeed/spicerack/ui/holder/ShareBarViewHolder;->mContainer:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/buzzfeed/spicerack/ui/holder/ShareBarViewHolder$2;

    invoke-direct {v1, p0, p1}, Lcom/buzzfeed/spicerack/ui/holder/ShareBarViewHolder$2;-><init>(Lcom/buzzfeed/spicerack/ui/holder/ShareBarViewHolder;I)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    goto :goto_4
.end method

.method public populateFrom(Lcom/buzzfeed/toolkit/content/Content;)V
    .registers 12
    .param p1, "content"    # Lcom/buzzfeed/toolkit/content/Content;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 29
    invoke-super {p0, p1}, Lcom/buzzfeed/spicerack/ui/holder/BaseViewHolder;->populateFrom(Lcom/buzzfeed/toolkit/content/Content;)V

    move-object v2, p1

    .line 31
    check-cast v2, Lcom/buzzfeed/spicerack/data/sharebar/ShareBarContent;

    .line 32
    .local v2, "shareBarContent":Lcom/buzzfeed/spicerack/data/sharebar/ShareBarContent;
    invoke-virtual {v2}, Lcom/buzzfeed/spicerack/data/sharebar/ShareBarContent;->getShareItemTypes()[Lcom/buzzfeed/toolkit/util/ShareItemType;

    move-result-object v5

    if-nez v5, :cond_f

    .line 62
    :cond_e
    :goto_e
    return-void

    .line 36
    :cond_f
    invoke-virtual {v2}, Lcom/buzzfeed/spicerack/data/sharebar/ShareBarContent;->getShareItemTypes()[Lcom/buzzfeed/toolkit/util/ShareItemType;

    move-result-object v5

    array-length v5, v5

    new-array v3, v5, [Lcom/buzzfeed/spicerack/data/sharebar/ShareBarItem;

    .line 37
    .local v3, "shareBarItems":[Lcom/buzzfeed/spicerack/data/sharebar/ShareBarItem;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_17
    invoke-virtual {v2}, Lcom/buzzfeed/spicerack/data/sharebar/ShareBarContent;->getShareItemTypes()[Lcom/buzzfeed/toolkit/util/ShareItemType;

    move-result-object v5

    array-length v5, v5

    if-ge v1, v5, :cond_2d

    .line 38
    invoke-virtual {v2}, Lcom/buzzfeed/spicerack/data/sharebar/ShareBarContent;->getShareItemTypes()[Lcom/buzzfeed/toolkit/util/ShareItemType;

    move-result-object v5

    aget-object v5, v5, v1

    invoke-static {v5}, Lcom/buzzfeed/spicerack/data/sharebar/ShareBarItemFactory;->getShareBarItem(Lcom/buzzfeed/toolkit/util/ShareItemType;)Lcom/buzzfeed/spicerack/data/sharebar/ShareBarItem;

    move-result-object v5

    aput-object v5, v3, v1

    .line 37
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    .line 41
    :cond_2d
    iget-object v5, p0, Lcom/buzzfeed/spicerack/ui/holder/ShareBarViewHolder;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 42
    const/4 v1, 0x0

    :goto_33
    array-length v5, v3

    if-ge v1, v5, :cond_68

    .line 43
    new-instance v4, Lcom/buzzfeed/spicerack/ui/sharebar/ShareBarItemView;

    iget-object v5, p0, Lcom/buzzfeed/spicerack/ui/holder/ShareBarViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/buzzfeed/spicerack/ui/sharebar/ShareBarItemView;-><init>(Landroid/content/Context;)V

    .line 44
    .local v4, "view":Lcom/buzzfeed/spicerack/ui/sharebar/ShareBarItemView;
    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Lcom/buzzfeed/spicerack/ui/sharebar/ShareBarItemView;->setVisibility(I)V

    .line 45
    aget-object v9, v3, v1

    if-nez v1, :cond_64

    move v5, v6

    :goto_4a
    array-length v8, v3

    add-int/lit8 v8, v8, -0x1

    if-ne v1, v8, :cond_66

    move v8, v6

    :goto_50
    invoke-virtual {v4, v9, v5, v8}, Lcom/buzzfeed/spicerack/ui/sharebar/ShareBarItemView;->populateFrom(Lcom/buzzfeed/spicerack/data/sharebar/ShareBarItem;ZZ)V

    .line 46
    move v0, v1

    .line 47
    .local v0, "finalI":I
    new-instance v5, Lcom/buzzfeed/spicerack/ui/holder/ShareBarViewHolder$1;

    invoke-direct {v5, p0, v3, v0, v2}, Lcom/buzzfeed/spicerack/ui/holder/ShareBarViewHolder$1;-><init>(Lcom/buzzfeed/spicerack/ui/holder/ShareBarViewHolder;[Lcom/buzzfeed/spicerack/data/sharebar/ShareBarItem;ILcom/buzzfeed/spicerack/data/sharebar/ShareBarContent;)V

    invoke-virtual {v4, v5}, Lcom/buzzfeed/spicerack/ui/sharebar/ShareBarItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    iget-object v5, p0, Lcom/buzzfeed/spicerack/ui/holder/ShareBarViewHolder;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 42
    add-int/lit8 v1, v1, 0x1

    goto :goto_33

    .end local v0    # "finalI":I
    :cond_64
    move v5, v7

    .line 45
    goto :goto_4a

    :cond_66
    move v8, v7

    goto :goto_50

    .line 59
    .end local v4    # "view":Lcom/buzzfeed/spicerack/ui/sharebar/ShareBarItemView;
    :cond_68
    invoke-virtual {v2}, Lcom/buzzfeed/spicerack/data/sharebar/ShareBarContent;->getLocation()Lcom/buzzfeed/spicerack/data/sharebar/SpicyShareBarLocation;

    move-result-object v5

    sget-object v6, Lcom/buzzfeed/spicerack/data/sharebar/SpicyShareBarLocation;->Bottom:Lcom/buzzfeed/spicerack/data/sharebar/SpicyShareBarLocation;

    if-ne v5, v6, :cond_e

    .line 60
    invoke-virtual {p0}, Lcom/buzzfeed/spicerack/ui/holder/ShareBarViewHolder;->showContent()V

    goto :goto_e
.end method

.method protected showContent()V
    .registers 4

    .prologue
    .line 66
    invoke-super {p0}, Lcom/buzzfeed/spicerack/ui/holder/BaseViewHolder;->showContent()V

    .line 67
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    iget-object v1, p0, Lcom/buzzfeed/spicerack/ui/holder/ShareBarViewHolder;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_19

    .line 68
    iget-object v1, p0, Lcom/buzzfeed/spicerack/ui/holder/ShareBarViewHolder;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 67
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 70
    :cond_19
    return-void
.end method
