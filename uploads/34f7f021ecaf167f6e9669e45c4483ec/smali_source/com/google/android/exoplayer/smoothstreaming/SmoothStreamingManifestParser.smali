.class public Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifestParser;
.super Ljava/lang/Object;
.source "SmoothStreamingManifestParser.java"

# interfaces
.implements Lcom/google/android/exoplayer/upstream/UriLoadable$Parser;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifestParser$TrackElementParser;,
        Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifestParser$StreamElementParser;,
        Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifestParser$ProtectionElementParser;,
        Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifestParser$SmoothStreamMediaParser;,
        Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifestParser$ElementParser;,
        Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifestParser$MissingFieldException;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/exoplayer/upstream/UriLoadable$Parser",
        "<",
        "Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest;",
        ">;"
    }
.end annotation


# instance fields
.field private final xmlParserFactory:Lorg/xmlpull/v1/XmlPullParserFactory;


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    :try_start_3
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifestParser;->xmlParserFactory:Lorg/xmlpull/v1/XmlPullParserFactory;
    :try_end_9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_9} :catch_a

    .line 56
    return-void

    .line 53
    :catch_a
    move-exception v0

    .line 54
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Couldn\'t create XmlPullParserFactory instance"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public parse(Ljava/lang/String;Ljava/io/InputStream;)Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest;
    .registers 7
    .param p1, "connectionUrl"    # Ljava/lang/String;
    .param p2, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/android/exoplayer/ParserException;
        }
    .end annotation

    .prologue
    .line 62
    :try_start_0
    iget-object v3, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifestParser;->xmlParserFactory:Lorg/xmlpull/v1/XmlPullParserFactory;

    invoke-virtual {v3}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    .line 63
    .local v2, "xmlParser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v3, 0x0

    invoke-interface {v2, p2, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 64
    new-instance v1, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifestParser$SmoothStreamMediaParser;

    const/4 v3, 0x0

    invoke-direct {v1, v3, p1}, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifestParser$SmoothStreamMediaParser;-><init>(Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifestParser$ElementParser;Ljava/lang/String;)V

    .line 66
    .local v1, "smoothStreamMediaParser":Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifestParser$SmoothStreamMediaParser;
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifestParser$SmoothStreamMediaParser;->parse(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest;
    :try_end_16
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_16} :catch_17

    return-object v3

    .line 67
    .end local v1    # "smoothStreamMediaParser":Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifestParser$SmoothStreamMediaParser;
    .end local v2    # "xmlParser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_17
    move-exception v0

    .line 68
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v3, Lcom/google/android/exoplayer/ParserException;

    invoke-direct {v3, v0}, Lcom/google/android/exoplayer/ParserException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public bridge synthetic parse(Ljava/lang/String;Ljava/io/InputStream;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 46
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifestParser;->parse(Ljava/lang/String;Ljava/io/InputStream;)Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest;

    move-result-object v0

    return-object v0
.end method
