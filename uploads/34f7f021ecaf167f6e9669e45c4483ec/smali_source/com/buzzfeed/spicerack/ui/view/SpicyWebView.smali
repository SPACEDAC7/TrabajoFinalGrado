.class public Lcom/buzzfeed/spicerack/ui/view/SpicyWebView;
.super Landroid/webkit/WebView;
.source "SpicyWebView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/buzzfeed/spicerack/ui/view/SpicyWebView$SpicyWebViewScrollListener;,
        Lcom/buzzfeed/spicerack/ui/view/SpicyWebView$BuzzWebViewClient;
    }
.end annotation


# static fields
.field private static final KEY_JAVASCRIPT_BUZZ_PAGE:Ljava/lang/String; = "buzzpage"

.field private static final KEY_JAVASCRIPT_BUZZ_SHARE:Ljava/lang/String; = "bf"

.field private static final MIN_DELTA:I = 0x12c


# instance fields
.field private mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mFallbackViewListener:Lcom/buzzfeed/spicerack/ui/protocol/FallbackViewListener;

.field private mIsLoaded:Z

.field private mLastScrollEvent:I

.field private mSpicyEventListener:Lcom/buzzfeed/spicerack/ui/protocol/SpicyEventListener;

.field private mSpicyWebViewScrollListener:Lcom/buzzfeed/spicerack/ui/view/SpicyWebView$SpicyWebViewScrollListener;

.field private mUseCache:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    const/4 v0, 0x0

    iput v0, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyWebView;->mLastScrollEvent:I

    .line 45
    invoke-direct {p0}, Lcom/buzzfeed/spicerack/ui/view/SpicyWebView;->init()V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 49
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    const/4 v0, 0x0

    iput v0, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyWebView;->mLastScrollEvent:I

    .line 50
    invoke-direct {p0}, Lcom/buzzfeed/spicerack/ui/view/SpicyWebView;->init()V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "useCache"    # Z

    .prologue
    .line 38
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 28
    const/4 v0, 0x0

    iput v0, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyWebView;->mLastScrollEvent:I

    .line 39
    iput-boolean p2, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyWebView;->mUseCache:Z

    .line 40
    invoke-direct {p0}, Lcom/buzzfeed/spicerack/ui/view/SpicyWebView;->init()V

    .line 41
    return-void
.end method

.method static synthetic access$000(Lcom/buzzfeed/spicerack/ui/view/SpicyWebView;)Z
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/spicerack/ui/view/SpicyWebView;

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyWebView;->mIsLoaded:Z

    return v0
.end method

.method static synthetic access$002(Lcom/buzzfeed/spicerack/ui/view/SpicyWebView;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/spicerack/ui/view/SpicyWebView;
    .param p1, "x1"    # Z

    .prologue
    .line 25
    iput-boolean p1, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyWebView;->mIsLoaded:Z

    return p1
.end method

.method static synthetic access$100(Lcom/buzzfeed/spicerack/ui/view/SpicyWebView;)Lcom/buzzfeed/spicerack/ui/protocol/SpicyEventListener;
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/spicerack/ui/view/SpicyWebView;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyWebView;->mSpicyEventListener:Lcom/buzzfeed/spicerack/ui/protocol/SpicyEventListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/buzzfeed/spicerack/ui/view/SpicyWebView;I)V
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/spicerack/ui/view/SpicyWebView;
    .param p1, "x1"    # I

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/buzzfeed/spicerack/ui/view/SpicyWebView;->sendScrollEvent(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/buzzfeed/spicerack/ui/view/SpicyWebView;)Lcom/buzzfeed/spicerack/ui/protocol/FallbackViewListener;
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/spicerack/ui/view/SpicyWebView;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyWebView;->mFallbackViewListener:Lcom/buzzfeed/spicerack/ui/protocol/FallbackViewListener;

    return-object v0
.end method

