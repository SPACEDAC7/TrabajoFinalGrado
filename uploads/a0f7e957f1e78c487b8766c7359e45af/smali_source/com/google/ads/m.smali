.class public Lcom/google/ads/m;
.super Lcom/google/ads/util/i;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/ads/util/i$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/ads/util/i$b",
            "<",
            "Lcom/google/ads/l;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lcom/google/ads/util/i$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/ads/util/i$c",
            "<",
            "Lcom/google/ads/internal/state/AdState;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lcom/google/ads/util/i$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/ads/util/i$c",
            "<",
            "Lcom/google/ads/internal/state/AdState;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lcom/google/ads/util/i$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/ads/util/i$b",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Lcom/google/ads/util/i$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/ads/util/i$d",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Lcom/google/ads/util/i$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/ads/util/i$b",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Lcom/google/ads/util/i$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/ads/util/i$b",
            "<",
            "Landroid/view/ViewGroup;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Lcom/google/ads/util/i$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/ads/util/i$b",
            "<",
            "Lcom/google/ads/Ad;",
            ">;"
        }
    .end annotation
.end field

.field public final i:Lcom/google/ads/util/i$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/ads/util/i$b",
            "<",
            "Lcom/google/ads/AdView;",
            ">;"
        }
    .end annotation
.end field

.field public final j:Lcom/google/ads/util/i$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/ads/util/i$b",
            "<",
            "Lcom/google/ads/InterstitialAd;",
            ">;"
        }
    .end annotation
.end field

.field public final k:Lcom/google/ads/util/i$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/ads/util/i$b",
            "<",
            "Lcom/google/ads/internal/h;",
            ">;"
        }
    .end annotation
.end field

.field public final l:Lcom/google/ads/util/i$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/ads/util/i$c",
            "<[",
            "Lcom/google/ads/AdSize;",
            ">;"
        }
    .end annotation
.end field

.field public final m:Lcom/google/ads/util/i$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/ads/util/i$c",
            "<",
            "Lcom/google/ads/AdListener;",
            ">;"
        }
    .end annotation
.end field

.field public final n:Lcom/google/ads/util/i$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/ads/util/i$c",
            "<",
            "Lcom/google/ads/AppEventListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/ads/l;Lcom/google/ads/Ad;Lcom/google/ads/AdView;Lcom/google/ads/InterstitialAd;Ljava/lang/String;Landroid/app/Activity;Landroid/content/Context;Landroid/view/ViewGroup;Lcom/google/ads/internal/h;)V
    .registers 13

    .prologue
    const/4 v2, 0x0

    .line 95
    invoke-direct {p0}, Lcom/google/ads/util/i;-><init>()V

    .line 31
    new-instance v0, Lcom/google/ads/util/i$c;

    const-string v1, "currentAd"

    invoke-direct {v0, p0, v1, v2}, Lcom/google/ads/util/i$c;-><init>(Lcom/google/ads/util/i;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/ads/m;->b:Lcom/google/ads/util/i$c;

    .line 34
    new-instance v0, Lcom/google/ads/util/i$c;

    const-string v1, "nextAd"

    invoke-direct {v0, p0, v1, v2}, Lcom/google/ads/util/i$c;-><init>(Lcom/google/ads/util/i;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/ads/m;->c:Lcom/google/ads/util/i$c;

    .line 73
    new-instance v0, Lcom/google/ads/util/i$c;

    const-string v1, "adListener"

    invoke-direct {v0, p0, v1}, Lcom/google/ads/util/i$c;-><init>(Lcom/google/ads/util/i;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/ads/m;->m:Lcom/google/ads/util/i$c;

    .line 76
    new-instance v0, Lcom/google/ads/util/i$c;

    const-string v1, "appEventListener"

    invoke-direct {v0, p0, v1}, Lcom/google/ads/util/i$c;-><init>(Lcom/google/ads/util/i;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/ads/m;->n:Lcom/google/ads/util/i$c;

    .line 96
    new-instance v0, Lcom/google/ads/util/i$b;

    const-string v1, "appState"

    invoke-direct {v0, p0, v1, p1}, Lcom/google/ads/util/i$b;-><init>(Lcom/google/ads/util/i;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/ads/m;->a:Lcom/google/ads/util/i$b;

    .line 97
    new-instance v0, Lcom/google/ads/util/i$b;

    const-string v1, "ad"

    invoke-direct {v0, p0, v1, p2}, Lcom/google/ads/util/i$b;-><init>(Lcom/google/ads/util/i;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/ads/m;->h:Lcom/google/ads/util/i$b;

    .line 98
    new-instance v0, Lcom/google/ads/util/i$b;

    const-string v1, "adView"

    invoke-direct {v0, p0, v1, p3}, Lcom/google/ads/util/i$b;-><init>(Lcom/google/ads/util/i;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/ads/m;->i:Lcom/google/ads/util/i$b;

    .line 99
    new-instance v0, Lcom/google/ads/util/i$b;

    const-string v1, "adType"

    invoke-direct {v0, p0, v1, p9}, Lcom/google/ads/util/i$b;-><init>(Lcom/google/ads/util/i;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/ads/m;->k:Lcom/google/ads/util/i$b;

    .line 100
    new-instance v0, Lcom/google/ads/util/i$b;

    const-string v1, "adUnitId"

    invoke-direct {v0, p0, v1, p5}, Lcom/google/ads/util/i$b;-><init>(Lcom/google/ads/util/i;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/ads/m;->d:Lcom/google/ads/util/i$b;

    .line 101
    new-instance v0, Lcom/google/ads/util/i$d;

    const-string v1, "activity"

    invoke-direct {v0, p0, v1, p6}, Lcom/google/ads/util/i$d;-><init>(Lcom/google/ads/util/i;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/ads/m;->e:Lcom/google/ads/util/i$d;

    .line 102
    new-instance v0, Lcom/google/ads/util/i$b;

    const-string v1, "interstitialAd"

    invoke-direct {v0, p0, v1, p4}, Lcom/google/ads/util/i$b;-><init>(Lcom/google/ads/util/i;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/ads/m;->j:Lcom/google/ads/util/i$b;

    .line 103
    new-instance v0, Lcom/google/ads/util/i$b;

    const-string v1, "bannerContainer"

    invoke-direct {v0, p0, v1, p8}, Lcom/google/ads/util/i$b;-><init>(Lcom/google/ads/util/i;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/ads/m;->g:Lcom/google/ads/util/i$b;

    .line 104
    new-instance v0, Lcom/google/ads/util/i$b;

    const-string v1, "applicationContext"

    invoke-direct {v0, p0, v1, p7}, Lcom/google/ads/util/i$b;-><init>(Lcom/google/ads/util/i;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/ads/m;->f:Lcom/google/ads/util/i$b;

    .line 106
    new-instance v0, Lcom/google/ads/util/i$c;

    const-string v1, "adSizes"

    invoke-direct {v0, p0, v1, v2}, Lcom/google/ads/util/i$c;-><init>(Lcom/google/ads/util/i;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/ads/m;->l:Lcom/google/ads/util/i$c;

    .line 107
    return-void
.end method


# virtual methods
.method public a()Z
    .registers 2

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/google/ads/m;->b()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public b()Z
    .registers 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/google/ads/m;->k:Lcom/google/ads/util/i$b;

    invoke-virtual {v0}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/internal/h;

    invoke-virtual {v0}, Lcom/google/ads/internal/h;->a()Z

    move-result v0

    return v0
.end method
