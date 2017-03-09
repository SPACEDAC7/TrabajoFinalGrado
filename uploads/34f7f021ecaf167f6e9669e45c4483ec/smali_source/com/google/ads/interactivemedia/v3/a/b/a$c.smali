.class public final Lcom/google/ads/interactivemedia/v3/a/b/a$c;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/a/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/interactivemedia/v3/a/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field private a:Lcom/google/ads/interactivemedia/v3/a/b/a$b;


# direct methods
.method public constructor <init>(Lcom/google/ads/interactivemedia/v3/a/b/a$b;)V
    .registers 2

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/a/b/a$c;->a:Lcom/google/ads/interactivemedia/v3/a/b/a$b;

    .line 98
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4

    .prologue
    .line 107
    if-eqz p1, :cond_c

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_e

    .line 108
    :cond_c
    const/4 v0, 0x0

    .line 110
    :goto_d
    return v0

    :cond_e
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/b/a$c;->a:Lcom/google/ads/interactivemedia/v3/a/b/a$b;

    check-cast p1, Lcom/google/ads/interactivemedia/v3/a/b/a$c;

    iget-object v1, p1, Lcom/google/ads/interactivemedia/v3/a/b/a$c;->a:Lcom/google/ads/interactivemedia/v3/a/b/a$b;

    invoke-static {v0, v1}, Lcom/google/ads/interactivemedia/v3/a/f/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_d
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 116
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/b/a$c;->a:Lcom/google/ads/interactivemedia/v3/a/b/a$b;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/a/b/a$b;->hashCode()I

    move-result v0

    return v0
.end method
