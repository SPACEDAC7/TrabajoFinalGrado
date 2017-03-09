.class public Lcom/buzzfeed/toolkit/ui/view/ProgressWebView;
.super Landroid/widget/RelativeLayout;
.source "ProgressWebView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/buzzfeed/toolkit/ui/view/ProgressWebView$DefaultWebViewClient;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected progressBar:Landroid/widget/ProgressBar;

.field protected webView:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 22
    const-class v0, Lcom/buzzfeed/toolkit/ui/view/ProgressWebView;

    invoke-static {v0}, Lcom/buzzfeed/toolkit/util/LogUtil;->makeLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/buzzfeed/toolkit/ui/view/ProgressWebView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/buzzfeed/toolkit/ui/view/ProgressWebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    invoke-virtual {p0}, Lcom/buzzfeed/toolkit/ui/view/ProgressWebView;->inflateLayout()V

    .line 34
    sget v0, Lcom/buzzfeed/toolkit/R$id;->wp_webview:I

    invoke-static {p0, v0}, Lcom/buzzfeed/toolkit/util/UIUtil;->findView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/buzzfeed/toolkit/ui/view/ProgressWebView;->webView:Landroid/webkit/WebView;

    .line 35
    sget v0, Lcom/buzzfeed/toolkit/R$id;->wp_progress:I

    invoke-static {p0, v0}, Lcom/buzzfeed/toolkit/util/UIUtil;->findView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/buzzfeed/toolkit/ui/view/ProgressWebView;->progressBar:Landroid/widget/ProgressBar;

    .line 37
    invoke-virtual {p0}, Lcom/buzzfeed/toolkit/ui/view/ProgressWebView;->setWebDefaults()V

    .line 38
    return-void
.end method

.method static synthetic access$000(Lcom/buzzfeed/toolkit/ui/view/ProgressWebView;)V
    .registers 1
    .param p0, "x0"    # Lcom/buzzfeed/toolkit/ui/view/ProgressWebView;

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/buzzfeed/toolkit/ui/view/ProgressWebView;->showProgress()V

    return-void
.end method

.method static synthetic access$100(Lcom/buzzfeed/toolkit/ui/view/ProgressWebView;)V
    .registers 1
    .param p0, "x0"    # Lcom/buzzfeed/toolkit/ui/view/ProgressWebView;

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/buzzfeed/toolkit/ui/view/ProgressWebView;->hideProgress()V

    return-void
.end method

.method static synthetic access$200()Ljava/lang/String;
    .registers 1

    .prologue
    .line 20
    sget-object v0, Lcom/buzzfeed/toolkit/ui/view/ProgressWebView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private hideProgress()V
    .registers 3

    .prologue
    .line 121
    iget-object v0, p0, Lcom/buzzfeed/toolkit/ui/view/ProgressWebView;->progressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 122
    iget-object v0, p0, Lcom/buzzfeed/toolkit/ui/view/ProgressWebView;->webView:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 123
    return-void
.end method

.method private showProgress()V
    .registers 3

    .prologue
    .line 126
    iget-object v0, p0, Lcom/buzzfeed/toolkit/ui/view/ProgressWebView;->progressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 127
    iget-object v0, p0, Lcom/buzzfeed/toolkit/ui/view/ProgressWebView;->webView:Landroid/webkit/WebView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 128
    return-void
.end method


# virtual methods
.method public addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 4
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "interfaceName"    # Ljava/lang/String;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "JavascriptInterface"
        }
    .end annotation

    .prologue
    .line 95
    iget-object v0, p0, Lcom/buzzfeed/toolkit/ui/view/ProgressWebView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    return-void
.end method

.method public getSettings()Landroid/webkit/WebSettings;
    .registers 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/buzzfeed/toolkit/ui/view/ProgressWebView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    return-object v0
.end method

.method public goBack()Z
    .registers 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/buzzfeed/toolkit/ui/view/ProgressWebView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 70
    iget-object v0, p0, Lcom/buzzfeed/toolkit/ui/view/ProgressWebView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 71
    const/4 v0, 0x1

    .line 73
    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method protected inflateLayout()V
    .registers 3

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/buzzfeed/toolkit/ui/view/ProgressWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/buzzfeed/toolkit/R$layout;->progress_webview:I

    invoke-static {v0, v1, p0}, Lcom/buzzfeed/toolkit/ui/view/ProgressWebView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 42
    return-void
.end method

.method public loadUrl(Ljava/lang/String;)Z
    .registers 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/buzzfeed/toolkit/ui/view/ProgressWebView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/buzzfeed/toolkit/ui/view/ProgressWebView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 62
    :cond_14
    iget-object v0, p0, Lcom/buzzfeed/toolkit/ui/view/ProgressWebView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 63
    const/4 v0, 0x1

    .line 65
    :goto_1a
    return v0

    :cond_1b
    const/4 v0, 0x0

    goto :goto_1a
.end method

.method protected onDetachedFromWindow()V
    .registers 1

    .prologue
    .line 46
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 47
    invoke-virtual {p0}, Lcom/buzzfeed/toolkit/ui/view/ProgressWebView;->pause()V

    .line 48
    return-void
.end method

.method public pause()V
    .registers 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/buzzfeed/toolkit/ui/view/ProgressWebView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->onPause()V

    .line 78
    return-void
.end method

.method public setWebChromeClient(Landroid/webkit/WebChromeClient;)V
    .registers 3
    .param p1, "webChromeClient"    # Landroid/webkit/WebChromeClient;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/buzzfeed/toolkit/ui/view/ProgressWebView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 91
    return-void
.end method

.method protected setWebDefaults()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 51
    iget-object v1, p0, Lcom/buzzfeed/toolkit/ui/view/ProgressWebView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 52
    .local v0, "webSettings":Landroid/webkit/WebSettings;
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 53
    iget-object v1, p0, Lcom/buzzfeed/toolkit/ui/view/ProgressWebView;->webView:Landroid/webkit/WebView;

    const/high16 v2, 0x2000000

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    .line 54
    iget-object v1, p0, Lcom/buzzfeed/toolkit/ui/view/ProgressWebView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1, v3}, Landroid/webkit/WebView;->setScrollbarFadingEnabled(Z)V

    .line 56
    new-instance v1, Lcom/buzzfeed/toolkit/ui/view/ProgressWebView$DefaultWebViewClient;

    invoke-direct {v1, p0}, Lcom/buzzfeed/toolkit/ui/view/ProgressWebView$DefaultWebViewClient;-><init>(Lcom/buzzfeed/toolkit/ui/view/ProgressWebView;)V

    invoke-virtual {p0, v1}, Lcom/buzzfeed/toolkit/ui/view/ProgressWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 58
    return-void
.end method

.method public setWebViewClient(Landroid/webkit/WebViewClient;)V
    .registers 3
    .param p1, "webViewClient"    # Landroid/webkit/WebViewClient;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/buzzfeed/toolkit/ui/view/ProgressWebView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 87
    return-void
.end method
