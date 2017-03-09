.class Lcom/buzzfeed/spicerack/ui/view/SpicyWebView$BuzzWebViewClient;
.super Lcom/buzzfeed/spicerack/ui/utils/CachingWebViewClient;
.source "SpicyWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/buzzfeed/spicerack/ui/view/SpicyWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BuzzWebViewClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/buzzfeed/spicerack/ui/view/SpicyWebView;


# direct methods
.method public constructor <init>(Lcom/buzzfeed/spicerack/ui/view/SpicyWebView;)V
    .registers 3

    .prologue
    .line 112
    iput-object p1, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyWebView$BuzzWebViewClient;->this$0:Lcom/buzzfeed/spicerack/ui/view/SpicyWebView;

    .line 113
    invoke-virtual {p1}, Lcom/buzzfeed/spicerack/ui/view/SpicyWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/buzzfeed/spicerack/ui/utils/CachingWebViewClient;-><init>(Landroid/content/Context;)V

    .line 115
    return-void
.end method

.method private isBuzzFeedUrl(Ljava/lang/String;)Z
    .registers 5
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 131
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 132
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {v1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    .line 133
    .local v0, "authority":Ljava/lang/String;
    const-string v2, "buzzfeed.com"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    return v2
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 10
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 138
    invoke-static {}, Lcom/buzzfeed/toolkit/util/UIUtil;->getScreenHeight()I

    move-result v0

    .line 139
    .local v0, "height":I
    iget-object v1, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyWebView$BuzzWebViewClient;->this$0:Lcom/buzzfeed/spicerack/ui/view/SpicyWebView;

    const-string v2, "javascript:BF_STATIC.viewportHeight = %d;"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/buzzfeed/spicerack/ui/view/SpicyWebView;->loadUrl(Ljava/lang/String;)V

    .line 140
    iget-object v1, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyWebView$BuzzWebViewClient;->this$0:Lcom/buzzfeed/spicerack/ui/view/SpicyWebView;

    # invokes: Lcom/buzzfeed/spicerack/ui/view/SpicyWebView;->sendScrollEvent(I)V
    invoke-static {v1, v5}, Lcom/buzzfeed/spicerack/ui/view/SpicyWebView;->access$200(Lcom/buzzfeed/spicerack/ui/view/SpicyWebView;I)V

    .line 141
    iget-object v1, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyWebView$BuzzWebViewClient;->this$0:Lcom/buzzfeed/spicerack/ui/view/SpicyWebView;

    # getter for: Lcom/buzzfeed/spicerack/ui/view/SpicyWebView;->mFallbackViewListener:Lcom/buzzfeed/spicerack/ui/protocol/FallbackViewListener;
    invoke-static {v1}, Lcom/buzzfeed/spicerack/ui/view/SpicyWebView;->access$300(Lcom/buzzfeed/spicerack/ui/view/SpicyWebView;)Lcom/buzzfeed/spicerack/ui/protocol/FallbackViewListener;

    move-result-object v1

    if-eqz v1, :cond_2f

    .line 142
    iget-object v1, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyWebView$BuzzWebViewClient;->this$0:Lcom/buzzfeed/spicerack/ui/view/SpicyWebView;

    # getter for: Lcom/buzzfeed/spicerack/ui/view/SpicyWebView;->mFallbackViewListener:Lcom/buzzfeed/spicerack/ui/protocol/FallbackViewListener;
    invoke-static {v1}, Lcom/buzzfeed/spicerack/ui/view/SpicyWebView;->access$300(Lcom/buzzfeed/spicerack/ui/view/SpicyWebView;)Lcom/buzzfeed/spicerack/ui/protocol/FallbackViewListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/buzzfeed/spicerack/ui/protocol/FallbackViewListener;->pageLoaded()V

    .line 144
    :cond_2f
    iget-object v1, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyWebView$BuzzWebViewClient;->this$0:Lcom/buzzfeed/spicerack/ui/view/SpicyWebView;

    # setter for: Lcom/buzzfeed/spicerack/ui/view/SpicyWebView;->mIsLoaded:Z
    invoke-static {v1, v6}, Lcom/buzzfeed/spicerack/ui/view/SpicyWebView;->access$002(Lcom/buzzfeed/spicerack/ui/view/SpicyWebView;Z)Z

    .line 145
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 5
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 121
    iget-object v1, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyWebView$BuzzWebViewClient;->this$0:Lcom/buzzfeed/spicerack/ui/view/SpicyWebView;

    # getter for: Lcom/buzzfeed/spicerack/ui/view/SpicyWebView;->mIsLoaded:Z
    invoke-static {v1}, Lcom/buzzfeed/spicerack/ui/view/SpicyWebView;->access$000(Lcom/buzzfeed/spicerack/ui/view/SpicyWebView;)Z

    move-result v1

    if-eqz v1, :cond_1c

    iget-object v1, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyWebView$BuzzWebViewClient;->this$0:Lcom/buzzfeed/spicerack/ui/view/SpicyWebView;

    # getter for: Lcom/buzzfeed/spicerack/ui/view/SpicyWebView;->mSpicyEventListener:Lcom/buzzfeed/spicerack/ui/protocol/SpicyEventListener;
    invoke-static {v1}, Lcom/buzzfeed/spicerack/ui/view/SpicyWebView;->access$100(Lcom/buzzfeed/spicerack/ui/view/SpicyWebView;)Lcom/buzzfeed/spicerack/ui/protocol/SpicyEventListener;

    move-result-object v1

    if-eqz v1, :cond_1c

    .line 122
    iget-object v1, p0, Lcom/buzzfeed/spicerack/ui/view/SpicyWebView$BuzzWebViewClient;->this$0:Lcom/buzzfeed/spicerack/ui/view/SpicyWebView;

    # getter for: Lcom/buzzfeed/spicerack/ui/view/SpicyWebView;->mSpicyEventListener:Lcom/buzzfeed/spicerack/ui/protocol/SpicyEventListener;
    invoke-static {v1}, Lcom/buzzfeed/spicerack/ui/view/SpicyWebView;->access$100(Lcom/buzzfeed/spicerack/ui/view/SpicyWebView;)Lcom/buzzfeed/spicerack/ui/protocol/SpicyEventListener;

    move-result-object v1

    invoke-interface {v1, p2, v0}, Lcom/buzzfeed/spicerack/ui/protocol/SpicyEventListener;->onUrlClicked(Ljava/lang/String;Z)Z

    move-result v0

    .line 126
    :cond_1b
    :goto_1b
    return v0

    :cond_1c
    invoke-direct {p0, p2}, Lcom/buzzfeed/spicerack/ui/view/SpicyWebView$BuzzWebViewClient;->isBuzzFeedUrl(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1b

    const/4 v0, 0x0

    goto :goto_1b
.end method
