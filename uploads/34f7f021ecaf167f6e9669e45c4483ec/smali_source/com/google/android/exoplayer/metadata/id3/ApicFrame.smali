.class public final Lcom/google/android/exoplayer/metadata/id3/ApicFrame;
.super Lcom/google/android/exoplayer/metadata/id3/Id3Frame;
.source "ApicFrame.java"


# static fields
.field public static final ID:Ljava/lang/String; = "APIC"


# instance fields
.field public final description:Ljava/lang/String;

.field public final mimeType:Ljava/lang/String;

.field public final pictureData:[B

.field public final pictureType:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I[B)V
    .registers 6
    .param p1, "mimeType"    # Ljava/lang/String;
    .param p2, "description"    # Ljava/lang/String;
    .param p3, "pictureType"    # I
    .param p4, "pictureData"    # [B

    .prologue
    .line 31
    const-string v0, "APIC"

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer/metadata/id3/Id3Frame;-><init>(Ljava/lang/String;)V

    .line 32
    iput-object p1, p0, Lcom/google/android/exoplayer/metadata/id3/ApicFrame;->mimeType:Ljava/lang/String;

    .line 33
    iput-object p2, p0, Lcom/google/android/exoplayer/metadata/id3/ApicFrame;->description:Ljava/lang/String;

    .line 34
    iput p3, p0, Lcom/google/android/exoplayer/metadata/id3/ApicFrame;->pictureType:I

    .line 35
    iput-object p4, p0, Lcom/google/android/exoplayer/metadata/id3/ApicFrame;->pictureData:[B

    .line 36
    return-void
.end method
