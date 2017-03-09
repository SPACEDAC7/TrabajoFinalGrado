.class Lcom/buzzfeed/buffet/ui/holder/ShowCard$2$1;
.super Ljava/util/Stack;
.source "ShowCard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/buzzfeed/buffet/ui/holder/ShowCard$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/Stack",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/buzzfeed/buffet/ui/holder/ShowCard$2;

.field final synthetic val$content:Lcom/buzzfeed/toolkit/content/ShowListContent;


# direct methods
.method constructor <init>(Lcom/buzzfeed/buffet/ui/holder/ShowCard$2;Lcom/buzzfeed/toolkit/content/ShowListContent;)V
    .registers 4
    .param p1, "this$1"    # Lcom/buzzfeed/buffet/ui/holder/ShowCard$2;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/buzzfeed/buffet/ui/holder/ShowCard$2$1;->this$1:Lcom/buzzfeed/buffet/ui/holder/ShowCard$2;

    iput-object p2, p0, Lcom/buzzfeed/buffet/ui/holder/ShowCard$2$1;->val$content:Lcom/buzzfeed/toolkit/content/ShowListContent;

    invoke-direct {p0}, Ljava/util/Stack;-><init>()V

    .line 57
    iget-object v0, p0, Lcom/buzzfeed/buffet/ui/holder/ShowCard$2$1;->val$content:Lcom/buzzfeed/toolkit/content/ShowListContent;

    invoke-interface {v0}, Lcom/buzzfeed/toolkit/content/ShowListContent;->getThumbnailUrl()Ljava/lang/String;

    .line 58
    return-void
.end method
