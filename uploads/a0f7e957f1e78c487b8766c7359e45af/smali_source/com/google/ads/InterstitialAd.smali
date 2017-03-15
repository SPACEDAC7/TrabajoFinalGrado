.class public Lcom/google/ads/InterstitialAd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/ads/Ad;


# instance fields
.field private a:Lcom/google/ads/internal/d;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "adUnitId"    # Ljava/lang/String;

    .prologue
    .line 82
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/ads/InterstitialAd;-><init>(Landroid/app/Activity;Ljava/lang/String;Z)V

    .line 83
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Z)V
    .registers 11
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "adUnitId"    # Ljava/lang/String;
    .param p3, "shortTimeout"    # Z

    .prologue
    const/4 v3, 0x0

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    new-instance v0, Lcom/google/ads/internal/d;

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, v3

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/ads/internal/d;-><init>(Lcom/google/ads/Ad;Landroid/app/Activity;Lcom/google/ads/AdSize;Ljava/lang/String;Landroid/view/ViewGroup;Z)V

    iput-object v0, p0, Lcom/google/ads/InterstitialAd;->a:Lcom/google/ads/internal/d;

    .line 99
    return-void
.end method


# virtual methods
.method public isReady()Z
    .registers 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/google/ads/InterstitialAd;->a:Lcom/google/ads/internal/d;

    invoke-virtual {v0}, Lcom/google/ads/internal/d;->r()Z

    move-result v0

    return v0
.end method

.method public loadAd(Lcom/google/ads/AdRequest;)V
    .registers 3
    .param p1, "adRequest"    # Lcom/google/ads/AdRequest;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/google/ads/InterstitialAd;->a:Lcom/google/ads/internal/d;

    invoke-virtual {v0, p1}, Lcom/google/ads/internal/d;->a(Lcom/google/ads/AdRequest;)V

    .line 121
    return-void
.end method

.method public setAdListener(Lcom/google/ads/AdListener;)V
    .registers 3
    .param p1, "adListener"    # Lcom/google/ads/AdListener;

    .prologue
    .line 142
    iget-object v0, p0, Lcom/google/ads/InterstitialAd;->a:Lcom/google/ads/internal/d;

    invoke-virtual {v0}, Lcom/google/ads/internal/d;->h()Lcom/google/ads/m;

    move-result-object v0

    iget-object v0, v0, Lcom/google/ads/m;->m:Lcom/google/ads/util/i$c;

    invoke-virtual {v0, p1}, Lcom/google/ads/util/i$c;->a(Ljava/lang/Object;)V

    .line 143
    return-void
.end method

.method protected setAppEventListener(Lcom/google/ads/AppEventListener;)V
    .registers 3
    .param p1, "appEventListener"    # Lcom/google/ads/AppEventListener;

    .prologue
    .line 151
    iget-object v0, p0, Lcom/google/ads/InterstitialAd;->a:Lcom/google/ads/internal/d;

    invoke-virtual {v0}, Lcom/google/ads/internal/d;->h()Lcom/google/ads/m;

    move-result-object v0

    iget-object v0, v0, Lcom/google/ads/m;->n:Lcom/google/ads/util/i$c;

    invoke-virtual {v0, p1}, Lcom/google/ads/util/i$c;->a(Ljava/lang/Object;)V

    .line 152
    return-void
.end method

.method public show()V
    .registers 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/google/ads/InterstitialAd;->a:Lcom/google/ads/internal/d;

    invoke-virtual {v0}, Lcom/google/ads/internal/d;->z()V

    .line 131
    return-void
.end method

.method public stopLoading()V
    .registers 2

    .prologue
    .line 161
    iget-object v0, p0, Lcom/google/ads/InterstitialAd;->a:Lcom/google/ads/internal/d;

    invoke-virtual {v0}, Lcom/google/ads/internal/d;->A()V

    .line 162
    return-void
.end method
