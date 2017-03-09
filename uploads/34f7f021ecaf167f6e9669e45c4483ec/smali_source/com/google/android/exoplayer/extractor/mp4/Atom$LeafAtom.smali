.class final Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;
.super Lcom/google/android/exoplayer/extractor/mp4/Atom;
.source "Atom.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer/extractor/mp4/Atom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "LeafAtom"
.end annotation


# instance fields
.field public final data:Lcom/google/android/exoplayer/util/ParsableByteArray;


# direct methods
.method public constructor <init>(ILcom/google/android/exoplayer/util/ParsableByteArray;)V
    .registers 3
    .param p1, "type"    # I
    .param p2, "data"    # Lcom/google/android/exoplayer/util/ParsableByteArray;

    .prologue
    .line 163
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer/extractor/mp4/Atom;-><init>(I)V

    .line 164
    iput-object p2, p0, Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer/util/ParsableByteArray;

    .line 165
    return-void
.end method
