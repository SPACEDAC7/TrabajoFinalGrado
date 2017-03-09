.class public abstract Lcom/google/android/exoplayer/chunk/Chunk;
.super Ljava/lang/Object;
.source "Chunk.java"

# interfaces
.implements Lcom/google/android/exoplayer/upstream/Loader$Loadable;


# static fields
.field public static final NO_PARENT_ID:I = -0x1

.field public static final TRIGGER_ADAPTIVE:I = 0x3

.field public static final TRIGGER_CUSTOM_BASE:I = 0x2710

.field public static final TRIGGER_INITIAL:I = 0x1

.field public static final TRIGGER_MANUAL:I = 0x2

.field public static final TRIGGER_TRICK_PLAY:I = 0x4

.field public static final TRIGGER_UNSPECIFIED:I = 0x0

.field public static final TYPE_CUSTOM_BASE:I = 0x2710

.field public static final TYPE_DRM:I = 0x3

.field public static final TYPE_MANIFEST:I = 0x4

.field public static final TYPE_MEDIA:I = 0x1

.field public static final TYPE_MEDIA_INITIALIZATION:I = 0x2

.field public static final TYPE_UNSPECIFIED:I


# instance fields
.field protected final dataSource:Lcom/google/android/exoplayer/upstream/DataSource;

.field public final dataSpec:Lcom/google/android/exoplayer/upstream/DataSpec;

.field public final format:Lcom/google/android/exoplayer/chunk/Format;

.field public final parentId:I

.field public final trigger:I

.field public final type:I


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer/upstream/DataSource;Lcom/google/android/exoplayer/upstream/DataSpec;IILcom/google/android/exoplayer/chunk/Format;I)V
    .registers 8
    .param p1, "dataSource"    # Lcom/google/android/exoplayer/upstream/DataSource;
    .param p2, "dataSpec"    # Lcom/google/android/exoplayer/upstream/DataSpec;
    .param p3, "type"    # I
    .param p4, "trigger"    # I
    .param p5, "format"    # Lcom/google/android/exoplayer/chunk/Format;
    .param p6, "parentId"    # I

    .prologue
    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    invoke-static {p1}, Lcom/google/android/exoplayer/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/upstream/DataSource;

    iput-object v0, p0, Lcom/google/android/exoplayer/chunk/Chunk;->dataSource:Lcom/google/android/exoplayer/upstream/DataSource;

    .line 121
    invoke-static {p2}, Lcom/google/android/exoplayer/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/upstream/DataSpec;

    iput-object v0, p0, Lcom/google/android/exoplayer/chunk/Chunk;->dataSpec:Lcom/google/android/exoplayer/upstream/DataSpec;

    .line 122
    iput p3, p0, Lcom/google/android/exoplayer/chunk/Chunk;->type:I

    .line 123
    iput p4, p0, Lcom/google/android/exoplayer/chunk/Chunk;->trigger:I

    .line 124
    iput-object p5, p0, Lcom/google/android/exoplayer/chunk/Chunk;->format:Lcom/google/android/exoplayer/chunk/Format;

    .line 125
    iput p6, p0, Lcom/google/android/exoplayer/chunk/Chunk;->parentId:I

    .line 126
    return-void
.end method


# virtual methods
.method public abstract bytesLoaded()J
.end method
