.class Lcom/google/ads/internal/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/internal/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/google/ads/internal/d;

.field private final b:Landroid/webkit/WebView;

.field private final c:Lcom/google/ads/internal/f;

.field private final d:Lcom/google/ads/AdRequest$ErrorCode;

.field private final e:Z


# direct methods
.method public constructor <init>(Lcom/google/ads/internal/d;Landroid/webkit/WebView;Lcom/google/ads/internal/f;Lcom/google/ads/AdRequest$ErrorCode;Z)V
    .registers 6

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput-object p1, p0, Lcom/google/ads/internal/c$a;->a:Lcom/google/ads/internal/d;

    .line 104
    iput-object p2, p0, Lcom/google/ads/internal/c$a;->b:Landroid/webkit/WebView;

    .line 105
    iput-object p3, p0, Lcom/google/ads/internal/c$a;->c:Lcom/google/ads/internal/f;

    .line 106
    iput-object p4, p0, Lcom/google/ads/internal/c$a;->d:Lcom/google/ads/AdRequest$ErrorCode;

    .line 107
    iput-boolean p5, p0, Lcom/google/ads/internal/c$a;->e:Z

    .line 108
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 113
    iget-object v0, p0, Lcom/google/ads/internal/c$a;->b:Landroid/webkit/WebView;

    if-eqz v0, :cond_e

    .line 114
    iget-object v0, p0, Lcom/google/ads/internal/c$a;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 115
    iget-object v0, p0, Lcom/google/ads/internal/c$a;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 119
    :cond_e
    iget-object v0, p0, Lcom/google/ads/internal/c$a;->c:Lcom/google/ads/internal/f;

    if-eqz v0, :cond_17

    .line 120
    iget-object v0, p0, Lcom/google/ads/internal/c$a;->c:Lcom/google/ads/internal/f;

    invoke-virtual {v0}, Lcom/google/ads/internal/f;->a()V

    .line 124
    :cond_17
    iget-boolean v0, p0, Lcom/google/ads/internal/c$a;->e:Z

    if-eqz v0, :cond_29

    .line 125
    iget-object v0, p0, Lcom/google/ads/internal/c$a;->a:Lcom/google/ads/internal/d;

    invoke-virtual {v0}, Lcom/google/ads/internal/d;->k()Lcom/google/ads/internal/AdWebView;

    move-result-object v0

    .line 126
    invoke-virtual {v0}, Lcom/google/ads/internal/AdWebView;->stopLoading()V

    .line 127
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/ads/internal/AdWebView;->setVisibility(I)V

    .line 131
    :cond_29
    iget-object v0, p0, Lcom/google/ads/internal/c$a;->a:Lcom/google/ads/internal/d;

    iget-object v1, p0, Lcom/google/ads/internal/c$a;->d:Lcom/google/ads/AdRequest$ErrorCode;

    invoke-virtual {v0, v1}, Lcom/google/ads/internal/d;->a(Lcom/google/ads/AdRequest$ErrorCode;)V

    .line 132
    return-void
.end method
