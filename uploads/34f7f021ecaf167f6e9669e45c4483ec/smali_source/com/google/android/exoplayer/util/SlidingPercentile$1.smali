.class final Lcom/google/android/exoplayer/util/SlidingPercentile$1;
.super Ljava/lang/Object;
.source "SlidingPercentile.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer/util/SlidingPercentile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/google/android/exoplayer/util/SlidingPercentile$Sample;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/google/android/exoplayer/util/SlidingPercentile$Sample;Lcom/google/android/exoplayer/util/SlidingPercentile$Sample;)I
    .registers 5
    .param p1, "a"    # Lcom/google/android/exoplayer/util/SlidingPercentile$Sample;
    .param p2, "b"    # Lcom/google/android/exoplayer/util/SlidingPercentile$Sample;

    .prologue
    .line 40
    iget v0, p1, Lcom/google/android/exoplayer/util/SlidingPercentile$Sample;->index:I

    iget v1, p2, Lcom/google/android/exoplayer/util/SlidingPercentile$Sample;->index:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    .prologue
    .line 37
    check-cast p1, Lcom/google/android/exoplayer/util/SlidingPercentile$Sample;

    check-cast p2, Lcom/google/android/exoplayer/util/SlidingPercentile$Sample;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer/util/SlidingPercentile$1;->compare(Lcom/google/android/exoplayer/util/SlidingPercentile$Sample;Lcom/google/android/exoplayer/util/SlidingPercentile$Sample;)I

    move-result v0

    return v0
.end method
