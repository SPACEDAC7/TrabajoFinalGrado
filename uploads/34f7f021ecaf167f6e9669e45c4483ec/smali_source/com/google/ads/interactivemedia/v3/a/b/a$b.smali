.class public final Lcom/google/ads/interactivemedia/v3/a/b/a$b;
.super Ljava/lang/Object;
.source "IMASDK"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/interactivemedia/v3/a/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;[B)V
    .registers 4

    .prologue
    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/a/f/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/b/a$b;->a:Ljava/lang/String;

    .line 140
    invoke-static {p2}, Lcom/google/ads/interactivemedia/v3/a/f/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/b/a$b;->b:[B

    .line 141
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 145
    instance-of v2, p1, Lcom/google/ads/interactivemedia/v3/a/b/a$b;

    if-nez v2, :cond_8

    move v0, v1

    .line 153
    :cond_7
    :goto_7
    return v0

    .line 148
    :cond_8
    if-eq p1, p0, :cond_7

    .line 152
    check-cast p1, Lcom/google/ads/interactivemedia/v3/a/b/a$b;

    .line 153
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/b/a$b;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/ads/interactivemedia/v3/a/b/a$b;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/b/a$b;->b:[B

    iget-object v3, p1, Lcom/google/ads/interactivemedia/v3/a/b/a$b;->b:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_7

    :cond_20
    move v0, v1

    goto :goto_7
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 158
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/b/a$b;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/b/a$b;->b:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    return v0
.end method
