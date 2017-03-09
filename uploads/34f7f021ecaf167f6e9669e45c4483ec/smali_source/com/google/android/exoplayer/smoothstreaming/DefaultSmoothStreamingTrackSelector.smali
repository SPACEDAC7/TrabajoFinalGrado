.class public final Lcom/google/android/exoplayer/smoothstreaming/DefaultSmoothStreamingTrackSelector;
.super Ljava/lang/Object;
.source "DefaultSmoothStreamingTrackSelector.java"

# interfaces
.implements Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingTrackSelector;


# instance fields
.field private final context:Landroid/content/Context;

.field private final filterProtectedHdContent:Z

.field private final filterVideoRepresentations:Z

.field private final streamElementType:I


# direct methods
.method private constructor <init>(ILandroid/content/Context;ZZ)V
    .registers 5
    .param p1, "streamElementType"    # I
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "filterVideoRepresentations"    # Z
    .param p4, "filterProtectedHdContent"    # Z

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p2, p0, Lcom/google/android/exoplayer/smoothstreaming/DefaultSmoothStreamingTrackSelector;->context:Landroid/content/Context;

    .line 64
    iput p1, p0, Lcom/google/android/exoplayer/smoothstreaming/DefaultSmoothStreamingTrackSelector;->streamElementType:I

    .line 65
    iput-boolean p3, p0, Lcom/google/android/exoplayer/smoothstreaming/DefaultSmoothStreamingTrackSelector;->filterVideoRepresentations:Z

    .line 66
    iput-boolean p4, p0, Lcom/google/android/exoplayer/smoothstreaming/DefaultSmoothStreamingTrackSelector;->filterProtectedHdContent:Z

    .line 67
    return-void
.end method

.method public static newAudioInstance()Lcom/google/android/exoplayer/smoothstreaming/DefaultSmoothStreamingTrackSelector;
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 54
    new-instance v0, Lcom/google/android/exoplayer/smoothstreaming/DefaultSmoothStreamingTrackSelector;

    const/4 v1, 0x0

    invoke-direct {v0, v2, v1, v2, v2}, Lcom/google/android/exoplayer/smoothstreaming/DefaultSmoothStreamingTrackSelector;-><init>(ILandroid/content/Context;ZZ)V

    return-object v0
.end method

.method public static newTextInstance()Lcom/google/android/exoplayer/smoothstreaming/DefaultSmoothStreamingTrackSelector;
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 58
    new-instance v0, Lcom/google/android/exoplayer/smoothstreaming/DefaultSmoothStreamingTrackSelector;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v3, v3}, Lcom/google/android/exoplayer/smoothstreaming/DefaultSmoothStreamingTrackSelector;-><init>(ILandroid/content/Context;ZZ)V

    return-object v0
.end method

.method public static newVideoInstance(Landroid/content/Context;ZZ)Lcom/google/android/exoplayer/smoothstreaming/DefaultSmoothStreamingTrackSelector;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "filterVideoRepresentations"    # Z
    .param p2, "filterProtectedHdContent"    # Z

    .prologue
    .line 49
    new-instance v0, Lcom/google/android/exoplayer/smoothstreaming/DefaultSmoothStreamingTrackSelector;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0, p1, p2}, Lcom/google/android/exoplayer/smoothstreaming/DefaultSmoothStreamingTrackSelector;-><init>(ILandroid/content/Context;ZZ)V

    return-object v0
.end method


# virtual methods
.method public selectTracks(Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest;Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingTrackSelector$Output;)V
    .registers 13
    .param p1, "manifest"    # Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest;
    .param p2, "output"    # Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingTrackSelector$Output;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 71
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    iget-object v5, p1, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest;->streamElements:[Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;

    array-length v5, v5

    if-ge v0, v5, :cond_59

    .line 72
    iget-object v5, p1, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest;->streamElements:[Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;

    aget-object v5, v5, v0

    iget-object v4, v5, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;->tracks:[Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$TrackElement;

    .line 73
    .local v4, "tracks":[Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$TrackElement;
    iget-object v5, p1, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest;->streamElements:[Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;

    aget-object v5, v5, v0

    iget v5, v5, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$StreamElement;->type:I

    iget v7, p0, Lcom/google/android/exoplayer/smoothstreaming/DefaultSmoothStreamingTrackSelector;->streamElementType:I

    if-ne v5, v7, :cond_56

    .line 74
    iget v5, p0, Lcom/google/android/exoplayer/smoothstreaming/DefaultSmoothStreamingTrackSelector;->streamElementType:I

    if-ne v5, v6, :cond_4c

    .line 76
    iget-boolean v5, p0, Lcom/google/android/exoplayer/smoothstreaming/DefaultSmoothStreamingTrackSelector;->filterVideoRepresentations:Z

    if-eqz v5, :cond_46

    .line 77
    iget-object v7, p0, Lcom/google/android/exoplayer/smoothstreaming/DefaultSmoothStreamingTrackSelector;->context:Landroid/content/Context;

    .line 78
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    const/4 v9, 0x0

    iget-boolean v5, p0, Lcom/google/android/exoplayer/smoothstreaming/DefaultSmoothStreamingTrackSelector;->filterProtectedHdContent:Z

    if-eqz v5, :cond_44

    iget-object v5, p1, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest;->protectionElement:Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$ProtectionElement;

    if-eqz v5, :cond_44

    move v5, v6

    .line 77
    :goto_2f
    invoke-static {v7, v8, v9, v5}, Lcom/google/android/exoplayer/chunk/VideoFormatSelectorUtil;->selectVideoFormatsForDefaultDisplay(Landroid/content/Context;Ljava/util/List;[Ljava/lang/String;Z)[I

    move-result-object v3

    .line 83
    .local v3, "trackIndices":[I
    :goto_33
    array-length v2, v3

    .line 84
    .local v2, "trackCount":I
    if-le v2, v6, :cond_39

    .line 85
    invoke-interface {p2, p1, v0, v3}, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingTrackSelector$Output;->adaptiveTrack(Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest;I[I)V

    .line 87
    :cond_39
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_3a
    if-ge v1, v2, :cond_56

    .line 88
    aget v5, v3, v1

    invoke-interface {p2, p1, v0, v5}, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingTrackSelector$Output;->fixedTrack(Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest;II)V

    .line 87
    add-int/lit8 v1, v1, 0x1

    goto :goto_3a

    .line 78
    .end local v1    # "j":I
    .end local v2    # "trackCount":I
    .end local v3    # "trackIndices":[I
    :cond_44
    const/4 v5, 0x0

    goto :goto_2f

    .line 81
    :cond_46
    array-length v5, v4

    invoke-static {v5}, Lcom/google/android/exoplayer/util/Util;->firstIntegersArray(I)[I

    move-result-object v3

    .restart local v3    # "trackIndices":[I
    goto :goto_33

    .line 91
    .end local v3    # "trackIndices":[I
    :cond_4c
    const/4 v1, 0x0

    .restart local v1    # "j":I
    :goto_4d
    array-length v5, v4

    if-ge v1, v5, :cond_56

    .line 92
    invoke-interface {p2, p1, v0, v1}, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingTrackSelector$Output;->fixedTrack(Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest;II)V

    .line 91
    add-int/lit8 v1, v1, 0x1

    goto :goto_4d

    .line 71
    .end local v1    # "j":I
    :cond_56
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 97
    .end local v4    # "tracks":[Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$TrackElement;
    :cond_59
    return-void
.end method
