.class final Lcom/google/android/exoplayer/text/eia608/ClosedCaptionText;
.super Lcom/google/android/exoplayer/text/eia608/ClosedCaption;
.source "ClosedCaptionText.java"


# instance fields
.field public final text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 23
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer/text/eia608/ClosedCaption;-><init>(I)V

    .line 24
    iput-object p1, p0, Lcom/google/android/exoplayer/text/eia608/ClosedCaptionText;->text:Ljava/lang/String;

    .line 25
    return-void
.end method
