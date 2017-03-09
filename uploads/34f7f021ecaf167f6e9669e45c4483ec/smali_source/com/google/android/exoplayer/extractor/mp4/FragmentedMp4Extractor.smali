.class public Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;
.super Ljava/lang/Object;
.source "FragmentedMp4Extractor.java"

# interfaces
.implements Lcom/google/android/exoplayer/extractor/Extractor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;
    }
.end annotation


# static fields
.field private static final FLAG_SIDELOADED:I = 0x4

.field public static final FLAG_WORKAROUND_EVERY_VIDEO_FRAME_IS_SYNC_FRAME:I = 0x1

.field public static final FLAG_WORKAROUND_IGNORE_TFDT_BOX:I = 0x2

.field private static final PIFF_SAMPLE_ENCRYPTION_BOX_EXTENDED_TYPE:[B

.field private static final SAMPLE_GROUP_TYPE_seig:I

.field private static final STATE_READING_ATOM_HEADER:I = 0x0

.field private static final STATE_READING_ATOM_PAYLOAD:I = 0x1

.field private static final STATE_READING_ENCRYPTION_DATA:I = 0x2

.field private static final STATE_READING_SAMPLE_CONTINUE:I = 0x4

.field private static final STATE_READING_SAMPLE_START:I = 0x3

.field private static final TAG:Ljava/lang/String; = "FragmentedMp4Extractor"


# instance fields
.field private atomData:Lcom/google/android/exoplayer/util/ParsableByteArray;

.field private final atomHeader:Lcom/google/android/exoplayer/util/ParsableByteArray;

.field private atomHeaderBytesRead:I

.field private atomSize:J

.field private atomType:I

.field private final containerAtoms:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;",
            ">;"
        }
    .end annotation
.end field

.field private currentTrackBundle:Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

.field private final encryptionSignalByte:Lcom/google/android/exoplayer/util/ParsableByteArray;

.field private endOfMdatPosition:J

