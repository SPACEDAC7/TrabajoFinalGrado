.class Lcom/buzzfeed/buffet/ui/holder/VideoCard$2;
.super Ljava/lang/Object;
.source "VideoCard.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/buzzfeed/buffet/ui/holder/VideoCard;->setupClickListeners(Lcom/buzzfeed/toolkit/content/FlowItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/buzzfeed/buffet/ui/holder/VideoCard;


# direct methods
.method constructor <init>(Lcom/buzzfeed/buffet/ui/holder/VideoCard;)V
    .registers 2
    .param p1, "this$0"    # Lcom/buzzfeed/buffet/ui/holder/VideoCard;

    .prologue
    .line 146
    iput-object p1, p0, Lcom/buzzfeed/buffet/ui/holder/VideoCard$2;->this$0:Lcom/buzzfeed/buffet/ui/holder/VideoCard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 149
    iget-object v0, p0, Lcom/buzzfeed/buffet/ui/holder/VideoCard$2;->this$0:Lcom/buzzfeed/buffet/ui/holder/VideoCard;

    invoke-virtual {v0}, Lcom/buzzfeed/buffet/ui/holder/VideoCard;->getBuffetEventListener()Lcom/buzzfeed/buffet/ui/listener/BuffetEventListener;

    move-result-object v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/buzzfeed/buffet/ui/holder/VideoCard$2;->this$0:Lcom/buzzfeed/buffet/ui/holder/VideoCard;

    iget-object v0, v0, Lcom/buzzfeed/buffet/ui/holder/VideoCard;->mVideoContent:Lcom/buzzfeed/toolkit/content/VideoContent;

    if-eqz v0, :cond_1f

    .line 150
    iget-object v0, p0, Lcom/buzzfeed/buffet/ui/holder/VideoCard$2;->this$0:Lcom/buzzfeed/buffet/ui/holder/VideoCard;

    invoke-virtual {v0}, Lcom/buzzfeed/buffet/ui/holder/VideoCard;->getBuffetEventListener()Lcom/buzzfeed/buffet/ui/listener/BuffetEventListener;

    move-result-object v0

    iget-object v1, p0, Lcom/buzzfeed/buffet/ui/holder/VideoCard$2;->this$0:Lcom/buzzfeed/buffet/ui/holder/VideoCard;

    iget-object v1, v1, Lcom/buzzfeed/buffet/ui/holder/VideoCard;->mVideoContent:Lcom/buzzfeed/toolkit/content/VideoContent;

    invoke-interface {v1}, Lcom/buzzfeed/toolkit/content/VideoContent;->getUri()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/buzzfeed/buffet/ui/listener/BuffetEventListener;->onGetRecipeClicked(Ljava/lang/String;)V

    .line 152
    :cond_1f
    return-void
.end method
