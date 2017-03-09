.class public Lcom/buzzfeed/toolkit/ui/view/ProgressWebView$DefaultWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "ProgressWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/buzzfeed/toolkit/ui/view/ProgressWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "DefaultWebViewClient"
.end annotation


# instance fields
.field private start:J

.field final synthetic this$0:Lcom/buzzfeed/toolkit/ui/view/ProgressWebView;


# direct methods
.method protected constructor <init>(Lcom/buzzfeed/toolkit/ui/view/ProgressWebView;)V
    .registers 2
    .param p1, "this$0"    # Lcom/buzzfeed/toolkit/ui/view/ProgressWebView;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/buzzfeed/toolkit/ui/view/ProgressWebView$DefaultWebViewClient;->this$0:Lcom/buzzfeed/toolkit/ui/view/ProgressWebView;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 9
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/buzzfeed/toolkit/ui/view/ProgressWebView$DefaultWebViewClient;->this$0:Lcom/buzzfeed/toolkit/ui/view/ProgressWebView;

    # invokes: Lcom/buzzfeed/toolkit/ui/view/ProgressWebView;->hideProgress()V
    invoke-static {v0}, Lcom/buzzfeed/toolkit/ui/view/ProgressWebView;->access$100(Lcom/buzzfeed/toolkit/ui/view/ProgressWebView;)V

    .line 116
    # getter for: Lcom/buzzfeed/toolkit/ui/view/ProgressWebView;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/buzzfeed/toolkit/ui/view/ProgressWebView;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WebView finished progress (in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/buzzfeed/toolkit/ui/view/ProgressWebView$DefaultWebViewClient;->start:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x64

    div-long/2addr v2, v4

    long-to-double v2, v2

    const-wide/high16 v4, 0x4024000000000000L

    div-double/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " secs)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/buzzfeed/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 6
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 109
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/buzzfeed/toolkit/ui/view/ProgressWebView$DefaultWebViewClient;->start:J

    .line 110
    iget-object v0, p0, Lcom/buzzfeed/toolkit/ui/view/ProgressWebView$DefaultWebViewClient;->this$0:Lcom/buzzfeed/toolkit/ui/view/ProgressWebView;

    # invokes: Lcom/buzzfeed/toolkit/ui/view/ProgressWebView;->showProgress()V
    invoke-static {v0}, Lcom/buzzfeed/toolkit/ui/view/ProgressWebView;->access$000(Lcom/buzzfeed/toolkit/ui/view/ProgressWebView;)V

    .line 111
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 104
    const/4 v0, 0x1

    return v0
.end method
