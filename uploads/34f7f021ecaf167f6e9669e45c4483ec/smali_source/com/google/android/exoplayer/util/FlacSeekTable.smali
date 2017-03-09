.class public final Lcom/google/android/exoplayer/util/FlacSeekTable;
.super Ljava/lang/Object;
.source "FlacSeekTable.java"


# static fields
.field private static final METADATA_LENGTH_OFFSET:I = 0x1

.field private static final SEEK_POINT_SIZE:I = 0x12


# instance fields
.field private final offsets:[J

.field private final sampleNumbers:[J


# direct methods
.method private constructor <init>([J[J)V
    .registers 3
    .param p1, "sampleNumbers"    # [J
    .param p2, "offsets"    # [J

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/google/android/exoplayer/util/FlacSeekTable;->sampleNumbers:[J

    .line 59
    iput-object p2, p0, Lcom/google/android/exoplayer/util/FlacSeekTable;->offsets:[J

    .line 60
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/exoplayer/util/FlacSeekTable;)[J
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer/util/FlacSeekTable;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/google/android/exoplayer/util/FlacSeekTable;->sampleNumbers:[J

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/exoplayer/util/FlacSeekTable;)[J
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer/util/FlacSeekTable;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/google/android/exoplayer/util/FlacSeekTable;->offsets:[J

    return-object v0
.end method

.method public static parseSeekTable(Lcom/google/android/exoplayer/util/ParsableByteArray;)Lcom/google/android/exoplayer/util/FlacSeekTable;
    .registers 9
    .param p0, "data"    # Lcom/google/android/exoplayer/util/ParsableByteArray;

    .prologue
    .line 41
    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 42
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedInt24()I

    move-result v1

    .line 43
    .local v1, "length":I
    div-int/lit8 v2, v1, 0x12

    .line 45
    .local v2, "numberOfSeekPoints":I
    new-array v4, v2, [J

    .line 46
    .local v4, "sampleNumbers":[J
    new-array v3, v2, [J

    .line 48
    .local v3, "offsets":[J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_f
    if-ge v0, v2, :cond_24

    .line 49
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readLong()J

    move-result-wide v6

    aput-wide v6, v4, v0

    .line 50
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readLong()J

    move-result-wide v6

    aput-wide v6, v3, v0

    .line 51
    const/4 v5, 0x2

    invoke-virtual {p0, v5}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 48
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 54
    :cond_24
    new-instance v5, Lcom/google/android/exoplayer/util/FlacSeekTable;

    invoke-direct {v5, v4, v3}, Lcom/google/android/exoplayer/util/FlacSeekTable;-><init>([J[J)V

    return-object v5
.end method


# virtual methods
.method public createSeekMap(JJ)Lcom/google/android/exoplayer/extractor/SeekMap;
    .registers 12
    .param p1, "firstFrameOffset"    # J
    .param p3, "sampleRate"    # J

    .prologue
    .line 70
    new-instance v0, Lcom/google/android/exoplayer/util/FlacSeekTable$1;

    move-object v1, p0

    move-wide v2, p3

    move-wide v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer/util/FlacSeekTable$1;-><init>(Lcom/google/android/exoplayer/util/FlacSeekTable;JJ)V

    return-object v0
.end method
