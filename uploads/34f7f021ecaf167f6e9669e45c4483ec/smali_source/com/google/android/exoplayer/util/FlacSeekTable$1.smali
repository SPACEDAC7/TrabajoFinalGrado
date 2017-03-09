.class Lcom/google/android/exoplayer/util/FlacSeekTable$1;
.super Ljava/lang/Object;
.source "FlacSeekTable.java"

# interfaces
.implements Lcom/google/android/exoplayer/extractor/SeekMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/exoplayer/util/FlacSeekTable;->createSeekMap(JJ)Lcom/google/android/exoplayer/extractor/SeekMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/exoplayer/util/FlacSeekTable;

.field final synthetic val$firstFrameOffset:J

.field final synthetic val$sampleRate:J


# direct methods
.method constructor <init>(Lcom/google/android/exoplayer/util/FlacSeekTable;JJ)V
    .registers 6
    .param p1, "this$0"    # Lcom/google/android/exoplayer/util/FlacSeekTable;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/google/android/exoplayer/util/FlacSeekTable$1;->this$0:Lcom/google/android/exoplayer/util/FlacSeekTable;

    iput-wide p2, p0, Lcom/google/android/exoplayer/util/FlacSeekTable$1;->val$sampleRate:J

    iput-wide p4, p0, Lcom/google/android/exoplayer/util/FlacSeekTable$1;->val$firstFrameOffset:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPosition(J)J
    .registers 12
    .param p1, "timeUs"    # J

    .prologue
    const/4 v8, 0x1

    .line 78
    iget-wide v4, p0, Lcom/google/android/exoplayer/util/FlacSeekTable$1;->val$sampleRate:J

    mul-long/2addr v4, p1

    const-wide/32 v6, 0xf4240

    div-long v2, v4, v6

    .line 80
    .local v2, "sample":J
    iget-object v1, p0, Lcom/google/android/exoplayer/util/FlacSeekTable$1;->this$0:Lcom/google/android/exoplayer/util/FlacSeekTable;

    # getter for: Lcom/google/android/exoplayer/util/FlacSeekTable;->sampleNumbers:[J
    invoke-static {v1}, Lcom/google/android/exoplayer/util/FlacSeekTable;->access$000(Lcom/google/android/exoplayer/util/FlacSeekTable;)[J

    move-result-object v1

    invoke-static {v1, v2, v3, v8, v8}, Lcom/google/android/exoplayer/util/Util;->binarySearchFloor([JJZZ)I

    move-result v0

    .line 81
    .local v0, "index":I
    iget-wide v4, p0, Lcom/google/android/exoplayer/util/FlacSeekTable$1;->val$firstFrameOffset:J

    iget-object v1, p0, Lcom/google/android/exoplayer/util/FlacSeekTable$1;->this$0:Lcom/google/android/exoplayer/util/FlacSeekTable;

    # getter for: Lcom/google/android/exoplayer/util/FlacSeekTable;->offsets:[J
    invoke-static {v1}, Lcom/google/android/exoplayer/util/FlacSeekTable;->access$100(Lcom/google/android/exoplayer/util/FlacSeekTable;)[J

    move-result-object v1

    aget-wide v6, v1, v0

    add-long/2addr v4, v6

    return-wide v4
.end method

.method public isSeekable()Z
    .registers 2

    .prologue
    .line 73
    const/4 v0, 0x1

    return v0
.end method
