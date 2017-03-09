.class Lcom/buzzfeed/buffet/ui/holder/ShowCard$1;
.super Ljava/lang/Object;
.source "ShowCard.java"

# interfaces
.implements Lcom/buzzfeed/toolkit/util/GlideUtils$GlideFailureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/buzzfeed/buffet/ui/holder/ShowCard;->populateFrom(Lcom/buzzfeed/toolkit/content/FlowItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/buzzfeed/buffet/ui/holder/ShowCard;


# direct methods
.method constructor <init>(Lcom/buzzfeed/buffet/ui/holder/ShowCard;)V
    .registers 2
    .param p1, "this$0"    # Lcom/buzzfeed/buffet/ui/holder/ShowCard;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/buzzfeed/buffet/ui/holder/ShowCard$1;->this$0:Lcom/buzzfeed/buffet/ui/holder/ShowCard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure()V
    .registers 3

    .prologue
    .line 42
    iget-object v0, p0, Lcom/buzzfeed/buffet/ui/holder/ShowCard$1;->this$0:Lcom/buzzfeed/buffet/ui/holder/ShowCard;

    # getter for: Lcom/buzzfeed/buffet/ui/holder/ShowCard;->mTextContainer:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/buzzfeed/buffet/ui/holder/ShowCard;->access$000(Lcom/buzzfeed/buffet/ui/holder/ShowCard;)Landroid/view/ViewGroup;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 43
    return-void
.end method
