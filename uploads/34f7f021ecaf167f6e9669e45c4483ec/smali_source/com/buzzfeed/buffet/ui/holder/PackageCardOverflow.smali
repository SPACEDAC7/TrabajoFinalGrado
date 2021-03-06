.class public Lcom/buzzfeed/buffet/ui/holder/PackageCardOverflow;
.super Lcom/buzzfeed/buffet/ui/holder/BasePackageOverflowCard;
.source "PackageCardOverflow.java"


# instance fields
.field private mHeader:Landroid/widget/TextView;

.field private mTimestamp:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/buzzfeed/buffet/ui/holder/BasePackageOverflowCard;-><init>(Landroid/view/View;)V

    .line 18
    iget-object v0, p0, Lcom/buzzfeed/buffet/ui/holder/PackageCardOverflow;->itemView:Landroid/view/View;

    sget v1, Lcom/buzzfeed/buffet/R$id;->card_package_overflow_title:I

    invoke-static {v0, v1}, Lcom/buzzfeed/toolkit/util/UIUtil;->findView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/buzzfeed/buffet/ui/holder/PackageCardOverflow;->mHeader:Landroid/widget/TextView;

    .line 19
    iget-object v0, p0, Lcom/buzzfeed/buffet/ui/holder/PackageCardOverflow;->itemView:Landroid/view/View;

    sget v1, Lcom/buzzfeed/buffet/R$id;->card_package_overflow_timestamp:I

    invoke-static {v0, v1}, Lcom/buzzfeed/toolkit/util/UIUtil;->findView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/buzzfeed/buffet/ui/holder/PackageCardOverflow;->mTimestamp:Landroid/widget/TextView;

    .line 20
    return-void
.end method


# virtual methods
.method public populateFrom(Lcom/buzzfeed/toolkit/content/PackageContent;Lcom/buzzfeed/toolkit/content/PostContent;II)V
    .registers 12
    .param p1, "parentContent"    # Lcom/buzzfeed/toolkit/content/PackageContent;
    .param p2, "content"    # Lcom/buzzfeed/toolkit/content/PostContent;
    .param p3, "adapterPosition"    # I
    .param p4, "subPosition"    # I

    .prologue
    .line 23
    iget-object v0, p0, Lcom/buzzfeed/buffet/ui/holder/PackageCardOverflow;->mHeader:Landroid/widget/TextView;

    invoke-interface {p2}, Lcom/buzzfeed/toolkit/content/PostContent;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 24
    iget-object v0, p0, Lcom/buzzfeed/buffet/ui/holder/PackageCardOverflow;->mTimestamp:Landroid/widget/TextView;

    invoke-interface {p2}, Lcom/buzzfeed/toolkit/content/PostContent;->getPublished()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(J)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 26
    iget-object v6, p0, Lcom/buzzfeed/buffet/ui/holder/PackageCardOverflow;->itemView:Landroid/view/View;

    new-instance v0, Lcom/buzzfeed/buffet/ui/holder/PackageCardOverflow$1;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/buzzfeed/buffet/ui/holder/PackageCardOverflow$1;-><init>(Lcom/buzzfeed/buffet/ui/holder/PackageCardOverflow;Lcom/buzzfeed/toolkit/content/PackageContent;Lcom/buzzfeed/toolkit/content/PostContent;II)V

    invoke-virtual {v6, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 35
    return-void
.end method
