.class public final Lcom/google/android/exoplayer/metadata/id3/TxxxFrame;
.super Lcom/google/android/exoplayer/metadata/id3/Id3Frame;
.source "TxxxFrame.java"


# static fields
.field public static final ID:Ljava/lang/String; = "TXXX"


# instance fields
.field public final description:Ljava/lang/String;

.field public final value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "description"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 29
    const-string v0, "TXXX"

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer/metadata/id3/Id3Frame;-><init>(Ljava/lang/String;)V

    .line 30
    iput-object p1, p0, Lcom/google/android/exoplayer/metadata/id3/TxxxFrame;->description:Ljava/lang/String;

    .line 31
    iput-object p2, p0, Lcom/google/android/exoplayer/metadata/id3/TxxxFrame;->value:Ljava/lang/String;

    .line 32
    return-void
.end method
