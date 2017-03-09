.class public final Lcom/google/ads/interactivemedia/v3/a/e/a;
.super Ljava/lang/Object;
.source "IMASDK"


# instance fields
.field public final a:[B

.field private final b:I


# direct methods
.method public constructor <init>([BI)V
    .registers 3

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/a/e/a;->a:[B

    .line 40
    iput p2, p0, Lcom/google/ads/interactivemedia/v3/a/e/a;->b:I

    .line 41
    return-void
.end method


# virtual methods
.method public a(I)I
    .registers 3

    .prologue
    .line 50
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/e/a;->b:I

    add-int/2addr v0, p1

    return v0
.end method
