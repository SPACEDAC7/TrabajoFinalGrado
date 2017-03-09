.class public Lcom/google/ads/interactivemedia/v3/impl/ac;
.super Ljava/lang/Object;
.source "IMASDK"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "SetJavaScriptEnabled",
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ads/interactivemedia/v3/impl/ac$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/google/ads/interactivemedia/v3/impl/ac$a;

.field private final b:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/impl/ac$a;)V
    .registers 4

    .prologue
    .line 38
    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0, p2}, Lcom/google/ads/interactivemedia/v3/impl/ac;-><init>(Landroid/webkit/WebView;Lcom/google/ads/interactivemedia/v3/impl/ac$a;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/webkit/WebView;Lcom/google/ads/interactivemedia/v3/impl/ac$a;)V
    .registers 7

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/impl/ac;->a:Lcom/google/ads/interactivemedia/v3/impl/ac$a;

    .line 43
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/ac;->b:Landroid/webkit/WebView;

    .line 45
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/ac;->b:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 47
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xf

    if-ne v0, v1, :cond_1a

    .line 50
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/ac;->b:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v3, v1}, Landroid/webkit/WebView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 56
    :cond_1a
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-le v0, v1, :cond_27

    .line 57
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    .line 61
    :cond_27
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 62
    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/ac$1;

    invoke-direct {v0, p0}, Lcom/google/ads/interactivemedia/v3/impl/ac$1;-><init>(Lcom/google/ads/interactivemedia/v3/impl/ac;)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 90
    new-instance v0, Landroid/webkit/WebChromeClient;

    invoke-direct {v0}, Landroid/webkit/WebChromeClient;-><init>()V

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 91
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/impl/c/a;->a(Landroid/webkit/WebSettings;)V

    .line 92
    return-void
.end method

.method static final a(ZLcom/google/ads/interactivemedia/v3/impl/aa;Ljava/lang/String;)V
    .registers 9

    .prologue
    .line 149
    if-eqz p0, :cond_4d

    .line 150
    const-string v0, "Sending javascript msg: "

    .line 151
    :goto_4
    sget-object v1, Lcom/google/ads/interactivemedia/v3/impl/y$a;->a:Lcom/google/ads/interactivemedia/v3/impl/y$a;

    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/impl/y$a;->a(Lcom/google/ads/interactivemedia/v3/impl/y$a;)Z

    move-result v1

    if-eqz v1, :cond_50

    .line 152
    const-string v1, "IMASDK"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x7

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "; URL: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    :cond_4c
    :goto_4c
    return-void

    .line 150
    :cond_4d
    const-string v0, "Received msg: "

    goto :goto_4

    .line 153
    :cond_50
    sget-object v1, Lcom/google/ads/interactivemedia/v3/impl/y$a;->b:Lcom/google/ads/interactivemedia/v3/impl/y$a;

    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/impl/y$a;->a(Lcom/google/ads/interactivemedia/v3/impl/y$a;)Z

    move-result v1

    if-eqz v1, :cond_4c

    .line 154
    const-string v1, "IMASDK"

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/aa;->a()Lcom/google/ads/interactivemedia/v3/impl/aa$b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/impl/aa$b;->name()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 155
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/aa;->b()Lcom/google/ads/interactivemedia/v3/impl/aa$c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/impl/aa$c;->name()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x11

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "Channel: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "; type: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 154
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4c
.end method

.method static final c(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 161
    sget-object v0, Lcom/google/ads/interactivemedia/v3/impl/y$a;->c:Lcom/google/ads/interactivemedia/v3/impl/y$a;

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/impl/y$a;->a(Lcom/google/ads/interactivemedia/v3/impl/y$a;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 162
    const-string v0, "IMASDK"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    :cond_d
    return-void
.end method


# virtual methods
.method public a()Landroid/webkit/WebView;
    .registers 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/ac;->b:Landroid/webkit/WebView;

    return-object v0
.end method

.method public a(Lcom/google/ads/interactivemedia/v3/impl/aa;)V
    .registers 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .prologue
    .line 111
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/aa;->e()Ljava/lang/String;

    move-result-object v0

    .line 112
    const/4 v1, 0x1

    invoke-static {v1, p1, v0}, Lcom/google/ads/interactivemedia/v3/impl/ac;->a(ZLcom/google/ads/interactivemedia/v3/impl/aa;Ljava/lang/String;)V

    .line 114
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_1c

    .line 116
    :try_start_e
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/ac;->b:Landroid/webkit/WebView;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    :try_end_14
    .catch Ljava/lang/IllegalStateException; {:try_start_e .. :try_end_14} :catch_15

    .line 124
    :goto_14
    return-void

    .line 117
    :catch_15
    move-exception v1

    .line 119
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/ac;->b:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_14

    .line 122
    :cond_1c
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/ac;->b:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_14
.end method

.method public a(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 99
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/ac;->b:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 100
    return-void
.end method

.method protected b(Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 127
    .line 129
    :try_start_0
    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/impl/aa;->a(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/impl/aa;

    move-result-object v0

    .line 130
    const/4 v1, 0x0

    invoke-static {v1, v0, p1}, Lcom/google/ads/interactivemedia/v3/impl/ac;->a(ZLcom/google/ads/interactivemedia/v3/impl/aa;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_8} :catch_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_2b

    .line 141
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/ac;->a:Lcom/google/ads/interactivemedia/v3/impl/ac$a;

    invoke-interface {v1, v0}, Lcom/google/ads/interactivemedia/v3/impl/ac$a;->a(Lcom/google/ads/interactivemedia/v3/impl/aa;)V

    .line 142
    :goto_d
    return-void

    .line 131
    :catch_e
    move-exception v0

    .line 132
    const-string v1, "IMASDK"

    const-string v2, "Invalid internal message, ignoring. Please make sure the Google IMA SDK library is up to date. Message: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_25

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_21
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    :cond_25
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_21

    .line 135
    :catch_2b
    move-exception v0

    move-object v1, v0

    .line 136
    const-string v2, "IMASDK"

    const-string v3, "An internal error occured parsing message from javascript.  Message to be parsed: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_43

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_3f
    invoke-static {v2, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d

    :cond_43
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_3f
.end method
