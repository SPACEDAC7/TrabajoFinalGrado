.class Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifestParser$ProtectionElementParser;
.super Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifestParser$ElementParser;
.source "SmoothStreamingManifestParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifestParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ProtectionElementParser"
.end annotation


# static fields
.field public static final KEY_SYSTEM_ID:Ljava/lang/String; = "SystemID"

.field public static final TAG:Ljava/lang/String; = "Protection"

.field public static final TAG_PROTECTION_HEADER:Ljava/lang/String; = "ProtectionHeader"


# instance fields
.field private inProtectionHeader:Z

.field private initData:[B

.field private uuid:Ljava/util/UUID;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifestParser$ElementParser;Ljava/lang/String;)V
    .registers 4
    .param p1, "parent"    # Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifestParser$ElementParser;
    .param p2, "baseUri"    # Ljava/lang/String;

    .prologue
    .line 392
    const-string v0, "Protection"

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifestParser$ElementParser;-><init>(Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifestParser$ElementParser;Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    return-void
.end method

.method private static stripCurlyBraces(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "uuidString"    # Ljava/lang/String;

    .prologue
    .line 430
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x7b

    if-ne v0, v1, :cond_22

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x7d

    if-ne v0, v1, :cond_22

    .line 431
    const/4 v0, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 433
    :cond_22
    return-object p0
.end method


# virtual methods
.method public build()Ljava/lang/Object;
    .registers 5

    .prologue
    .line 426
    new-instance v0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$ProtectionElement;

    iget-object v1, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifestParser$ProtectionElementParser;->uuid:Ljava/util/UUID;

    iget-object v2, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifestParser$ProtectionElementParser;->uuid:Ljava/util/UUID;

    iget-object v3, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifestParser$ProtectionElementParser;->initData:[B

    invoke-static {v2, v3}, Lcom/google/android/exoplayer/extractor/mp4/PsshAtomUtil;->buildPsshAtom(Ljava/util/UUID;[B)[B

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifest$ProtectionElement;-><init>(Ljava/util/UUID;[B)V

    return-object v0
.end method

.method public handleChildInline(Ljava/lang/String;)Z
    .registers 3
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 397
    const-string v0, "ProtectionHeader"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public parseEndTag(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 4
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    .line 419
    const-string v0, "ProtectionHeader"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 420
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifestParser$ProtectionElementParser;->inProtectionHeader:Z

    .line 422
    :cond_f
    return-void
.end method

.method public parseStartTag(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 5
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    .line 402
    const-string v1, "ProtectionHeader"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 403
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifestParser$ProtectionElementParser;->inProtectionHeader:Z

    .line 404
    const/4 v1, 0x0

    const-string v2, "SystemID"

    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 405
    .local v0, "uuidString":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifestParser$ProtectionElementParser;->stripCurlyBraces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 406
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifestParser$ProtectionElementParser;->uuid:Ljava/util/UUID;

    .line 408
    .end local v0    # "uuidString":Ljava/lang/String;
    :cond_20
    return-void
.end method

.method public parseText(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 4
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    .line 412
    iget-boolean v0, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifestParser$ProtectionElementParser;->inProtectionHeader:Z

    if-eqz v0, :cond_f

    .line 413
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer/smoothstreaming/SmoothStreamingManifestParser$ProtectionElementParser;->initData:[B

    .line 415
    :cond_f
    return-void
.end method
