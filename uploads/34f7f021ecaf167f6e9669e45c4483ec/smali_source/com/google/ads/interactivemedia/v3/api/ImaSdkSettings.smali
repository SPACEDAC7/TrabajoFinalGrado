.class public final Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;
.super Ljava/lang/Object;
.source "IMASDK"


# static fields
.field public static final DEFAULT_MAX_REDIRECTS:I = 0x4


# instance fields
.field private autoPlayAdBreaks:Z

.field private transient language:Ljava/lang/String;

.field private numRedirects:I

.field private onScreenDetection:Z

.field private playerType:Ljava/lang/String;

.field private playerVersion:Ljava/lang/String;

.field private ppid:Ljava/lang/String;

.field private transient restrictToCustomPlayer:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x4

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;->numRedirects:I

    .line 21
    iput-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;->onScreenDetection:Z

    .line 22
    iput-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;->autoPlayAdBreaks:Z

    .line 24
    const-string v0, "en"

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;->language:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public doesRestrictToCustomPlayer()Z
    .registers 2

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;->restrictToCustomPlayer:Z

    return v0
.end method

.method public getAutoPlayAdBreaks()Z
    .registers 2

    .prologue
    .line 162
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;->autoPlayAdBreaks:Z

    return v0
.end method

.method public getLanguage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;->language:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxRedirects()I
    .registers 2

    .prologue
    .line 47
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;->numRedirects:I

    return v0
.end method

.method public getPlayerType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;->playerType:Ljava/lang/String;

    return-object v0
.end method

.method public getPlayerVersion()Ljava/lang/String;
    .registers 2

    .prologue
    .line 135
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;->playerVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getPpid()Ljava/lang/String;
    .registers 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;->ppid:Ljava/lang/String;

    return-object v0
.end method

.method public setAutoPlayAdBreaks(Z)V
    .registers 2

    .prologue
    .line 171
    iput-boolean p1, p0, Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;->autoPlayAdBreaks:Z

    .line 172
    return-void
.end method

.method public setLanguage(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 78
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;->language:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public setMaxRedirects(I)V
    .registers 2

    .prologue
    .line 60
    iput p1, p0, Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;->numRedirects:I

    .line 61
    return-void
.end method

.method public setPlayerType(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 126
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;->playerType:Ljava/lang/String;

    .line 127
    return-void
.end method

.method public setPlayerVersion(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 153
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;->playerVersion:Ljava/lang/String;

    .line 154
    return-void
.end method

.method public setPpid(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 40
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;->ppid:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public setRestrictToCustomPlayer(Z)V
    .registers 2

    .prologue
    .line 99
    iput-boolean p1, p0, Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;->restrictToCustomPlayer:Z

    .line 100
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 11

    .prologue
    .line 176
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;->ppid:Ljava/lang/String;

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;->numRedirects:I

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;->playerType:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;->playerVersion:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;->onScreenDetection:Z

    iget-object v5, p0, Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;->language:Ljava/lang/String;

    iget-boolean v6, p0, Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;->restrictToCustomPlayer:Z

    iget-boolean v7, p0, Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;->autoPlayAdBreaks:Z

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit16 v8, v8, 0xa1

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v8, v9

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v8, v9

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v8, v9

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v8, "ImaSdkSettings [ppid="

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, ", numRedirects="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", playerType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", playerVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", onScreenDetection="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", language="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", restrictToCustom="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", autoPlayAdBreaks="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
