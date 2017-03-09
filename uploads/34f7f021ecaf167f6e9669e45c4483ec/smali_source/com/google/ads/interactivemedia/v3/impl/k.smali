.class public Lcom/google/ads/interactivemedia/v3/impl/k;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/impl/af$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ads/interactivemedia/v3/impl/k$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Lcom/google/ads/interactivemedia/v3/impl/ab;

.field private c:Lcom/google/ads/interactivemedia/v3/api/BaseDisplayContainer;

.field private d:Lcom/google/ads/interactivemedia/v3/impl/b/e;

.field private e:Lcom/google/ads/interactivemedia/v3/impl/b/f;

.field private f:Landroid/content/Context;

.field private g:Lcom/google/ads/interactivemedia/v3/impl/data/b;

.field private h:Lcom/google/ads/interactivemedia/v3/impl/k$a;

.field private i:Lcom/google/ads/interactivemedia/v3/impl/ad;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/impl/ad;Lcom/google/ads/interactivemedia/v3/impl/ab;Lcom/google/ads/interactivemedia/v3/api/BaseDisplayContainer;Landroid/content/Context;)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/api/AdError;
        }
    .end annotation

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/impl/ad;->b()Lcom/google/ads/interactivemedia/v3/impl/aa$a;

    move-result-object v0

    sget-object v1, Lcom/google/ads/interactivemedia/v3/impl/aa$a;->a:Lcom/google/ads/interactivemedia/v3/impl/aa$a;

    if-eq v0, v1, :cond_42

    .line 46
    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/impl/ad;->b()Lcom/google/ads/interactivemedia/v3/impl/aa$a;

    move-result-object v0

    sget-object v1, Lcom/google/ads/interactivemedia/v3/impl/aa$a;->b:Lcom/google/ads/interactivemedia/v3/impl/aa$a;

    if-eq v0, v1, :cond_42

    .line 47
    new-instance v0, Lcom/google/ads/interactivemedia/v3/api/AdError;

    sget-object v1, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;->PLAY:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;

    sget-object v2, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;->INTERNAL_ERROR:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    .line 48
    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/impl/ad;->b()Lcom/google/ads/interactivemedia/v3/impl/aa$a;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x32

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "AdsManagerUi is used for an unsupported UI style: "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/ads/interactivemedia/v3/api/AdError;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;Ljava/lang/String;)V

    throw v0

    .line 50
    :cond_42
    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/impl/k;->i:Lcom/google/ads/interactivemedia/v3/impl/ad;

    .line 51
    iput-object p3, p0, Lcom/google/ads/interactivemedia/v3/impl/k;->b:Lcom/google/ads/interactivemedia/v3/impl/ab;

    .line 52
    iput-object p5, p0, Lcom/google/ads/interactivemedia/v3/impl/k;->f:Landroid/content/Context;

    .line 53
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/k;->a:Ljava/lang/String;

    .line 54
    iput-object p4, p0, Lcom/google/ads/interactivemedia/v3/impl/k;->c:Lcom/google/ads/interactivemedia/v3/api/BaseDisplayContainer;

    .line 55
    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/k$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/ads/interactivemedia/v3/impl/k$a;-><init>(Lcom/google/ads/interactivemedia/v3/impl/k;Lcom/google/ads/interactivemedia/v3/impl/k$1;)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/k;->h:Lcom/google/ads/interactivemedia/v3/impl/k$a;

    .line 56
    return-void
.end method

