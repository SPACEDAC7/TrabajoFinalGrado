.class Lcom/buzzfeed/spicerack/ui/view/EmbedWebView$EmbedWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "EmbedWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/buzzfeed/spicerack/ui/view/EmbedWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EmbedWebViewClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/buzzfeed/spicerack/ui/view/EmbedWebView;


# direct methods
.method private constructor <init>(Lcom/buzzfeed/spicerack/ui/view/EmbedWebView;)V
    .registers 2

    .prologue
    .line 77
    iput-object p1, p0, Lcom/buzzfeed/spicerack/ui/view/EmbedWebView$EmbedWebViewClient;->this$0:Lcom/buzzfeed/spicerack/ui/view/EmbedWebView;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/buzzfeed/spicerack/ui/view/EmbedWebView;Lcom/buzzfeed/spicerack/ui/view/EmbedWebView$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/buzzfeed/spicerack/ui/view/EmbedWebView;
    .param p2, "x1"    # Lcom/buzzfeed/spicerack/ui/view/EmbedWebView$1;

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/buzzfeed/spicerack/ui/view/EmbedWebView$EmbedWebViewClient;-><init>(Lcom/buzzfeed/spicerack/ui/view/EmbedWebView;)V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 5
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 86
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lcom/buzzfeed/spicerack/ui/view/EmbedWebView$EmbedWebViewClient;->this$0:Lcom/buzzfeed/spicerack/ui/view/EmbedWebView;

    # getter for: Lcom/buzzfeed/spicerack/ui/view/EmbedWebView;->mEmbedSpice:Lcom/buzzfeed/spicerack/data/model/subbuzz/EmbedSpice;
    invoke-static {v0}, Lcom/buzzfeed/spicerack/ui/view/EmbedWebView;->access$300(Lcom/buzzfeed/spicerack/ui/view/EmbedWebView;)Lcom/buzzfeed/spicerack/data/model/subbuzz/EmbedSpice;

    move-result-object v0

    invoke-interface {v0}, Lcom/buzzfeed/spicerack/data/model/subbuzz/EmbedSpice;->isInstagramEmbed()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 88
    iget-object v0, p0, Lcom/buzzfeed/spicerack/ui/view/EmbedWebView$EmbedWebViewClient;->this$0:Lcom/buzzfeed/spicerack/ui/view/EmbedWebView;

    const-string v1, "javascript:SpicyEmbed.getSize(document.getElementsByTagName(\"div\")[0].clientWidth + \',\' + document.getElementsByTagName(\"div\")[0].clientHeight);"

    invoke-virtual {v0, v1}, Lcom/buzzfeed/spicerack/ui/view/EmbedWebView;->loadUrl(Ljava/lang/String;)V

    .line 90
    :cond_16
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/buzzfeed/spicerack/ui/view/EmbedWebView$EmbedWebViewClient;->this$0:Lcom/buzzfeed/spicerack/ui/view/EmbedWebView;

    invoke-virtual {v0, p2}, Lcom/buzzfeed/spicerack/ui/view/EmbedWebView;->loadUrl(Ljava/lang/String;)V

    .line 81
    const/4 v0, 0x0

    return v0
.end method
