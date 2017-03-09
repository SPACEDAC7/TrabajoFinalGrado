.class public interface abstract Lcom/google/android/exoplayer/extractor/SeekMap;
.super Ljava/lang/Object;
.source "SeekMap.java"


# static fields
.field public static final UNSEEKABLE:Lcom/google/android/exoplayer/extractor/SeekMap;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 26
    new-instance v0, Lcom/google/android/exoplayer/extractor/SeekMap$1;

    invoke-direct {v0}, Lcom/google/android/exoplayer/extractor/SeekMap$1;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer/extractor/SeekMap;->UNSEEKABLE:Lcom/google/android/exoplayer/extractor/SeekMap;

    return-void
.end method


# virtual methods
.method public abstract getPosition(J)J
.end method

.method public abstract isSeekable()Z
.end method