.method static synthetic a(Lcom/google/ads/interactivemedia/v3/impl/k;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 27
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/k;->a:Ljava/lang/String;

    return-object v0
.end method

.method private a(Lcom/google/ads/interactivemedia/v3/api/Ad;)V
    .registers 7

    .prologue
    .line 94
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/k;->i:Lcom/google/ads/interactivemedia/v3/impl/ad;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/impl/ad;->b()Lcom/google/ads/interactivemedia/v3/impl/aa$a;

    move-result-object v0

    sget-object v1, Lcom/google/ads/interactivemedia/v3/impl/aa$a;->a:Lcom/google/ads/interactivemedia/v3/impl/aa$a;

    if-ne v0, v1, :cond_40

    .line 95
    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/impl/b/d;->a(Lcom/google/ads/interactivemedia/v3/api/Ad;)Lcom/google/ads/interactivemedia/v3/impl/b/d;

    move-result-object v0

    .line 96
    new-instance v1, Lcom/google/ads/interactivemedia/v3/impl/b/e;

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/k;->f:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/impl/k;->b:Lcom/google/ads/interactivemedia/v3/impl/ab;

    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/impl/k;->a:Ljava/lang/String;

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/google/ads/interactivemedia/v3/impl/b/e;-><init>(Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/impl/b/d;Lcom/google/ads/interactivemedia/v3/impl/ab;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/k;->d:Lcom/google/ads/interactivemedia/v3/impl/b/e;

    .line 97
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/k;->b:Lcom/google/ads/interactivemedia/v3/impl/ab;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/k;->d:Lcom/google/ads/interactivemedia/v3/impl/b/e;

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/k;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/ads/interactivemedia/v3/impl/ab;->a(Lcom/google/ads/interactivemedia/v3/impl/ab$e;Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/k;->d:Lcom/google/ads/interactivemedia/v3/impl/b/e;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/k;->h:Lcom/google/ads/interactivemedia/v3/impl/k$a;

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/impl/b/e;->a(Lcom/google/ads/interactivemedia/v3/impl/b/e$a;)V

    .line 99
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/k;->c:Lcom/google/ads/interactivemedia/v3/api/BaseDisplayContainer;

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/api/BaseDisplayContainer;->getAdContainer()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/k;->d:Lcom/google/ads/interactivemedia/v3/impl/b/e;

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/impl/b/e;->a()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 100
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/k;->d:Lcom/google/ads/interactivemedia/v3/impl/b/e;

    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/impl/b/e;->a(Lcom/google/ads/interactivemedia/v3/api/Ad;)V

    .line 106
    :goto_3f
    return-void

    .line 103
    :cond_40
    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/b/f;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/k;->b:Lcom/google/ads/interactivemedia/v3/impl/ab;

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/k;->c:Lcom/google/ads/interactivemedia/v3/api/BaseDisplayContainer;

    invoke-interface {v2}, Lcom/google/ads/interactivemedia/v3/api/BaseDisplayContainer;->getAdContainer()Landroid/view/ViewGroup;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/ads/interactivemedia/v3/impl/b/f;-><init>(Lcom/google/ads/interactivemedia/v3/impl/ab;Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/k;->e:Lcom/google/ads/interactivemedia/v3/impl/b/f;

    .line 104
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/k;->e:Lcom/google/ads/interactivemedia/v3/impl/b/f;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/impl/b/f;->a()V

    goto :goto_3f
.end method

.method static synthetic b(Lcom/google/ads/interactivemedia/v3/impl/k;)Lcom/google/ads/interactivemedia/v3/impl/ab;
    .registers 2

    .prologue
    .line 27
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/k;->b:Lcom/google/ads/interactivemedia/v3/impl/ab;

    return-object v0
.end method


# virtual methods
.method public a()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 77
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/k;->d:Lcom/google/ads/interactivemedia/v3/impl/b/e;

    if-eqz v0, :cond_25

    .line 78
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/k;->d:Lcom/google/ads/interactivemedia/v3/impl/b/e;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/impl/b/e;->b()V

    .line 79
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/k;->c:Lcom/google/ads/interactivemedia/v3/api/BaseDisplayContainer;

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/api/BaseDisplayContainer;->getAdContainer()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/k;->d:Lcom/google/ads/interactivemedia/v3/impl/b/e;

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/impl/b/e;->a()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 80
    iput-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/k;->d:Lcom/google/ads/interactivemedia/v3/impl/b/e;

    .line 81
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/k;->b:Lcom/google/ads/interactivemedia/v3/impl/ab;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/k;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/impl/ab;->a(Ljava/lang/String;)V

    .line 86
    :cond_22
    :goto_22
    iput-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/k;->g:Lcom/google/ads/interactivemedia/v3/impl/data/b;

    .line 87
    return-void

    .line 82
    :cond_25
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/k;->e:Lcom/google/ads/interactivemedia/v3/impl/b/f;

    if-eqz v0, :cond_22

    .line 83
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/k;->e:Lcom/google/ads/interactivemedia/v3/impl/b/f;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/impl/b/f;->b()V

    .line 84
    iput-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/k;->e:Lcom/google/ads/interactivemedia/v3/impl/b/f;

    goto :goto_22
.end method

.method public a(Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;)V
    .registers 3

    .prologue
    .line 110
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/k;->d:Lcom/google/ads/interactivemedia/v3/impl/b/e;

    if-eqz v0, :cond_9

    .line 111
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/k;->d:Lcom/google/ads/interactivemedia/v3/impl/b/e;

    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/impl/b/e;->a(Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;)V

    .line 113
    :cond_9
    return-void
.end method

.method public a(Lcom/google/ads/interactivemedia/v3/impl/data/b;)V
    .registers 3

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/k;->g:Lcom/google/ads/interactivemedia/v3/impl/data/b;

    if-eqz v0, :cond_7

    .line 65
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/impl/k;->a()V

    .line 67
    :cond_7
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/b;->isLinear()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 68
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/k;->g:Lcom/google/ads/interactivemedia/v3/impl/data/b;

    .line 72
    invoke-direct {p0, p1}, Lcom/google/ads/interactivemedia/v3/impl/k;->a(Lcom/google/ads/interactivemedia/v3/api/Ad;)V

    .line 74
    :cond_12
    return-void
.end method
