.class final Lcom/google/ads/interactivemedia/v3/a/c/c/b$d;
.super Ljava/lang/Object;
.source "IMASDK"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/interactivemedia/v3/a/c/c/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "d"
.end annotation


# instance fields
.field public final a:[Lcom/google/ads/interactivemedia/v3/a/c/c/j;

.field public b:Lcom/google/ads/interactivemedia/v3/a/p;

.field public c:I


# direct methods
.method public constructor <init>(I)V
    .registers 3

    .prologue
    .line 1208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1209
    new-array v0, p1, [Lcom/google/ads/interactivemedia/v3/a/c/c/j;

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/b$d;->a:[Lcom/google/ads/interactivemedia/v3/a/c/c/j;

    .line 1210
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/c/c/b$d;->c:I

    .line 1211
    return-void
.end method
