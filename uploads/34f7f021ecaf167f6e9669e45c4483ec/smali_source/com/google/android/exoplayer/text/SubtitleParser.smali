.class public interface abstract Lcom/google/android/exoplayer/text/SubtitleParser;
.super Ljava/lang/Object;
.source "SubtitleParser.java"


# virtual methods
.method public abstract canParse(Ljava/lang/String;)Z
.end method

.method public abstract parse([BII)Lcom/google/android/exoplayer/text/Subtitle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ParserException;
        }
    .end annotation
.end method
