.class final Lcom/google/android/exoplayer/extractor/SeekMap$1;
.super Ljava/lang/Object;
.source "SeekMap.java"

# interfaces
.implements Lcom/google/android/exoplayer/extractor/SeekMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer/extractor/SeekMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPosition(J)J
    .registers 5
    .param p1, "timeUs"    # J

    .prologue
    .line 35
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public isSeekable()Z
    .registers 2

    .prologue
    .line 30
    const/4 v0, 0x0

    return v0
.end method
