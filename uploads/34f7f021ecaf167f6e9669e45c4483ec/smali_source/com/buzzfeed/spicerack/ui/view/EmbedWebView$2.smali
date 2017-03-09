.class Lcom/buzzfeed/spicerack/ui/view/EmbedWebView$2;
.super Ljava/lang/Object;
.source "EmbedWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/buzzfeed/spicerack/ui/view/EmbedWebView;->getSize(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/buzzfeed/spicerack/ui/view/EmbedWebView;

.field final synthetic val$widthHeight:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/buzzfeed/spicerack/ui/view/EmbedWebView;Ljava/lang/String;)V
    .registers 3
    .param p1, "this$0"    # Lcom/buzzfeed/spicerack/ui/view/EmbedWebView;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/buzzfeed/spicerack/ui/view/EmbedWebView$2;->this$0:Lcom/buzzfeed/spicerack/ui/view/EmbedWebView;

    iput-object p2, p0, Lcom/buzzfeed/spicerack/ui/view/EmbedWebView$2;->val$widthHeight:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    .line 98
    iget-object v5, p0, Lcom/buzzfeed/spicerack/ui/view/EmbedWebView$2;->val$widthHeight:Ljava/lang/String;

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 99
    .local v3, "split":[Ljava/lang/String;
    const/4 v5, 0x0

    aget-object v5, v3, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 100
    .local v4, "width":I
    const/4 v5, 0x1

    aget-object v5, v3, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 102
    .local v1, "height":I
    iget-object v5, p0, Lcom/buzzfeed/spicerack/ui/view/EmbedWebView$2;->this$0:Lcom/buzzfeed/spicerack/ui/view/EmbedWebView;

    iget-object v6, p0, Lcom/buzzfeed/spicerack/ui/view/EmbedWebView$2;->this$0:Lcom/buzzfeed/spicerack/ui/view/EmbedWebView;

    invoke-virtual {v6}, Lcom/buzzfeed/spicerack/ui/view/EmbedWebView;->getWidth()I

    move-result v6

    # invokes: Lcom/buzzfeed/spicerack/ui/view/EmbedWebView;->getFinalHeight(III)I
    invoke-static {v5, v6, v4, v1}, Lcom/buzzfeed/spicerack/ui/view/EmbedWebView;->access$400(Lcom/buzzfeed/spicerack/ui/view/EmbedWebView;III)I

    move-result v0

    .line 103
    .local v0, "finalHeight":I
    iget-object v5, p0, Lcom/buzzfeed/spicerack/ui/view/EmbedWebView$2;->this$0:Lcom/buzzfeed/spicerack/ui/view/EmbedWebView;

    invoke-virtual {v5}, Lcom/buzzfeed/spicerack/ui/view/EmbedWebView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 105
    .local v2, "params":Landroid/view/ViewGroup$LayoutParams;
    add-int/lit8 v5, v0, 0xa

    iput v5, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 106
    iget-object v5, p0, Lcom/buzzfeed/spicerack/ui/view/EmbedWebView$2;->this$0:Lcom/buzzfeed/spicerack/ui/view/EmbedWebView;

    invoke-virtual {v5, v2}, Lcom/buzzfeed/spicerack/ui/view/EmbedWebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 107
    iget-object v5, p0, Lcom/buzzfeed/spicerack/ui/view/EmbedWebView$2;->this$0:Lcom/buzzfeed/spicerack/ui/view/EmbedWebView;

    invoke-virtual {v5}, Lcom/buzzfeed/spicerack/ui/view/EmbedWebView;->invalidate()V

    .line 108
    return-void
.end method
