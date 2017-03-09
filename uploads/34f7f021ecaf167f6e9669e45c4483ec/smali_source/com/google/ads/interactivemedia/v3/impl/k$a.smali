.class Lcom/google/ads/interactivemedia/v3/impl/k$a;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/impl/b/e$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/interactivemedia/v3/impl/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/google/ads/interactivemedia/v3/impl/k;


# direct methods
.method private constructor <init>(Lcom/google/ads/interactivemedia/v3/impl/k;)V
    .registers 2

    .prologue
    .line 115
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/k$a;->a:Lcom/google/ads/interactivemedia/v3/impl/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/ads/interactivemedia/v3/impl/k;Lcom/google/ads/interactivemedia/v3/impl/k$1;)V
    .registers 3

    .prologue
    .line 115
    invoke-direct {p0, p1}, Lcom/google/ads/interactivemedia/v3/impl/k$a;-><init>(Lcom/google/ads/interactivemedia/v3/impl/k;)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 6

    .prologue
    .line 118
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/k$a;->a:Lcom/google/ads/interactivemedia/v3/impl/k;

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/impl/k;->b(Lcom/google/ads/interactivemedia/v3/impl/k;)Lcom/google/ads/interactivemedia/v3/impl/ab;

    move-result-object v0

    new-instance v1, Lcom/google/ads/interactivemedia/v3/impl/aa;

    sget-object v2, Lcom/google/ads/interactivemedia/v3/impl/aa$b;->videoDisplay:Lcom/google/ads/interactivemedia/v3/impl/aa$b;

    sget-object v3, Lcom/google/ads/interactivemedia/v3/impl/aa$c;->skip:Lcom/google/ads/interactivemedia/v3/impl/aa$c;

    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/impl/k$a;->a:Lcom/google/ads/interactivemedia/v3/impl/k;

    invoke-static {v4}, Lcom/google/ads/interactivemedia/v3/impl/k;->a(Lcom/google/ads/interactivemedia/v3/impl/k;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/google/ads/interactivemedia/v3/impl/aa;-><init>(Lcom/google/ads/interactivemedia/v3/impl/aa$b;Lcom/google/ads/interactivemedia/v3/impl/aa$c;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/impl/ab;->b(Lcom/google/ads/interactivemedia/v3/impl/aa;)V

    .line 119
    return-void
.end method

.method public b()V
    .registers 6

    .prologue
    .line 123
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/k$a;->a:Lcom/google/ads/interactivemedia/v3/impl/k;

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/impl/k;->b(Lcom/google/ads/interactivemedia/v3/impl/k;)Lcom/google/ads/interactivemedia/v3/impl/ab;

    move-result-object v0

    new-instance v1, Lcom/google/ads/interactivemedia/v3/impl/aa;

    sget-object v2, Lcom/google/ads/interactivemedia/v3/impl/aa$b;->videoDisplay:Lcom/google/ads/interactivemedia/v3/impl/aa$b;

    sget-object v3, Lcom/google/ads/interactivemedia/v3/impl/aa$c;->skipShown:Lcom/google/ads/interactivemedia/v3/impl/aa$c;

    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/impl/k$a;->a:Lcom/google/ads/interactivemedia/v3/impl/k;

    .line 124
    invoke-static {v4}, Lcom/google/ads/interactivemedia/v3/impl/k;->a(Lcom/google/ads/interactivemedia/v3/impl/k;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/google/ads/interactivemedia/v3/impl/aa;-><init>(Lcom/google/ads/interactivemedia/v3/impl/aa$b;Lcom/google/ads/interactivemedia/v3/impl/aa$c;Ljava/lang/String;)V

    .line 123
    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/impl/ab;->b(Lcom/google/ads/interactivemedia/v3/impl/aa;)V

    .line 125
    return-void
.end method

.method public c()V
    .registers 6

    .prologue
    .line 129
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/k$a;->a:Lcom/google/ads/interactivemedia/v3/impl/k;

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/impl/k;->b(Lcom/google/ads/interactivemedia/v3/impl/k;)Lcom/google/ads/interactivemedia/v3/impl/ab;

    move-result-object v0

    new-instance v1, Lcom/google/ads/interactivemedia/v3/impl/aa;

    sget-object v2, Lcom/google/ads/interactivemedia/v3/impl/aa$b;->videoDisplay:Lcom/google/ads/interactivemedia/v3/impl/aa$b;

    sget-object v3, Lcom/google/ads/interactivemedia/v3/impl/aa$c;->click:Lcom/google/ads/interactivemedia/v3/impl/aa$c;

    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/impl/k$a;->a:Lcom/google/ads/interactivemedia/v3/impl/k;

    invoke-static {v4}, Lcom/google/ads/interactivemedia/v3/impl/k;->a(Lcom/google/ads/interactivemedia/v3/impl/k;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/google/ads/interactivemedia/v3/impl/aa;-><init>(Lcom/google/ads/interactivemedia/v3/impl/aa$b;Lcom/google/ads/interactivemedia/v3/impl/aa$c;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/impl/ab;->b(Lcom/google/ads/interactivemedia/v3/impl/aa;)V

    .line 130
    return-void
.end method
