.class Lcom/google/ads/internal/c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/ads/internal/c;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/ads/c;

.field final synthetic b:Lcom/google/ads/internal/c;


# direct methods
.method constructor <init>(Lcom/google/ads/internal/c;Lcom/google/ads/c;)V
    .registers 3

    .prologue
    .line 924
    iput-object p1, p0, Lcom/google/ads/internal/c$1;->b:Lcom/google/ads/internal/c;

    iput-object p2, p0, Lcom/google/ads/internal/c$1;->a:Lcom/google/ads/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 928
    iget-object v0, p0, Lcom/google/ads/internal/c$1;->b:Lcom/google/ads/internal/c;

    invoke-static {v0}, Lcom/google/ads/internal/c;->a(Lcom/google/ads/internal/c;)Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 929
    iget-object v0, p0, Lcom/google/ads/internal/c$1;->b:Lcom/google/ads/internal/c;

    invoke-static {v0}, Lcom/google/ads/internal/c;->a(Lcom/google/ads/internal/c;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 930
    iget-object v0, p0, Lcom/google/ads/internal/c$1;->b:Lcom/google/ads/internal/c;

    invoke-static {v0}, Lcom/google/ads/internal/c;->a(Lcom/google/ads/internal/c;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 932
    :cond_1a
    iget-object v0, p0, Lcom/google/ads/internal/c$1;->b:Lcom/google/ads/internal/c;

    invoke-static {v0}, Lcom/google/ads/internal/c;->c(Lcom/google/ads/internal/c;)Lcom/google/ads/internal/d;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/internal/c$1;->b:Lcom/google/ads/internal/c;

    invoke-static {v1}, Lcom/google/ads/internal/c;->b(Lcom/google/ads/internal/c;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/ads/internal/d;->a(Ljava/lang/String;)V

    .line 933
    iget-object v0, p0, Lcom/google/ads/internal/c$1;->b:Lcom/google/ads/internal/c;

    invoke-static {v0}, Lcom/google/ads/internal/c;->d(Lcom/google/ads/internal/c;)Lcom/google/ads/AdSize;

    move-result-object v0

    if-eqz v0, :cond_4c

    .line 934
    iget-object v0, p0, Lcom/google/ads/internal/c$1;->b:Lcom/google/ads/internal/c;

    invoke-static {v0}, Lcom/google/ads/internal/c;->c(Lcom/google/ads/internal/c;)Lcom/google/ads/internal/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/ads/internal/d;->h()Lcom/google/ads/m;

    move-result-object v0

    iget-object v0, v0, Lcom/google/ads/m;->k:Lcom/google/ads/util/i$b;

    invoke-virtual {v0}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/internal/h;

    iget-object v1, p0, Lcom/google/ads/internal/c$1;->b:Lcom/google/ads/internal/c;

    invoke-static {v1}, Lcom/google/ads/internal/c;->d(Lcom/google/ads/internal/c;)Lcom/google/ads/AdSize;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/ads/internal/h;->b(Lcom/google/ads/AdSize;)V

    .line 936
    :cond_4c
    iget-object v0, p0, Lcom/google/ads/internal/c$1;->b:Lcom/google/ads/internal/c;

    invoke-static {v0}, Lcom/google/ads/internal/c;->c(Lcom/google/ads/internal/c;)Lcom/google/ads/internal/d;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/internal/c$1;->a:Lcom/google/ads/c;

    invoke-virtual {v0, v1}, Lcom/google/ads/internal/d;->a(Lcom/google/ads/c;)V

    .line 937
    return-void
.end method
