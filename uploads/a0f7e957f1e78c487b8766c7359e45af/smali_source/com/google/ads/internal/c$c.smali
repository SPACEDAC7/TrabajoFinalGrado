.class Lcom/google/ads/internal/c$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/internal/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/google/ads/internal/c;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Lcom/google/ads/internal/c;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 143
    iput-object p1, p0, Lcom/google/ads/internal/c$c;->a:Lcom/google/ads/internal/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    iput-object p2, p0, Lcom/google/ads/internal/c$c;->d:Landroid/webkit/WebView;

    .line 145
    iput-object p3, p0, Lcom/google/ads/internal/c$c;->b:Ljava/lang/String;

    .line 146
    iput-object p4, p0, Lcom/google/ads/internal/c$c;->c:Ljava/lang/String;

    .line 147
    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 151
    iget-object v0, p0, Lcom/google/ads/internal/c$c;->c:Ljava/lang/String;

    if-eqz v0, :cond_13

    .line 152
    iget-object v0, p0, Lcom/google/ads/internal/c$c;->d:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/google/ads/internal/c$c;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/ads/internal/c$c;->c:Ljava/lang/String;

    const-string v3, "text/html"

    const-string v4, "utf-8"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    :goto_12
    return-void

    .line 154
    :cond_13
    iget-object v0, p0, Lcom/google/ads/internal/c$c;->d:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/google/ads/internal/c$c;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_12
.end method
