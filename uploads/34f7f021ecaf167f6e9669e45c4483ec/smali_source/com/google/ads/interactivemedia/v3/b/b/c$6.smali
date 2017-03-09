.class Lcom/google/ads/interactivemedia/v3/b/b/c$6;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/b/b/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/ads/interactivemedia/v3/b/b/c;->b(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lcom/google/ads/interactivemedia/v3/b/b/h;
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
.field final synthetic a:Ljava/lang/Class;

.field final synthetic b:Ljava/lang/reflect/Type;

.field final synthetic c:Lcom/google/ads/interactivemedia/v3/b/b/c;

.field private final d:Lcom/google/ads/interactivemedia/v3/b/b/k;


# direct methods
.method constructor <init>(Lcom/google/ads/interactivemedia/v3/b/b/c;Ljava/lang/Class;Ljava/lang/reflect/Type;)V
    .registers 5

    .prologue
    .line 218
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/b/b/c$6;->c:Lcom/google/ads/interactivemedia/v3/b/b/c;

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/b/b/c$6;->a:Ljava/lang/Class;

    iput-object p3, p0, Lcom/google/ads/interactivemedia/v3/b/b/c$6;->b:Ljava/lang/reflect/Type;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 219
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/b/b/k;->a()Lcom/google/ads/interactivemedia/v3/b/b/k;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/b/c$6;->d:Lcom/google/ads/interactivemedia/v3/b/b/k;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 223
    :try_start_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/b/c$6;->d:Lcom/google/ads/interactivemedia/v3/b/b/k;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/b/b/c$6;->a:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/b/b/k;->a(Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_9

    move-result-object v0

    .line 224
    return-object v0

    .line 225
    :catch_9
    move-exception v0

    .line 226
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to invoke no-args constructor for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/b/b/c$6;->b:Ljava/lang/reflect/Type;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Register an InstanceCreator with Gson for this type may fix this problem."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
