.class public final Lcom/google/android/exoplayer/dash/DefaultDashTrackSelector;
.super Ljava/lang/Object;
.source "DefaultDashTrackSelector.java"

# interfaces
.implements Lcom/google/android/exoplayer/dash/DashTrackSelector;


# instance fields
.field private final adaptationSetType:I

.field private final context:Landroid/content/Context;

.field private final filterProtectedHdContent:Z

.field private final filterVideoRepresentations:Z


# direct methods
.method private constructor <init>(ILandroid/content/Context;ZZ)V
    .registers 5
    .param p1, "adaptationSetType"    # I
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "filterVideoRepresentations"    # Z
    .param p4, "filterProtectedHdContent"    # Z

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput p1, p0, Lcom/google/android/exoplayer/dash/DefaultDashTrackSelector;->adaptationSetType:I

    .line 64
    iput-object p2, p0, Lcom/google/android/exoplayer/dash/DefaultDashTrackSelector;->context:Landroid/content/Context;

    .line 65
    iput-boolean p3, p0, Lcom/google/android/exoplayer/dash/DefaultDashTrackSelector;->filterVideoRepresentations:Z

    .line 66
    iput-boolean p4, p0, Lcom/google/android/exoplayer/dash/DefaultDashTrackSelector;->filterProtectedHdContent:Z

    .line 67
    return-void
.end method

.method public static newAudioInstance()Lcom/google/android/exoplayer/dash/DefaultDashTrackSelector;
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 54
    new-instance v0, Lcom/google/android/exoplayer/dash/DefaultDashTrackSelector;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v3, v3}, Lcom/google/android/exoplayer/dash/DefaultDashTrackSelector;-><init>(ILandroid/content/Context;ZZ)V

    return-object v0
.end method

.method public static newTextInstance()Lcom/google/android/exoplayer/dash/DefaultDashTrackSelector;
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 58
    new-instance v0, Lcom/google/android/exoplayer/dash/DefaultDashTrackSelector;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v3, v3}, Lcom/google/android/exoplayer/dash/DefaultDashTrackSelector;-><init>(ILandroid/content/Context;ZZ)V

    return-object v0
.end method

.method public static newVideoInstance(Landroid/content/Context;ZZ)Lcom/google/android/exoplayer/dash/DefaultDashTrackSelector;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "filterVideoRepresentations"    # Z
    .param p2, "filterProtectedHdContent"    # Z

    .prologue
    .line 49
    new-instance v0, Lcom/google/android/exoplayer/dash/DefaultDashTrackSelector;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0, p1, p2}, Lcom/google/android/exoplayer/dash/DefaultDashTrackSelector;-><init>(ILandroid/content/Context;ZZ)V

    return-object v0
.end method


# virtual methods
.method public selectTracks(Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;ILcom/google/android/exoplayer/dash/DashTrackSelector$Output;)V
    .registers 15
    .param p1, "manifest"    # Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;
    .param p2, "periodIndex"    # I
    .param p3, "output"    # Lcom/google/android/exoplayer/dash/DashTrackSelector$Output;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    .line 72
    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;->getPeriod(I)Lcom/google/android/exoplayer/dash/mpd/Period;

    move-result-object v3

    .line 73
    .local v3, "period":Lcom/google/android/exoplayer/dash/mpd/Period;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    iget-object v6, v3, Lcom/google/android/exoplayer/dash/mpd/Period;->adaptationSets:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_68

    .line 74
    iget-object v6, v3, Lcom/google/android/exoplayer/dash/mpd/Period;->adaptationSets:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/dash/mpd/AdaptationSet;

    .line 75
    .local v0, "adaptationSet":Lcom/google/android/exoplayer/dash/mpd/AdaptationSet;
    iget v6, v0, Lcom/google/android/exoplayer/dash/mpd/AdaptationSet;->type:I

    iget v8, p0, Lcom/google/android/exoplayer/dash/DefaultDashTrackSelector;->adaptationSetType:I

    if-ne v6, v8, :cond_65

    .line 76
    iget v6, p0, Lcom/google/android/exoplayer/dash/DefaultDashTrackSelector;->adaptationSetType:I

    if-nez v6, :cond_56

    .line 78
    iget-boolean v6, p0, Lcom/google/android/exoplayer/dash/DefaultDashTrackSelector;->filterVideoRepresentations:Z

    if-eqz v6, :cond_4b

    .line 79
    iget-object v8, p0, Lcom/google/android/exoplayer/dash/DefaultDashTrackSelector;->context:Landroid/content/Context;

    iget-object v9, v0, Lcom/google/android/exoplayer/dash/mpd/AdaptationSet;->representations:Ljava/util/List;

    const/4 v10, 0x0

    iget-boolean v6, p0, Lcom/google/android/exoplayer/dash/DefaultDashTrackSelector;->filterProtectedHdContent:Z

    if-eqz v6, :cond_49

    .line 81
    invoke-virtual {v0}, Lcom/google/android/exoplayer/dash/mpd/AdaptationSet;->hasContentProtection()Z

    move-result v6

    if-eqz v6, :cond_49

    move v6, v7

    .line 79
    :goto_34
    invoke-static {v8, v9, v10, v6}, Lcom/google/android/exoplayer/chunk/VideoFormatSelectorUtil;->selectVideoFormatsForDefaultDisplay(Landroid/content/Context;Ljava/util/List;[Ljava/lang/String;Z)[I

    move-result-object v5

    .line 85
    .local v5, "representations":[I
    :goto_38
    array-length v4, v5

    .line 86
    .local v4, "representationCount":I
    if-le v4, v7, :cond_3e

    .line 87
    invoke-interface {p3, p1, p2, v1, v5}, Lcom/google/android/exoplayer/dash/DashTrackSelector$Output;->adaptiveTrack(Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;II[I)V

    .line 89
    :cond_3e
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_3f
    if-ge v2, v4, :cond_65

    .line 90
    aget v6, v5, v2

    invoke-interface {p3, p1, p2, v1, v6}, Lcom/google/android/exoplayer/dash/DashTrackSelector$Output;->fixedTrack(Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;III)V

    .line 89
    add-int/lit8 v2, v2, 0x1

    goto :goto_3f

    .line 81
    .end local v2    # "j":I
    .end local v4    # "representationCount":I
    .end local v5    # "representations":[I
    :cond_49
    const/4 v6, 0x0

    goto :goto_34

    .line 83
    :cond_4b
    iget-object v6, v0, Lcom/google/android/exoplayer/dash/mpd/AdaptationSet;->representations:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v6}, Lcom/google/android/exoplayer/util/Util;->firstIntegersArray(I)[I

    move-result-object v5

    .restart local v5    # "representations":[I
    goto :goto_38

    .line 93
    .end local v5    # "representations":[I
    :cond_56
    const/4 v2, 0x0

    .restart local v2    # "j":I
    :goto_57
    iget-object v6, v0, Lcom/google/android/exoplayer/dash/mpd/AdaptationSet;->representations:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_65

    .line 94
    invoke-interface {p3, p1, p2, v1, v2}, Lcom/google/android/exoplayer/dash/DashTrackSelector$Output;->fixedTrack(Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;III)V

    .line 93
    add-int/lit8 v2, v2, 0x1

    goto :goto_57

    .line 73
    .end local v2    # "j":I
    :cond_65
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 99
    .end local v0    # "adaptationSet":Lcom/google/android/exoplayer/dash/mpd/AdaptationSet;
    :cond_68
    return-void
.end method
