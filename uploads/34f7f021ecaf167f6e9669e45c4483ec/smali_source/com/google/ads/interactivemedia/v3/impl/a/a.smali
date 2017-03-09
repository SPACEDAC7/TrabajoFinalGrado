.class public Lcom/google/ads/interactivemedia/v3/impl/a/a;
.super Ljava/lang/Object;
.source "IMASDK"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/lang/String;

.field private final c:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;)V
    .registers 4

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/a/a;->a:Landroid/content/Context;

    .line 36
    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/impl/a/a;->b:Ljava/lang/String;

    .line 37
    iput-object p3, p0, Lcom/google/ads/interactivemedia/v3/impl/a/a;->c:Landroid/net/Uri;

    .line 38
    return-void
.end method


# virtual methods
.method public a(Lcom/google/ads/interactivemedia/v3/impl/x;Landroid/os/Handler;)[Lcom/google/ads/interactivemedia/v3/a/w;
    .registers 16

    .prologue
    const/4 v12, 0x0

    const/4 v7, 0x0

    const/4 v11, 0x1

    .line 41
    new-instance v3, Lcom/google/ads/interactivemedia/v3/a/e/g;

    const/high16 v0, 0x10000

    invoke-direct {v3, v0}, Lcom/google/ads/interactivemedia/v3/a/e/g;-><init>(I)V

    .line 44
    new-instance v2, Lcom/google/ads/interactivemedia/v3/a/e/i;

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/a/a;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/a/a;->b:Ljava/lang/String;

    invoke-direct {v2, v0, v12, v1, v11}, Lcom/google/ads/interactivemedia/v3/a/e/i;-><init>(Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/a/e/m;Ljava/lang/String;Z)V

    .line 45
    new-instance v0, Lcom/google/ads/interactivemedia/v3/a/c/h;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/impl/a/a;->c:Landroid/net/Uri;

    const/high16 v4, 0x1000000

    .line 47
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/x;->d()Lcom/google/ads/interactivemedia/v3/impl/x$b;

    move-result-object v6

    new-array v8, v7, [Lcom/google/ads/interactivemedia/v3/a/c/e;

    move-object v5, p2

    invoke-direct/range {v0 .. v8}, Lcom/google/ads/interactivemedia/v3/a/c/h;-><init>(Landroid/net/Uri;Lcom/google/ads/interactivemedia/v3/a/e/e;Lcom/google/ads/interactivemedia/v3/a/e/b;ILandroid/os/Handler;Lcom/google/ads/interactivemedia/v3/a/c/h$a;I[Lcom/google/ads/interactivemedia/v3/a/c/e;)V

    .line 48
    new-instance v1, Lcom/google/ads/interactivemedia/v3/a/o;

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/impl/a/a;->a:Landroid/content/Context;

    sget-object v4, Lcom/google/ads/interactivemedia/v3/a/l;->a:Lcom/google/ads/interactivemedia/v3/a/l;

    const-wide/16 v6, 0x1388

    .line 50
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/x;->e()Lcom/google/ads/interactivemedia/v3/impl/x$e;

    move-result-object v9

    const/16 v10, 0x32

    move-object v3, v0

    move v5, v11

    move-object v8, p2

    invoke-direct/range {v1 .. v10}, Lcom/google/ads/interactivemedia/v3/a/o;-><init>(Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/a/t;Lcom/google/ads/interactivemedia/v3/a/l;IJLandroid/os/Handler;Lcom/google/ads/interactivemedia/v3/a/o$a;I)V

    .line 51
    new-instance v2, Lcom/google/ads/interactivemedia/v3/a/k;

    sget-object v4, Lcom/google/ads/interactivemedia/v3/a/l;->a:Lcom/google/ads/interactivemedia/v3/a/l;

    .line 53
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/x;->f()Lcom/google/ads/interactivemedia/v3/impl/x$c;

    move-result-object v8

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/impl/a/a;->a:Landroid/content/Context;

    .line 54
    invoke-static {v3}, Lcom/google/ads/interactivemedia/v3/a/a/a;->a(Landroid/content/Context;)Lcom/google/ads/interactivemedia/v3/a/a/a;

    move-result-object v9

    const/4 v10, 0x3

    move-object v3, v0

    move-object v5, v12

    move v6, v11

    move-object v7, p2

    invoke-direct/range {v2 .. v10}, Lcom/google/ads/interactivemedia/v3/a/k;-><init>(Lcom/google/ads/interactivemedia/v3/a/t;Lcom/google/ads/interactivemedia/v3/a/l;Lcom/google/ads/interactivemedia/v3/a/b/b;ZLandroid/os/Handler;Lcom/google/ads/interactivemedia/v3/a/k$a;Lcom/google/ads/interactivemedia/v3/a/a/a;I)V

    .line 57
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/ads/interactivemedia/v3/a/w;

    .line 58
    sget-object v3, Lcom/google/ads/interactivemedia/v3/impl/x$g;->a:Lcom/google/ads/interactivemedia/v3/impl/x$g;

    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/impl/x$g;->a()I

    move-result v3

    aput-object v1, v0, v3

    .line 59
    sget-object v1, Lcom/google/ads/interactivemedia/v3/impl/x$g;->b:Lcom/google/ads/interactivemedia/v3/impl/x$g;

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/impl/x$g;->a()I

    move-result v1

    aput-object v2, v0, v1

    .line 60
    return-object v0
.end method
