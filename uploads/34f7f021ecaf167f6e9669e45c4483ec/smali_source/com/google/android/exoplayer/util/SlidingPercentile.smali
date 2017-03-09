.class public final Lcom/google/android/exoplayer/util/SlidingPercentile;
.super Ljava/lang/Object;
.source "SlidingPercentile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer/util/SlidingPercentile$Sample;
    }
.end annotation


# static fields
.field private static final INDEX_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/google/android/exoplayer/util/SlidingPercentile$Sample;",
            ">;"
        }
    .end annotation
.end field

.field private static final MAX_RECYCLED_SAMPLES:I = 0x5

.field private static final SORT_ORDER_BY_INDEX:I = 0x1

.field private static final SORT_ORDER_BY_VALUE:I = 0x0

.field private static final SORT_ORDER_NONE:I = -0x1

.field private static final VALUE_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/google/android/exoplayer/util/SlidingPercentile$Sample;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private currentSortOrder:I

.field private final maxWeight:I

.field private nextSampleIndex:I

.field private recycledSampleCount:I

.field private final recycledSamples:[Lcom/google/android/exoplayer/util/SlidingPercentile$Sample;

.field private final samples:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/exoplayer/util/SlidingPercentile$Sample;",
            ">;"
        }
    .end annotation
.end field

