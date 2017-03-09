.class Lcom/buzzfeed/buffet/ui/holder/QCUCard$2;
.super Landroid/support/v7/widget/LinearLayoutManager;
.source "QCUCard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/buzzfeed/buffet/ui/holder/QCUCard;->setUpStories(Lcom/buzzfeed/toolkit/content/PackageContent;Landroid/support/v7/widget/RecyclerView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/buzzfeed/buffet/ui/holder/QCUCard;


# direct methods
.method constructor <init>(Lcom/buzzfeed/buffet/ui/holder/QCUCard;Landroid/content/Context;IZ)V
    .registers 5
    .param p1, "this$0"    # Lcom/buzzfeed/buffet/ui/holder/QCUCard;
    .param p2, "x0"    # Landroid/content/Context;
    .param p3, "x1"    # I
    .param p4, "x2"    # Z

    .prologue
    .line 86
    iput-object p1, p0, Lcom/buzzfeed/buffet/ui/holder/QCUCard$2;->this$0:Lcom/buzzfeed/buffet/ui/holder/QCUCard;

    invoke-direct {p0, p2, p3, p4}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    return-void
.end method


# virtual methods
.method public canScrollVertically()Z
    .registers 2

    .prologue
    .line 89
    const/4 v0, 0x0

    return v0
.end method
