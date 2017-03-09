.class public Lcom/buzzfeed/android/data/comment/FacebookCommentsView;
.super Landroid/widget/RelativeLayout;
.source "FacebookCommentsView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/buzzfeed/android/data/comment/FacebookCommentsView$UriWebViewClient;
    }
.end annotation


# static fields
.field private static final NUMBER_OF_COMMENTS:I = 0x5


# instance fields
.field mProgressSpinner:Landroid/widget/ProgressBar;

.field mUrl:Ljava/lang/String;

.field mWebView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 29
    invoke-direct {p0}, Lcom/buzzfeed/android/data/comment/FacebookCommentsView;->initialize()V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    invoke-direct {p0}, Lcom/buzzfeed/android/data/comment/FacebookCommentsView;->initialize()V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    invoke-direct {p0}, Lcom/buzzfeed/android/data/comment/FacebookCommentsView;->initialize()V

    .line 40
    return-void
.end method

.method static synthetic access$100(Lcom/buzzfeed/android/data/comment/FacebookCommentsView;)V
    .registers 1
    .param p0, "x0"    # Lcom/buzzfeed/android/data/comment/FacebookCommentsView;

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/buzzfeed/android/data/comment/FacebookCommentsView;->hideProgress()V

    return-void
.end method

.method private hideProgress()V
    .registers 3

    .prologue
    .line 111
    iget-object v0, p0, Lcom/buzzfeed/android/data/comment/FacebookCommentsView;->mProgressSpinner:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 112
    iget-object v0, p0, Lcom/buzzfeed/android/data/comment/FacebookCommentsView;->mWebView:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 113
    return-void
.end method

.method private initialize()V
    .registers 3

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/buzzfeed/android/data/comment/FacebookCommentsView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f03006d

    invoke-static {v0, v1, p0}, Lcom/buzzfeed/android/data/comment/FacebookCommentsView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 44
    invoke-direct {p0}, Lcom/buzzfeed/android/data/comment/FacebookCommentsView;->setupWebView()V

    .line 45
    return-void
.end method

.method private setupWebView()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 48
    const v0, 0x7f11015e

    invoke-static {p0, v0}, Lcom/buzzfeed/toolkit/util/UIUtil;->findView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/buzzfeed/android/data/comment/FacebookCommentsView;->mWebView:Landroid/webkit/WebView;

    .line 49
    const v0, 0x7f11015d

    invoke-static {p0, v0}, Lcom/buzzfeed/toolkit/util/UIUtil;->findView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/buzzfeed/android/data/comment/FacebookCommentsView;->mProgressSpinner:Landroid/widget/ProgressBar;

    .line 50
    iget-object v0, p0, Lcom/buzzfeed/android/data/comment/FacebookCommentsView;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Lcom/buzzfeed/android/data/comment/FacebookCommentsView$UriWebViewClient;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/buzzfeed/android/data/comment/FacebookCommentsView$UriWebViewClient;-><init>(Lcom/buzzfeed/android/data/comment/FacebookCommentsView;Lcom/buzzfeed/android/data/comment/FacebookCommentsView$1;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 51
    iget-object v0, p0, Lcom/buzzfeed/android/data/comment/FacebookCommentsView;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Landroid/webkit/WebChromeClient;

    invoke-direct {v1}, Landroid/webkit/WebChromeClient;-><init>()V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 52
    iget-object v0, p0, Lcom/buzzfeed/android/data/comment/FacebookCommentsView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setFocusable(Z)V

    .line 53
    iget-object v0, p0, Lcom/buzzfeed/android/data/comment/FacebookCommentsView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setFocusableInTouchMode(Z)V

    .line 54
    iget-object v0, p0, Lcom/buzzfeed/android/data/comment/FacebookCommentsView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    sget-object v1, Landroid/webkit/WebSettings$PluginState;->ON:Landroid/webkit/WebSettings$PluginState;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setPluginState(Landroid/webkit/WebSettings$PluginState;)V

    .line 55
    iget-object v0, p0, Lcom/buzzfeed/android/data/comment/FacebookCommentsView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 56
    iget-object v0, p0, Lcom/buzzfeed/android/data/comment/FacebookCommentsView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    .line 57
    iget-object v0, p0, Lcom/buzzfeed/android/data/comment/FacebookCommentsView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 58
    iget-object v0, p0, Lcom/buzzfeed/android/data/comment/FacebookCommentsView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 59
    iget-object v0, p0, Lcom/buzzfeed/android/data/comment/FacebookCommentsView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    .line 60
    iget-object v0, p0, Lcom/buzzfeed/android/data/comment/FacebookCommentsView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 61
    iget-object v0, p0, Lcom/buzzfeed/android/data/comment/FacebookCommentsView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 62
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V

    .line 63
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_a0

    .line 64
    iget-object v0, p0, Lcom/buzzfeed/android/data/comment/FacebookCommentsView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    .line 65
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    iget-object v1, p0, Lcom/buzzfeed/android/data/comment/FacebookCommentsView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1, v3}, Landroid/webkit/CookieManager;->setAcceptThirdPartyCookies(Landroid/webkit/WebView;Z)V

    .line 67
    :cond_a0
    return-void
.end method

.method private showProgress()V
    .registers 3

    .prologue
    .line 116
    iget-object v0, p0, Lcom/buzzfeed/android/data/comment/FacebookCommentsView;->mProgressSpinner:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 117
    iget-object v0, p0, Lcom/buzzfeed/android/data/comment/FacebookCommentsView;->mWebView:Landroid/webkit/WebView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 118
    return-void
.end method


# virtual methods
.method public getUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 107
    iget-object v0, p0, Lcom/buzzfeed/android/data/comment/FacebookCommentsView;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method public loadCommentsForUrl(Ljava/lang/String;)V
    .registers 8
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/buzzfeed/android/data/comment/FacebookCommentsView;->showProgress()V

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<!doctype html> <html lang=\"en\"> <head></head> <body> <div id=\"fb-root\"></div> <script>(function(d, s, id) { var js, fjs = d.getElementsByTagName(s)[0]; if (d.getElementById(id)) return; js = d.createElement(s); js.id = id; js.src = \"//connect.facebook.net/en_US/sdk.js#xfbml=1&version=v2.8\"; fjs.parentNode.insertBefore(js, fjs); }(document, \'script\', \'facebook-jssdk\'));</script> <div class=\"fb-comments\" data-href=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\" "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "data-numposts=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\" data-order-by=\"social\">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</div> </body> </html>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 76
    .local v2, "html":Ljava/lang/String;
    iget-object v0, p0, Lcom/buzzfeed/android/data/comment/FacebookCommentsView;->mWebView:Landroid/webkit/WebView;

    const-string v1, "https://www.buzzfeed.com"

    const-string/jumbo v3, "text/html"

    const-string v4, "UTF-8"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    iput-object p1, p0, Lcom/buzzfeed/android/data/comment/FacebookCommentsView;->mUrl:Ljava/lang/String;

    .line 78
    return-void
.end method
