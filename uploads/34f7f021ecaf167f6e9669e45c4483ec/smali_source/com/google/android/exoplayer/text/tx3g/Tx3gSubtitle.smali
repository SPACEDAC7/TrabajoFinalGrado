.class final Lcom/google/android/exoplayer/text/tx3g/Tx3gSubtitle;
.super Ljava/lang/Object;
.source "Tx3gSubtitle.java"

# interfaces
.implements Lcom/google/android/exoplayer/text/Subtitle;


# static fields
.field public static final EMPTY:Lcom/google/android/exoplayer/text/tx3g/Tx3gSubtitle;


# instance fields
.field private final cues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer/text/Cue;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 29
    new-instance v0, Lcom/google/android/exoplayer/text/tx3g/Tx3gSubtitle;

    invoke-direct {v0}, Lcom/google/android/exoplayer/text/tx3g/Tx3gSubtitle;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer/text/tx3g/Tx3gSubtitle;->EMPTY:Lcom/google/android/exoplayer/text/tx3g/Tx3gSubtitle;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer/text/tx3g/Tx3gSubtitle;->cues:Ljava/util/List;

    .line 39
    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer/text/Cue;)V
    .registers 3
    .param p1, "cue"    # Lcom/google/android/exoplayer/text/Cue;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer/text/tx3g/Tx3gSubtitle;->cues:Ljava/util/List;

    .line 35
    return-void
.end method


# virtual methods
.method public getCues(J)Ljava/util/List;
    .registers 6
    .param p1, "timeUs"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer/text/Cue;",
            ">;"
        }
    .end annotation

    .prologue
    .line 64
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_9

    iget-object v0, p0, Lcom/google/android/exoplayer/text/tx3g/Tx3gSubtitle;->cues:Ljava/util/List;

    :goto_8
    return-object v0

    :cond_9
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_8
.end method

.method public getEventTime(I)J
    .registers 4
    .param p1, "index"    # I

    .prologue
    .line 53
    if-nez p1, :cond_9

    const/4 v0, 0x1

    :goto_3
    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->checkArgument(Z)V

    .line 54
    const-wide/16 v0, 0x0

    return-wide v0

    .line 53
    :cond_9
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public getEventTimeCount()I
    .registers 2

    .prologue
    .line 48
    const/4 v0, 0x1

    return v0
.end method

.method public getLastEventTime()J
    .registers 3

    .prologue
    .line 59
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getNextEventTimeIndex(J)I
    .registers 6
    .param p1, "timeUs"    # J

    .prologue
    .line 43
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return v0

    :cond_8
    const/4 v0, -0x1

    goto :goto_7
.end method