.method private init()V
    .registers 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 55
    invoke-virtual {p0}, Lcom/buzzfeed/spicerack/ui/view/SpicyWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    .line 56
    .local v1, "webSettings":Landroid/webkit/WebSettings;
    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 57
    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 58
    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 59
    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 60
    invoke-virtual {v1, v5}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    .line 61
    sget-object v2, Landroid/webkit/WebSettings$PluginState;->ON:Landroid/webkit/WebSettings$PluginState;

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setPluginState(Landroid/webkit/WebSettings$PluginState;)V

    .line 62
    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 63
    sget-object v2, Landroid/webkit/WebSettings$RenderPriority;->HIGH:Landroid/webkit/WebSettings$RenderPriority;

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setRenderPriority(Landroid/webkit/WebSettings$RenderPriority;)V

    .line 64
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/buzzfeed/spicerack/data/constant/Environment;->getBFUserAgent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 66
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v2, v3, :cond_4e

    .line 67
    invoke-static {v4}, Lcom/buzzfeed/spicerack/ui/view/SpicyWebView;->setWebContentsDebuggingEnabled(Z)V

    .line 70
    :cond_4e
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/buzzfeed/spicerack/ui/view/SpicyWebView;->setOverScrollMode(I)V

    .line 71
    invoke-virtual {p0, v5}, Lcom/buzzfeed/spicerack/ui/view/SpicyWebView;->setVerticalScrollBarEnabled(Z)V

    .line 72
    new-instance v0, Lcom/buzzfeed/spicerack/ui/view/SpicyWebView$BuzzWebViewClient;

    invoke-direct {v0, p0}, Lcom/buzzfeed/spicerack/ui/view/SpicyWebView$BuzzWebViewClient;-><init>(Lcom/buzzfeed/spicerack/ui/view/SpicyWebView;)V

    .line 73
    .local v0, "buzzWebViewClient":Lcom/buzzfeed/spicerack/ui/view/SpicyWebView$BuzzWebViewClient;
    iget-boolean v2, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyWebView;->mUseCache:Z

    if-eqz v2, :cond_61

    invoke-virtual {v0}, Lcom/buzzfeed/spicerack/ui/view/SpicyWebView$BuzzWebViewClient;->setCacheEnabled()V

    .line 74
    :cond_61
    invoke-virtual {p0, v0}, Lcom/buzzfeed/spicerack/ui/view/SpicyWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 75
    new-instance v2, Landroid/webkit/WebChromeClient;

    invoke-direct {v2}, Landroid/webkit/WebChromeClient;-><init>()V

    invoke-virtual {p0, v2}, Lcom/buzzfeed/spicerack/ui/view/SpicyWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 76
    return-void
.end method

.method private sendScrollEvent(I)V
    .registers 7
    .param p1, "y"    # I

    .prologue
    .line 105
    const-string v1, "javascript:BF.notifyWebview({ type: \'scroll\', data: { offset: %d } });"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 106
    .local v0, "formatted":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/buzzfeed/spicerack/ui/view/SpicyWebView;->loadUrl(Ljava/lang/String;)V

    .line 107
    return-void
.end method


# virtual methods
.method public analytics(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 171
    iget-object v0, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyWebView;->mSpicyEventListener:Lcom/buzzfeed/spicerack/ui/protocol/SpicyEventListener;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyWebView;->mSpicyEventListener:Lcom/buzzfeed/spicerack/ui/protocol/SpicyEventListener;

    invoke-interface {v0, p1, p2}, Lcom/buzzfeed/spicerack/ui/protocol/SpicyEventListener;->onAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    :cond_9
    return-void
.end method

.method protected onFinishInflate()V
    .registers 2

    .prologue
    .line 181
    invoke-super {p0}, Landroid/webkit/WebView;->onFinishInflate()V

    .line 183
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyWebView;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 184
    return-void
.end method

.method protected onMeasure(II)V
    .registers 8
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 191
    invoke-virtual {p0}, Lcom/buzzfeed/spicerack/ui/view/SpicyWebView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 192
    .local v2, "wm":Landroid/view/WindowManager;
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 194
    .local v0, "display":Landroid/view/Display;
    iget-object v3, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyWebView;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    if-nez v3, :cond_1c

    .line 195
    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v3, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyWebView;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 198
    :cond_1c
    invoke-static {}, Lcom/buzzfeed/toolkit/util/VersionUtil;->hasJellyBeanMR1()Z

    move-result v3

    if-eqz v3, :cond_35

    .line 199
    iget-object v3, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyWebView;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v3}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 204
    :goto_27
    iget-object v3, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyWebView;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v1, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 205
    .local v1, "height":I
    const/high16 v3, 0x40000000

    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 206
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onMeasure(II)V

    .line 207
    return-void

    .line 201
    .end local v1    # "height":I
    :cond_35
    iget-object v3, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyWebView;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v3}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    goto :goto_27
.end method

.method public onScroll(I)V
    .registers 4
    .param p1, "y"    # I

    .prologue
    .line 94
    if-gez p1, :cond_3

    .line 102
    :cond_2
    :goto_2
    return-void

    .line 98
    :cond_3
    iget v0, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyWebView;->mLastScrollEvent:I

    sub-int/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/16 v1, 0x12c

    if-le v0, v1, :cond_2

    .line 99
    invoke-direct {p0, p1}, Lcom/buzzfeed/spicerack/ui/view/SpicyWebView;->sendScrollEvent(I)V

    .line 100
    iput p1, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyWebView;->mLastScrollEvent:I

    goto :goto_2
.end method

