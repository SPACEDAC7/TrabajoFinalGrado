.class Lcom/google/ads/internal/c$e;
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
    name = "e"
.end annotation


# instance fields
.field private final a:Lcom/google/ads/internal/d;

.field private final b:Landroid/webkit/WebView;

.field private final c:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final d:I

.field private final e:Z

.field private final f:Ljava/lang/String;

.field private final g:Lcom/google/ads/AdSize;


# direct methods
.method public constructor <init>(Lcom/google/ads/internal/d;Landroid/webkit/WebView;Ljava/util/LinkedList;IZLjava/lang/String;Lcom/google/ads/AdSize;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/internal/d;",
            "Landroid/webkit/WebView;",
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;IZ",
            "Ljava/lang/String;",
            "Lcom/google/ads/AdSize;",
            ")V"
        }
    .end annotation

    .prologue
    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 178
    iput-object p1, p0, Lcom/google/ads/internal/c$e;->a:Lcom/google/ads/internal/d;

    .line 179
    iput-object p2, p0, Lcom/google/ads/internal/c$e;->b:Landroid/webkit/WebView;

    .line 180
    iput-object p3, p0, Lcom/google/ads/internal/c$e;->c:Ljava/util/LinkedList;

    .line 181
    iput p4, p0, Lcom/google/ads/internal/c$e;->d:I

    .line 182
    iput-boolean p5, p0, Lcom/google/ads/internal/c$e;->e:Z

    .line 183
    iput-object p6, p0, Lcom/google/ads/internal/c$e;->f:Ljava/lang/String;

    .line 184
    iput-object p7, p0, Lcom/google/ads/internal/c$e;->g:Lcom/google/ads/AdSize;

    .line 185
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 190
    iget-object v0, p0, Lcom/google/ads/internal/c$e;->b:Landroid/webkit/WebView;

    if-eqz v0, :cond_e

    .line 191
    iget-object v0, p0, Lcom/google/ads/internal/c$e;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 192
    iget-object v0, p0, Lcom/google/ads/internal/c$e;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 194
    :cond_e
    iget-object v0, p0, Lcom/google/ads/internal/c$e;->a:Lcom/google/ads/internal/d;

    iget-object v1, p0, Lcom/google/ads/internal/c$e;->c:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Lcom/google/ads/internal/d;->a(Ljava/util/LinkedList;)V

    .line 195
    iget-object v0, p0, Lcom/google/ads/internal/c$e;->a:Lcom/google/ads/internal/d;

    iget v1, p0, Lcom/google/ads/internal/c$e;->d:I

    invoke-virtual {v0, v1}, Lcom/google/ads/internal/d;->a(I)V

    .line 196
    iget-object v0, p0, Lcom/google/ads/internal/c$e;->a:Lcom/google/ads/internal/d;

    iget-boolean v1, p0, Lcom/google/ads/internal/c$e;->e:Z

    invoke-virtual {v0, v1}, Lcom/google/ads/internal/d;->a(Z)V

    .line 197
    iget-object v0, p0, Lcom/google/ads/internal/c$e;->a:Lcom/google/ads/internal/d;

    iget-object v1, p0, Lcom/google/ads/internal/c$e;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/ads/internal/d;->a(Ljava/lang/String;)V

    .line 198
    iget-object v0, p0, Lcom/google/ads/internal/c$e;->g:Lcom/google/ads/AdSize;

    if-eqz v0, :cond_4c

    .line 199
    iget-object v0, p0, Lcom/google/ads/internal/c$e;->a:Lcom/google/ads/internal/d;

    invoke-virtual {v0}, Lcom/google/ads/internal/d;->h()Lcom/google/ads/m;

    move-result-object v0

    iget-object v0, v0, Lcom/google/ads/m;->k:Lcom/google/ads/util/i$b;

    invoke-virtual {v0}, Lcom/google/ads/util/i$b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/internal/h;

    iget-object v1, p0, Lcom/google/ads/internal/c$e;->g:Lcom/google/ads/AdSize;

    invoke-virtual {v0, v1}, Lcom/google/ads/internal/h;->b(Lcom/google/ads/AdSize;)V

    .line 200
    iget-object v0, p0, Lcom/google/ads/internal/c$e;->a:Lcom/google/ads/internal/d;

    invoke-virtual {v0}, Lcom/google/ads/internal/d;->k()Lcom/google/ads/internal/AdWebView;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/internal/c$e;->g:Lcom/google/ads/AdSize;

    invoke-virtual {v0, v1}, Lcom/google/ads/internal/AdWebView;->setAdSize(Lcom/google/ads/AdSize;)V

    .line 202
    :cond_4c
    iget-object v0, p0, Lcom/google/ads/internal/c$e;->a:Lcom/google/ads/internal/d;

    invoke-virtual {v0}, Lcom/google/ads/internal/d;->C()V

    .line 203
    return-void
.end method
