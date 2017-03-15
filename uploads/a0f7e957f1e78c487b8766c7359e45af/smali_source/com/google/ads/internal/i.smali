.class public Lcom/google/ads/internal/i;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# static fields
.field private static final c:Lcom/google/ads/internal/a;


# instance fields
.field protected a:Lcom/google/ads/internal/d;

.field protected b:Z

.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/ads/n;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Z

.field private f:Z

.field private g:Z

.field private h:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 28
    sget-object v0, Lcom/google/ads/internal/a;->a:Lcom/google/ads/util/f;

    invoke-interface {v0}, Lcom/google/ads/util/f;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/internal/a;

    sput-object v0, Lcom/google/ads/internal/i;->c:Lcom/google/ads/internal/a;

    return-void
.end method

.method public constructor <init>(Lcom/google/ads/internal/d;Ljava/util/Map;ZZ)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/internal/d;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/ads/n;",
            ">;ZZ)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 76
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 77
    iput-object p1, p0, Lcom/google/ads/internal/i;->a:Lcom/google/ads/internal/d;

    .line 78
    iput-object p2, p0, Lcom/google/ads/internal/i;->d:Ljava/util/Map;

    .line 79
    iput-boolean p3, p0, Lcom/google/ads/internal/i;->e:Z

    .line 80
    iput-boolean p4, p0, Lcom/google/ads/internal/i;->f:Z

    .line 81
    iput-boolean v0, p0, Lcom/google/ads/internal/i;->b:Z

    .line 82
    iput-boolean v0, p0, Lcom/google/ads/internal/i;->g:Z

    .line 83
    iput-boolean v0, p0, Lcom/google/ads/internal/i;->h:Z

    .line 84
    return-void
.end method

.method public static a(Lcom/google/ads/internal/d;Ljava/util/Map;ZZ)Lcom/google/ads/internal/i;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/internal/d;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/ads/n;",
            ">;ZZ)",
            "Lcom/google/ads/internal/i;"
        }
    .end annotation

    .prologue
    .line 92
    sget v0, Lcom/google/ads/util/AdUtil;->a:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_c

    .line 93
    new-instance v0, Lcom/google/ads/util/g$b;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/ads/util/g$b;-><init>(Lcom/google/ads/internal/d;Ljava/util/Map;ZZ)V

    .line 96
    :goto_b
    return-object v0

    :cond_c
    new-instance v0, Lcom/google/ads/internal/i;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/ads/internal/i;-><init>(Lcom/google/ads/internal/d;Ljava/util/Map;ZZ)V

    goto :goto_b
.end method


# virtual methods
.method public a(Z)V
    .registers 2

    .prologue
    .line 180
    iput-boolean p1, p0, Lcom/google/ads/internal/i;->b:Z

    .line 181
    return-void
.end method

.method public b(Z)V
    .registers 2

    .prologue
    .line 188
    iput-boolean p1, p0, Lcom/google/ads/internal/i;->f:Z

    .line 189
    return-void
.end method

.method public c(Z)V
    .registers 2

    .prologue
    .line 199
    iput-boolean p1, p0, Lcom/google/ads/internal/i;->g:Z

    .line 200
    return-void
.end method

