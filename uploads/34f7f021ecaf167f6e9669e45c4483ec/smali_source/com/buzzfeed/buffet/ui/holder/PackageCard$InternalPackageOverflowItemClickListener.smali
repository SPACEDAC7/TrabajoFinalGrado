.class Lcom/buzzfeed/buffet/ui/holder/PackageCard$InternalPackageOverflowItemClickListener;
.super Ljava/lang/Object;
.source "PackageCard.java"

# interfaces
.implements Lcom/buzzfeed/buffet/ui/listener/PackageItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/buzzfeed/buffet/ui/holder/PackageCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InternalPackageOverflowItemClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/buzzfeed/buffet/ui/holder/PackageCard;


# direct methods
.method private constructor <init>(Lcom/buzzfeed/buffet/ui/holder/PackageCard;)V
    .registers 2

    .prologue
    .line 171
    iput-object p1, p0, Lcom/buzzfeed/buffet/ui/holder/PackageCard$InternalPackageOverflowItemClickListener;->this$0:Lcom/buzzfeed/buffet/ui/holder/PackageCard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/buzzfeed/buffet/ui/holder/PackageCard;Lcom/buzzfeed/buffet/ui/holder/PackageCard$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/buzzfeed/buffet/ui/holder/PackageCard;
    .param p2, "x1"    # Lcom/buzzfeed/buffet/ui/holder/PackageCard$1;

    .prologue
    .line 171
    invoke-direct {p0, p1}, Lcom/buzzfeed/buffet/ui/holder/PackageCard$InternalPackageOverflowItemClickListener;-><init>(Lcom/buzzfeed/buffet/ui/holder/PackageCard;)V

    return-void
.end method


# virtual methods
.method public onPackageItemClicked(Lcom/buzzfeed/toolkit/content/PackageContent;Lcom/buzzfeed/toolkit/content/PostContent;IILandroid/widget/ImageView;Ljava/util/Stack;Z)V
    .registers 16
    .param p1, "parentPackage"    # Lcom/buzzfeed/toolkit/content/PackageContent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "postContent"    # Lcom/buzzfeed/toolkit/content/PostContent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "adapterPosition"    # I
    .param p4, "packagePosition"    # I
    .param p5, "thumbnail"    # Landroid/widget/ImageView;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/util/Stack;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p7, "isTallImage"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/buzzfeed/toolkit/content/PackageContent;",
            "Lcom/buzzfeed/toolkit/content/PostContent;",
            "II",
            "Landroid/widget/ImageView;",
            "Ljava/util/Stack",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 178
    .local p6, "imageStack":Ljava/util/Stack;, "Ljava/util/Stack<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/buzzfeed/buffet/ui/holder/PackageCard$InternalPackageOverflowItemClickListener;->this$0:Lcom/buzzfeed/buffet/ui/holder/PackageCard;

    invoke-virtual {v0}, Lcom/buzzfeed/buffet/ui/holder/PackageCard;->getBuffetEventListener()Lcom/buzzfeed/buffet/ui/listener/BuffetEventListener;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 179
    iget-object v0, p0, Lcom/buzzfeed/buffet/ui/holder/PackageCard$InternalPackageOverflowItemClickListener;->this$0:Lcom/buzzfeed/buffet/ui/holder/PackageCard;

    invoke-virtual {v0}, Lcom/buzzfeed/buffet/ui/holder/PackageCard;->getBuffetEventListener()Lcom/buzzfeed/buffet/ui/listener/BuffetEventListener;

    move-result-object v0

    const/4 v5, 0x0

    .line 180
    invoke-interface {p2}, Lcom/buzzfeed/toolkit/content/PostContent;->getThumbnailStack()Ljava/util/Stack;

    move-result-object v6

    const/4 v7, 0x0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 179
    invoke-interface/range {v0 .. v7}, Lcom/buzzfeed/buffet/ui/listener/BuffetEventListener;->onNewsPackageClicked(Lcom/buzzfeed/toolkit/content/PackageContent;Lcom/buzzfeed/toolkit/content/PostContent;IILandroid/widget/ImageView;Ljava/util/Stack;Z)V

    .line 182
    :cond_1b
    return-void
.end method
