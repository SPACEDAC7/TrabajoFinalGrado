.class public Lcom/buzzfeed/showx/showpage/data/model/ShowPage;
.super Ljava/lang/Object;
.source "ShowPage.java"


# instance fields
.field public flowList:Ljava/util/List;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/buzzfeed/toolkit/content/FlowItem;",
            ">;"
        }
    .end annotation
.end field

.field public pageNumber:I

.field public show:Lcom/buzzfeed/toolkit/content/WeaverEmbed$Show;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/buzzfeed/showx/showpage/data/model/ShowPage;->flowList:Ljava/util/List;

    .line 21
    return-void
.end method
