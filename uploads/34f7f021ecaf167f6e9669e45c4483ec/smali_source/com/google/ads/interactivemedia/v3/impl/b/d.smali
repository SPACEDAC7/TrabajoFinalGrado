.class public Lcom/google/ads/interactivemedia/v3/impl/b/d;
.super Ljava/lang/Object;
.source "IMASDK"


# static fields
.field public static a:Lcom/google/ads/interactivemedia/v3/impl/b/d;


# instance fields
.field public b:Z

.field public c:[I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:Ljava/lang/String;

.field public i:I

.field public j:Ljava/lang/String;

.field public k:I

.field public l:I

.field public m:Z

.field public n:Ljava/lang/String;

.field public o:Ljava/lang/String;

.field public p:I

.field public q:F

.field public r:I

.field public s:I

.field public t:I


# direct methods
.method public constructor <init>()V
    .registers 5

    .prologue
    const v3, -0x333334

    const/4 v1, 0x1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/impl/b/d;->b:Z

    .line 21
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_64

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/b/d;->c:[I

    .line 22
    const/high16 v0, -0x67000000

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/impl/b/d;->d:I

    .line 23
    iput v1, p0, Lcom/google/ads/interactivemedia/v3/impl/b/d;->e:I

    .line 24
    const v0, 0x66ffffff

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/impl/b/d;->f:I

    .line 25
    iput v1, p0, Lcom/google/ads/interactivemedia/v3/impl/b/d;->g:I

    .line 28
    const-string v0, "Advertisement"

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/b/d;->h:Ljava/lang/String;

    .line 29
    iput v3, p0, Lcom/google/ads/interactivemedia/v3/impl/b/d;->i:I

    .line 30
    const-string v0, "Arial"

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/b/d;->j:Ljava/lang/String;

    .line 31
    const/16 v0, 0xc

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/impl/b/d;->k:I

    .line 32
    const/4 v0, 0x4

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/impl/b/d;->l:I

    .line 35
    iput-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/impl/b/d;->m:Z

    .line 36
    const-string/jumbo v0, "\u00b7\u00b7\u00b7"

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/b/d;->n:Ljava/lang/String;

    .line 37
    const-string v1, "Learn More "

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/b/d;->n:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_5e

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_49
    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/b/d;->o:Ljava/lang/String;

    .line 38
    iput v3, p0, Lcom/google/ads/interactivemedia/v3/impl/b/d;->p:I

    .line 39
    const/high16 v0, 0x41800000

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/impl/b/d;->q:F

    .line 42
    const/16 v0, 0xf

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/impl/b/d;->r:I

    .line 43
    const/16 v0, 0x19

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/impl/b/d;->s:I

    .line 44
    const/16 v0, 0x8

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/impl/b/d;->t:I

    return-void

    .line 37
    :cond_5e
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_49

    .line 21
    :array_64
    .array-data 4
        -0x78000000
        -0x78000000
    .end array-data
.end method

.method public static a(Lcom/google/ads/interactivemedia/v3/api/Ad;)Lcom/google/ads/interactivemedia/v3/impl/b/d;
    .registers 3

    .prologue
    .line 47
    sget-object v0, Lcom/google/ads/interactivemedia/v3/impl/b/d;->a:Lcom/google/ads/interactivemedia/v3/impl/b/d;

    if-eqz v0, :cond_7

    .line 48
    sget-object v0, Lcom/google/ads/interactivemedia/v3/impl/b/d;->a:Lcom/google/ads/interactivemedia/v3/impl/b/d;

    .line 53
    :goto_6
    return-object v0

    .line 50
    :cond_7
    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/b/d;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/impl/b/d;-><init>()V

    .line 51
    invoke-interface {p0}, Lcom/google/ads/interactivemedia/v3/api/Ad;->isSkippable()Z

    move-result v1

    iput-boolean v1, v0, Lcom/google/ads/interactivemedia/v3/impl/b/d;->b:Z

    .line 52
    invoke-static {v0, p0}, Lcom/google/ads/interactivemedia/v3/impl/b/d;->a(Lcom/google/ads/interactivemedia/v3/impl/b/d;Lcom/google/ads/interactivemedia/v3/api/Ad;)V

    goto :goto_6
.end method

.method static a(Lcom/google/ads/interactivemedia/v3/impl/b/d;Lcom/google/ads/interactivemedia/v3/api/Ad;)V
    .registers 6

    .prologue
    .line 58
    check-cast p1, Lcom/google/ads/interactivemedia/v3/impl/data/b;

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/impl/data/b;->getClickThruUrl()Ljava/lang/String;

    move-result-object v0

    .line 60
    :try_start_6
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/impl/c/b;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 61
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    throw v1
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_12} :catch_12

    .line 64
    :catch_12
    move-exception v1

    .line 65
    const-string v1, "IMASDK"

    const-string v2, "Malformed clickthrough URL: "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_32

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_25
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/impl/b/d;->m:Z

    .line 68
    :goto_2b
    return-void

    .line 63
    :cond_2c
    :try_start_2c
    new-instance v1, Ljava/net/URI;

    invoke-direct {v1, v0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_31} :catch_12

    goto :goto_2b

    .line 65
    :cond_32
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_25
.end method
