.class public Lcom/buzzfeed/spicerack/ui/view/EmbedWebView;
.super Landroid/webkit/WebView;
.source "EmbedWebView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/buzzfeed/spicerack/ui/view/EmbedWebView$EmbedWebViewClickListener;,
        Lcom/buzzfeed/spicerack/ui/view/EmbedWebView$EmbedWebViewClient;
    }
.end annotation


# instance fields
.field private mDidClick:Z

.field private mEmbedSpice:Lcom/buzzfeed/spicerack/data/model/subbuzz/EmbedSpice;

.field private mOnClickListener:Lcom/buzzfeed/spicerack/ui/view/EmbedWebView$EmbedWebViewClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/buzzfeed/spicerack/ui/view/EmbedWebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/buzzfeed/spicerack/ui/view/EmbedWebView;->mDidClick:Z

    .line 31
    return-void
.end method

.method static synthetic access$100(Lcom/buzzfeed/spicerack/ui/view/EmbedWebView;)Z
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/spicerack/ui/view/EmbedWebView;

    .prologue
    .line 20
    iget-boolean v0, p0, Lcom/buzzfeed/spicerack/ui/view/EmbedWebView;->mDidClick:Z

    return v0
.end method

.method static synthetic access$102(Lcom/buzzfeed/spicerack/ui/view/EmbedWebView;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/spicerack/ui/view/EmbedWebView;
    .param p1, "x1"    # Z

    .prologue
    .line 20
    iput-boolean p1, p0, Lcom/buzzfeed/spicerack/ui/view/EmbedWebView;->mDidClick:Z

    return p1
.end method

.method static synthetic access$200(Lcom/buzzfeed/spicerack/ui/view/EmbedWebView;)Lcom/buzzfeed/spicerack/ui/view/EmbedWebView$EmbedWebViewClickListener;
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/spicerack/ui/view/EmbedWebView;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/buzzfeed/spicerack/ui/view/EmbedWebView;->mOnClickListener:Lcom/buzzfeed/spicerack/ui/view/EmbedWebView$EmbedWebViewClickListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/buzzfeed/spicerack/ui/view/EmbedWebView;)Lcom/buzzfeed/spicerack/data/model/subbuzz/EmbedSpice;
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/spicerack/ui/view/EmbedWebView;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/buzzfeed/spicerack/ui/view/EmbedWebView;->mEmbedSpice:Lcom/buzzfeed/spicerack/data/model/subbuzz/EmbedSpice;

    return-object v0
.end method

.method static synthetic access$400(Lcom/buzzfeed/spicerack/ui/view/EmbedWebView;III)I
    .registers 5
    .param p0, "x0"    # Lcom/buzzfeed/spicerack/ui/view/EmbedWebView;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 20
    invoke-direct {p0, p1, p2, p3}, Lcom/buzzfeed/spicerack/ui/view/EmbedWebView;->getFinalHeight(III)I

    move-result v0

    return v0
.end method

.method private getFinalHeight(III)I
    .registers 7
    .param p1, "width"    # I
    .param p2, "imageWidth"    # I
    .param p3, "imageHeight"    # I

    .prologue
    .line 113
    int-to-float v1, p1

    int-to-float v2, p2

    div-float v0, v1, v2

    .line 114
    .local v0, "ratio":F
    int-to-float v1, p3

    mul-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    return v1
.end method