.field private totalWeight:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 37
    new-instance v0, Lcom/google/android/exoplayer/util/SlidingPercentile$1;

    invoke-direct {v0}, Lcom/google/android/exoplayer/util/SlidingPercentile$1;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer/util/SlidingPercentile;->INDEX_COMPARATOR:Ljava/util/Comparator;

    .line 44
    new-instance v0, Lcom/google/android/exoplayer/util/SlidingPercentile$2;

    invoke-direct {v0}, Lcom/google/android/exoplayer/util/SlidingPercentile$2;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer/util/SlidingPercentile;->VALUE_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .param p1, "maxWeight"    # I

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput p1, p0, Lcom/google/android/exoplayer/util/SlidingPercentile;->maxWeight:I

    .line 69
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/google/android/exoplayer/util/SlidingPercentile$Sample;

    iput-object v0, p0, Lcom/google/android/exoplayer/util/SlidingPercentile;->recycledSamples:[Lcom/google/android/exoplayer/util/SlidingPercentile$Sample;

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer/util/SlidingPercentile;->samples:Ljava/util/ArrayList;

    .line 71
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/exoplayer/util/SlidingPercentile;->currentSortOrder:I

    .line 72
    return-void
.end method

.method private ensureSortedByIndex()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 133
    iget v0, p0, Lcom/google/android/exoplayer/util/SlidingPercentile;->currentSortOrder:I

    if-eq v0, v2, :cond_e

    .line 134
    iget-object v0, p0, Lcom/google/android/exoplayer/util/SlidingPercentile;->samples:Ljava/util/ArrayList;

    sget-object v1, Lcom/google/android/exoplayer/util/SlidingPercentile;->INDEX_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 135
    iput v2, p0, Lcom/google/android/exoplayer/util/SlidingPercentile;->currentSortOrder:I

    .line 137
    :cond_e
    return-void
.end method

.method private ensureSortedByValue()V
    .registers 3

    .prologue
    .line 143
    iget v0, p0, Lcom/google/android/exoplayer/util/SlidingPercentile;->currentSortOrder:I

    if-eqz v0, :cond_e

    .line 144
    iget-object v0, p0, Lcom/google/android/exoplayer/util/SlidingPercentile;->samples:Ljava/util/ArrayList;

    sget-object v1, Lcom/google/android/exoplayer/util/SlidingPercentile;->VALUE_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 145
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer/util/SlidingPercentile;->currentSortOrder:I

    .line 147
    :cond_e
    return-void
.end method


# virtual methods
.method public addSample(IF)V
    .registers 10
    .param p1, "weight"    # I
    .param p2, "value"    # F

    .prologue
    const/4 v6, 0x0

    .line 82
    invoke-direct {p0}, Lcom/google/android/exoplayer/util/SlidingPercentile;->ensureSortedByIndex()V

    .line 84
    iget v3, p0, Lcom/google/android/exoplayer/util/SlidingPercentile;->recycledSampleCount:I

    if-lez v3, :cond_5c

    iget-object v3, p0, Lcom/google/android/exoplayer/util/SlidingPercentile;->recycledSamples:[Lcom/google/android/exoplayer/util/SlidingPercentile$Sample;

    iget v4, p0, Lcom/google/android/exoplayer/util/SlidingPercentile;->recycledSampleCount:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/google/android/exoplayer/util/SlidingPercentile;->recycledSampleCount:I

    aget-object v1, v3, v4

    .line 86
    .local v1, "newSample":Lcom/google/android/exoplayer/util/SlidingPercentile$Sample;
    :goto_12
    iget v3, p0, Lcom/google/android/exoplayer/util/SlidingPercentile;->nextSampleIndex:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/google/android/exoplayer/util/SlidingPercentile;->nextSampleIndex:I

    iput v3, v1, Lcom/google/android/exoplayer/util/SlidingPercentile$Sample;->index:I

    .line 87
    iput p1, v1, Lcom/google/android/exoplayer/util/SlidingPercentile$Sample;->weight:I

    .line 88
    iput p2, v1, Lcom/google/android/exoplayer/util/SlidingPercentile$Sample;->value:F

    .line 89
    iget-object v3, p0, Lcom/google/android/exoplayer/util/SlidingPercentile;->samples:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    iget v3, p0, Lcom/google/android/exoplayer/util/SlidingPercentile;->totalWeight:I

    add-int/2addr v3, p1

    iput v3, p0, Lcom/google/android/exoplayer/util/SlidingPercentile;->totalWeight:I

    .line 92
    :cond_28
    :goto_28
    iget v3, p0, Lcom/google/android/exoplayer/util/SlidingPercentile;->totalWeight:I

    iget v4, p0, Lcom/google/android/exoplayer/util/SlidingPercentile;->maxWeight:I

    if-le v3, v4, :cond_6e

    .line 93
    iget v3, p0, Lcom/google/android/exoplayer/util/SlidingPercentile;->totalWeight:I

    iget v4, p0, Lcom/google/android/exoplayer/util/SlidingPercentile;->maxWeight:I

    sub-int v0, v3, v4

    .line 94
    .local v0, "excessWeight":I
    iget-object v3, p0, Lcom/google/android/exoplayer/util/SlidingPercentile;->samples:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer/util/SlidingPercentile$Sample;

    .line 95
    .local v2, "oldestSample":Lcom/google/android/exoplayer/util/SlidingPercentile$Sample;
    iget v3, v2, Lcom/google/android/exoplayer/util/SlidingPercentile$Sample;->weight:I

    if-gt v3, v0, :cond_63

    .line 96
    iget v3, p0, Lcom/google/android/exoplayer/util/SlidingPercentile;->totalWeight:I

    iget v4, v2, Lcom/google/android/exoplayer/util/SlidingPercentile$Sample;->weight:I

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/google/android/exoplayer/util/SlidingPercentile;->totalWeight:I

    .line 97
    iget-object v3, p0, Lcom/google/android/exoplayer/util/SlidingPercentile;->samples:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 98
    iget v3, p0, Lcom/google/android/exoplayer/util/SlidingPercentile;->recycledSampleCount:I

    const/4 v4, 0x5

    if-ge v3, v4, :cond_28

    .line 99
    iget-object v3, p0, Lcom/google/android/exoplayer/util/SlidingPercentile;->recycledSamples:[Lcom/google/android/exoplayer/util/SlidingPercentile$Sample;

    iget v4, p0, Lcom/google/android/exoplayer/util/SlidingPercentile;->recycledSampleCount:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/google/android/exoplayer/util/SlidingPercentile;->recycledSampleCount:I

    aput-object v2, v3, v4

    goto :goto_28

    .line 84
    .end local v0    # "excessWeight":I
    .end local v1    # "newSample":Lcom/google/android/exoplayer/util/SlidingPercentile$Sample;
    .end local v2    # "oldestSample":Lcom/google/android/exoplayer/util/SlidingPercentile$Sample;
    :cond_5c
    new-instance v1, Lcom/google/android/exoplayer/util/SlidingPercentile$Sample;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lcom/google/android/exoplayer/util/SlidingPercentile$Sample;-><init>(Lcom/google/android/exoplayer/util/SlidingPercentile$1;)V

    goto :goto_12

    .line 102
    .restart local v0    # "excessWeight":I
    .restart local v1    # "newSample":Lcom/google/android/exoplayer/util/SlidingPercentile$Sample;
    .restart local v2    # "oldestSample":Lcom/google/android/exoplayer/util/SlidingPercentile$Sample;
    :cond_63
    iget v3, v2, Lcom/google/android/exoplayer/util/SlidingPercentile$Sample;->weight:I

    sub-int/2addr v3, v0

    iput v3, v2, Lcom/google/android/exoplayer/util/SlidingPercentile$Sample;->weight:I

    .line 103
    iget v3, p0, Lcom/google/android/exoplayer/util/SlidingPercentile;->totalWeight:I

    sub-int/2addr v3, v0

    iput v3, p0, Lcom/google/android/exoplayer/util/SlidingPercentile;->totalWeight:I

    goto :goto_28

    .line 106
    .end local v0    # "excessWeight":I
    .end local v2    # "oldestSample":Lcom/google/android/exoplayer/util/SlidingPercentile$Sample;
    :cond_6e
    return-void
.end method

.method public getPercentile(F)F
    .registers 8
    .param p1, "percentile"    # F

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/google/android/exoplayer/util/SlidingPercentile;->ensureSortedByValue()V

    .line 116
    iget v4, p0, Lcom/google/android/exoplayer/util/SlidingPercentile;->totalWeight:I

    int-to-float v4, v4

    mul-float v2, p1, v4

    .line 117
    .local v2, "desiredWeight":F
    const/4 v0, 0x0

    .line 118
    .local v0, "accumulatedWeight":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_a
    iget-object v4, p0, Lcom/google/android/exoplayer/util/SlidingPercentile;->samples:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_28

    .line 119
    iget-object v4, p0, Lcom/google/android/exoplayer/util/SlidingPercentile;->samples:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer/util/SlidingPercentile$Sample;

    .line 120
    .local v1, "currentSample":Lcom/google/android/exoplayer/util/SlidingPercentile$Sample;
    iget v4, v1, Lcom/google/android/exoplayer/util/SlidingPercentile$Sample;->weight:I

    add-int/2addr v0, v4

    .line 121
    int-to-float v4, v0

    cmpl-float v4, v4, v2

    if-ltz v4, :cond_25

    .line 122
    iget v4, v1, Lcom/google/android/exoplayer/util/SlidingPercentile$Sample;->value:F

    .line 126
    .end local v1    # "currentSample":Lcom/google/android/exoplayer/util/SlidingPercentile$Sample;
    :goto_24
    return v4

    .line 118
    .restart local v1    # "currentSample":Lcom/google/android/exoplayer/util/SlidingPercentile$Sample;
    :cond_25
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 126
    .end local v1    # "currentSample":Lcom/google/android/exoplayer/util/SlidingPercentile$Sample;
    :cond_28
    iget-object v4, p0, Lcom/google/android/exoplayer/util/SlidingPercentile;->samples:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_33

    const/high16 v4, 0x7fc00000

    goto :goto_24

    :cond_33
    iget-object v4, p0, Lcom/google/android/exoplayer/util/SlidingPercentile;->samples:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/google/android/exoplayer/util/SlidingPercentile;->samples:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer/util/SlidingPercentile$Sample;

    iget v4, v4, Lcom/google/android/exoplayer/util/SlidingPercentile$Sample;->value:F

    goto :goto_24
.end method
