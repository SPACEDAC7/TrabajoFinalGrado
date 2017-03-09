.class final Lcom/buzzfeed/spicerack/data/sharebar/ShareBarItemFactory$1;
.super Ljava/lang/Object;
.source "ShareBarItemFactory.java"

# interfaces
.implements Lcom/buzzfeed/spicerack/data/sharebar/ShareBarItem;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/buzzfeed/spicerack/data/sharebar/ShareBarItemFactory;->getShareBarItem(Lcom/buzzfeed/toolkit/util/ShareItemType;)Lcom/buzzfeed/spicerack/data/sharebar/ShareBarItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$drawable:I

.field final synthetic val$image:I

.field final synthetic val$type:Lcom/buzzfeed/toolkit/util/ShareItemType;


# direct methods
.method constructor <init>(Lcom/buzzfeed/toolkit/util/ShareItemType;II)V
    .registers 4

    .prologue
    .line 11
    iput-object p1, p0, Lcom/buzzfeed/spicerack/data/sharebar/ShareBarItemFactory$1;->val$type:Lcom/buzzfeed/toolkit/util/ShareItemType;

    iput p2, p0, Lcom/buzzfeed/spicerack/data/sharebar/ShareBarItemFactory$1;->val$image:I

    iput p3, p0, Lcom/buzzfeed/spicerack/data/sharebar/ShareBarItemFactory$1;->val$drawable:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBackgroundDrawableResource()I
    .registers 2

    .prologue
    .line 24
    iget v0, p0, Lcom/buzzfeed/spicerack/data/sharebar/ShareBarItemFactory$1;->val$drawable:I

    return v0
.end method

.method public getImageResource()I
    .registers 2

    .prologue
    .line 19
    iget v0, p0, Lcom/buzzfeed/spicerack/data/sharebar/ShareBarItemFactory$1;->val$image:I

    return v0
.end method

.method public getShareType()Lcom/buzzfeed/toolkit/util/ShareItemType;
    .registers 2

    .prologue
    .line 14
    iget-object v0, p0, Lcom/buzzfeed/spicerack/data/sharebar/ShareBarItemFactory$1;->val$type:Lcom/buzzfeed/toolkit/util/ShareItemType;

    return-object v0
.end method