# virtual methods
.method public getSize(Ljava/lang/String;)V
    .registers 3
    .param p1, "widthHeight"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 95
    new-instance v0, Lcom/buzzfeed/spicerack/ui/view/EmbedWebView$2;

    invoke-direct {v0, p0, p1}, Lcom/buzzfeed/spicerack/ui/view/EmbedWebView$2;-><init>(Lcom/buzzfeed/spicerack/ui/view/EmbedWebView;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/buzzfeed/spicerack/ui/view/EmbedWebView;->post(Ljava/lang/Runnable;)Z

    .line 110
    return-void
.end method

.method public loadUrlWithEmbedSpice(Ljava/lang/String;Lcom/buzzfeed/spicerack/data/model/subbuzz/EmbedSpice;)V
    .registers 4
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "embedSpice"    # Lcom/buzzfeed/spicerack/data/model/subbuzz/EmbedSpice;

    .prologue
    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/buzzfeed/spicerack/ui/view/EmbedWebView;->mDidClick:Z

    .line 35
    invoke-virtual {p0}, Lcom/buzzfeed/spicerack/ui/view/EmbedWebView;->setWebDefaults()V

    .line 36
    iput-object p2, p0, Lcom/buzzfeed/spicerack/ui/view/EmbedWebView;->mEmbedSpice:Lcom/buzzfeed/spicerack/data/model/subbuzz/EmbedSpice;

    .line 37
    invoke-super {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method public setEmbedWebViewClickListener(Lcom/buzzfeed/spicerack/ui/view/EmbedWebView$EmbedWebViewClickListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/buzzfeed/spicerack/ui/view/EmbedWebView$EmbedWebViewClickListener;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/buzzfeed/spicerack/ui/view/EmbedWebView;->mOnClickListener:Lcom/buzzfeed/spicerack/ui/view/EmbedWebView$EmbedWebViewClickListener;

    .line 42
    return-void
.end method

.method protected setWebDefaults()V
    .registers 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 47
    invoke-virtual {p0}, Lcom/buzzfeed/spicerack/ui/view/EmbedWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 48
    .local v0, "webSettings":Landroid/webkit/WebSettings;
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 49
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 50
    const-string v1, "SpicyEmbed"

    invoke-virtual {p0, p0, v1}, Lcom/buzzfeed/spicerack/ui/view/EmbedWebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 52
    sget-object v1, Landroid/webkit/WebSettings$PluginState;->ON:Landroid/webkit/WebSettings$PluginState;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setPluginState(Landroid/webkit/WebSettings$PluginState;)V

    .line 53
    sget-object v1, Landroid/webkit/WebSettings$RenderPriority;->HIGH:Landroid/webkit/WebSettings$RenderPriority;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setRenderPriority(Landroid/webkit/WebSettings$RenderPriority;)V

    .line 54
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/buzzfeed/spicerack/ui/view/EmbedWebView;->setOverScrollMode(I)V

    .line 55
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/buzzfeed/spicerack/ui/view/EmbedWebView;->setVerticalScrollBarEnabled(Z)V

    .line 56
    invoke-static {}, Lcom/buzzfeed/toolkit/util/VersionUtil;->hasKitKat()Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 57
    invoke-static {v2}, Lcom/buzzfeed/spicerack/ui/view/EmbedWebView;->setWebContentsDebuggingEnabled(Z)V

    .line 60
    :cond_2e
    new-instance v1, Landroid/webkit/WebChromeClient;

    invoke-direct {v1}, Landroid/webkit/WebChromeClient;-><init>()V

    invoke-virtual {p0, v1}, Lcom/buzzfeed/spicerack/ui/view/EmbedWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 61
    new-instance v1, Lcom/buzzfeed/spicerack/ui/view/EmbedWebView$EmbedWebViewClient;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/buzzfeed/spicerack/ui/view/EmbedWebView$EmbedWebViewClient;-><init>(Lcom/buzzfeed/spicerack/ui/view/EmbedWebView;Lcom/buzzfeed/spicerack/ui/view/EmbedWebView$1;)V

    invoke-virtual {p0, v1}, Lcom/buzzfeed/spicerack/ui/view/EmbedWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 63
    new-instance v1, Lcom/buzzfeed/spicerack/ui/view/EmbedWebView$1;

    invoke-direct {v1, p0}, Lcom/buzzfeed/spicerack/ui/view/EmbedWebView$1;-><init>(Lcom/buzzfeed/spicerack/ui/view/EmbedWebView;)V

    invoke-virtual {p0, v1}, Lcom/buzzfeed/spicerack/ui/view/EmbedWebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 75
    return-void
.end method
