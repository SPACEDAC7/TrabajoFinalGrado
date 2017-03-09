.class public final Lcom/google/android/exoplayer/metadata/id3/TextInformationFrame;
.super Lcom/google/android/exoplayer/metadata/id3/Id3Frame;
.source "TextInformationFrame.java"


# instance fields
.field public final description:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "description"    # Ljava/lang/String;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer/metadata/id3/Id3Frame;-><init>(Ljava/lang/String;)V

    .line 27
    iput-object p2, p0, Lcom/google/android/exoplayer/metadata/id3/TextInformationFrame;->description:Ljava/lang/String;

    .line 28
    return-void
.end method
