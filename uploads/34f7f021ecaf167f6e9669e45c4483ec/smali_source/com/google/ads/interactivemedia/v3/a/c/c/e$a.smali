.class final Lcom/google/ads/interactivemedia/v3/a/c/c/e$a;
.super Ljava/lang/Object;
.source "IMASDK"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/interactivemedia/v3/a/c/c/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field public final a:Lcom/google/ads/interactivemedia/v3/a/c/c/k;

.field public final b:Lcom/google/ads/interactivemedia/v3/a/c/m;

.field public c:Lcom/google/ads/interactivemedia/v3/a/c/c/i;

.field public d:Lcom/google/ads/interactivemedia/v3/a/c/c/c;

.field public e:I


# direct methods
.method public constructor <init>(Lcom/google/ads/interactivemedia/v3/a/c/m;)V
    .registers 3

    .prologue
    .line 1071
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1072
    new-instance v0, Lcom/google/ads/interactivemedia/v3/a/c/c/k;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/a/c/c/k;-><init>()V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/e$a;->a:Lcom/google/ads/interactivemedia/v3/a/c/c/k;

    .line 1073
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/e$a;->b:Lcom/google/ads/interactivemedia/v3/a/c/m;

    .line 1074
    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 1084
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/e$a;->a:Lcom/google/ads/interactivemedia/v3/a/c/c/k;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/a/c/c/k;->a()V

    .line 1085
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/e$a;->e:I

    .line 1086
    return-void
.end method

.method public a(Lcom/google/ads/interactivemedia/v3/a/c/c/i;Lcom/google/ads/interactivemedia/v3/a/c/c/c;)V
    .registers 5

    .prologue
    .line 1077
    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/a/f/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/a/c/c/i;

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/e$a;->c:Lcom/google/ads/interactivemedia/v3/a/c/c/i;

    .line 1078
    invoke-static {p2}, Lcom/google/ads/interactivemedia/v3/a/f/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/a/c/c/c;

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/e$a;->d:Lcom/google/ads/interactivemedia/v3/a/c/c/c;

    .line 1079
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/e$a;->b:Lcom/google/ads/interactivemedia/v3/a/c/m;

    iget-object v1, p1, Lcom/google/ads/interactivemedia/v3/a/c/c/i;->k:Lcom/google/ads/interactivemedia/v3/a/p;

    invoke-interface {v0, v1}, Lcom/google/ads/interactivemedia/v3/a/c/m;->a(Lcom/google/ads/interactivemedia/v3/a/p;)V

    .line 1080
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/c/c/e$a;->a()V

    .line 1081
    return-void
.end method
