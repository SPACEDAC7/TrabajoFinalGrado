.class final Lcom/google/ads/interactivemedia/v3/a/c/c/b$f;
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
    name = "f"
.end annotation


# instance fields
.field private final a:Lcom/google/ads/interactivemedia/v3/a/f/m;

.field private final b:I

.field private final c:I

.field private d:I

.field private e:I


# direct methods
.method public constructor <init>(Lcom/google/ads/interactivemedia/v3/a/c/c/a$b;)V
    .registers 4

    .prologue
    .line 1301
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1302
    iget-object v0, p1, Lcom/google/ads/interactivemedia/v3/a/c/c/a$b;->aN:Lcom/google/ads/interactivemedia/v3/a/f/m;

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/b$f;->a:Lcom/google/ads/interactivemedia/v3/a/f/m;

    .line 1303
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/b$f;->a:Lcom/google/ads/interactivemedia/v3/a/f/m;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/a/f/m;->c(I)V

    .line 1304
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/b$f;->a:Lcom/google/ads/interactivemedia/v3/a/f/m;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->s()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/b$f;->c:I

    .line 1305
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/b$f;->a:Lcom/google/ads/interactivemedia/v3/a/f/m;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->s()I

    move-result v0

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/b$f;->b:I

    .line 1306
    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 1310
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/b$f;->b:I

    return v0
.end method

.method public b()I
    .registers 3

    .prologue
    .line 1315
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/b$f;->c:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_d

    .line 1316
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/b$f;->a:Lcom/google/ads/interactivemedia/v3/a/f/m;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->f()I

    move-result v0

    .line 1328
    :goto_c
    return v0

    .line 1317
    :cond_d
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/b$f;->c:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_1a

    .line 1318
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/b$f;->a:Lcom/google/ads/interactivemedia/v3/a/f/m;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->g()I

    move-result v0

    goto :goto_c

    .line 1321
    :cond_1a
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/b$f;->d:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/b$f;->d:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_33

    .line 1323
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/b$f;->a:Lcom/google/ads/interactivemedia/v3/a/f/m;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/a/f/m;->f()I

    move-result v0

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/b$f;->e:I

    .line 1325
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/b$f;->e:I

    and-int/lit16 v0, v0, 0xf0

    shr-int/lit8 v0, v0, 0x4

    goto :goto_c

    .line 1328
    :cond_33
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/b$f;->e:I

    and-int/lit8 v0, v0, 0xf

    goto :goto_c
.end method

.method public c()Z
    .registers 2

    .prologue
    .line 1335
    const/4 v0, 0x0

    return v0
.end method
