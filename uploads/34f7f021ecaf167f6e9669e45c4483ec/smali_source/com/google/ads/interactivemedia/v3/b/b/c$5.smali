.class Lcom/google/ads/interactivemedia/v3/b/b/c$5;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/b/b/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/ads/interactivemedia/v3/b/b/c;->a(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lcom/google/ads/interactivemedia/v3/b/b/h;
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
.field final synthetic a:Lcom/google/ads/interactivemedia/v3/b/b/c;


# direct methods
.method constructor <init>(Lcom/google/ads/interactivemedia/v3/b/b/c;)V
    .registers 2

    .prologue
    .line 205
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/b/b/c$5;->a:Lcom/google/ads/interactivemedia/v3/b/b/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 207
    new-instance v0, Lcom/google/ads/interactivemedia/v3/b/b/g;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/b/b/g;-><init>()V

    return-object v0
.end method
