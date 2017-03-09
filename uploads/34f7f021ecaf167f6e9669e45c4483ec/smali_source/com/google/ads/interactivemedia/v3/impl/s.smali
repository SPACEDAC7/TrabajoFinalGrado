.class public Lcom/google/ads/interactivemedia/v3/impl/s;
.super Landroid/webkit/WebView;
.source "IMASDK"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/impl/ab;Lcom/google/ads/interactivemedia/v3/impl/data/CompanionData;Ljava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/ads/interactivemedia/v3/impl/ab;",
            "Lcom/google/ads/interactivemedia/v3/impl/data/CompanionData;",
            "Ljava/util/List",
            "<",
            "Lcom/google/ads/interactivemedia/v3/api/CompanionAdSlot$ClickListener;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 23
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 30
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/impl/s;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    .line 31
    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/s$1;

    invoke-direct {v0, p0, p1, p2, p4}, Lcom/google/ads/interactivemedia/v3/impl/s$1;-><init>(Lcom/google/ads/interactivemedia/v3/impl/s;Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/impl/ab;Ljava/util/List;)V

    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/impl/s;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 56
    invoke-virtual {p3}, Lcom/google/ads/interactivemedia/v3/impl/data/CompanionData;->type()Lcom/google/ads/interactivemedia/v3/impl/data/CompanionData$a;

    move-result-object v0

    sget-object v1, Lcom/google/ads/interactivemedia/v3/impl/data/CompanionData$a;->Html:Lcom/google/ads/interactivemedia/v3/impl/data/CompanionData$a;

    if-ne v0, v1, :cond_27

    .line 57
    invoke-virtual {p3}, Lcom/google/ads/interactivemedia/v3/impl/data/CompanionData;->src()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "text/html"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/ads/interactivemedia/v3/impl/s;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    :goto_26
    return-void

    .line 58
    :cond_27
    invoke-virtual {p3}, Lcom/google/ads/interactivemedia/v3/impl/data/CompanionData;->type()Lcom/google/ads/interactivemedia/v3/impl/data/CompanionData$a;

    move-result-object v0

    sget-object v1, Lcom/google/ads/interactivemedia/v3/impl/data/CompanionData$a;->IFrame:Lcom/google/ads/interactivemedia/v3/impl/data/CompanionData$a;

    if-ne v0, v1, :cond_37

    .line 59
    invoke-virtual {p3}, Lcom/google/ads/interactivemedia/v3/impl/data/CompanionData;->src()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/impl/s;->loadUrl(Ljava/lang/String;)V

    goto :goto_26

    .line 61
    :cond_37
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 62
    invoke-virtual {p3}, Lcom/google/ads/interactivemedia/v3/impl/data/CompanionData;->type()Lcom/google/ads/interactivemedia/v3/impl/data/CompanionData$a;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x33

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Companion type "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not valid for a CompanionWebView"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
