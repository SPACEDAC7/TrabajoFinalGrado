.class Lcom/buzzfeed/android/data/comment/FacebookCommentsView$UriWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "FacebookCommentsView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/buzzfeed/android/data/comment/FacebookCommentsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UriWebViewClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/buzzfeed/android/data/comment/FacebookCommentsView;


# direct methods
.method private constructor <init>(Lcom/buzzfeed/android/data/comment/FacebookCommentsView;)V
    .registers 2

    .prologue
    .line 80
    iput-object p1, p0, Lcom/buzzfeed/android/data/comment/FacebookCommentsView$UriWebViewClient;->this$0:Lcom/buzzfeed/android/data/comment/FacebookCommentsView;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/buzzfeed/android/data/comment/FacebookCommentsView;Lcom/buzzfeed/android/data/comment/FacebookCommentsView$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/buzzfeed/android/data/comment/FacebookCommentsView;
    .param p2, "x1"    # Lcom/buzzfeed/android/data/comment/FacebookCommentsView$1;

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/buzzfeed/android/data/comment/FacebookCommentsView$UriWebViewClient;-><init>(Lcom/buzzfeed/android/data/comment/FacebookCommentsView;)V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 6
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 89
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 90
    iget-object v1, p0, Lcom/buzzfeed/android/data/comment/FacebookCommentsView$UriWebViewClient;->this$0:Lcom/buzzfeed/android/data/comment/FacebookCommentsView;

    # invokes: Lcom/buzzfeed/android/data/comment/FacebookCommentsView;->hideProgress()V
    invoke-static {v1}, Lcom/buzzfeed/android/data/comment/FacebookCommentsView;->access$100(Lcom/buzzfeed/android/data/comment/FacebookCommentsView;)V

    .line 93
    const-string v0, "/plugins/close_popup.php?reload="

    .line 94
    .local v0, "reloadStr":Ljava/lang/String;
    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 95
    iget-object v1, p0, Lcom/buzzfeed/android/data/comment/FacebookCommentsView$UriWebViewClient;->this$0:Lcom/buzzfeed/android/data/comment/FacebookCommentsView;

    iget-object v2, p0, Lcom/buzzfeed/android/data/comment/FacebookCommentsView$UriWebViewClient;->this$0:Lcom/buzzfeed/android/data/comment/FacebookCommentsView;

    invoke-virtual {v2}, Lcom/buzzfeed/android/data/comment/FacebookCommentsView;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/buzzfeed/android/data/comment/FacebookCommentsView;->loadCommentsForUrl(Ljava/lang/String;)V

    .line 97
    :cond_1b
    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .registers 5
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "handler"    # Landroid/webkit/SslErrorHandler;
    .param p3, "error"    # Landroid/net/http/SslError;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/buzzfeed/android/data/comment/FacebookCommentsView$UriWebViewClient;->this$0:Lcom/buzzfeed/android/data/comment/FacebookCommentsView;

    # invokes: Lcom/buzzfeed/android/data/comment/FacebookCommentsView;->hideProgress()V
    invoke-static {v0}, Lcom/buzzfeed/android/data/comment/FacebookCommentsView;->access$100(Lcom/buzzfeed/android/data/comment/FacebookCommentsView;)V

    .line 102
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 5
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 83
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 84
    .local v0, "host":Ljava/lang/String;
    const-string v1, "m.facebook.com"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    const/4 v1, 0x1

    :goto_11
    return v1

    :cond_12
    const/4 v1, 0x0

    goto :goto_11
.end method
