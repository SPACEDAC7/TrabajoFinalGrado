.class final Lcom/google/ads/interactivemedia/v3/a/c/a/e$a;
.super Ljava/lang/Object;
.source "IMASDK"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/interactivemedia/v3/a/c/a/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation
.end field

.field public final b:I

.field public final c:F

.field public final d:I

.field public final e:I


# direct methods
.method public constructor <init>(Ljava/util/List;IIIF)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<[B>;IIIF)V"
        }
    .end annotation

    .prologue
    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 189
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/a/c/a/e$a;->a:Ljava/util/List;

    .line 190
    iput p2, p0, Lcom/google/ads/interactivemedia/v3/a/c/a/e$a;->b:I

    .line 191
    iput p5, p0, Lcom/google/ads/interactivemedia/v3/a/c/a/e$a;->c:F

    .line 192
    iput p3, p0, Lcom/google/ads/interactivemedia/v3/a/c/a/e$a;->d:I

    .line 193
    iput p4, p0, Lcom/google/ads/interactivemedia/v3/a/c/a/e$a;->e:I

    .line 194
    return-void
.end method
