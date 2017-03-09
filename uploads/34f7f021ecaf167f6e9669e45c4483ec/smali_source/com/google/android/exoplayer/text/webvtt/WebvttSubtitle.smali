.class public final Lcom/google/android/exoplayer/text/webvtt/WebvttSubtitle;
.super Ljava/lang/Object;
.source "WebvttSubtitle.java"

# interfaces
.implements Lcom/google/android/exoplayer/text/Subtitle;


# instance fields
.field private final cueTimesUs:[J

.field private final cues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer/text/webvtt/WebvttCue;",
            ">;"
        }
    .end annotation
.end field

.field private final numCues:I

.field private final sortedCueTimesUs:[J


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer/text/webvtt/WebvttCue;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 41
    .local p1, "cues":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer/text/webvtt/WebvttCue;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/google/android/exoplayer/text/webvtt/WebvttSubtitle;->cues:Ljava/util/List;

    .line 43
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    iput v3, p0, Lcom/google/android/exoplayer/text/webvtt/WebvttSubtitle;->numCues:I

    .line 44
    iget v3, p0, Lcom/google/android/exoplayer/text/webvtt/WebvttSubtitle;->numCues:I

    mul-int/lit8 v3, v3, 0x2

    new-array v3, v3, [J

    iput-object v3, p0, Lcom/google/android/exoplayer/text/webvtt/WebvttSubtitle;->cueTimesUs:[J

    .line 45
    const/4 v2, 0x0

    .local v2, "cueIndex":I
    :goto_14
    iget v3, p0, Lcom/google/android/exoplayer/text/webvtt/WebvttSubtitle;->numCues:I

    if-ge v2, v3, :cond_31

    .line 46
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer/text/webvtt/WebvttCue;

    .line 47
    .local v1, "cue":Lcom/google/android/exoplayer/text/webvtt/WebvttCue;
    mul-int/lit8 v0, v2, 0x2

    .line 48
    .local v0, "arrayIndex":I
    iget-object v3, p0, Lcom/google/android/exoplayer/text/webvtt/WebvttSubtitle;->cueTimesUs:[J

    iget-wide v4, v1, Lcom/google/android/exoplayer/text/webvtt/WebvttCue;->startTime:J

    aput-wide v4, v3, v0

    .line 49
    iget-object v3, p0, Lcom/google/android/exoplayer/text/webvtt/WebvttSubtitle;->cueTimesUs:[J

    add-int/lit8 v4, v0, 0x1

    iget-wide v6, v1, Lcom/google/android/exoplayer/text/webvtt/WebvttCue;->endTime:J

    aput-wide v6, v3, v4

    .line 45
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 51
    .end local v0    # "arrayIndex":I
    .end local v1    # "cue":Lcom/google/android/exoplayer/text/webvtt/WebvttCue;
    :cond_31
    iget-object v3, p0, Lcom/google/android/exoplayer/text/webvtt/WebvttSubtitle;->cueTimesUs:[J

    iget-object v4, p0, Lcom/google/android/exoplayer/text/webvtt/WebvttSubtitle;->cueTimesUs:[J

    array-length v4, v4

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/exoplayer/text/webvtt/WebvttSubtitle;->sortedCueTimesUs:[J

    .line 52
    iget-object v3, p0, Lcom/google/android/exoplayer/text/webvtt/WebvttSubtitle;->sortedCueTimesUs:[J

    invoke-static {v3}, Ljava/util/Arrays;->sort([J)V

    .line 53
    return-void
.end method


# virtual methods
.method public getCues(J)Ljava/util/List;
    .registers 12
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
    .line 83
    const/4 v3, 0x0

    .line 84
    .local v3, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer/text/Cue;>;"
    const/4 v1, 0x0

    .line 85
    .local v1, "firstNormalCue":Lcom/google/android/exoplayer/text/webvtt/WebvttCue;
    const/4 v4, 0x0

    .line 87
    .local v4, "normalCueTextBuilder":Landroid/text/SpannableStringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_4
    iget v5, p0, Lcom/google/android/exoplayer/text/webvtt/WebvttSubtitle;->numCues:I

    if-ge v2, v5, :cond_62

    .line 88
    iget-object v5, p0, Lcom/google/android/exoplayer/text/webvtt/WebvttSubtitle;->cueTimesUs:[J

    mul-int/lit8 v6, v2, 0x2

    aget-wide v6, v5, v6

    cmp-long v5, v6, p1

    if-gtz v5, :cond_36

    iget-object v5, p0, Lcom/google/android/exoplayer/text/webvtt/WebvttSubtitle;->cueTimesUs:[J

    mul-int/lit8 v6, v2, 0x2

    add-int/lit8 v6, v6, 0x1

    aget-wide v6, v5, v6

    cmp-long v5, p1, v6

    if-gez v5, :cond_36

    .line 89
    if-nez v3, :cond_25

    .line 90
    new-instance v3, Ljava/util/ArrayList;

    .end local v3    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer/text/Cue;>;"
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 92
    .restart local v3    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer/text/Cue;>;"
    :cond_25
    iget-object v5, p0, Lcom/google/android/exoplayer/text/webvtt/WebvttSubtitle;->cues:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/text/webvtt/WebvttCue;

    .line 93
    .local v0, "cue":Lcom/google/android/exoplayer/text/webvtt/WebvttCue;
    invoke-virtual {v0}, Lcom/google/android/exoplayer/text/webvtt/WebvttCue;->isNormalCue()Z

    move-result v5

    if-eqz v5, :cond_5e

    .line 97
    if-nez v1, :cond_39

    .line 98
    move-object v1, v0

    .line 87
    .end local v0    # "cue":Lcom/google/android/exoplayer/text/webvtt/WebvttCue;
    :cond_36
    :goto_36
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 99
    .restart local v0    # "cue":Lcom/google/android/exoplayer/text/webvtt/WebvttCue;
    :cond_39
    if-nez v4, :cond_52

    .line 100
    new-instance v4, Landroid/text/SpannableStringBuilder;

    .end local v4    # "normalCueTextBuilder":Landroid/text/SpannableStringBuilder;
    invoke-direct {v4}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 101
    .restart local v4    # "normalCueTextBuilder":Landroid/text/SpannableStringBuilder;
    iget-object v5, v1, Lcom/google/android/exoplayer/text/webvtt/WebvttCue;->text:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/google/android/exoplayer/text/webvtt/WebvttCue;->text:Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_36

    .line 103
    :cond_52
    const-string v5, "\n"

    invoke-virtual {v4, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/google/android/exoplayer/text/webvtt/WebvttCue;->text:Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_36

    .line 106
    :cond_5e
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_36

    .line 110
    .end local v0    # "cue":Lcom/google/android/exoplayer/text/webvtt/WebvttCue;
    :cond_62
    if-eqz v4, :cond_6f

    .line 112
    new-instance v5, Lcom/google/android/exoplayer/text/webvtt/WebvttCue;

    invoke-direct {v5, v4}, Lcom/google/android/exoplayer/text/webvtt/WebvttCue;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    :cond_6c
    :goto_6c
    if-eqz v3, :cond_75

    .line 121
    .end local v3    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer/text/Cue;>;"
    :goto_6e
    return-object v3

    .line 113
    .restart local v3    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/exoplayer/text/Cue;>;"
    :cond_6f
    if-eqz v1, :cond_6c

    .line 115
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6c

    .line 121
    :cond_75
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    goto :goto_6e
.end method

.method public getEventTime(I)J
    .registers 5
    .param p1, "index"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 68
    if-ltz p1, :cond_15

    move v0, v1

    :goto_5
    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->checkArgument(Z)V

    .line 69
    iget-object v0, p0, Lcom/google/android/exoplayer/text/webvtt/WebvttSubtitle;->sortedCueTimesUs:[J

    array-length v0, v0

    if-ge p1, v0, :cond_17

    :goto_d
    invoke-static {v1}, Lcom/google/android/exoplayer/util/Assertions;->checkArgument(Z)V

    .line 70
    iget-object v0, p0, Lcom/google/android/exoplayer/text/webvtt/WebvttSubtitle;->sortedCueTimesUs:[J

    aget-wide v0, v0, p1

    return-wide v0

    :cond_15
    move v0, v2

    .line 68
    goto :goto_5

    :cond_17
    move v1, v2

    .line 69
    goto :goto_d
.end method

.method public getEventTimeCount()I
    .registers 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/android/exoplayer/text/webvtt/WebvttSubtitle;->sortedCueTimesUs:[J

    array-length v0, v0

    return v0
.end method

.method public getLastEventTime()J
    .registers 3

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/google/android/exoplayer/text/webvtt/WebvttSubtitle;->getEventTimeCount()I

    move-result v0

    if-nez v0, :cond_9

    .line 76
    const-wide/16 v0, -0x1

    .line 78
    :goto_8
    return-wide v0

    :cond_9
    iget-object v0, p0, Lcom/google/android/exoplayer/text/webvtt/WebvttSubtitle;->sortedCueTimesUs:[J

    iget-object v1, p0, Lcom/google/android/exoplayer/text/webvtt/WebvttSubtitle;->sortedCueTimesUs:[J

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget-wide v0, v0, v1

    goto :goto_8
.end method

.method public getNextEventTimeIndex(J)I
    .registers 6
    .param p1, "timeUs"    # J

    .prologue
    const/4 v2, 0x0

    .line 57
    iget-object v1, p0, Lcom/google/android/exoplayer/text/webvtt/WebvttSubtitle;->sortedCueTimesUs:[J

    invoke-static {v1, p1, p2, v2, v2}, Lcom/google/android/exoplayer/util/Util;->binarySearchCeil([JJZZ)I

    move-result v0

    .line 58
    .local v0, "index":I
    iget-object v1, p0, Lcom/google/android/exoplayer/text/webvtt/WebvttSubtitle;->sortedCueTimesUs:[J

    array-length v1, v1

    if-ge v0, v1, :cond_d

    .end local v0    # "index":I
    :goto_c
    return v0

    .restart local v0    # "index":I
    :cond_d
    const/4 v0, -0x1

    goto :goto_c
.end method
