.class final Lcom/google/android/exoplayer/text/webvtt/WebvttCueParser$StartTag;
.super Ljava/lang/Object;
.source "WebvttCueParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer/text/webvtt/WebvttCueParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "StartTag"
.end annotation


# instance fields
.field public final name:Ljava/lang/String;

.field public final position:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "position"    # I

    .prologue
    .line 392
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 393
    iput p2, p0, Lcom/google/android/exoplayer/text/webvtt/WebvttCueParser$StartTag;->position:I

    .line 394
    iput-object p1, p0, Lcom/google/android/exoplayer/text/webvtt/WebvttCueParser$StartTag;->name:Ljava/lang/String;

    .line 395
    return-void
.end method
