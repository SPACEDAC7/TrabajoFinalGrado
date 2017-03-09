.class public Lcom/google/ads/interactivemedia/v3/a/e/k$a;
.super Ljava/io/IOException;
.source "IMASDK"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/interactivemedia/v3/a/e/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:I

.field public final b:Lcom/google/ads/interactivemedia/v3/a/e/f;


# direct methods
.method public constructor <init>(Ljava/io/IOException;Lcom/google/ads/interactivemedia/v3/a/e/f;I)V
    .registers 4

    .prologue
    .line 74
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    .line 75
    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/a/e/k$a;->b:Lcom/google/ads/interactivemedia/v3/a/e/f;

    .line 76
    iput p3, p0, Lcom/google/ads/interactivemedia/v3/a/e/k$a;->a:I

    .line 77
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/a/e/f;I)V
    .registers 4

    .prologue
    .line 68
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 69
    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/a/e/k$a;->b:Lcom/google/ads/interactivemedia/v3/a/e/f;

    .line 70
    iput p3, p0, Lcom/google/ads/interactivemedia/v3/a/e/k$a;->a:I

    .line 71
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/io/IOException;Lcom/google/ads/interactivemedia/v3/a/e/f;I)V
    .registers 5

    .prologue
    .line 80
    invoke-direct {p0, p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 81
    iput-object p3, p0, Lcom/google/ads/interactivemedia/v3/a/e/k$a;->b:Lcom/google/ads/interactivemedia/v3/a/e/f;

    .line 82
    iput p4, p0, Lcom/google/ads/interactivemedia/v3/a/e/k$a;->a:I

    .line 83
    return-void
.end method
