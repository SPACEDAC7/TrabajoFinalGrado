.class final Lcom/google/ads/interactivemedia/v3/a/c/c/b$a;
.super Ljava/lang/Object;
.source "IMASDK"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/interactivemedia/v3/a/c/c/b;
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


# direct methods
.method public constructor <init>(Ljava/util/List;IF)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<[B>;IF)V"
        }
    .end annotation

    .prologue
    .line 1225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1226
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/b$a;->a:Ljava/util/List;

    .line 1227
    iput p2, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/b$a;->b:I

    .line 1228
    iput p3, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/b$a;->c:F

    .line 1229
    return-void
.end method
