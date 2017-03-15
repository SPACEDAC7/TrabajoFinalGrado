.class public Lcom/google/ads/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/ads/n;


# instance fields
.field private a:Lcom/google/ads/AdActivity$StaticMethodWrapper;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 24
    new-instance v0, Lcom/google/ads/AdActivity$StaticMethodWrapper;

    invoke-direct {v0}, Lcom/google/ads/AdActivity$StaticMethodWrapper;-><init>()V

    invoke-direct {p0, v0}, Lcom/google/ads/z;-><init>(Lcom/google/ads/AdActivity$StaticMethodWrapper;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Lcom/google/ads/AdActivity$StaticMethodWrapper;)V
    .registers 2

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/google/ads/z;->a:Lcom/google/ads/AdActivity$StaticMethodWrapper;

    .line 32
    return-void
.end method


# virtual methods
.method public a(Lcom/google/ads/internal/d;Ljava/util/HashMap;Landroid/webkit/WebView;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/internal/d;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/webkit/WebView;",
            ")V"
        }
    .end annotation

    .prologue
    .line 48
    const-string v0, "a"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 49
    if-nez v0, :cond_10

    .line 50
    const-string v0, "Could not get the action parameter for open GMSG."

    invoke-static {v0}, Lcom/google/ads/util/b;->a(Ljava/lang/String;)V

    .line 67
    :goto_f
    return-void

    .line 55
    :cond_10
    const-string v1, "webapp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 57
    iget-object v0, p0, Lcom/google/ads/z;->a:Lcom/google/ads/AdActivity$StaticMethodWrapper;

    new-instance v1, Lcom/google/ads/internal/e;

    const-string v2, "webapp"

    invoke-direct {v1, v2, p2}, Lcom/google/ads/internal/e;-><init>(Ljava/lang/String;Ljava/util/HashMap;)V

    invoke-virtual {v0, p1, v1}, Lcom/google/ads/AdActivity$StaticMethodWrapper;->launchAdActivity(Lcom/google/ads/internal/d;Lcom/google/ads/internal/e;)V

    goto :goto_f

    .line 59
    :cond_25
    const-string v1, "expand"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 60
    iget-object v0, p0, Lcom/google/ads/z;->a:Lcom/google/ads/AdActivity$StaticMethodWrapper;

    new-instance v1, Lcom/google/ads/internal/e;

    const-string v2, "expand"

    invoke-direct {v1, v2, p2}, Lcom/google/ads/internal/e;-><init>(Ljava/lang/String;Ljava/util/HashMap;)V

    invoke-virtual {v0, p1, v1}, Lcom/google/ads/AdActivity$StaticMethodWrapper;->launchAdActivity(Lcom/google/ads/internal/d;Lcom/google/ads/internal/e;)V

    goto :goto_f

    .line 64
    :cond_3a
    iget-object v0, p0, Lcom/google/ads/z;->a:Lcom/google/ads/AdActivity$StaticMethodWrapper;

    new-instance v1, Lcom/google/ads/internal/e;

    const-string v2, "intent"

    invoke-direct {v1, v2, p2}, Lcom/google/ads/internal/e;-><init>(Ljava/lang/String;Ljava/util/HashMap;)V

    invoke-virtual {v0, p1, v1}, Lcom/google/ads/AdActivity$StaticMethodWrapper;->launchAdActivity(Lcom/google/ads/internal/d;Lcom/google/ads/internal/e;)V

    goto :goto_f
.end method
