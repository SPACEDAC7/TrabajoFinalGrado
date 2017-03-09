.class Lcom/buzzfeed/spicerack/ui/view/EmbedWebView$1;
.super Ljava/lang/Object;
.source "EmbedWebView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/buzzfeed/spicerack/ui/view/EmbedWebView;->setWebDefaults()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/buzzfeed/spicerack/ui/view/EmbedWebView;


# direct methods
.method constructor <init>(Lcom/buzzfeed/spicerack/ui/view/EmbedWebView;)V
    .registers 2
    .param p1, "this$0"    # Lcom/buzzfeed/spicerack/ui/view/EmbedWebView;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/buzzfeed/spicerack/ui/view/EmbedWebView$1;->this$0:Lcom/buzzfeed/spicerack/ui/view/EmbedWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 8
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 66
    iget-object v1, p0, Lcom/buzzfeed/spicerack/ui/view/EmbedWebView$1;->this$0:Lcom/buzzfeed/spicerack/ui/view/EmbedWebView;

    invoke-virtual {v1}, Lcom/buzzfeed/spicerack/ui/view/EmbedWebView;->getHitTestResult()Landroid/webkit/WebView$HitTestResult;

    move-result-object v0

    .line 67
    .local v0, "hr":Landroid/webkit/WebView$HitTestResult;
    iget-object v4, p0, Lcom/buzzfeed/spicerack/ui/view/EmbedWebView$1;->this$0:Lcom/buzzfeed/spicerack/ui/view/EmbedWebView;

    if-eqz v0, :cond_3a

    move v1, v2

    :goto_d
    # setter for: Lcom/buzzfeed/spicerack/ui/view/EmbedWebView;->mDidClick:Z
    invoke-static {v4, v1}, Lcom/buzzfeed/spicerack/ui/view/EmbedWebView;->access$102(Lcom/buzzfeed/spicerack/ui/view/EmbedWebView;Z)Z

    .line 68
    iget-object v1, p0, Lcom/buzzfeed/spicerack/ui/view/EmbedWebView$1;->this$0:Lcom/buzzfeed/spicerack/ui/view/EmbedWebView;

    # getter for: Lcom/buzzfeed/spicerack/ui/view/EmbedWebView;->mDidClick:Z
    invoke-static {v1}, Lcom/buzzfeed/spicerack/ui/view/EmbedWebView;->access$100(Lcom/buzzfeed/spicerack/ui/view/EmbedWebView;)Z

    move-result v1

    if-eqz v1, :cond_3c

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v2, :cond_3c

    iget-object v1, p0, Lcom/buzzfeed/spicerack/ui/view/EmbedWebView$1;->this$0:Lcom/buzzfeed/spicerack/ui/view/EmbedWebView;

    # getter for: Lcom/buzzfeed/spicerack/ui/view/EmbedWebView;->mOnClickListener:Lcom/buzzfeed/spicerack/ui/view/EmbedWebView$EmbedWebViewClickListener;
    invoke-static {v1}, Lcom/buzzfeed/spicerack/ui/view/EmbedWebView;->access$200(Lcom/buzzfeed/spicerack/ui/view/EmbedWebView;)Lcom/buzzfeed/spicerack/ui/view/EmbedWebView$EmbedWebViewClickListener;

    move-result-object v1

    if-eqz v1, :cond_3c

    .line 69
    iget-object v1, p0, Lcom/buzzfeed/spicerack/ui/view/EmbedWebView$1;->this$0:Lcom/buzzfeed/spicerack/ui/view/EmbedWebView;

    # getter for: Lcom/buzzfeed/spicerack/ui/view/EmbedWebView;->mOnClickListener:Lcom/buzzfeed/spicerack/ui/view/EmbedWebView$EmbedWebViewClickListener;
    invoke-static {v1}, Lcom/buzzfeed/spicerack/ui/view/EmbedWebView;->access$200(Lcom/buzzfeed/spicerack/ui/view/EmbedWebView;)Lcom/buzzfeed/spicerack/ui/view/EmbedWebView$EmbedWebViewClickListener;

    move-result-object v1

    iget-object v3, p0, Lcom/buzzfeed/spicerack/ui/view/EmbedWebView$1;->this$0:Lcom/buzzfeed/spicerack/ui/view/EmbedWebView;

    # getter for: Lcom/buzzfeed/spicerack/ui/view/EmbedWebView;->mEmbedSpice:Lcom/buzzfeed/spicerack/data/model/subbuzz/EmbedSpice;
    invoke-static {v3}, Lcom/buzzfeed/spicerack/ui/view/EmbedWebView;->access$300(Lcom/buzzfeed/spicerack/ui/view/EmbedWebView;)Lcom/buzzfeed/spicerack/data/model/subbuzz/EmbedSpice;

    move-result-object v3

    invoke-interface {v3}, Lcom/buzzfeed/spicerack/data/model/subbuzz/EmbedSpice;->getOriginalUrl()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/buzzfeed/spicerack/ui/view/EmbedWebView$EmbedWebViewClickListener;->onWebViewClicked(Ljava/lang/String;)V

    .line 72
    :goto_39
    return v2

    :cond_3a
    move v1, v3

    .line 67
    goto :goto_d

    :cond_3c
    move v2, v3

    .line 72
    goto :goto_39
.end method
