.class final Lcom/google/ads/interactivemedia/v3/a/c/c/b$e;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/a/c/c/b$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/interactivemedia/v3/a/c/c/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "e"
.end annotation


# instance fields
.field private final a:I

.field private final b:I

.field private final c:Lcom/google/ads/interactivemedia/v3/a/f/m;


# direct methods
.method public constructor <init>(Lcom/google/ads/interactivemedia/v3/a/c/c/a$b;)V
    .registers 4

    .prologue
    .line 1264
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1265
    iget-object v0, p1, Lcom/google/ads/interactivemedia/v3/a/c/c/a$b;->aN:Lcom/google/ads/interactivemedia/v3/a/f/m;

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/b$e;->c:Lcom/google/ads/interactivemedia/v3/a/f/m;

    .line 1266
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/b$e;->c:Lcom/google/ads/interactivemedia/v3/a/f/m;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/a/f/m;->c(I)V

    .line 1267
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/b$e;->c:Lcom/google/ads/interactivemedia/v3/a/f/m;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->s()I

    move-result v0

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/b$e;->a:I

    .line 1268
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/b$e;->c:Lcom/google/ads/interactivemedia/v3/a/f/m;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->s()I

    move-result v0

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/b$e;->b:I

    .line 1269
    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 1273
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/b$e;->b:I

    return v0
.end method

.method public b()I
    .registers 2

    .prologue
    .line 1278
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/b$e;->a:I

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/b$e;->c:Lcom/google/ads/interactivemedia/v3/a/f/m;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->s()I

    move-result v0

    :goto_a
    return v0

    :cond_b
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/b$e;->a:I

    goto :goto_a
.end method

.method public c()Z
    .registers 2

    .prologue
    .line 1283
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/b$e;->a:I

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method
