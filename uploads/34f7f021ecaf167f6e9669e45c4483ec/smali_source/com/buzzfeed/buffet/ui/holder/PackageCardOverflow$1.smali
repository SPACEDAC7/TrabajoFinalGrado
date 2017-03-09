.class Lcom/buzzfeed/buffet/ui/holder/PackageCardOverflow$1;
.super Ljava/lang/Object;
.source "PackageCardOverflow.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/buzzfeed/buffet/ui/holder/PackageCardOverflow;->populateFrom(Lcom/buzzfeed/toolkit/content/PackageContent;Lcom/buzzfeed/toolkit/content/PostContent;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/buzzfeed/buffet/ui/holder/PackageCardOverflow;

.field final synthetic val$adapterPosition:I

.field final synthetic val$content:Lcom/buzzfeed/toolkit/content/PostContent;

.field final synthetic val$parentContent:Lcom/buzzfeed/toolkit/content/PackageContent;

.field final synthetic val$subPosition:I


# direct methods
.method constructor <init>(Lcom/buzzfeed/buffet/ui/holder/PackageCardOverflow;Lcom/buzzfeed/toolkit/content/PackageContent;Lcom/buzzfeed/toolkit/content/PostContent;II)V
    .registers 6
    .param p1, "this$0"    # Lcom/buzzfeed/buffet/ui/holder/PackageCardOverflow;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/buzzfeed/buffet/ui/holder/PackageCardOverflow$1;->this$0:Lcom/buzzfeed/buffet/ui/holder/PackageCardOverflow;

    iput-object p2, p0, Lcom/buzzfeed/buffet/ui/holder/PackageCardOverflow$1;->val$parentContent:Lcom/buzzfeed/toolkit/content/PackageContent;

    iput-object p3, p0, Lcom/buzzfeed/buffet/ui/holder/PackageCardOverflow$1;->val$content:Lcom/buzzfeed/toolkit/content/PostContent;

    iput p4, p0, Lcom/buzzfeed/buffet/ui/holder/PackageCardOverflow$1;->val$adapterPosition:I

    iput p5, p0, Lcom/buzzfeed/buffet/ui/holder/PackageCardOverflow$1;->val$subPosition:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 10
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/buzzfeed/buffet/ui/holder/PackageCardOverflow$1;->this$0:Lcom/buzzfeed/buffet/ui/holder/PackageCardOverflow;

    invoke-virtual {v0}, Lcom/buzzfeed/buffet/ui/holder/PackageCardOverflow;->getPackageItemClickListener()Lcom/buzzfeed/buffet/ui/listener/PackageItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_21

    .line 30
    iget-object v0, p0, Lcom/buzzfeed/buffet/ui/holder/PackageCardOverflow$1;->this$0:Lcom/buzzfeed/buffet/ui/holder/PackageCardOverflow;

    invoke-virtual {v0}, Lcom/buzzfeed/buffet/ui/holder/PackageCardOverflow;->getPackageItemClickListener()Lcom/buzzfeed/buffet/ui/listener/PackageItemClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/buzzfeed/buffet/ui/holder/PackageCardOverflow$1;->val$parentContent:Lcom/buzzfeed/toolkit/content/PackageContent;

    iget-object v2, p0, Lcom/buzzfeed/buffet/ui/holder/PackageCardOverflow$1;->val$content:Lcom/buzzfeed/toolkit/content/PostContent;

    iget v3, p0, Lcom/buzzfeed/buffet/ui/holder/PackageCardOverflow$1;->val$adapterPosition:I

    iget v4, p0, Lcom/buzzfeed/buffet/ui/holder/PackageCardOverflow$1;->val$subPosition:I

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/buzzfeed/buffet/ui/holder/PackageCardOverflow$1;->val$content:Lcom/buzzfeed/toolkit/content/PostContent;

    .line 31
    invoke-interface {v6}, Lcom/buzzfeed/toolkit/content/PostContent;->getThumbnailStack()Ljava/util/Stack;

    move-result-object v6

    const/4 v7, 0x0

    .line 30
    invoke-interface/range {v0 .. v7}, Lcom/buzzfeed/buffet/ui/listener/PackageItemClickListener;->onPackageItemClicked(Lcom/buzzfeed/toolkit/content/PackageContent;Lcom/buzzfeed/toolkit/content/PostContent;IILandroid/widget/ImageView;Ljava/util/Stack;Z)V

    .line 33
    :cond_21
    return-void
.end method
