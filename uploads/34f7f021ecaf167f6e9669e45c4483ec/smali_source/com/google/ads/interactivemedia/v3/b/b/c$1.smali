.class Lcom/google/ads/interactivemedia/v3/b/b/c$1;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/b/b/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/ads/interactivemedia/v3/b/b/c;->a(Lcom/google/ads/interactivemedia/v3/b/c/a;)Lcom/google/ads/interactivemedia/v3/b/b/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/ads/interactivemedia/v3/b/b/h",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/ads/interactivemedia/v3/b/h;

.field final synthetic b:Ljava/lang/reflect/Type;

.field final synthetic c:Lcom/google/ads/interactivemedia/v3/b/b/c;


# direct methods
.method constructor <init>(Lcom/google/ads/interactivemedia/v3/b/b/c;Lcom/google/ads/interactivemedia/v3/b/h;Ljava/lang/reflect/Type;)V
    .registers 4

    .prologue
    .line 64
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/b/b/c$1;->c:Lcom/google/ads/interactivemedia/v3/b/b/c;

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/b/b/c$1;->a:Lcom/google/ads/interactivemedia/v3/b/h;

    iput-object p3, p0, Lcom/google/ads/interactivemedia/v3/b/b/c$1;->b:Ljava/lang/reflect/Type;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/b/c$1;->a:Lcom/google/ads/interactivemedia/v3/b/h;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/b/b/c$1;->b:Ljava/lang/reflect/Type;

    invoke-interface {v0, v1}, Lcom/google/ads/interactivemedia/v3/b/h;->a(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