.method protected onScrollChanged(IIII)V
    .registers 7
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "oldl"    # I
    .param p4, "oldt"    # I

    .prologue
    .line 211
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebView;->onScrollChanged(IIII)V

    .line 212
    iget-object v0, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyWebView;->mSpicyWebViewScrollListener:Lcom/buzzfeed/spicerack/ui/view/SpicyWebView$SpicyWebViewScrollListener;

    if-eqz v0, :cond_10

    .line 213
    iget-object v0, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyWebView;->mSpicyWebViewScrollListener:Lcom/buzzfeed/spicerack/ui/view/SpicyWebView$SpicyWebViewScrollListener;

    invoke-virtual {p0}, Lcom/buzzfeed/spicerack/ui/view/SpicyWebView;->getScrollY()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/buzzfeed/spicerack/ui/view/SpicyWebView$SpicyWebViewScrollListener;->onWebViewScrolled(I)V

    .line 215
    :cond_10
    return-void
.end method

.method public playYoutube(Ljava/lang/String;)V
    .registers 3
    .param p1, "videoId"    # Ljava/lang/String;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 158
    iget-object v0, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyWebView;->mSpicyEventListener:Lcom/buzzfeed/spicerack/ui/protocol/SpicyEventListener;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyWebView;->mSpicyEventListener:Lcom/buzzfeed/spicerack/ui/protocol/SpicyEventListener;

    invoke-interface {v0, p1}, Lcom/buzzfeed/spicerack/ui/protocol/SpicyEventListener;->playYoutube(Ljava/lang/String;)V

    .line 159
    :cond_9
    return-void
.end method

.method public populateFrom(Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem;)V
    .registers 4
    .param p1, "spiceItem"    # Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem;

    .prologue
    .line 79
    invoke-virtual {p1}, Lcom/buzzfeed/spicerack/data/model/subbuzz/SpiceItem;->getUri()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/buzzfeed/spicerack/data/constant/Environment;->buildWebUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 80
    .local v0, "url":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/buzzfeed/spicerack/ui/view/SpicyWebView;->loadUrl(Ljava/lang/String;)V

    .line 81
    return-void
.end method

.method public setExternalListener(Lcom/buzzfeed/spicerack/ui/protocol/SpicyEventListener;)V
    .registers 3
    .param p1, "listener"    # Lcom/buzzfeed/spicerack/ui/protocol/SpicyEventListener;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyWebView;->mSpicyEventListener:Lcom/buzzfeed/spicerack/ui/protocol/SpicyEventListener;

    .line 89
    const-string v0, "bf"

    invoke-virtual {p0, p0, v0}, Lcom/buzzfeed/spicerack/ui/view/SpicyWebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    const-string v0, "buzzpage"

    invoke-virtual {p0, p0, v0}, Lcom/buzzfeed/spicerack/ui/view/SpicyWebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    return-void
.end method

.method public setListener(Lcom/buzzfeed/spicerack/ui/protocol/FallbackViewListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/buzzfeed/spicerack/ui/protocol/FallbackViewListener;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyWebView;->mFallbackViewListener:Lcom/buzzfeed/spicerack/ui/protocol/FallbackViewListener;

    .line 85
    return-void
.end method

.method public setShareJSON(Ljava/lang/String;)V
    .registers 3
    .param p1, "data"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 176
    iget-object v0, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyWebView;->mSpicyEventListener:Lcom/buzzfeed/spicerack/ui/protocol/SpicyEventListener;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyWebView;->mSpicyEventListener:Lcom/buzzfeed/spicerack/ui/protocol/SpicyEventListener;

    invoke-interface {v0, p1}, Lcom/buzzfeed/spicerack/ui/protocol/SpicyEventListener;->setShareJson(Ljava/lang/String;)V

    .line 177
    :cond_9
    return-void
.end method

.method public setSpicyScrollListener(Lcom/buzzfeed/spicerack/ui/view/SpicyWebView$SpicyWebViewScrollListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/buzzfeed/spicerack/ui/view/SpicyWebView$SpicyWebViewScrollListener;

    .prologue
    .line 218
    iput-object p1, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyWebView;->mSpicyWebViewScrollListener:Lcom/buzzfeed/spicerack/ui/view/SpicyWebView$SpicyWebViewScrollListener;

    .line 219
    return-void
.end method

.method public share(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 152
    iget-object v0, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyWebView;->mSpicyEventListener:Lcom/buzzfeed/spicerack/ui/protocol/SpicyEventListener;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyWebView;->mSpicyEventListener:Lcom/buzzfeed/spicerack/ui/protocol/SpicyEventListener;

    invoke-interface {v0, p1, p2}, Lcom/buzzfeed/spicerack/ui/protocol/SpicyEventListener;->onShareEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    :cond_9
    return-void
.end method

.method public viewResponses()V
    .registers 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 164
    iget-object v0, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyWebView;->mSpicyEventListener:Lcom/buzzfeed/spicerack/ui/protocol/SpicyEventListener;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyWebView;->mSpicyEventListener:Lcom/buzzfeed/spicerack/ui/protocol/SpicyEventListener;

    invoke-interface {v0}, Lcom/buzzfeed/spicerack/ui/protocol/SpicyEventListener;->viewResponses()V

    .line 165
    :cond_9
    return-void
.end method
