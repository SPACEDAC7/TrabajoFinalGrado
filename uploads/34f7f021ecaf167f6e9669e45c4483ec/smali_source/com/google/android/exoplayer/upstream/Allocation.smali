.class public final Lcom/google/android/exoplayer/upstream/Allocation;
.super Ljava/lang/Object;
.source "Allocation.java"


# instance fields
.field public final data:[B

.field private final offset:I


# direct methods
.method public constructor <init>([BI)V
    .registers 3
    .param p1, "data"    # [B
    .param p2, "offset"    # I

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/google/android/exoplayer/upstream/Allocation;->data:[B

    .line 40
    iput p2, p0, Lcom/google/android/exoplayer/upstream/Allocation;->offset:I

    .line 41
    return-void
.end method


# virtual methods
.method public translateOffset(I)I
    .registers 3
    .param p1, "offset"    # I

    .prologue
    .line 50
    iget v0, p0, Lcom/google/android/exoplayer/upstream/Allocation;->offset:I

    add-int/2addr v0, p1

    return v0
.end method