.field private final extendedTypeScratch:[B

.field private extractorOutput:Lcom/google/android/exoplayer/extractor/ExtractorOutput;

.field private final flags:I

.field private haveOutputSeekMap:Z

.field private final nalLength:Lcom/google/android/exoplayer/util/ParsableByteArray;

.field private final nalStartCode:Lcom/google/android/exoplayer/util/ParsableByteArray;

.field private parserState:I

.field private sampleBytesWritten:I

.field private sampleCurrentNalBytesRemaining:I

.field private sampleSize:I

.field private final sideloadedTrack:Lcom/google/android/exoplayer/extractor/mp4/Track;

.field private final trackBundles:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 51
    const-string v0, "seig"

    invoke-static {v0}, Lcom/google/android/exoplayer/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->SAMPLE_GROUP_TYPE_seig:I

    .line 73
    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_12

    sput-object v0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->PIFF_SAMPLE_ENCRYPTION_BOX_EXTENDED_TYPE:[B

    return-void

    :array_12
    .array-data 1
        -0x5et
        0x39t
        0x4ft
        0x52t
        0x5at
        -0x65t
        0x4ft
        0x14t
        -0x5et
        0x44t
        0x6ct
        0x42t
        0x7ct
        0x64t
        -0x73t
        -0xct
    .end array-data
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 119
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;-><init>(I)V

    .line 120
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .param p1, "flags"    # I

    .prologue
    .line 126
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;-><init>(ILcom/google/android/exoplayer/extractor/mp4/Track;)V

    .line 127
    return-void
.end method

.method public constructor <init>(ILcom/google/android/exoplayer/extractor/mp4/Track;)V
    .registers 7
    .param p1, "flags"    # I
    .param p2, "sideloadedTrack"    # Lcom/google/android/exoplayer/extractor/mp4/Track;

    .prologue
    const/16 v3, 0x10

    const/4 v1, 0x4

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    iput-object p2, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->sideloadedTrack:Lcom/google/android/exoplayer/extractor/mp4/Track;

    .line 136
    if-eqz p2, :cond_43

    move v0, v1

    :goto_b
    or-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->flags:I

    .line 137
    new-instance v0, Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-direct {v0, v3}, Lcom/google/android/exoplayer/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->atomHeader:Lcom/google/android/exoplayer/util/ParsableByteArray;

    .line 138
    new-instance v0, Lcom/google/android/exoplayer/util/ParsableByteArray;

    sget-object v2, Lcom/google/android/exoplayer/util/NalUnitUtil;->NAL_START_CODE:[B

    invoke-direct {v0, v2}, Lcom/google/android/exoplayer/util/ParsableByteArray;-><init>([B)V

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->nalStartCode:Lcom/google/android/exoplayer/util/ParsableByteArray;

    .line 139
    new-instance v0, Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->nalLength:Lcom/google/android/exoplayer/util/ParsableByteArray;

    .line 140
    new-instance v0, Lcom/google/android/exoplayer/util/ParsableByteArray;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->encryptionSignalByte:Lcom/google/android/exoplayer/util/ParsableByteArray;

    .line 141
    new-array v0, v3, [B

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->extendedTypeScratch:[B

    .line 142
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->containerAtoms:Ljava/util/Stack;

    .line 143
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    .line 144
    invoke-direct {p0}, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->enterReadingAtomHeaderState()V

    .line 145
    return-void

    .line 136
    :cond_43
    const/4 v0, 0x0

    goto :goto_b
.end method

.method private appendSampleEncryptionData(Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;)I
    .registers 14
    .param p1, "trackBundle"    # Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    .prologue
    const/4 v10, 0x0

    .line 989
    iget-object v7, p1, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;

    .line 990
    .local v7, "trackFragment":Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;
    iget-object v3, v7, Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;->sampleEncryptionData:Lcom/google/android/exoplayer/util/ParsableByteArray;

    .line 991
    .local v3, "sampleEncryptionData":Lcom/google/android/exoplayer/util/ParsableByteArray;
    iget-object v9, v7, Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;->header:Lcom/google/android/exoplayer/extractor/mp4/DefaultSampleValues;

    iget v2, v9, Lcom/google/android/exoplayer/extractor/mp4/DefaultSampleValues;->sampleDescriptionIndex:I

    .line 992
    .local v2, "sampleDescriptionIndex":I
    iget-object v9, v7, Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;->trackEncryptionBox:Lcom/google/android/exoplayer/extractor/mp4/TrackEncryptionBox;

    if-eqz v9, :cond_38

    iget-object v0, v7, Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;->trackEncryptionBox:Lcom/google/android/exoplayer/extractor/mp4/TrackEncryptionBox;

    .line 995
    .local v0, "encryptionBox":Lcom/google/android/exoplayer/extractor/mp4/TrackEncryptionBox;
    :goto_f
    iget v8, v0, Lcom/google/android/exoplayer/extractor/mp4/TrackEncryptionBox;->initializationVectorSize:I

    .line 996
    .local v8, "vectorSize":I
    iget-object v9, v7, Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;->sampleHasSubsampleEncryptionTable:[Z

    iget v11, p1, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleIndex:I

    aget-boolean v6, v9, v11

    .line 1000
    .local v6, "subsampleEncryption":Z
    iget-object v9, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->encryptionSignalByte:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v11, v9, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    if-eqz v6, :cond_3f

    const/16 v9, 0x80

    :goto_1f
    or-int/2addr v9, v8

    int-to-byte v9, v9

    aput-byte v9, v11, v10

    .line 1001
    iget-object v9, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->encryptionSignalByte:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v9, v10}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 1002
    iget-object v1, p1, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->output:Lcom/google/android/exoplayer/extractor/TrackOutput;

    .line 1003
    .local v1, "output":Lcom/google/android/exoplayer/extractor/TrackOutput;
    iget-object v9, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->encryptionSignalByte:Lcom/google/android/exoplayer/util/ParsableByteArray;

    const/4 v10, 0x1

    invoke-interface {v1, v9, v10}, Lcom/google/android/exoplayer/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer/util/ParsableByteArray;I)V

    .line 1005
    invoke-interface {v1, v3, v8}, Lcom/google/android/exoplayer/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer/util/ParsableByteArray;I)V

    .line 1007
    if-nez v6, :cond_41

    .line 1008
    add-int/lit8 v9, v8, 0x1

    .line 1015
    :goto_37
    return v9

    .line 992
    .end local v0    # "encryptionBox":Lcom/google/android/exoplayer/extractor/mp4/TrackEncryptionBox;
    .end local v1    # "output":Lcom/google/android/exoplayer/extractor/TrackOutput;
    .end local v6    # "subsampleEncryption":Z
    .end local v8    # "vectorSize":I
    :cond_38
    iget-object v9, p1, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->track:Lcom/google/android/exoplayer/extractor/mp4/Track;

    iget-object v9, v9, Lcom/google/android/exoplayer/extractor/mp4/Track;->sampleDescriptionEncryptionBoxes:[Lcom/google/android/exoplayer/extractor/mp4/TrackEncryptionBox;

    aget-object v0, v9, v2

    goto :goto_f

    .restart local v0    # "encryptionBox":Lcom/google/android/exoplayer/extractor/mp4/TrackEncryptionBox;
    .restart local v6    # "subsampleEncryption":Z
    .restart local v8    # "vectorSize":I
    :cond_3f
    move v9, v10

    .line 1000
    goto :goto_1f

    .line 1011
    .restart local v1    # "output":Lcom/google/android/exoplayer/extractor/TrackOutput;
    :cond_41
    invoke-virtual {v3}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedShort()I

    move-result v4

    .line 1012
    .local v4, "subsampleCount":I
    const/4 v9, -0x2

    invoke-virtual {v3, v9}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 1013
    mul-int/lit8 v9, v4, 0x6

    add-int/lit8 v5, v9, 0x2

    .line 1014
    .local v5, "subsampleDataLength":I
    invoke-interface {v1, v3, v5}, Lcom/google/android/exoplayer/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer/util/ParsableByteArray;I)V

    .line 1015
    add-int/lit8 v9, v8, 0x1

    add-int/2addr v9, v5

    goto :goto_37
.end method

.method private enterReadingAtomHeaderState()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 203
    iput v0, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->parserState:I

    .line 204
    iput v0, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->atomHeaderBytesRead:I

    .line 205
    return-void
.end method

.method private static getDrmInitDataFromAtoms(Ljava/util/List;)Lcom/google/android/exoplayer/drm/DrmInitData$Mapped;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;",
            ">;)",
            "Lcom/google/android/exoplayer/drm/DrmInitData$Mapped;"
        }
    .end annotation

    .prologue
    .line 1020
    .local p0, "leafChildren":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;>;"
    const/4 v1, 0x0

    .line 1021
    .local v1, "drmInitData":Lcom/google/android/exoplayer/drm/DrmInitData$Mapped;
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    .line 1022
    .local v3, "leafChildrenSize":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_6
    if-ge v2, v3, :cond_3f

    .line 1023
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;

    .line 1024
    .local v0, "child":Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;
    iget v6, v0, Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;->type:I

    sget v7, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_pssh:I

    if-ne v6, v7, :cond_2c

    .line 1025
    if-nez v1, :cond_1b

    .line 1026
    new-instance v1, Lcom/google/android/exoplayer/drm/DrmInitData$Mapped;

    .end local v1    # "drmInitData":Lcom/google/android/exoplayer/drm/DrmInitData$Mapped;
    invoke-direct {v1}, Lcom/google/android/exoplayer/drm/DrmInitData$Mapped;-><init>()V

    .line 1028
    .restart local v1    # "drmInitData":Lcom/google/android/exoplayer/drm/DrmInitData$Mapped;
    :cond_1b
    iget-object v6, v0, Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v4, v6, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    .line 1029
    .local v4, "psshData":[B
    invoke-static {v4}, Lcom/google/android/exoplayer/extractor/mp4/PsshAtomUtil;->parseUuid([B)Ljava/util/UUID;

    move-result-object v5

    .line 1030
    .local v5, "uuid":Ljava/util/UUID;
    if-nez v5, :cond_2f

    .line 1031
    const-string v6, "FragmentedMp4Extractor"

    const-string v7, "Skipped pssh atom (failed to extract uuid)"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1022
    .end local v4    # "psshData":[B
    .end local v5    # "uuid":Ljava/util/UUID;
    :cond_2c
    :goto_2c
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 1033
    .restart local v4    # "psshData":[B
    .restart local v5    # "uuid":Ljava/util/UUID;
    :cond_2f
    invoke-static {v4}, Lcom/google/android/exoplayer/extractor/mp4/PsshAtomUtil;->parseUuid([B)Ljava/util/UUID;

    move-result-object v6

    new-instance v7, Lcom/google/android/exoplayer/drm/DrmInitData$SchemeInitData;

    const-string/jumbo v8, "video/mp4"

    invoke-direct {v7, v8, v4}, Lcom/google/android/exoplayer/drm/DrmInitData$SchemeInitData;-><init>(Ljava/lang/String;[B)V

    invoke-virtual {v1, v6, v7}, Lcom/google/android/exoplayer/drm/DrmInitData$Mapped;->put(Ljava/util/UUID;Lcom/google/android/exoplayer/drm/DrmInitData$SchemeInitData;)V

    goto :goto_2c

    .line 1038
    .end local v0    # "child":Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;
    .end local v4    # "psshData":[B
    .end local v5    # "uuid":Ljava/util/UUID;
    :cond_3f
    return-object v1
.end method

.method private static getNextFragmentRun(Landroid/util/SparseArray;)Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;",
            ">;)",
            "Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;"
        }
    .end annotation

    .prologue
    .line 961
    .local p0, "trackBundles":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;>;"
    const/4 v1, 0x0

    .line 962
    .local v1, "nextTrackBundle":Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;
    const-wide v2, 0x7fffffffffffffffL

    .line 964
    .local v2, "nextTrackRunOffset":J
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v5

    .line 965
    .local v5, "trackBundlesSize":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_b
    if-ge v0, v5, :cond_29

    .line 966
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    .line 967
    .local v4, "trackBundle":Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;
    iget v8, v4, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleIndex:I

    iget-object v9, v4, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;

    iget v9, v9, Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;->length:I

    if-ne v8, v9, :cond_1e

    .line 965
    :cond_1b
    :goto_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 970
    :cond_1e
    iget-object v8, v4, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;

    iget-wide v6, v8, Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;->dataPosition:J

    .line 971
    .local v6, "trunOffset":J
    cmp-long v8, v6, v2

    if-gez v8, :cond_1b

    .line 972
    move-object v1, v4

    .line 973
    move-wide v2, v6

    goto :goto_1b

    .line 977
    .end local v4    # "trackBundle":Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;
    .end local v6    # "trunOffset":J
    :cond_29
    return-object v1
.end method

.method private onContainerAtomRead(Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;)V
    .registers 4
    .param p1, "container"    # Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ParserException;
        }
    .end annotation

    .prologue
    .line 310
    iget v0, p1, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;->type:I

    sget v1, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_moov:I

    if-ne v0, v1, :cond_a

    .line 311
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->onMoovContainerAtomRead(Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;)V

    .line 317
    :cond_9
    :goto_9
    return-void

    .line 312
    :cond_a
    iget v0, p1, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;->type:I

    sget v1, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_moof:I

    if-ne v0, v1, :cond_14

    .line 313
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->onMoofContainerAtomRead(Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;)V

    goto :goto_9

    .line 314
    :cond_14
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->containerAtoms:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    .line 315
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->containerAtoms:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;->add(Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;)V

    goto :goto_9
.end method

.method private onLeafAtomRead(Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;J)V
    .registers 8
    .param p1, "leaf"    # Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;
    .param p2, "inputPosition"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ParserException;
        }
    .end annotation

    .prologue
    .line 298
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->containerAtoms:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_14

    .line 299
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->containerAtoms:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;

    invoke-virtual {v1, p1}, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;->add(Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;)V

    .line 307
    :cond_13
    :goto_13
    return-void

    .line 300
    :cond_14
    iget v1, p1, Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;->type:I

    sget v2, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_sidx:I

    if-ne v1, v2, :cond_29

    .line 301
    iget-object v1, p1, Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-static {v1, p2, p3}, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->parseSidx(Lcom/google/android/exoplayer/util/ParsableByteArray;J)Lcom/google/android/exoplayer/extractor/ChunkIndex;

    move-result-object v0

    .line 302
    .local v0, "segmentIndex":Lcom/google/android/exoplayer/extractor/ChunkIndex;
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->extractorOutput:Lcom/google/android/exoplayer/extractor/ExtractorOutput;

    invoke-interface {v1, v0}, Lcom/google/android/exoplayer/extractor/ExtractorOutput;->seekMap(Lcom/google/android/exoplayer/extractor/SeekMap;)V

    .line 303
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->haveOutputSeekMap:Z

    goto :goto_13

    .line 304
    .end local v0    # "segmentIndex":Lcom/google/android/exoplayer/extractor/ChunkIndex;
    :cond_29
    iget v1, p1, Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;->type:I

    sget v2, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_emsg:I

    if-ne v1, v2, :cond_13

    .line 305
    iget-object v1, p1, Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {p0, v1, p2, p3}, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->parseEmsg(Lcom/google/android/exoplayer/util/ParsableByteArray;J)V

    goto :goto_13
.end method

.method private onMoofContainerAtomRead(Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;)V
    .registers 6
    .param p1, "moof"    # Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ParserException;
        }
    .end annotation

    .prologue
    .line 375
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    iget v2, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->flags:I

    iget-object v3, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->extendedTypeScratch:[B

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->parseMoof(Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;Landroid/util/SparseArray;I[B)V

    .line 376
    iget-object v1, p1, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;->leafChildren:Ljava/util/List;

    invoke-static {v1}, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->getDrmInitDataFromAtoms(Ljava/util/List;)Lcom/google/android/exoplayer/drm/DrmInitData$Mapped;

    move-result-object v0

    .line 377
    .local v0, "drmInitData":Lcom/google/android/exoplayer/drm/DrmInitData$Mapped;
    if-eqz v0, :cond_16

    .line 378
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->extractorOutput:Lcom/google/android/exoplayer/extractor/ExtractorOutput;

    invoke-interface {v1, v0}, Lcom/google/android/exoplayer/extractor/ExtractorOutput;->drmInitData(Lcom/google/android/exoplayer/drm/DrmInitData;)V

    .line 380
    :cond_16
    return-void
.end method

.method private onMoovContainerAtomRead(Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;)V
    .registers 21
    .param p1, "moov"    # Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;

    .prologue
    .line 320
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->sideloadedTrack:Lcom/google/android/exoplayer/extractor/mp4/Track;

    if-nez v15, :cond_5f

    const/4 v15, 0x1

    :goto_7
    const-string v16, "Unexpected moov box."

    invoke-static/range {v15 .. v16}, Lcom/google/android/exoplayer/util/Assertions;->checkState(ZLjava/lang/Object;)V

    .line 322
    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;->leafChildren:Ljava/util/List;

    invoke-static {v15}, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->getDrmInitDataFromAtoms(Ljava/util/List;)Lcom/google/android/exoplayer/drm/DrmInitData$Mapped;

    move-result-object v4

    .line 323
    .local v4, "drmInitData":Lcom/google/android/exoplayer/drm/DrmInitData$Mapped;
    if-eqz v4, :cond_1d

    .line 324
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->extractorOutput:Lcom/google/android/exoplayer/extractor/ExtractorOutput;

    invoke-interface {v15, v4}, Lcom/google/android/exoplayer/extractor/ExtractorOutput;->drmInitData(Lcom/google/android/exoplayer/drm/DrmInitData;)V

    .line 328
    :cond_1d
    sget v15, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_mvex:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;->getContainerAtomOfType(I)Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;

    move-result-object v9

    .line 329
    .local v9, "mvex":Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    .line 330
    .local v3, "defaultSampleValuesArray":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/google/android/exoplayer/extractor/mp4/DefaultSampleValues;>;"
    const-wide/16 v6, -0x1

    .line 331
    .local v6, "duration":J
    iget-object v15, v9, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;->leafChildren:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v10

    .line 332
    .local v10, "mvexChildrenSize":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_33
    if-ge v5, v10, :cond_70

    .line 333
    iget-object v15, v9, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;->leafChildren:Ljava/util/List;

    invoke-interface {v15, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;

    .line 334
    .local v2, "atom":Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;
    iget v15, v2, Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;->type:I

    sget v16, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_trex:I

    move/from16 v0, v16

    if-ne v15, v0, :cond_61

    .line 335
    iget-object v15, v2, Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-static {v15}, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->parseTrex(Lcom/google/android/exoplayer/util/ParsableByteArray;)Landroid/util/Pair;

    move-result-object v14

    .line 336
    .local v14, "trexData":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Lcom/google/android/exoplayer/extractor/mp4/DefaultSampleValues;>;"
    iget-object v15, v14, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    iget-object v0, v14, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v3, v15, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 332
    .end local v14    # "trexData":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Lcom/google/android/exoplayer/extractor/mp4/DefaultSampleValues;>;"
    :cond_5c
    :goto_5c
    add-int/lit8 v5, v5, 0x1

    goto :goto_33

    .line 320
    .end local v2    # "atom":Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;
    .end local v3    # "defaultSampleValuesArray":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/google/android/exoplayer/extractor/mp4/DefaultSampleValues;>;"
    .end local v4    # "drmInitData":Lcom/google/android/exoplayer/drm/DrmInitData$Mapped;
    .end local v5    # "i":I
    .end local v6    # "duration":J
    .end local v9    # "mvex":Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;
    .end local v10    # "mvexChildrenSize":I
    :cond_5f
    const/4 v15, 0x0

    goto :goto_7

    .line 337
    .restart local v2    # "atom":Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;
    .restart local v3    # "defaultSampleValuesArray":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/google/android/exoplayer/extractor/mp4/DefaultSampleValues;>;"
    .restart local v4    # "drmInitData":Lcom/google/android/exoplayer/drm/DrmInitData$Mapped;
    .restart local v5    # "i":I
    .restart local v6    # "duration":J
    .restart local v9    # "mvex":Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;
    .restart local v10    # "mvexChildrenSize":I
    :cond_61
    iget v15, v2, Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;->type:I

    sget v16, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_mehd:I

    move/from16 v0, v16

    if-ne v15, v0, :cond_5c

    .line 338
    iget-object v15, v2, Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-static {v15}, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->parseMehd(Lcom/google/android/exoplayer/util/ParsableByteArray;)J

    move-result-wide v6

    goto :goto_5c

    .line 343
    .end local v2    # "atom":Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;
    :cond_70
    new-instance v13, Landroid/util/SparseArray;

    invoke-direct {v13}, Landroid/util/SparseArray;-><init>()V

    .line 344
    .local v13, "tracks":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/google/android/exoplayer/extractor/mp4/Track;>;"
    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;->containerChildren:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v8

    .line 345
    .local v8, "moovContainerChildrenSize":I
    const/4 v5, 0x0

    :goto_7e
    if-ge v5, v8, :cond_ac

    .line 346
    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;->containerChildren:Ljava/util/List;

    invoke-interface {v15, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;

    .line 347
    .local v2, "atom":Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;
    iget v15, v2, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;->type:I

    sget v16, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_trak:I

    move/from16 v0, v16

    if-ne v15, v0, :cond_a9

    .line 348
    sget v15, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_mvhd:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;

    move-result-object v15

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-static {v2, v15, v6, v7, v0}, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers;->parseTrak(Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;JZ)Lcom/google/android/exoplayer/extractor/mp4/Track;

    move-result-object v11

    .line 350
    .local v11, "track":Lcom/google/android/exoplayer/extractor/mp4/Track;
    if-eqz v11, :cond_a9

    .line 351
    iget v15, v11, Lcom/google/android/exoplayer/extractor/mp4/Track;->id:I

    invoke-virtual {v13, v15, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 345
    .end local v11    # "track":Lcom/google/android/exoplayer/extractor/mp4/Track;
    :cond_a9
    add-int/lit8 v5, v5, 0x1

    goto :goto_7e

    .line 355
    .end local v2    # "atom":Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;
    :cond_ac
    invoke-virtual {v13}, Landroid/util/SparseArray;->size()I

    move-result v12

    .line 357
    .local v12, "trackCount":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    invoke-virtual {v15}, Landroid/util/SparseArray;->size()I

    move-result v15

    if-nez v15, :cond_118

    .line 359
    const/4 v5, 0x0

    :goto_bb
    if-ge v5, v12, :cond_e6

    .line 360
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    move-object/from16 v16, v0

    invoke-virtual {v13, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/google/android/exoplayer/extractor/mp4/Track;

    iget v15, v15, Lcom/google/android/exoplayer/extractor/mp4/Track;->id:I

    new-instance v17, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->extractorOutput:Lcom/google/android/exoplayer/extractor/ExtractorOutput;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v5}, Lcom/google/android/exoplayer/extractor/ExtractorOutput;->track(I)Lcom/google/android/exoplayer/extractor/TrackOutput;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;-><init>(Lcom/google/android/exoplayer/extractor/TrackOutput;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v15, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 359
    add-int/lit8 v5, v5, 0x1

    goto :goto_bb

    .line 362
    :cond_e6
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->extractorOutput:Lcom/google/android/exoplayer/extractor/ExtractorOutput;

    invoke-interface {v15}, Lcom/google/android/exoplayer/extractor/ExtractorOutput;->endTracks()V

    .line 368
    :goto_ed
    const/4 v5, 0x0

    :goto_ee
    if-ge v5, v12, :cond_129

    .line 369
    invoke-virtual {v13, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/exoplayer/extractor/mp4/Track;

    .line 370
    .restart local v11    # "track":Lcom/google/android/exoplayer/extractor/mp4/Track;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    iget v0, v11, Lcom/google/android/exoplayer/extractor/mp4/Track;->id:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    iget v0, v11, Lcom/google/android/exoplayer/extractor/mp4/Track;->id:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/google/android/exoplayer/extractor/mp4/DefaultSampleValues;

    move-object/from16 v0, v16

    invoke-virtual {v15, v11, v0}, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->init(Lcom/google/android/exoplayer/extractor/mp4/Track;Lcom/google/android/exoplayer/extractor/mp4/DefaultSampleValues;)V

    .line 368
    add-int/lit8 v5, v5, 0x1

    goto :goto_ee

    .line 364
    .end local v11    # "track":Lcom/google/android/exoplayer/extractor/mp4/Track;
    :cond_118
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    invoke-virtual {v15}, Landroid/util/SparseArray;->size()I

    move-result v15

    if-ne v15, v12, :cond_127

    const/4 v15, 0x1

    :goto_123
    invoke-static {v15}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    goto :goto_ed

    :cond_127
    const/4 v15, 0x0

    goto :goto_123

    .line 372
    :cond_129
    return-void
.end method

.method private static parseMehd(Lcom/google/android/exoplayer/util/ParsableByteArray;)J
    .registers 5
    .param p0, "mehd"    # Lcom/google/android/exoplayer/util/ParsableByteArray;

    .prologue
    .line 401
    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 402
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 403
    .local v0, "fullAtom":I
    invoke-static {v0}, Lcom/google/android/exoplayer/extractor/mp4/Atom;->parseFullAtomVersion(I)I

    move-result v1

    .line 404
    .local v1, "version":I
    if-nez v1, :cond_14

    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v2

    :goto_13
    return-wide v2

    :cond_14
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v2

    goto :goto_13
.end method

.method private static parseMoof(Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;Landroid/util/SparseArray;I[B)V
    .registers 9
    .param p0, "moof"    # Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;
    .param p2, "flags"    # I
    .param p3, "extendedTypeScratch"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;",
            ">;I[B)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ParserException;
        }
    .end annotation

    .prologue
    .line 409
    .local p1, "trackBundleArray":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;>;"
    iget-object v3, p0, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;->containerChildren:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 410
    .local v2, "moofContainerChildrenSize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v2, :cond_1d

    .line 411
    iget-object v3, p0, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;->containerChildren:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;

    .line 412
    .local v0, "child":Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;
    iget v3, v0, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;->type:I

    sget v4, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_traf:I

    if-ne v3, v4, :cond_1a

    .line 413
    invoke-static {v0, p1, p2, p3}, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->parseTraf(Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;Landroid/util/SparseArray;I[B)V

    .line 410
    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 416
    .end local v0    # "child":Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;
    :cond_1d
    return-void
.end method

.method private static parseSaio(Lcom/google/android/exoplayer/util/ParsableByteArray;Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;)V
    .registers 10
    .param p0, "saio"    # Lcom/google/android/exoplayer/util/ParsableByteArray;
    .param p1, "out"    # Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ParserException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x1

    .line 516
    invoke-virtual {p0, v6}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 517
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v2

    .line 518
    .local v2, "fullAtom":I
    invoke-static {v2}, Lcom/google/android/exoplayer/extractor/mp4/Atom;->parseFullAtomFlags(I)I

    move-result v1

    .line 519
    .local v1, "flags":I
    and-int/lit8 v4, v1, 0x1

    if-ne v4, v5, :cond_15

    .line 520
    invoke-virtual {p0, v6}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 523
    :cond_15
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v0

    .line 524
    .local v0, "entryCount":I
    if-eq v0, v5, :cond_34

    .line 526
    new-instance v4, Lcom/google/android/exoplayer/ParserException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected saio entry count: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/google/android/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 529
    :cond_34
    invoke-static {v2}, Lcom/google/android/exoplayer/extractor/mp4/Atom;->parseFullAtomVersion(I)I

    move-result v3

    .line 530
    .local v3, "version":I
    iget-wide v6, p1, Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;->auxiliaryDataPosition:J

    if-nez v3, :cond_44

    .line 531
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v4

    :goto_40
    add-long/2addr v4, v6

    iput-wide v4, p1, Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;->auxiliaryDataPosition:J

    .line 532
    return-void

    .line 531
    :cond_44
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v4

    goto :goto_40
.end method

.method private static parseSaiz(Lcom/google/android/exoplayer/extractor/mp4/TrackEncryptionBox;Lcom/google/android/exoplayer/util/ParsableByteArray;Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;)V
    .registers 16
    .param p0, "encryptionBox"    # Lcom/google/android/exoplayer/extractor/mp4/TrackEncryptionBox;
    .param p1, "saiz"    # Lcom/google/android/exoplayer/util/ParsableByteArray;
    .param p2, "out"    # Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ParserException;
        }
    .end annotation

    .prologue
    .line 479
    iget v9, p0, Lcom/google/android/exoplayer/extractor/mp4/TrackEncryptionBox;->initializationVectorSize:I

    .line 480
    .local v9, "vectorSize":I
    const/16 v10, 0x8

    invoke-virtual {p1, v10}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 481
    invoke-virtual {p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v2

    .line 482
    .local v2, "fullAtom":I
    invoke-static {v2}, Lcom/google/android/exoplayer/extractor/mp4/Atom;->parseFullAtomFlags(I)I

    move-result v1

    .line 483
    .local v1, "flags":I
    and-int/lit8 v10, v1, 0x1

    const/4 v11, 0x1

    if-ne v10, v11, :cond_19

    .line 484
    const/16 v10, 0x8

    invoke-virtual {p1, v10}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 486
    :cond_19
    invoke-virtual {p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    .line 488
    .local v0, "defaultSampleInfoSize":I
    invoke-virtual {p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v4

    .line 489
    .local v4, "sampleCount":I
    iget v10, p2, Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;->length:I

    if-eq v4, v10, :cond_4a

    .line 490
    new-instance v10, Lcom/google/android/exoplayer/ParserException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Length mismatch: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p2, Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;->length:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/google/android/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 493
    :cond_4a
    const/4 v8, 0x0

    .line 494
    .local v8, "totalSize":I
    if-nez v0, :cond_61

    .line 495
    iget-object v5, p2, Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;->sampleHasSubsampleEncryptionTable:[Z

    .line 496
    .local v5, "sampleHasSubsampleEncryptionTable":[Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_50
    if-ge v3, v4, :cond_6d

    .line 497
    invoke-virtual {p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v6

    .line 498
    .local v6, "sampleInfoSize":I
    add-int/2addr v8, v6

    .line 499
    if-le v6, v9, :cond_5f

    const/4 v10, 0x1

    :goto_5a
    aput-boolean v10, v5, v3

    .line 496
    add-int/lit8 v3, v3, 0x1

    goto :goto_50

    .line 499
    :cond_5f
    const/4 v10, 0x0

    goto :goto_5a

    .line 502
    .end local v3    # "i":I
    .end local v5    # "sampleHasSubsampleEncryptionTable":[Z
    .end local v6    # "sampleInfoSize":I
    :cond_61
    if-le v0, v9, :cond_71

    const/4 v7, 0x1

    .line 503
    .local v7, "subsampleEncryption":Z
    :goto_64
    mul-int v10, v0, v4

    add-int/2addr v8, v10

    .line 504
    iget-object v10, p2, Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;->sampleHasSubsampleEncryptionTable:[Z

    const/4 v11, 0x0

    invoke-static {v10, v11, v4, v7}, Ljava/util/Arrays;->fill([ZIIZ)V

    .line 506
    .end local v7    # "subsampleEncryption":Z
    :cond_6d
    invoke-virtual {p2, v8}, Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;->initEncryptionData(I)V

    .line 507
    return-void

    .line 502
    :cond_71
    const/4 v7, 0x0

    goto :goto_64
.end method

.method private static parseSenc(Lcom/google/android/exoplayer/util/ParsableByteArray;ILcom/google/android/exoplayer/extractor/mp4/TrackFragment;)V
    .registers 10
    .param p0, "senc"    # Lcom/google/android/exoplayer/util/ParsableByteArray;
    .param p1, "offset"    # I
    .param p2, "out"    # Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ParserException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 695
    add-int/lit8 v5, p1, 0x8

    invoke-virtual {p0, v5}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 696
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 697
    .local v1, "fullAtom":I
    invoke-static {v1}, Lcom/google/android/exoplayer/extractor/mp4/Atom;->parseFullAtomFlags(I)I

    move-result v0

    .line 699
    .local v0, "flags":I
    and-int/lit8 v5, v0, 0x1

    if-eqz v5, :cond_1a

    .line 701
    new-instance v4, Lcom/google/android/exoplayer/ParserException;

    const-string v5, "Overriding TrackEncryptionBox parameters is unsupported."

    invoke-direct {v4, v5}, Lcom/google/android/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 704
    :cond_1a
    and-int/lit8 v5, v0, 0x2

    if-eqz v5, :cond_4c

    const/4 v3, 0x1

    .line 705
    .local v3, "subsampleEncryption":Z
    :goto_1f
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v2

    .line 706
    .local v2, "sampleCount":I
    iget v5, p2, Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;->length:I

    if-eq v2, v5, :cond_4e

    .line 707
    new-instance v4, Lcom/google/android/exoplayer/ParserException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Length mismatch: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p2, Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;->length:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/google/android/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v4

    .end local v2    # "sampleCount":I
    .end local v3    # "subsampleEncryption":Z
    :cond_4c
    move v3, v4

    .line 704
    goto :goto_1f

    .line 710
    .restart local v2    # "sampleCount":I
    .restart local v3    # "subsampleEncryption":Z
    :cond_4e
    iget-object v5, p2, Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;->sampleHasSubsampleEncryptionTable:[Z

    invoke-static {v5, v4, v2, v3}, Ljava/util/Arrays;->fill([ZIIZ)V

    .line 711
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->bytesLeft()I

    move-result v4

    invoke-virtual {p2, v4}, Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;->initEncryptionData(I)V

    .line 712
    invoke-virtual {p2, p0}, Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;->fillEncryptionData(Lcom/google/android/exoplayer/util/ParsableByteArray;)V

    .line 713
    return-void
.end method

.method private static parseSenc(Lcom/google/android/exoplayer/util/ParsableByteArray;Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;)V
    .registers 3
    .param p0, "senc"    # Lcom/google/android/exoplayer/util/ParsableByteArray;
    .param p1, "out"    # Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ParserException;
        }
    .end annotation

    .prologue
    .line 690
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->parseSenc(Lcom/google/android/exoplayer/util/ParsableByteArray;ILcom/google/android/exoplayer/extractor/mp4/TrackFragment;)V

    .line 691
    return-void
.end method

.method private static parseSgpd(Lcom/google/android/exoplayer/util/ParsableByteArray;Lcom/google/android/exoplayer/util/ParsableByteArray;Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;)V
    .registers 16
    .param p0, "sbgp"    # Lcom/google/android/exoplayer/util/ParsableByteArray;
    .param p1, "sgpd"    # Lcom/google/android/exoplayer/util/ParsableByteArray;
    .param p2, "out"    # Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ParserException;
        }
    .end annotation

    .prologue
    const/16 v11, 0x8

    const/4 v10, 0x4

    const/4 v12, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 717
    invoke-virtual {p0, v11}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 718
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v3

    .line 719
    .local v3, "sbgpFullAtom":I
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v8

    sget v9, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->SAMPLE_GROUP_TYPE_seig:I

    if-eq v8, v9, :cond_16

    .line 758
    :cond_15
    :goto_15
    return-void

    .line 723
    :cond_16
    invoke-static {v3}, Lcom/google/android/exoplayer/extractor/mp4/Atom;->parseFullAtomVersion(I)I

    move-result v8

    if-ne v8, v6, :cond_1f

    .line 724
    invoke-virtual {p0, v10}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 726
    :cond_1f
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v8

    if-eq v8, v6, :cond_2d

    .line 727
    new-instance v6, Lcom/google/android/exoplayer/ParserException;

    const-string v7, "Entry count in sbgp != 1 (unsupported)."

    invoke-direct {v6, v7}, Lcom/google/android/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 730
    :cond_2d
    invoke-virtual {p1, v11}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 731
    invoke-virtual {p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v4

    .line 732
    .local v4, "sgpdFullAtom":I
    invoke-virtual {p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v8

    sget v9, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->SAMPLE_GROUP_TYPE_seig:I

    if-ne v8, v9, :cond_15

    .line 736
    invoke-static {v4}, Lcom/google/android/exoplayer/extractor/mp4/Atom;->parseFullAtomVersion(I)I

    move-result v5

    .line 737
    .local v5, "sgpdVersion":I
    if-ne v5, v6, :cond_54

    .line 738
    invoke-virtual {p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-nez v8, :cond_59

    .line 739
    new-instance v6, Lcom/google/android/exoplayer/ParserException;

    const-string v7, "Variable length decription in sgpd found (unsupported)"

    invoke-direct {v6, v7}, Lcom/google/android/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 741
    :cond_54
    if-lt v5, v12, :cond_59

    .line 742
    invoke-virtual {p1, v10}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 744
    :cond_59
    invoke-virtual {p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v8

    const-wide/16 v10, 0x1

    cmp-long v8, v8, v10

    if-eqz v8, :cond_6b

    .line 745
    new-instance v6, Lcom/google/android/exoplayer/ParserException;

    const-string v7, "Entry count in sgpd != 1 (unsupported)."

    invoke-direct {v6, v7}, Lcom/google/android/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 748
    :cond_6b
    invoke-virtual {p1, v12}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 749
    invoke-virtual {p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v8

    if-ne v8, v6, :cond_8d

    move v1, v6

    .line 750
    .local v1, "isProtected":Z
    :goto_75
    if-eqz v1, :cond_15

    .line 753
    invoke-virtual {p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    .line 754
    .local v0, "initVectorSize":I
    const/16 v8, 0x10

    new-array v2, v8, [B

    .line 755
    .local v2, "keyId":[B
    array-length v8, v2

    invoke-virtual {p1, v2, v7, v8}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readBytes([BII)V

    .line 756
    iput-boolean v6, p2, Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;->definesEncryptionData:Z

    .line 757
    new-instance v6, Lcom/google/android/exoplayer/extractor/mp4/TrackEncryptionBox;

    invoke-direct {v6, v1, v0, v2}, Lcom/google/android/exoplayer/extractor/mp4/TrackEncryptionBox;-><init>(ZI[B)V

    iput-object v6, p2, Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;->trackEncryptionBox:Lcom/google/android/exoplayer/extractor/mp4/TrackEncryptionBox;

    goto :goto_15

    .end local v0    # "initVectorSize":I
    .end local v1    # "isProtected":Z
    .end local v2    # "keyId":[B
    :cond_8d
    move v1, v7

    .line 749
    goto :goto_75
.end method

.method private static parseSidx(Lcom/google/android/exoplayer/util/ParsableByteArray;J)Lcom/google/android/exoplayer/extractor/ChunkIndex;
    .registers 32
    .param p0, "atom"    # Lcom/google/android/exoplayer/util/ParsableByteArray;
    .param p1, "inputPosition"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ParserException;
        }
    .end annotation

    .prologue
    .line 769
    const/16 v6, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 770
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v14

    .line 771
    .local v14, "fullAtom":I
    invoke-static {v14}, Lcom/google/android/exoplayer/extractor/mp4/Atom;->parseFullAtomVersion(I)I

    move-result v27

    .line 773
    .local v27, "version":I
    const/4 v6, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 774
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v8

    .line 776
    .local v8, "timescale":J
    move-wide/from16 v16, p1

    .line 777
    .local v16, "offset":J
    if-nez v27, :cond_66

    .line 778
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v12

    .line 779
    .local v12, "earliestPresentationTime":J
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v6

    add-long v16, v16, v6

    .line 785
    :goto_27
    const/4 v6, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 787
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedShort()I

    move-result v19

    .line 788
    .local v19, "referenceCount":I
    move/from16 v0, v19

    new-array v0, v0, [I

    move-object/from16 v22, v0

    .line 789
    .local v22, "sizes":[I
    move/from16 v0, v19

    new-array v0, v0, [J

    move-object/from16 v18, v0

    .line 790
    .local v18, "offsets":[J
    move/from16 v0, v19

    new-array v10, v0, [J

    .line 791
    .local v10, "durationsUs":[J
    move/from16 v0, v19

    new-array v0, v0, [J

    move-object/from16 v23, v0

    .line 793
    .local v23, "timesUs":[J
    move-wide v4, v12

    .line 794
    .local v4, "time":J
    const-wide/32 v6, 0xf4240

    invoke-static/range {v4 .. v9}, Lcom/google/android/exoplayer/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v24

    .line 795
    .local v24, "timeUs":J
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_50
    move/from16 v0, v19

    if-ge v15, v0, :cond_9c

    .line 796
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v11

    .line 798
    .local v11, "firstInt":I
    const/high16 v6, -0x80000000

    and-int v26, v6, v11

    .line 799
    .local v26, "type":I
    if-eqz v26, :cond_71

    .line 800
    new-instance v6, Lcom/google/android/exoplayer/ParserException;

    const-string v7, "Unhandled indirect reference"

    invoke-direct {v6, v7}, Lcom/google/android/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 781
    .end local v4    # "time":J
    .end local v10    # "durationsUs":[J
    .end local v11    # "firstInt":I
    .end local v12    # "earliestPresentationTime":J
    .end local v15    # "i":I
    .end local v18    # "offsets":[J
    .end local v19    # "referenceCount":I
    .end local v22    # "sizes":[I
    .end local v23    # "timesUs":[J
    .end local v24    # "timeUs":J
    .end local v26    # "type":I
    :cond_66
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v12

    .line 782
    .restart local v12    # "earliestPresentationTime":J
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v6

    add-long v16, v16, v6

    goto :goto_27

    .line 802
    .restart local v4    # "time":J
    .restart local v10    # "durationsUs":[J
    .restart local v11    # "firstInt":I
    .restart local v15    # "i":I
    .restart local v18    # "offsets":[J
    .restart local v19    # "referenceCount":I
    .restart local v22    # "sizes":[I
    .restart local v23    # "timesUs":[J
    .restart local v24    # "timeUs":J
    .restart local v26    # "type":I
    :cond_71
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v20

    .line 804
    .local v20, "referenceDuration":J
    const v6, 0x7fffffff

    and-int/2addr v6, v11

    aput v6, v22, v15

    .line 805
    aput-wide v16, v18, v15

    .line 809
    aput-wide v24, v23, v15

    .line 810
    add-long v4, v4, v20

    .line 811
    const-wide/32 v6, 0xf4240

    invoke-static/range {v4 .. v9}, Lcom/google/android/exoplayer/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v24

    .line 812
    aget-wide v6, v23, v15

    sub-long v6, v24, v6

    aput-wide v6, v10, v15

    .line 814
    const/4 v6, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 815
    aget v6, v22, v15

    int-to-long v6, v6

    add-long v16, v16, v6

    .line 795
    add-int/lit8 v15, v15, 0x1

    goto :goto_50

    .line 818
    .end local v11    # "firstInt":I
    .end local v20    # "referenceDuration":J
    .end local v26    # "type":I
    :cond_9c
    new-instance v6, Lcom/google/android/exoplayer/extractor/ChunkIndex;

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    move-object/from16 v2, v23

    invoke-direct {v6, v0, v1, v10, v2}, Lcom/google/android/exoplayer/extractor/ChunkIndex;-><init>([I[J[J[J)V

    return-object v6
.end method

.method private static parseTfdt(Lcom/google/android/exoplayer/util/ParsableByteArray;)J
    .registers 5
    .param p0, "tfdt"    # Lcom/google/android/exoplayer/util/ParsableByteArray;

    .prologue
    .line 582
    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 583
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 584
    .local v0, "fullAtom":I
    invoke-static {v0}, Lcom/google/android/exoplayer/extractor/mp4/Atom;->parseFullAtomVersion(I)I

    move-result v1

    .line 585
    .local v1, "version":I
    const/4 v2, 0x1

    if-ne v1, v2, :cond_15

    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v2

    :goto_14
    return-wide v2

    :cond_15
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v2

    goto :goto_14
.end method

.method private static parseTfhd(Lcom/google/android/exoplayer/util/ParsableByteArray;Landroid/util/SparseArray;I)Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;
    .registers 16
    .param p0, "tfhd"    # Lcom/google/android/exoplayer/util/ParsableByteArray;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer/util/ParsableByteArray;",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;",
            ">;I)",
            "Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;"
        }
    .end annotation

    .prologue
    .line 546
    .local p1, "trackBundles":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;>;"
    const/16 v11, 0x8

    invoke-virtual {p0, v11}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 547
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v8

    .line 548
    .local v8, "fullAtom":I
    invoke-static {v8}, Lcom/google/android/exoplayer/extractor/mp4/Atom;->parseFullAtomFlags(I)I

    move-result v0

    .line 549
    .local v0, "atomFlags":I
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v10

    .line 550
    .local v10, "trackId":I
    and-int/lit8 v11, p2, 0x4

    if-nez v11, :cond_1f

    .end local v10    # "trackId":I
    :goto_15
    invoke-virtual {p1, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    .line 551
    .local v9, "trackBundle":Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;
    if-nez v9, :cond_21

    .line 552
    const/4 v9, 0x0

    .line 572
    .end local v9    # "trackBundle":Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;
    :goto_1e
    return-object v9

    .line 550
    .restart local v10    # "trackId":I
    :cond_1f
    const/4 v10, 0x0

    goto :goto_15

    .line 554
    .end local v10    # "trackId":I
    .restart local v9    # "trackBundle":Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;
    :cond_21
    and-int/lit8 v11, v0, 0x1

    if-eqz v11, :cond_31

    .line 555
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v2

    .line 556
    .local v2, "baseDataPosition":J
    iget-object v11, v9, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;

    iput-wide v2, v11, Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;->dataPosition:J

    .line 557
    iget-object v11, v9, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;

    iput-wide v2, v11, Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;->auxiliaryDataPosition:J

    .line 560
    .end local v2    # "baseDataPosition":J
    :cond_31
    iget-object v7, v9, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->defaultSampleValues:Lcom/google/android/exoplayer/extractor/mp4/DefaultSampleValues;

    .line 561
    .local v7, "defaultSampleValues":Lcom/google/android/exoplayer/extractor/mp4/DefaultSampleValues;
    and-int/lit8 v11, v0, 0x2

    if-eqz v11, :cond_5f

    .line 563
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v11

    add-int/lit8 v1, v11, -0x1

    .line 564
    .local v1, "defaultSampleDescriptionIndex":I
    :goto_3d
    and-int/lit8 v11, v0, 0x8

    if-eqz v11, :cond_62

    .line 565
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v4

    .line 566
    .local v4, "defaultSampleDuration":I
    :goto_45
    and-int/lit8 v11, v0, 0x10

    if-eqz v11, :cond_65

    .line 567
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v6

    .line 568
    .local v6, "defaultSampleSize":I
    :goto_4d
    and-int/lit8 v11, v0, 0x20

    if-eqz v11, :cond_68

    .line 569
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v5

    .line 570
    .local v5, "defaultSampleFlags":I
    :goto_55
    iget-object v11, v9, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;

    new-instance v12, Lcom/google/android/exoplayer/extractor/mp4/DefaultSampleValues;

    invoke-direct {v12, v1, v4, v6, v5}, Lcom/google/android/exoplayer/extractor/mp4/DefaultSampleValues;-><init>(IIII)V

    iput-object v12, v11, Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;->header:Lcom/google/android/exoplayer/extractor/mp4/DefaultSampleValues;

    goto :goto_1e

    .line 563
    .end local v1    # "defaultSampleDescriptionIndex":I
    .end local v4    # "defaultSampleDuration":I
    .end local v5    # "defaultSampleFlags":I
    .end local v6    # "defaultSampleSize":I
    :cond_5f
    iget v1, v7, Lcom/google/android/exoplayer/extractor/mp4/DefaultSampleValues;->sampleDescriptionIndex:I

    goto :goto_3d

    .line 565
    .restart local v1    # "defaultSampleDescriptionIndex":I
    :cond_62
    iget v4, v7, Lcom/google/android/exoplayer/extractor/mp4/DefaultSampleValues;->duration:I

    goto :goto_45

    .line 567
    .restart local v4    # "defaultSampleDuration":I
    :cond_65
    iget v6, v7, Lcom/google/android/exoplayer/extractor/mp4/DefaultSampleValues;->size:I

    goto :goto_4d

    .line 569
    .restart local v6    # "defaultSampleSize":I
    :cond_68
    iget v5, v7, Lcom/google/android/exoplayer/extractor/mp4/DefaultSampleValues;->flags:I

    goto :goto_55
.end method

.method private static parseTraf(Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;Landroid/util/SparseArray;I[B)V
    .registers 26
    .param p0, "traf"    # Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;
    .param p2, "flags"    # I
    .param p3, "extendedTypeScratch"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;",
            ">;I[B)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ParserException;
        }
    .end annotation

    .prologue
    .line 423
    .local p1, "trackBundleArray":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;>;"
    sget v20, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_trun:I

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;->getChildAtomOfTypeCount(I)I

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_1a

    .line 424
    new-instance v20, Lcom/google/android/exoplayer/ParserException;

    const-string v21, "Trun count in traf != 1 (unsupported)."

    invoke-direct/range {v20 .. v21}, Lcom/google/android/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 427
    :cond_1a
    sget v20, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_tfhd:I

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;

    move-result-object v16

    .line 428
    .local v16, "tfhd":Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer/util/ParsableByteArray;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-static {v0, v1, v2}, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->parseTfhd(Lcom/google/android/exoplayer/util/ParsableByteArray;Landroid/util/SparseArray;I)Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    move-result-object v17

    .line 429
    .local v17, "trackBundle":Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;
    if-nez v17, :cond_37

    .line 475
    :cond_36
    return-void

    .line 433
    :cond_37
    move-object/from16 v0, v17

    iget-object v8, v0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;

    .line 434
    .local v8, "fragment":Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;
    iget-wide v6, v8, Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;->nextFragmentDecodeTime:J

    .line 435
    .local v6, "decodeTime":J
    invoke-virtual/range {v17 .. v17}, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->reset()V

    .line 437
    sget v20, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_tfdt:I

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;

    move-result-object v15

    .line 438
    .local v15, "tfdtAtom":Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;
    if-eqz v15, :cond_64

    and-int/lit8 v20, p2, 0x2

    if-nez v20, :cond_64

    .line 439
    sget v20, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_tfdt:I

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;

    move-result-object v20

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer/util/ParsableByteArray;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->parseTfdt(Lcom/google/android/exoplayer/util/ParsableByteArray;)J

    move-result-wide v6

    .line 442
    :cond_64
    sget v20, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_trun:I

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;

    move-result-object v19

    .line 443
    .local v19, "trun":Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer/util/ParsableByteArray;

    move-object/from16 v20, v0

    move-object/from16 v0, v17

    move/from16 v1, p2

    move-object/from16 v2, v20

    invoke-static {v0, v6, v7, v1, v2}, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->parseTrun(Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;JILcom/google/android/exoplayer/util/ParsableByteArray;)V

    .line 445
    sget v20, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_saiz:I

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;

    move-result-object v11

    .line 446
    .local v11, "saiz":Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;
    if-eqz v11, :cond_ac

    .line 447
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->track:Lcom/google/android/exoplayer/extractor/mp4/Track;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/mp4/Track;->sampleDescriptionEncryptionBoxes:[Lcom/google/android/exoplayer/extractor/mp4/TrackEncryptionBox;

    move-object/from16 v20, v0

    iget-object v0, v8, Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;->header:Lcom/google/android/exoplayer/extractor/mp4/DefaultSampleValues;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/google/android/exoplayer/extractor/mp4/DefaultSampleValues;->sampleDescriptionIndex:I

    move/from16 v21, v0

    aget-object v18, v20, v21

    .line 449
    .local v18, "trackEncryptionBox":Lcom/google/android/exoplayer/extractor/mp4/TrackEncryptionBox;
    iget-object v0, v11, Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer/util/ParsableByteArray;

    move-object/from16 v20, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-static {v0, v1, v8}, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->parseSaiz(Lcom/google/android/exoplayer/extractor/mp4/TrackEncryptionBox;Lcom/google/android/exoplayer/util/ParsableByteArray;Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;)V

    .line 452
    .end local v18    # "trackEncryptionBox":Lcom/google/android/exoplayer/extractor/mp4/TrackEncryptionBox;
    :cond_ac
    sget v20, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_saio:I

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;

    move-result-object v10

    .line 453
    .local v10, "saio":Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;
    if-eqz v10, :cond_c1

    .line 454
    iget-object v0, v10, Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer/util/ParsableByteArray;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-static {v0, v8}, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->parseSaio(Lcom/google/android/exoplayer/util/ParsableByteArray;Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;)V

    .line 457
    :cond_c1
    sget v20, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_senc:I

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;

    move-result-object v13

    .line 458
    .local v13, "senc":Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;
    if-eqz v13, :cond_d6

    .line 459
    iget-object v0, v13, Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer/util/ParsableByteArray;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-static {v0, v8}, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->parseSenc(Lcom/google/android/exoplayer/util/ParsableByteArray;Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;)V

    .line 462
    :cond_d6
    sget v20, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_sbgp:I

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;

    move-result-object v12

    .line 463
    .local v12, "sbgp":Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;
    sget v20, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_sgpd:I

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;

    move-result-object v14

    .line 464
    .local v14, "sgpd":Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;
    if-eqz v12, :cond_fd

    if-eqz v14, :cond_fd

    .line 465
    iget-object v0, v12, Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer/util/ParsableByteArray;

    move-object/from16 v20, v0

    iget-object v0, v14, Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer/util/ParsableByteArray;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v8}, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->parseSgpd(Lcom/google/android/exoplayer/util/ParsableByteArray;Lcom/google/android/exoplayer/util/ParsableByteArray;Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;)V

    .line 468
    :cond_fd
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;->leafChildren:Ljava/util/List;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v5

    .line 469
    .local v5, "childrenSize":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_108
    if-ge v9, v5, :cond_36

    .line 470
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;->leafChildren:Ljava/util/List;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;

    .line 471
    .local v4, "atom":Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;
    iget v0, v4, Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;->type:I

    move/from16 v20, v0

    sget v21, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_uuid:I

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_12f

    .line 472
    iget-object v0, v4, Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer/util/ParsableByteArray;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p3

    invoke-static {v0, v8, v1}, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->parseUuid(Lcom/google/android/exoplayer/util/ParsableByteArray;Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;[B)V

    .line 469
    :cond_12f
    add-int/lit8 v9, v9, 0x1

    goto :goto_108
.end method

.method private static parseTrex(Lcom/google/android/exoplayer/util/ParsableByteArray;)Landroid/util/Pair;
    .registers 8
    .param p0, "trex"    # Lcom/google/android/exoplayer/util/ParsableByteArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer/util/ParsableByteArray;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/google/android/exoplayer/extractor/mp4/DefaultSampleValues;",
            ">;"
        }
    .end annotation

    .prologue
    .line 386
    const/16 v5, 0xc

    invoke-virtual {p0, v5}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 387
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v4

    .line 388
    .local v4, "trackId":I
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v5

    add-int/lit8 v0, v5, -0x1

    .line 389
    .local v0, "defaultSampleDescriptionIndex":I
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v1

    .line 390
    .local v1, "defaultSampleDuration":I
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v3

    .line 391
    .local v3, "defaultSampleSize":I
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v2

    .line 393
    .local v2, "defaultSampleFlags":I
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Lcom/google/android/exoplayer/extractor/mp4/DefaultSampleValues;

    invoke-direct {v6, v0, v1, v3, v2}, Lcom/google/android/exoplayer/extractor/mp4/DefaultSampleValues;-><init>(IIII)V

    invoke-static {v5, v6}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v5

    return-object v5
.end method

.method private static parseTrun(Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;JILcom/google/android/exoplayer/util/ParsableByteArray;)V
    .registers 40
    .param p0, "trackBundle"    # Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;
    .param p1, "decodeTime"    # J
    .param p3, "flags"    # I
    .param p4, "trun"    # Lcom/google/android/exoplayer/util/ParsableByteArray;

    .prologue
    .line 599
    const/16 v4, 0x8

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 600
    invoke-virtual/range {p4 .. p4}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v15

    .line 601
    .local v15, "fullAtom":I
    invoke-static {v15}, Lcom/google/android/exoplayer/extractor/mp4/Atom;->parseFullAtomFlags(I)I

    move-result v8

    .line 603
    .local v8, "atomFlags":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->track:Lcom/google/android/exoplayer/extractor/mp4/Track;

    move-object/from16 v30, v0

    .line 604
    .local v30, "track":Lcom/google/android/exoplayer/extractor/mp4/Track;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;

    .line 605
    .local v14, "fragment":Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;
    iget-object v9, v14, Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;->header:Lcom/google/android/exoplayer/extractor/mp4/DefaultSampleValues;

    .line 607
    .local v9, "defaultSampleValues":Lcom/google/android/exoplayer/extractor/mp4/DefaultSampleValues;
    invoke-virtual/range {p4 .. p4}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v19

    .line 608
    .local v19, "sampleCount":I
    and-int/lit8 v4, v8, 0x1

    if-eqz v4, :cond_32

    .line 609
    iget-wide v4, v14, Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;->dataPosition:J

    invoke-virtual/range {p4 .. p4}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v32

    move/from16 v0, v32

    int-to-long v0, v0

    move-wide/from16 v32, v0

    add-long v4, v4, v32

    iput-wide v4, v14, Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;->dataPosition:J

    .line 612
    :cond_32
    and-int/lit8 v4, v8, 0x4

    if-eqz v4, :cond_f6

    const/4 v13, 0x1

    .line 613
    .local v13, "firstSampleFlagsPresent":Z
    :goto_37
    iget v12, v9, Lcom/google/android/exoplayer/extractor/mp4/DefaultSampleValues;->flags:I

    .line 614
    .local v12, "firstSampleFlags":I
    if-eqz v13, :cond_3f

    .line 615
    invoke-virtual/range {p4 .. p4}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v12

    .line 618
    :cond_3f
    and-int/lit16 v4, v8, 0x100

    if-eqz v4, :cond_f9

    const/16 v22, 0x1

    .line 619
    .local v22, "sampleDurationsPresent":Z
    :goto_45
    and-int/lit16 v4, v8, 0x200

    if-eqz v4, :cond_fd

    const/16 v29, 0x1

    .line 620
    .local v29, "sampleSizesPresent":Z
    :goto_4b
    and-int/lit16 v4, v8, 0x400

    if-eqz v4, :cond_101

    const/16 v24, 0x1

    .line 621
    .local v24, "sampleFlagsPresent":Z
    :goto_51
    and-int/lit16 v4, v8, 0x800

    if-eqz v4, :cond_105

    const/16 v18, 0x1

    .line 626
    .local v18, "sampleCompositionTimeOffsetsPresent":Z
    :goto_57
    const-wide/16 v10, 0x0

    .line 630
    .local v10, "edtsOffset":J
    move-object/from16 v0, v30

    iget-object v4, v0, Lcom/google/android/exoplayer/extractor/mp4/Track;->editListDurations:[J

    if-eqz v4, :cond_85

    move-object/from16 v0, v30

    iget-object v4, v0, Lcom/google/android/exoplayer/extractor/mp4/Track;->editListDurations:[J

    array-length v4, v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_85

    move-object/from16 v0, v30

    iget-object v4, v0, Lcom/google/android/exoplayer/extractor/mp4/Track;->editListDurations:[J

    const/4 v5, 0x0

    aget-wide v4, v4, v5

    const-wide/16 v32, 0x0

    cmp-long v4, v4, v32

    if-nez v4, :cond_85

    .line 632
    move-object/from16 v0, v30

    iget-object v4, v0, Lcom/google/android/exoplayer/extractor/mp4/Track;->editListMediaTimes:[J

    const/4 v5, 0x0

    aget-wide v2, v4, v5

    const-wide/16 v4, 0x3e8

    move-object/from16 v0, v30

    iget-wide v6, v0, Lcom/google/android/exoplayer/extractor/mp4/Track;->timescale:J

    invoke-static/range {v2 .. v7}, Lcom/google/android/exoplayer/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v10

    .line 635
    :cond_85
    move/from16 v0, v19

    invoke-virtual {v14, v0}, Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;->initTables(I)V

    .line 636
    iget-object v0, v14, Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;->sampleSizeTable:[I

    move-object/from16 v28, v0

    .line 637
    .local v28, "sampleSizeTable":[I
    iget-object v0, v14, Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;->sampleCompositionTimeOffsetTable:[I

    move-object/from16 v17, v0

    .line 638
    .local v17, "sampleCompositionTimeOffsetTable":[I
    iget-object v0, v14, Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;->sampleDecodingTimeTable:[J

    move-object/from16 v20, v0

    .line 639
    .local v20, "sampleDecodingTimeTable":[J
    iget-object v0, v14, Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;->sampleIsSyncFrameTable:[Z

    move-object/from16 v25, v0

    .line 641
    .local v25, "sampleIsSyncFrameTable":[Z
    move-object/from16 v0, v30

    iget-wide v6, v0, Lcom/google/android/exoplayer/extractor/mp4/Track;->timescale:J

    .line 642
    .local v6, "timescale":J
    move-wide/from16 v2, p1

    .line 643
    .local v2, "cumulativeTime":J
    move-object/from16 v0, v30

    iget v4, v0, Lcom/google/android/exoplayer/extractor/mp4/Track;->type:I

    sget v5, Lcom/google/android/exoplayer/extractor/mp4/Track;->TYPE_vide:I

    if-ne v4, v5, :cond_109

    and-int/lit8 v4, p3, 0x1

    if-eqz v4, :cond_109

    const/16 v31, 0x1

    .line 645
    .local v31, "workaroundEveryVideoFrameIsSyncFrame":Z
    :goto_ae
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_b0
    move/from16 v0, v16

    move/from16 v1, v19

    if-ge v0, v1, :cond_128

    .line 647
    if-eqz v22, :cond_10c

    invoke-virtual/range {p4 .. p4}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v21

    .line 649
    .local v21, "sampleDuration":I
    :goto_bc
    if-eqz v29, :cond_111

    invoke-virtual/range {p4 .. p4}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v27

    .line 650
    .local v27, "sampleSize":I
    :goto_c2
    if-nez v16, :cond_116

    if-eqz v13, :cond_116

    move/from16 v23, v12

    .line 652
    .local v23, "sampleFlags":I
    :goto_c8
    if-eqz v18, :cond_122

    .line 658
    invoke-virtual/range {p4 .. p4}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v26

    .line 659
    .local v26, "sampleOffset":I
    move/from16 v0, v26

    mul-int/lit16 v4, v0, 0x3e8

    int-to-long v4, v4

    div-long/2addr v4, v6

    long-to-int v4, v4

    aput v4, v17, v16

    .line 663
    .end local v26    # "sampleOffset":I
    :goto_d7
    const-wide/16 v4, 0x3e8

    .line 664
    invoke-static/range {v2 .. v7}, Lcom/google/android/exoplayer/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v4

    sub-long/2addr v4, v10

    aput-wide v4, v20, v16

    .line 665
    aput v27, v28, v16

    .line 666
    shr-int/lit8 v4, v23, 0x10

    and-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_126

    if-eqz v31, :cond_ec

    if-nez v16, :cond_126

    :cond_ec
    const/4 v4, 0x1

    :goto_ed
    aput-boolean v4, v25, v16

    .line 668
    move/from16 v0, v21

    int-to-long v4, v0

    add-long/2addr v2, v4

    .line 645
    add-int/lit8 v16, v16, 0x1

    goto :goto_b0

    .line 612
    .end local v2    # "cumulativeTime":J
    .end local v6    # "timescale":J
    .end local v10    # "edtsOffset":J
    .end local v12    # "firstSampleFlags":I
    .end local v13    # "firstSampleFlagsPresent":Z
    .end local v16    # "i":I
    .end local v17    # "sampleCompositionTimeOffsetTable":[I
    .end local v18    # "sampleCompositionTimeOffsetsPresent":Z
    .end local v20    # "sampleDecodingTimeTable":[J
    .end local v21    # "sampleDuration":I
    .end local v22    # "sampleDurationsPresent":Z
    .end local v23    # "sampleFlags":I
    .end local v24    # "sampleFlagsPresent":Z
    .end local v25    # "sampleIsSyncFrameTable":[Z
    .end local v27    # "sampleSize":I
    .end local v28    # "sampleSizeTable":[I
    .end local v29    # "sampleSizesPresent":Z
    .end local v31    # "workaroundEveryVideoFrameIsSyncFrame":Z
    :cond_f6
    const/4 v13, 0x0

    goto/16 :goto_37

    .line 618
    .restart local v12    # "firstSampleFlags":I
    .restart local v13    # "firstSampleFlagsPresent":Z
    :cond_f9
    const/16 v22, 0x0

    goto/16 :goto_45

    .line 619
    .restart local v22    # "sampleDurationsPresent":Z
    :cond_fd
    const/16 v29, 0x0

    goto/16 :goto_4b

    .line 620
    .restart local v29    # "sampleSizesPresent":Z
    :cond_101
    const/16 v24, 0x0

    goto/16 :goto_51

    .line 621
    .restart local v24    # "sampleFlagsPresent":Z
    :cond_105
    const/16 v18, 0x0

    goto/16 :goto_57

    .line 643
    .restart local v2    # "cumulativeTime":J
    .restart local v6    # "timescale":J
    .restart local v10    # "edtsOffset":J
    .restart local v17    # "sampleCompositionTimeOffsetTable":[I
    .restart local v18    # "sampleCompositionTimeOffsetsPresent":Z
    .restart local v20    # "sampleDecodingTimeTable":[J
    .restart local v25    # "sampleIsSyncFrameTable":[Z
    .restart local v28    # "sampleSizeTable":[I
    :cond_109
    const/16 v31, 0x0

    goto :goto_ae

    .line 647
    .restart local v16    # "i":I
    .restart local v31    # "workaroundEveryVideoFrameIsSyncFrame":Z
    :cond_10c
    iget v0, v9, Lcom/google/android/exoplayer/extractor/mp4/DefaultSampleValues;->duration:I

    move/from16 v21, v0

    goto :goto_bc

    .line 649
    .restart local v21    # "sampleDuration":I
    :cond_111
    iget v0, v9, Lcom/google/android/exoplayer/extractor/mp4/DefaultSampleValues;->size:I

    move/from16 v27, v0

    goto :goto_c2

    .line 650
    .restart local v27    # "sampleSize":I
    :cond_116
    if-eqz v24, :cond_11d

    .line 651
    invoke-virtual/range {p4 .. p4}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v23

    goto :goto_c8

    :cond_11d
    iget v0, v9, Lcom/google/android/exoplayer/extractor/mp4/DefaultSampleValues;->flags:I

    move/from16 v23, v0

    goto :goto_c8

    .line 661
    .restart local v23    # "sampleFlags":I
    :cond_122
    const/4 v4, 0x0

    aput v4, v17, v16

    goto :goto_d7

    .line 666
    :cond_126
    const/4 v4, 0x0

    goto :goto_ed

    .line 670
    .end local v21    # "sampleDuration":I
    .end local v23    # "sampleFlags":I
    .end local v27    # "sampleSize":I
    :cond_128
    iput-wide v2, v14, Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;->nextFragmentDecodeTime:J

    .line 671
    return-void
.end method

.method private static parseUuid(Lcom/google/android/exoplayer/util/ParsableByteArray;Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;[B)V
    .registers 5
    .param p0, "uuid"    # Lcom/google/android/exoplayer/util/ParsableByteArray;
    .param p1, "out"    # Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;
    .param p2, "extendedTypeScratch"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ParserException;
        }
    .end annotation

    .prologue
    const/16 v1, 0x10

    .line 675
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 676
    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0, v1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readBytes([BII)V

    .line 679
    sget-object v0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->PIFF_SAMPLE_ENCRYPTION_BOX_EXTENDED_TYPE:[B

    invoke-static {p2, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_14

    .line 687
    :goto_13
    return-void

    .line 686
    :cond_14
    invoke-static {p0, v1, p1}, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->parseSenc(Lcom/google/android/exoplayer/util/ParsableByteArray;ILcom/google/android/exoplayer/extractor/mp4/TrackFragment;)V

    goto :goto_13
.end method

.method private processAtomEnded(J)V
    .registers 6
    .param p1, "atomEndPosition"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ParserException;
        }
    .end annotation

    .prologue
    .line 291
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->containerAtoms:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_22

    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->containerAtoms:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;

    iget-wide v0, v0, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;->endPosition:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_22

    .line 292
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->containerAtoms:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->onContainerAtomRead(Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;)V

    goto :goto_0

    .line 294
    :cond_22
    invoke-direct {p0}, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->enterReadingAtomHeaderState()V

    .line 295
    return-void
.end method

.method private readAtomHeader(Lcom/google/android/exoplayer/extractor/ExtractorInput;)Z
    .registers 15
    .param p1, "input"    # Lcom/google/android/exoplayer/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 208
    iget v8, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->atomHeaderBytesRead:I

    if-nez v8, :cond_2e

    .line 210
    iget-object v8, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->atomHeader:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v8, v8, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    const/4 v9, 0x0

    const/16 v10, 0x8

    const/4 v11, 0x1

    invoke-interface {p1, v8, v9, v10, v11}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->readFully([BIIZ)Z

    move-result v8

    if-nez v8, :cond_14

    .line 211
    const/4 v8, 0x0

    .line 276
    :goto_13
    return v8

    .line 213
    :cond_14
    const/16 v8, 0x8

    iput v8, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->atomHeaderBytesRead:I

    .line 214
    iget-object v8, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->atomHeader:Lcom/google/android/exoplayer/util/ParsableByteArray;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 215
    iget-object v8, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->atomHeader:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v8}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->atomSize:J

    .line 216
    iget-object v8, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->atomHeader:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v8}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v8

    iput v8, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->atomType:I

    .line 219
    :cond_2e
    iget-wide v8, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->atomSize:J

    const-wide/16 v10, 0x1

    cmp-long v8, v8, v10

    if-nez v8, :cond_4e

    .line 221
    const/16 v5, 0x8

    .line 222
    .local v5, "headerBytesRemaining":I
    iget-object v8, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->atomHeader:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v8, v8, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    const/16 v9, 0x8

    invoke-interface {p1, v8, v9, v5}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->readFully([BII)V

    .line 223
    iget v8, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->atomHeaderBytesRead:I

    add-int/2addr v8, v5

    iput v8, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->atomHeaderBytesRead:I

    .line 224
    iget-object v8, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->atomHeader:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v8}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->atomSize:J

    .line 227
    .end local v5    # "headerBytesRemaining":I
    :cond_4e
    invoke-interface {p1}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->getPosition()J

    move-result-wide v8

    iget v10, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->atomHeaderBytesRead:I

    int-to-long v10, v10

    sub-long v0, v8, v10

    .line 228
    .local v0, "atomPosition":J
    iget v8, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->atomType:I

    sget v9, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_moof:I

    if-ne v8, v9, :cond_77

    .line 230
    iget-object v8, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v7

    .line 231
    .local v7, "trackCount":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_64
    if-ge v6, v7, :cond_77

    .line 232
    iget-object v8, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    invoke-virtual {v8, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    iget-object v4, v8, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;

    .line 233
    .local v4, "fragment":Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;
    iput-wide v0, v4, Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;->auxiliaryDataPosition:J

    .line 234
    iput-wide v0, v4, Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;->dataPosition:J

    .line 231
    add-int/lit8 v6, v6, 0x1

    goto :goto_64

    .line 238
    .end local v4    # "fragment":Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;
    .end local v6    # "i":I
    .end local v7    # "trackCount":I
    :cond_77
    iget v8, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->atomType:I

    sget v9, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_mdat:I

    if-ne v8, v9, :cond_99

    .line 239
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->currentTrackBundle:Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    .line 240
    iget-wide v8, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->atomSize:J

    add-long/2addr v8, v0

    iput-wide v8, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->endOfMdatPosition:J

    .line 241
    iget-boolean v8, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->haveOutputSeekMap:Z

    if-nez v8, :cond_93

    .line 242
    iget-object v8, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->extractorOutput:Lcom/google/android/exoplayer/extractor/ExtractorOutput;

    sget-object v9, Lcom/google/android/exoplayer/extractor/SeekMap;->UNSEEKABLE:Lcom/google/android/exoplayer/extractor/SeekMap;

    invoke-interface {v8, v9}, Lcom/google/android/exoplayer/extractor/ExtractorOutput;->seekMap(Lcom/google/android/exoplayer/extractor/SeekMap;)V

    .line 243
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->haveOutputSeekMap:Z

    .line 245
    :cond_93
    const/4 v8, 0x2

    iput v8, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->parserState:I

    .line 246
    const/4 v8, 0x1

    goto/16 :goto_13

    .line 249
    :cond_99
    iget v8, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->atomType:I

    invoke-static {v8}, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->shouldParseContainerAtom(I)Z

    move-result v8

    if-eqz v8, :cond_cb

    .line 250
    invoke-interface {p1}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->getPosition()J

    move-result-wide v8

    iget-wide v10, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->atomSize:J

    add-long/2addr v8, v10

    const-wide/16 v10, 0x8

    sub-long v2, v8, v10

    .line 251
    .local v2, "endPosition":J
    iget-object v8, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->containerAtoms:Ljava/util/Stack;

    new-instance v9, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;

    iget v10, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->atomType:I

    invoke-direct {v9, v10, v2, v3}, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;-><init>(IJ)V

    invoke-virtual {v8, v9}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 252
    iget-wide v8, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->atomSize:J

    iget v10, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->atomHeaderBytesRead:I

    int-to-long v10, v10

    cmp-long v8, v8, v10

    if-nez v8, :cond_c7

    .line 253
    invoke-direct {p0, v2, v3}, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->processAtomEnded(J)V

    .line 276
    .end local v2    # "endPosition":J
    :goto_c4
    const/4 v8, 0x1

    goto/16 :goto_13

    .line 256
    .restart local v2    # "endPosition":J
    :cond_c7
    invoke-direct {p0}, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->enterReadingAtomHeaderState()V

    goto :goto_c4

    .line 258
    .end local v2    # "endPosition":J
    :cond_cb
    iget v8, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->atomType:I

    invoke-static {v8}, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->shouldParseLeafAtom(I)Z

    move-result v8

    if-eqz v8, :cond_10f

    .line 259
    iget v8, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->atomHeaderBytesRead:I

    const/16 v9, 0x8

    if-eq v8, v9, :cond_e1

    .line 260
    new-instance v8, Lcom/google/android/exoplayer/ParserException;

    const-string v9, "Leaf atom defines extended atom size (unsupported)."

    invoke-direct {v8, v9}, Lcom/google/android/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 262
    :cond_e1
    iget-wide v8, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->atomSize:J

    const-wide/32 v10, 0x7fffffff

    cmp-long v8, v8, v10

    if-lez v8, :cond_f2

    .line 263
    new-instance v8, Lcom/google/android/exoplayer/ParserException;

    const-string v9, "Leaf atom with length > 2147483647 (unsupported)."

    invoke-direct {v8, v9}, Lcom/google/android/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 265
    :cond_f2
    new-instance v8, Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-wide v10, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->atomSize:J

    long-to-int v9, v10

    invoke-direct {v8, v9}, Lcom/google/android/exoplayer/util/ParsableByteArray;-><init>(I)V

    iput-object v8, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->atomData:Lcom/google/android/exoplayer/util/ParsableByteArray;

    .line 266
    iget-object v8, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->atomHeader:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v8, v8, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->atomData:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v10, v10, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    const/4 v11, 0x0

    const/16 v12, 0x8

    invoke-static {v8, v9, v10, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 267
    const/4 v8, 0x1

    iput v8, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->parserState:I

    goto :goto_c4

    .line 269
    :cond_10f
    iget-wide v8, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->atomSize:J

    const-wide/32 v10, 0x7fffffff

    cmp-long v8, v8, v10

    if-lez v8, :cond_120

    .line 270
    new-instance v8, Lcom/google/android/exoplayer/ParserException;

    const-string v9, "Skipping atom with length > 2147483647 (unsupported)."

    invoke-direct {v8, v9}, Lcom/google/android/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 272
    :cond_120
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->atomData:Lcom/google/android/exoplayer/util/ParsableByteArray;

    .line 273
    const/4 v8, 0x1

    iput v8, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->parserState:I

    goto :goto_c4
.end method

.method private readAtomPayload(Lcom/google/android/exoplayer/extractor/ExtractorInput;)V
    .registers 6
    .param p1, "input"    # Lcom/google/android/exoplayer/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 280
    iget-wide v2, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->atomSize:J

    long-to-int v1, v2

    iget v2, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->atomHeaderBytesRead:I

    sub-int v0, v1, v2

    .line 281
    .local v0, "atomPayloadSize":I
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->atomData:Lcom/google/android/exoplayer/util/ParsableByteArray;

    if-eqz v1, :cond_2c

    .line 282
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->atomData:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v1, v1, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    const/16 v2, 0x8

    invoke-interface {p1, v1, v2, v0}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->readFully([BII)V

    .line 283
    new-instance v1, Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;

    iget v2, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->atomType:I

    iget-object v3, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->atomData:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-direct {v1, v2, v3}, Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;-><init>(ILcom/google/android/exoplayer/util/ParsableByteArray;)V

    invoke-interface {p1}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->getPosition()J

    move-result-wide v2

    invoke-direct {p0, v1, v2, v3}, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->onLeafAtomRead(Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;J)V

    .line 287
    :goto_24
    invoke-interface {p1}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->getPosition()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->processAtomEnded(J)V

    .line 288
    return-void

    .line 285
    :cond_2c
    invoke-interface {p1, v0}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->skipFully(I)V

    goto :goto_24
.end method

.method private readEncryptionData(Lcom/google/android/exoplayer/extractor/ExtractorInput;)V
    .registers 12
    .param p1, "input"    # Lcom/google/android/exoplayer/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 822
    const/4 v4, 0x0

    .line 823
    .local v4, "nextTrackBundle":Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;
    const-wide v2, 0x7fffffffffffffffL

    .line 824
    .local v2, "nextDataOffset":J
    iget-object v7, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v5

    .line 825
    .local v5, "trackBundlesSize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_d
    if-ge v1, v5, :cond_30

    .line 826
    iget-object v7, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    invoke-virtual {v7, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    iget-object v6, v7, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;

    .line 827
    .local v6, "trackFragment":Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;
    iget-boolean v7, v6, Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;->sampleEncryptionDataNeedsFill:Z

    if-eqz v7, :cond_2d

    iget-wide v8, v6, Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;->auxiliaryDataPosition:J

    cmp-long v7, v8, v2

    if-gez v7, :cond_2d

    .line 829
    iget-wide v2, v6, Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;->auxiliaryDataPosition:J

    .line 830
    iget-object v7, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    invoke-virtual {v7, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "nextTrackBundle":Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;
    check-cast v4, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    .line 825
    .restart local v4    # "nextTrackBundle":Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;
    :cond_2d
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 833
    .end local v6    # "trackFragment":Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;
    :cond_30
    if-nez v4, :cond_36

    .line 834
    const/4 v7, 0x3

    iput v7, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->parserState:I

    .line 843
    :goto_35
    return-void

    .line 837
    :cond_36
    invoke-interface {p1}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->getPosition()J

    move-result-wide v8

    sub-long v8, v2, v8

    long-to-int v0, v8

    .line 838
    .local v0, "bytesToSkip":I
    if-gez v0, :cond_47

    .line 839
    new-instance v7, Lcom/google/android/exoplayer/ParserException;

    const-string v8, "Offset to encryption data was negative."

    invoke-direct {v7, v8}, Lcom/google/android/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 841
    :cond_47
    invoke-interface {p1, v0}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->skipFully(I)V

    .line 842
    iget-object v7, v4, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;

    invoke-virtual {v7, p1}, Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;->fillEncryptionData(Lcom/google/android/exoplayer/extractor/ExtractorInput;)V

    goto :goto_35
.end method

.method private readSample(Lcom/google/android/exoplayer/extractor/ExtractorInput;)Z
    .registers 26
    .param p1, "input"    # Lcom/google/android/exoplayer/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 860
    move-object/from16 v0, p0

    iget v7, v0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->parserState:I

    const/4 v8, 0x3

    if-ne v7, v8, :cond_a5

    .line 861
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->currentTrackBundle:Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    if-nez v7, :cond_62

    .line 862
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    invoke-static {v7}, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->getNextFragmentRun(Landroid/util/SparseArray;)Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    move-result-object v7

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->currentTrackBundle:Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    .line 863
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->currentTrackBundle:Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    if-nez v7, :cond_42

    .line 866
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->endOfMdatPosition:J

    move-wide/from16 v20, v0

    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->getPosition()J

    move-result-wide v22

    sub-long v20, v20, v22

    move-wide/from16 v0, v20

    long-to-int v2, v0

    .line 867
    .local v2, "bytesToSkip":I
    if-gez v2, :cond_38

    .line 868
    new-instance v7, Lcom/google/android/exoplayer/ParserException;

    const-string v8, "Offset to end of mdat was negative."

    invoke-direct {v7, v8}, Lcom/google/android/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 870
    :cond_38
    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->skipFully(I)V

    .line 871
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->enterReadingAtomHeaderState()V

    .line 872
    const/4 v7, 0x0

    .line 953
    .end local v2    # "bytesToSkip":I
    :goto_41
    return v7

    .line 875
    :cond_42
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->currentTrackBundle:Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    iget-object v7, v7, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;

    iget-wide v14, v7, Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;->dataPosition:J

    .line 877
    .local v14, "nextDataPosition":J
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->getPosition()J

    move-result-wide v20

    sub-long v20, v14, v20

    move-wide/from16 v0, v20

    long-to-int v2, v0

    .line 878
    .restart local v2    # "bytesToSkip":I
    if-gez v2, :cond_5d

    .line 879
    new-instance v7, Lcom/google/android/exoplayer/ParserException;

    const-string v8, "Offset to sample data was negative."

    invoke-direct {v7, v8}, Lcom/google/android/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 881
    :cond_5d
    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->skipFully(I)V

    .line 883
    .end local v2    # "bytesToSkip":I
    .end local v14    # "nextDataPosition":J
    :cond_62
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->currentTrackBundle:Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    iget-object v7, v7, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;

    iget-object v7, v7, Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;->sampleSizeTable:[I

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->currentTrackBundle:Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    iget v8, v8, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleIndex:I

    aget v7, v7, v8

    move-object/from16 v0, p0

    iput v7, v0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->sampleSize:I

    .line 885
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->currentTrackBundle:Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    iget-object v7, v7, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;

    iget-boolean v7, v7, Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;->definesEncryptionData:Z

    if-eqz v7, :cond_137

    .line 886
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->currentTrackBundle:Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->appendSampleEncryptionData(Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;)I

    move-result v7

    move-object/from16 v0, p0

    iput v7, v0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    .line 887
    move-object/from16 v0, p0

    iget v7, v0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->sampleSize:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    add-int/2addr v7, v8

    move-object/from16 v0, p0

    iput v7, v0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->sampleSize:I

    .line 891
    :goto_9b
    const/4 v7, 0x4

    move-object/from16 v0, p0

    iput v7, v0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->parserState:I

    .line 892
    const/4 v7, 0x0

    move-object/from16 v0, p0

    iput v7, v0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->sampleCurrentNalBytesRemaining:I

    .line 895
    :cond_a5
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->currentTrackBundle:Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    iget-object v10, v7, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;

    .line 896
    .local v10, "fragment":Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->currentTrackBundle:Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    iget-object v0, v7, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->track:Lcom/google/android/exoplayer/extractor/mp4/Track;

    move-object/from16 v18, v0

    .line 897
    .local v18, "track":Lcom/google/android/exoplayer/extractor/mp4/Track;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->currentTrackBundle:Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    iget-object v3, v7, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->output:Lcom/google/android/exoplayer/extractor/TrackOutput;

    .line 898
    .local v3, "output":Lcom/google/android/exoplayer/extractor/TrackOutput;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->currentTrackBundle:Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    iget v0, v7, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleIndex:I

    move/from16 v17, v0

    .line 899
    .local v17, "sampleIndex":I
    move-object/from16 v0, v18

    iget v7, v0, Lcom/google/android/exoplayer/extractor/mp4/Track;->nalUnitLengthFieldLength:I

    const/4 v8, -0x1

    if-eq v7, v8, :cond_15e

    .line 902
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->nalLength:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v11, v7, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    .line 903
    .local v11, "nalLengthData":[B
    const/4 v7, 0x0

    const/4 v8, 0x0

    aput-byte v8, v11, v7

    .line 904
    const/4 v7, 0x1

    const/4 v8, 0x0

    aput-byte v8, v11, v7

    .line 905
    const/4 v7, 0x2

    const/4 v8, 0x0

    aput-byte v8, v11, v7

    .line 906
    move-object/from16 v0, v18

    iget v12, v0, Lcom/google/android/exoplayer/extractor/mp4/Track;->nalUnitLengthFieldLength:I

    .line 907
    .local v12, "nalUnitLengthFieldLength":I
    move-object/from16 v0, v18

    iget v7, v0, Lcom/google/android/exoplayer/extractor/mp4/Track;->nalUnitLengthFieldLength:I

    rsub-int/lit8 v13, v7, 0x4

    .line 911
    .local v13, "nalUnitLengthFieldLengthDiff":I
    :goto_e4
    move-object/from16 v0, p0

    iget v7, v0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->sampleSize:I

    if-ge v7, v8, :cond_183

    .line 912
    move-object/from16 v0, p0

    iget v7, v0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->sampleCurrentNalBytesRemaining:I

    if-nez v7, :cond_13e

    .line 914
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->nalLength:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v7, v7, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    move-object/from16 v0, p1

    invoke-interface {v0, v7, v13, v12}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->readFully([BII)V

    .line 915
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->nalLength:Lcom/google/android/exoplayer/util/ParsableByteArray;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 916
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->nalLength:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v7}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v7

    move-object/from16 v0, p0

    iput v7, v0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->sampleCurrentNalBytesRemaining:I

    .line 918
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->nalStartCode:Lcom/google/android/exoplayer/util/ParsableByteArray;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 919
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->nalStartCode:Lcom/google/android/exoplayer/util/ParsableByteArray;

    const/4 v8, 0x4

    invoke-interface {v3, v7, v8}, Lcom/google/android/exoplayer/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer/util/ParsableByteArray;I)V

    .line 920
    move-object/from16 v0, p0

    iget v7, v0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    add-int/lit8 v7, v7, 0x4

    move-object/from16 v0, p0

    iput v7, v0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    .line 921
    move-object/from16 v0, p0

    iget v7, v0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->sampleSize:I

    add-int/2addr v7, v13

    move-object/from16 v0, p0

    iput v7, v0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->sampleSize:I

    goto :goto_e4

    .line 889
    .end local v3    # "output":Lcom/google/android/exoplayer/extractor/TrackOutput;
    .end local v10    # "fragment":Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;
    .end local v11    # "nalLengthData":[B
    .end local v12    # "nalUnitLengthFieldLength":I
    .end local v13    # "nalUnitLengthFieldLengthDiff":I
    .end local v17    # "sampleIndex":I
    .end local v18    # "track":Lcom/google/android/exoplayer/extractor/mp4/Track;
    :cond_137
    const/4 v7, 0x0

    move-object/from16 v0, p0

    iput v7, v0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    goto/16 :goto_9b

    .line 924
    .restart local v3    # "output":Lcom/google/android/exoplayer/extractor/TrackOutput;
    .restart local v10    # "fragment":Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;
    .restart local v11    # "nalLengthData":[B
    .restart local v12    # "nalUnitLengthFieldLength":I
    .restart local v13    # "nalUnitLengthFieldLengthDiff":I
    .restart local v17    # "sampleIndex":I
    .restart local v18    # "track":Lcom/google/android/exoplayer/extractor/mp4/Track;
    :cond_13e
    move-object/from16 v0, p0

    iget v7, v0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->sampleCurrentNalBytesRemaining:I

    const/4 v8, 0x0

    move-object/from16 v0, p1

    invoke-interface {v3, v0, v7, v8}, Lcom/google/android/exoplayer/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer/extractor/ExtractorInput;IZ)I

    move-result v19

    .line 925
    .local v19, "writtenBytes":I
    move-object/from16 v0, p0

    iget v7, v0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    add-int v7, v7, v19

    move-object/from16 v0, p0

    iput v7, v0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    .line 926
    move-object/from16 v0, p0

    iget v7, v0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->sampleCurrentNalBytesRemaining:I

    sub-int v7, v7, v19

    move-object/from16 v0, p0

    iput v7, v0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->sampleCurrentNalBytesRemaining:I

    goto :goto_e4

    .line 930
    .end local v11    # "nalLengthData":[B
    .end local v12    # "nalUnitLengthFieldLength":I
    .end local v13    # "nalUnitLengthFieldLengthDiff":I
    .end local v19    # "writtenBytes":I
    :cond_15e
    :goto_15e
    move-object/from16 v0, p0

    iget v7, v0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->sampleSize:I

    if-ge v7, v8, :cond_183

    .line 931
    move-object/from16 v0, p0

    iget v7, v0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->sampleSize:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    sub-int/2addr v7, v8

    const/4 v8, 0x0

    move-object/from16 v0, p1

    invoke-interface {v3, v0, v7, v8}, Lcom/google/android/exoplayer/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer/extractor/ExtractorInput;IZ)I

    move-result v19

    .line 932
    .restart local v19    # "writtenBytes":I
    move-object/from16 v0, p0

    iget v7, v0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    add-int v7, v7, v19

    move-object/from16 v0, p0

    iput v7, v0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    goto :goto_15e

    .line 936
    .end local v19    # "writtenBytes":I
    :cond_183
    move/from16 v0, v17

    invoke-virtual {v10, v0}, Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;->getSamplePresentationTime(I)J

    move-result-wide v20

    const-wide/16 v22, 0x3e8

    mul-long v4, v20, v22

    .line 937
    .local v4, "sampleTimeUs":J
    iget-boolean v7, v10, Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;->definesEncryptionData:Z

    if-eqz v7, :cond_1d7

    const/4 v7, 0x2

    :goto_192
    iget-object v8, v10, Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;->sampleIsSyncFrameTable:[Z

    aget-boolean v8, v8, v17

    if-eqz v8, :cond_1d9

    const/4 v8, 0x1

    :goto_199
    or-int v6, v7, v8

    .line 939
    .local v6, "sampleFlags":I
    iget-object v7, v10, Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;->header:Lcom/google/android/exoplayer/extractor/mp4/DefaultSampleValues;

    iget v0, v7, Lcom/google/android/exoplayer/extractor/mp4/DefaultSampleValues;->sampleDescriptionIndex:I

    move/from16 v16, v0

    .line 940
    .local v16, "sampleDescriptionIndex":I
    const/4 v9, 0x0

    .line 941
    .local v9, "encryptionKey":[B
    iget-boolean v7, v10, Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;->definesEncryptionData:Z

    if-eqz v7, :cond_1ae

    .line 942
    iget-object v7, v10, Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;->trackEncryptionBox:Lcom/google/android/exoplayer/extractor/mp4/TrackEncryptionBox;

    if-eqz v7, :cond_1db

    iget-object v7, v10, Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;->trackEncryptionBox:Lcom/google/android/exoplayer/extractor/mp4/TrackEncryptionBox;

    iget-object v9, v7, Lcom/google/android/exoplayer/extractor/mp4/TrackEncryptionBox;->keyId:[B

    .line 946
    :cond_1ae
    :goto_1ae
    move-object/from16 v0, p0

    iget v7, v0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->sampleSize:I

    const/4 v8, 0x0

    invoke-interface/range {v3 .. v9}, Lcom/google/android/exoplayer/extractor/TrackOutput;->sampleMetadata(JIII[B)V

    .line 948
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->currentTrackBundle:Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    iget v8, v7, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleIndex:I

    add-int/lit8 v8, v8, 0x1

    iput v8, v7, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleIndex:I

    .line 949
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->currentTrackBundle:Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    iget v7, v7, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleIndex:I

    iget v8, v10, Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;->length:I

    if-ne v7, v8, :cond_1cf

    .line 950
    const/4 v7, 0x0

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->currentTrackBundle:Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    .line 952
    :cond_1cf
    const/4 v7, 0x3

    move-object/from16 v0, p0

    iput v7, v0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->parserState:I

    .line 953
    const/4 v7, 0x1

    goto/16 :goto_41

    .line 937
    .end local v6    # "sampleFlags":I
    .end local v9    # "encryptionKey":[B
    .end local v16    # "sampleDescriptionIndex":I
    :cond_1d7
    const/4 v7, 0x0

    goto :goto_192

    :cond_1d9
    const/4 v8, 0x0

    goto :goto_199

    .line 942
    .restart local v6    # "sampleFlags":I
    .restart local v9    # "encryptionKey":[B
    .restart local v16    # "sampleDescriptionIndex":I
    :cond_1db
    move-object/from16 v0, v18

    iget-object v7, v0, Lcom/google/android/exoplayer/extractor/mp4/Track;->sampleDescriptionEncryptionBoxes:[Lcom/google/android/exoplayer/extractor/mp4/TrackEncryptionBox;

    aget-object v7, v7, v16

    iget-object v9, v7, Lcom/google/android/exoplayer/extractor/mp4/TrackEncryptionBox;->keyId:[B

    goto :goto_1ae
.end method

.method private static shouldParseContainerAtom(I)Z
    .registers 2
    .param p0, "atom"    # I

    .prologue
    .line 1054
    sget v0, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_moov:I

    if-eq p0, v0, :cond_24

    sget v0, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_trak:I

    if-eq p0, v0, :cond_24

    sget v0, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_mdia:I

    if-eq p0, v0, :cond_24

    sget v0, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_minf:I

    if-eq p0, v0, :cond_24

    sget v0, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_stbl:I

    if-eq p0, v0, :cond_24

    sget v0, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_moof:I

    if-eq p0, v0, :cond_24

    sget v0, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_traf:I

    if-eq p0, v0, :cond_24

    sget v0, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_mvex:I

    if-eq p0, v0, :cond_24

    sget v0, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_edts:I

    if-ne p0, v0, :cond_26

    :cond_24
    const/4 v0, 0x1

    :goto_25
    return v0

    :cond_26
    const/4 v0, 0x0

    goto :goto_25
.end method

.method private static shouldParseLeafAtom(I)Z
    .registers 2
    .param p0, "atom"    # I

    .prologue
    .line 1043
    sget v0, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_hdlr:I

    if-eq p0, v0, :cond_50

    sget v0, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_mdhd:I

    if-eq p0, v0, :cond_50

    sget v0, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_mvhd:I

    if-eq p0, v0, :cond_50

    sget v0, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_sidx:I

    if-eq p0, v0, :cond_50

    sget v0, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_stsd:I

    if-eq p0, v0, :cond_50

    sget v0, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_tfdt:I

    if-eq p0, v0, :cond_50

    sget v0, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_tfhd:I

    if-eq p0, v0, :cond_50

    sget v0, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_tkhd:I

    if-eq p0, v0, :cond_50

    sget v0, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_trex:I

    if-eq p0, v0, :cond_50

    sget v0, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_trun:I

    if-eq p0, v0, :cond_50

    sget v0, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_pssh:I

    if-eq p0, v0, :cond_50

    sget v0, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_saiz:I

    if-eq p0, v0, :cond_50

    sget v0, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_saio:I

    if-eq p0, v0, :cond_50

    sget v0, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_senc:I

    if-eq p0, v0, :cond_50

    sget v0, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_sbgp:I

    if-eq p0, v0, :cond_50

    sget v0, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_sgpd:I

    if-eq p0, v0, :cond_50

    sget v0, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_uuid:I

    if-eq p0, v0, :cond_50

    sget v0, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_elst:I

    if-eq p0, v0, :cond_50

    sget v0, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_mehd:I

    if-eq p0, v0, :cond_50

    sget v0, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_emsg:I

    if-ne p0, v0, :cond_52

    :cond_50
    const/4 v0, 0x1

    :goto_51
    return v0

    :cond_52
    const/4 v0, 0x0

    goto :goto_51
.end method


# virtual methods
.method public final init(Lcom/google/android/exoplayer/extractor/ExtractorOutput;)V
    .registers 6
    .param p1, "output"    # Lcom/google/android/exoplayer/extractor/ExtractorOutput;

    .prologue
    const/4 v3, 0x0

    .line 154
    iput-object p1, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->extractorOutput:Lcom/google/android/exoplayer/extractor/ExtractorOutput;

    .line 155
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->sideloadedTrack:Lcom/google/android/exoplayer/extractor/mp4/Track;

    if-eqz v1, :cond_24

    .line 156
    new-instance v0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    invoke-interface {p1, v3}, Lcom/google/android/exoplayer/extractor/ExtractorOutput;->track(I)Lcom/google/android/exoplayer/extractor/TrackOutput;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;-><init>(Lcom/google/android/exoplayer/extractor/TrackOutput;)V

    .line 157
    .local v0, "bundle":Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->sideloadedTrack:Lcom/google/android/exoplayer/extractor/mp4/Track;

    new-instance v2, Lcom/google/android/exoplayer/extractor/mp4/DefaultSampleValues;

    invoke-direct {v2, v3, v3, v3, v3}, Lcom/google/android/exoplayer/extractor/mp4/DefaultSampleValues;-><init>(IIII)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->init(Lcom/google/android/exoplayer/extractor/mp4/Track;Lcom/google/android/exoplayer/extractor/mp4/DefaultSampleValues;)V

    .line 158
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    invoke-virtual {v1, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 159
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->extractorOutput:Lcom/google/android/exoplayer/extractor/ExtractorOutput;

    invoke-interface {v1}, Lcom/google/android/exoplayer/extractor/ExtractorOutput;->endTracks()V

    .line 161
    .end local v0    # "bundle":Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;
    :cond_24
    return-void
.end method

.method protected parseEmsg(Lcom/google/android/exoplayer/util/ParsableByteArray;J)V
    .registers 4
    .param p1, "atom"    # Lcom/google/android/exoplayer/util/ParsableByteArray;
    .param p2, "inputPosition"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ParserException;
        }
    .end annotation

    .prologue
    .line 762
    return-void
.end method

.method public final read(Lcom/google/android/exoplayer/extractor/ExtractorInput;Lcom/google/android/exoplayer/extractor/PositionHolder;)I
    .registers 4
    .param p1, "input"    # Lcom/google/android/exoplayer/extractor/ExtractorInput;
    .param p2, "seekPosition"    # Lcom/google/android/exoplayer/extractor/PositionHolder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 182
    :cond_0
    :goto_0
    iget v0, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->parserState:I

    packed-switch v0, :pswitch_data_1e

    .line 195
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->readSample(Lcom/google/android/exoplayer/extractor/ExtractorInput;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    const/4 v0, 0x0

    :goto_c
    return v0

    .line 184
    :pswitch_d
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->readAtomHeader(Lcom/google/android/exoplayer/extractor/ExtractorInput;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 185
    const/4 v0, -0x1

    goto :goto_c

    .line 189
    :pswitch_15
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->readAtomPayload(Lcom/google/android/exoplayer/extractor/ExtractorInput;)V

    goto :goto_0

    .line 192
    :pswitch_19
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->readEncryptionData(Lcom/google/android/exoplayer/extractor/ExtractorInput;)V

    goto :goto_0

    .line 182
    nop

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_d
        :pswitch_15
        :pswitch_19
    .end packed-switch
.end method

.method public final release()V
    .registers 1

    .prologue
    .line 176
    return-void
.end method

.method public final seek()V
    .registers 4

    .prologue
    .line 165
    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 166
    .local v1, "trackCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    if-ge v0, v1, :cond_17

    .line 167
    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    invoke-virtual {v2}, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->reset()V

    .line 166
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 169
    :cond_17
    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->containerAtoms:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->clear()V

    .line 170
    invoke-direct {p0}, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->enterReadingAtomHeaderState()V

    .line 171
    return-void
.end method

.method public final sniff(Lcom/google/android/exoplayer/extractor/ExtractorInput;)Z
    .registers 3
    .param p1, "input"    # Lcom/google/android/exoplayer/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 149
    invoke-static {p1}, Lcom/google/android/exoplayer/extractor/mp4/Sniffer;->sniffFragmented(Lcom/google/android/exoplayer/extractor/ExtractorInput;)Z

    move-result v0

    return v0
.end method
