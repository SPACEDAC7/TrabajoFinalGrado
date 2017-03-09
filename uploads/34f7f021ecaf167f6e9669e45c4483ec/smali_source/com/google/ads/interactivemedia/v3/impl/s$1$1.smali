.class Lcom/google/ads/interactivemedia/v3/impl/s$1$1;
.super Landroid/webkit/WebViewClient;
.source "IMASDK"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/ads/interactivemedia/v3/impl/s$1;->onCreateWindow(Landroid/webkit/WebView;ZZLandroid/os/Message;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/ads/interactivemedia/v3/impl/s$1;


# direct methods
.method constructor <init>(Lcom/google/ads/interactivemedia/v3/impl/s$1;)V
    .registers 2

    .prologue
    .line 40
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/s$1$1;->a:Lcom/google/ads/interactivemedia/v3/impl/s$1;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 5

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/s$1$1;->a:Lcom/google/ads/interactivemedia/v3/impl/s$1;

    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/impl/s$1;->b:Lcom/google/ads/interactivemedia/v3/impl/ab;

    invoke-virtual {v0, p2}, Lcom/google/ads/interactivemedia/v3/impl/ab;->d(Ljava/lang/String;)V

    .line 44
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/s$1$1;->a:Lcom/google/ads/interactivemedia/v3/impl/s$1;

    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/impl/s$1;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/api/CompanionAdSlot$ClickListener;

    .line 45
    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/api/CompanionAdSlot$ClickListener;->onCompanionAdClick()V

    goto :goto_f

    .line 47
    :cond_1f
    const/4 v0, 0x1

    return v0
.end method
