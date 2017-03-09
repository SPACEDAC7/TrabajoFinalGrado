.class Lcom/google/ads/interactivemedia/v3/a/c/h$2;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/ads/interactivemedia/v3/a/c/h;->a(Ljava/io/IOException;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/io/IOException;

.field final synthetic b:Lcom/google/ads/interactivemedia/v3/a/c/h;


# direct methods
.method constructor <init>(Lcom/google/ads/interactivemedia/v3/a/c/h;Ljava/io/IOException;)V
    .registers 3

    .prologue
    .line 751
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/a/c/h$2;->b:Lcom/google/ads/interactivemedia/v3/a/c/h;

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/a/c/h$2;->a:Ljava/io/IOException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 754
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/h$2;->b:Lcom/google/ads/interactivemedia/v3/a/c/h;

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/a/c/h;->c(Lcom/google/ads/interactivemedia/v3/a/c/h;)Lcom/google/ads/interactivemedia/v3/a/c/h$a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/h$2;->b:Lcom/google/ads/interactivemedia/v3/a/c/h;

    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/a/c/h;->b(Lcom/google/ads/interactivemedia/v3/a/c/h;)I

    move-result v1

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/c/h$2;->a:Ljava/io/IOException;

    invoke-interface {v0, v1, v2}, Lcom/google/ads/interactivemedia/v3/a/c/h$a;->a(ILjava/io/IOException;)V

    .line 755
    return-void
.end method
