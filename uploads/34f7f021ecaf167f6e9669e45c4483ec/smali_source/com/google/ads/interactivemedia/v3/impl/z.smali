.class public Lcom/google/ads/interactivemedia/v3/impl/z;
.super Landroid/widget/ImageView;
.source "IMASDK"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final a:Lcom/google/ads/interactivemedia/v3/impl/data/CompanionData;

.field private final b:Lcom/google/ads/interactivemedia/v3/impl/ab;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/ads/interactivemedia/v3/api/CompanionAdSlot$ClickListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/impl/ab;Lcom/google/ads/interactivemedia/v3/impl/data/CompanionData;Ljava/lang/String;Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/ads/interactivemedia/v3/impl/ab;",
            "Lcom/google/ads/interactivemedia/v3/impl/data/CompanionData;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/google/ads/interactivemedia/v3/api/CompanionAdSlot$ClickListener;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 34
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 35
    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/impl/z;->b:Lcom/google/ads/interactivemedia/v3/impl/ab;

    .line 36
    iput-object p3, p0, Lcom/google/ads/interactivemedia/v3/impl/z;->a:Lcom/google/ads/interactivemedia/v3/impl/data/CompanionData;

    .line 37
    iput-object p4, p0, Lcom/google/ads/interactivemedia/v3/impl/z;->c:Ljava/lang/String;

    .line 38
    iput-object p5, p0, Lcom/google/ads/interactivemedia/v3/impl/z;->d:Ljava/util/List;

    .line 39
    invoke-virtual {p0, p0}, Lcom/google/ads/interactivemedia/v3/impl/z;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 40
    return-void
.end method

.method static synthetic a(Lcom/google/ads/interactivemedia/v3/impl/z;)Lcom/google/ads/interactivemedia/v3/impl/data/CompanionData;
    .registers 2

    .prologue
    .line 26
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/z;->a:Lcom/google/ads/interactivemedia/v3/impl/data/CompanionData;

    return-object v0
.end method

.method private b()V
    .registers 4

    .prologue
    .line 83
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/z;->b:Lcom/google/ads/interactivemedia/v3/impl/ab;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/z;->a:Lcom/google/ads/interactivemedia/v3/impl/data/CompanionData;

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/impl/data/CompanionData;->companionId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/z;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/ads/interactivemedia/v3/impl/ab;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    return-void
.end method

.method static synthetic b(Lcom/google/ads/interactivemedia/v3/impl/z;)V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/impl/z;->b()V

    return-void
.end method


# virtual methods
.method a(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 49
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    .line 50
    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 51
    return-object v0
.end method

.method public a()V
    .registers 3

    .prologue
    .line 55
    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/z$1;

    invoke-direct {v0, p0}, Lcom/google/ads/interactivemedia/v3/impl/z$1;-><init>(Lcom/google/ads/interactivemedia/v3/impl/z;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 79
    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/impl/z$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 80
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 88
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/z;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/api/CompanionAdSlot$ClickListener;

    .line 89
    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/api/CompanionAdSlot$ClickListener;->onCompanionAdClick()V

    goto :goto_6

    .line 91
    :cond_16
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/z;->b:Lcom/google/ads/interactivemedia/v3/impl/ab;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/z;->a:Lcom/google/ads/interactivemedia/v3/impl/data/CompanionData;

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/impl/data/CompanionData;->clickThroughUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/impl/ab;->d(Ljava/lang/String;)V

    .line 92
    return-void
.end method
