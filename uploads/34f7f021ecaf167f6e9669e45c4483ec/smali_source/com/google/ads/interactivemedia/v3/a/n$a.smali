.class final Lcom/google/ads/interactivemedia/v3/a/n$a;
.super Ljava/lang/Object;
.source "IMASDK"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/interactivemedia/v3/a/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .registers 3

    .prologue
    .line 485
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 486
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/a/n$a;->a:Ljava/lang/String;

    .line 487
    iput-boolean p2, p0, Lcom/google/ads/interactivemedia/v3/a/n$a;->b:Z

    .line 488
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 501
    if-ne p0, p1, :cond_5

    .line 508
    :cond_4
    :goto_4
    return v0

    .line 504
    :cond_5
    if-eqz p1, :cond_f

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/google/ads/interactivemedia/v3/a/n$a;

    if-eq v2, v3, :cond_11

    :cond_f
    move v0, v1

    .line 505
    goto :goto_4

    .line 507
    :cond_11
    check-cast p1, Lcom/google/ads/interactivemedia/v3/a/n$a;

    .line 508
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/n$a;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/ads/interactivemedia/v3/a/n$a;->a:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_23

    iget-boolean v2, p0, Lcom/google/ads/interactivemedia/v3/a/n$a;->b:Z

    iget-boolean v3, p1, Lcom/google/ads/interactivemedia/v3/a/n$a;->b:Z

    if-eq v2, v3, :cond_4

    :cond_23
    move v0, v1

    goto :goto_4
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 492
    .line 494
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/n$a;->a:Ljava/lang/String;

    if-nez v0, :cond_11

    const/4 v0, 0x0

    :goto_5
    add-int/lit8 v0, v0, 0x1f

    .line 495
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/a/n$a;->b:Z

    if-eqz v0, :cond_18

    const/16 v0, 0x4cf

    :goto_f
    add-int/2addr v0, v1

    .line 496
    return v0

    .line 494
    :cond_11
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/n$a;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_5

    .line 495
    :cond_18
    const/16 v0, 0x4d5

    goto :goto_f
.end method