.method public d(Z)V
    .registers 2

    .prologue
    .line 210
    iput-boolean p1, p0, Lcom/google/ads/internal/i;->h:Z

    .line 211
    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 5
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 157
    iget-boolean v0, p0, Lcom/google/ads/internal/i;->g:Z

    if-eqz v0, :cond_12

    .line 161
    iget-object v0, p0, Lcom/google/ads/internal/i;->a:Lcom/google/ads/internal/d;

    invoke-virtual {v0}, Lcom/google/ads/internal/d;->j()Lcom/google/ads/internal/c;

    move-result-object v0

    .line 162
    if-eqz v0, :cond_1e

    .line 163
    invoke-virtual {v0}, Lcom/google/ads/internal/c;->c()V

    .line 167
    :goto_10
    iput-boolean v1, p0, Lcom/google/ads/internal/i;->g:Z

    .line 170
    :cond_12
    iget-boolean v0, p0, Lcom/google/ads/internal/i;->h:Z

    if-eqz v0, :cond_1d

    .line 171
    sget-object v0, Lcom/google/ads/internal/i;->c:Lcom/google/ads/internal/a;

    invoke-virtual {v0, p1}, Lcom/google/ads/internal/a;->a(Landroid/webkit/WebView;)V

    .line 172
    iput-boolean v1, p0, Lcom/google/ads/internal/i;->h:Z

    .line 174
    :cond_1d
    return-void

    .line 165
    :cond_1e
    const-string v0, "adLoader was null while trying to setFinishedLoadingHtml()."

    invoke-static {v0}, Lcom/google/ads/util/b;->a(Ljava/lang/String;)V

    goto :goto_10
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 8
    .param p1, "webView"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 109
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "shouldOverrideUrlLoading(\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/ads/util/b;->a(Ljava/lang/String;)V

    .line 112
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 115
    sget-object v2, Lcom/google/ads/internal/i;->c:Lcom/google/ads/internal/a;

    invoke-virtual {v2, v1}, Lcom/google/ads/internal/a;->a(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_33

    .line 116
    sget-object v2, Lcom/google/ads/internal/i;->c:Lcom/google/ads/internal/a;

    iget-object v3, p0, Lcom/google/ads/internal/i;->a:Lcom/google/ads/internal/d;

    iget-object v4, p0, Lcom/google/ads/internal/i;->d:Ljava/util/Map;

    invoke-virtual {v2, v3, v4, v1, p1}, Lcom/google/ads/internal/a;->a(Lcom/google/ads/internal/d;Ljava/util/Map;Landroid/net/Uri;Landroid/webkit/WebView;)V

    .line 147
    :goto_32
    return v0

    .line 118
    :cond_33
    iget-boolean v2, p0, Lcom/google/ads/internal/i;->f:Z

    if-eqz v2, :cond_60

    .line 120
    invoke-static {v1}, Lcom/google/ads/util/AdUtil;->a(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_42

    .line 123
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    goto :goto_32

    .line 126
    :cond_42
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 127
    const-string v2, "u"

    invoke-virtual {v1, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    iget-object v2, p0, Lcom/google/ads/internal/i;->a:Lcom/google/ads/internal/d;

    new-instance v3, Lcom/google/ads/internal/e;

    const-string v4, "intent"

    invoke-direct {v3, v4, v1}, Lcom/google/ads/internal/e;-><init>(Ljava/lang/String;Ljava/util/HashMap;)V

    invoke-static {v2, v3}, Lcom/google/ads/AdActivity;->launchAdActivity(Lcom/google/ads/internal/d;Lcom/google/ads/internal/e;)V
    :try_end_58
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_58} :catch_59

    goto :goto_32

    .line 143
    :catch_59
    move-exception v1

    .line 144
    const-string v2, "An unknown error occurred in shouldOverrideUrlLoading."

    invoke-static {v2, v1}, Lcom/google/ads/util/b;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_32

    .line 133
    :cond_60
    :try_start_60
    iget-boolean v2, p0, Lcom/google/ads/internal/i;->e:Z

    if-eqz v2, :cond_7f

    .line 135
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 136
    const-string v3, "u"

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    iget-object v1, p0, Lcom/google/ads/internal/i;->a:Lcom/google/ads/internal/d;

    new-instance v3, Lcom/google/ads/internal/e;

    const-string v4, "intent"

    invoke-direct {v3, v4, v2}, Lcom/google/ads/internal/e;-><init>(Ljava/lang/String;Ljava/util/HashMap;)V

    invoke-static {v1, v3}, Lcom/google/ads/AdActivity;->launchAdActivity(Lcom/google/ads/internal/d;Lcom/google/ads/internal/e;)V

    goto :goto_32

    .line 141
    :cond_7f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "URL is not a GMSG and can\'t handle URL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/ads/util/b;->e(Ljava/lang/String;)V
    :try_end_95
    .catch Ljava/lang/Throwable; {:try_start_60 .. :try_end_95} :catch_59

    goto :goto_32
.end method
