.class public final Lcom/google/android/exoplayer/drm/FrameworkMediaDrm;
.super Ljava/lang/Object;
.source "FrameworkMediaDrm.java"

# interfaces
.implements Lcom/google/android/exoplayer/drm/ExoMediaDrm;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x12
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/exoplayer/drm/ExoMediaDrm",
        "<",
        "Lcom/google/android/exoplayer/drm/FrameworkMediaCrypto;",
        ">;"
    }
.end annotation


# instance fields
.field private final mediaDrm:Landroid/media/MediaDrm;


# direct methods
.method public constructor <init>(Ljava/util/UUID;)V
    .registers 4
    .param p1, "uuid"    # Ljava/util/UUID;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/UnsupportedSchemeException;
        }
    .end annotation

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v1, Landroid/media/MediaDrm;

    invoke-static {p1}, Lcom/google/android/exoplayer/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/UUID;

    invoke-direct {v1, v0}, Landroid/media/MediaDrm;-><init>(Ljava/util/UUID;)V

    iput-object v1, p0, Lcom/google/android/exoplayer/drm/FrameworkMediaDrm;->mediaDrm:Landroid/media/MediaDrm;

    .line 41
    return-void
.end method


# virtual methods
.method public closeSession([B)V
    .registers 3
    .param p1, "sessionId"    # [B

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/android/exoplayer/drm/FrameworkMediaDrm;->mediaDrm:Landroid/media/MediaDrm;

    invoke-virtual {v0, p1}, Landroid/media/MediaDrm;->closeSession([B)V

    .line 62
    return-void
.end method

.method public bridge synthetic createMediaCrypto(Ljava/util/UUID;[B)Lcom/google/android/exoplayer/drm/ExoMediaCrypto;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaCryptoException;
        }
    .end annotation

    .prologue
    .line 34
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer/drm/FrameworkMediaDrm;->createMediaCrypto(Ljava/util/UUID;[B)Lcom/google/android/exoplayer/drm/FrameworkMediaCrypto;

    move-result-object v0

    return-object v0
.end method

.method public createMediaCrypto(Ljava/util/UUID;[B)Lcom/google/android/exoplayer/drm/FrameworkMediaCrypto;
    .registers 5
    .param p1, "uuid"    # Ljava/util/UUID;
    .param p2, "initData"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaCryptoException;
        }
    .end annotation

    .prologue
    .line 147
    new-instance v0, Lcom/google/android/exoplayer/drm/FrameworkMediaCrypto;

    new-instance v1, Landroid/media/MediaCrypto;

    invoke-direct {v1, p1, p2}, Landroid/media/MediaCrypto;-><init>(Ljava/util/UUID;[B)V

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/drm/FrameworkMediaCrypto;-><init>(Landroid/media/MediaCrypto;)V

    return-object v0
.end method

.method public getKeyRequest([B[BLjava/lang/String;ILjava/util/HashMap;)Lcom/google/android/exoplayer/drm/ExoMediaDrm$KeyRequest;
    .registers 13
    .param p1, "scope"    # [B
    .param p2, "init"    # [B
    .param p3, "mimeType"    # Ljava/lang/String;
    .param p4, "keyType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[B",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/exoplayer/drm/ExoMediaDrm$KeyRequest;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/NotProvisionedException;
        }
    .end annotation

    .prologue
    .line 67
    .local p5, "optionalParameters":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/google/android/exoplayer/drm/FrameworkMediaDrm;->mediaDrm:Landroid/media/MediaDrm;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaDrm;->getKeyRequest([B[BLjava/lang/String;ILjava/util/HashMap;)Landroid/media/MediaDrm$KeyRequest;

    move-result-object v6

    .line 69
    .local v6, "request":Landroid/media/MediaDrm$KeyRequest;
    new-instance v0, Lcom/google/android/exoplayer/drm/FrameworkMediaDrm$2;

    invoke-direct {v0, p0, v6}, Lcom/google/android/exoplayer/drm/FrameworkMediaDrm$2;-><init>(Lcom/google/android/exoplayer/drm/FrameworkMediaDrm;Landroid/media/MediaDrm$KeyRequest;)V

    return-object v0
.end method

.method public getPropertyByteArray(Ljava/lang/String;)[B
    .registers 3
    .param p1, "propertyName"    # Ljava/lang/String;

    .prologue
    .line 131
    iget-object v0, p0, Lcom/google/android/exoplayer/drm/FrameworkMediaDrm;->mediaDrm:Landroid/media/MediaDrm;

    invoke-virtual {v0, p1}, Landroid/media/MediaDrm;->getPropertyByteArray(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public getPropertyString(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "propertyName"    # Ljava/lang/String;

    .prologue
    .line 126
    iget-object v0, p0, Lcom/google/android/exoplayer/drm/FrameworkMediaDrm;->mediaDrm:Landroid/media/MediaDrm;

    invoke-virtual {v0, p1}, Landroid/media/MediaDrm;->getPropertyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProvisionRequest()Lcom/google/android/exoplayer/drm/ExoMediaDrm$ProvisionRequest;
    .registers 3

    .prologue
    .line 90
    iget-object v1, p0, Lcom/google/android/exoplayer/drm/FrameworkMediaDrm;->mediaDrm:Landroid/media/MediaDrm;

    invoke-virtual {v1}, Landroid/media/MediaDrm;->getProvisionRequest()Landroid/media/MediaDrm$ProvisionRequest;

    move-result-object v0

    .line 91
    .local v0, "provisionRequest":Landroid/media/MediaDrm$ProvisionRequest;
    new-instance v1, Lcom/google/android/exoplayer/drm/FrameworkMediaDrm$3;

    invoke-direct {v1, p0, v0}, Lcom/google/android/exoplayer/drm/FrameworkMediaDrm$3;-><init>(Lcom/google/android/exoplayer/drm/FrameworkMediaDrm;Landroid/media/MediaDrm$ProvisionRequest;)V

    return-object v1
.end method

.method public openSession()[B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/NotProvisionedException;,
            Landroid/media/ResourceBusyException;
        }
    .end annotation

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/android/exoplayer/drm/FrameworkMediaDrm;->mediaDrm:Landroid/media/MediaDrm;

    invoke-virtual {v0}, Landroid/media/MediaDrm;->openSession()[B

    move-result-object v0

    return-object v0
.end method

.method public provideKeyResponse([B[B)[B
    .registers 4
    .param p1, "scope"    # [B
    .param p2, "response"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/NotProvisionedException;,
            Landroid/media/DeniedByServerException;
        }
    .end annotation

    .prologue
    .line 85
    iget-object v0, p0, Lcom/google/android/exoplayer/drm/FrameworkMediaDrm;->mediaDrm:Landroid/media/MediaDrm;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaDrm;->provideKeyResponse([B[B)[B

    move-result-object v0

    return-object v0
.end method

.method public provideProvisionResponse([B)V
    .registers 3
    .param p1, "response"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/DeniedByServerException;
        }
    .end annotation

    .prologue
    .line 106
    iget-object v0, p0, Lcom/google/android/exoplayer/drm/FrameworkMediaDrm;->mediaDrm:Landroid/media/MediaDrm;

    invoke-virtual {v0, p1}, Landroid/media/MediaDrm;->provideProvisionResponse([B)V

    .line 107
    return-void
.end method

.method public queryKeyStatus([B)Ljava/util/Map;
    .registers 3
    .param p1, "sessionId"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 111
    iget-object v0, p0, Lcom/google/android/exoplayer/drm/FrameworkMediaDrm;->mediaDrm:Landroid/media/MediaDrm;

    invoke-virtual {v0, p1}, Landroid/media/MediaDrm;->queryKeyStatus([B)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public release()V
    .registers 2

    .prologue
    .line 116
    iget-object v0, p0, Lcom/google/android/exoplayer/drm/FrameworkMediaDrm;->mediaDrm:Landroid/media/MediaDrm;

    invoke-virtual {v0}, Landroid/media/MediaDrm;->release()V

    .line 117
    return-void
.end method

.method public restoreKeys([B[B)V
    .registers 4
    .param p1, "sessionId"    # [B
    .param p2, "keySetId"    # [B

    .prologue
    .line 121
    iget-object v0, p0, Lcom/google/android/exoplayer/drm/FrameworkMediaDrm;->mediaDrm:Landroid/media/MediaDrm;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaDrm;->restoreKeys([B[B)V

    .line 122
    return-void
.end method

.method public setOnEventListener(Lcom/google/android/exoplayer/drm/ExoMediaDrm$OnEventListener;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer/drm/ExoMediaDrm$OnEventListener",
            "<-",
            "Lcom/google/android/exoplayer/drm/FrameworkMediaCrypto;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 46
    .local p1, "listener":Lcom/google/android/exoplayer/drm/ExoMediaDrm$OnEventListener;, "Lcom/google/android/exoplayer/drm/ExoMediaDrm$OnEventListener<-Lcom/google/android/exoplayer/drm/FrameworkMediaCrypto;>;"
    iget-object v1, p0, Lcom/google/android/exoplayer/drm/FrameworkMediaDrm;->mediaDrm:Landroid/media/MediaDrm;

    if-nez p1, :cond_9

    const/4 v0, 0x0

    :goto_5
    invoke-virtual {v1, v0}, Landroid/media/MediaDrm;->setOnEventListener(Landroid/media/MediaDrm$OnEventListener;)V

    .line 52
    return-void

    .line 46
    :cond_9
    new-instance v0, Lcom/google/android/exoplayer/drm/FrameworkMediaDrm$1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/exoplayer/drm/FrameworkMediaDrm$1;-><init>(Lcom/google/android/exoplayer/drm/FrameworkMediaDrm;Lcom/google/android/exoplayer/drm/ExoMediaDrm$OnEventListener;)V

    goto :goto_5
.end method

.method public setPropertyByteArray(Ljava/lang/String;[B)V
    .registers 4
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p2, "value"    # [B

    .prologue
    .line 141
    iget-object v0, p0, Lcom/google/android/exoplayer/drm/FrameworkMediaDrm;->mediaDrm:Landroid/media/MediaDrm;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaDrm;->setPropertyByteArray(Ljava/lang/String;[B)V

    .line 142
    return-void
.end method

.method public setPropertyString(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 136
    iget-object v0, p0, Lcom/google/android/exoplayer/drm/FrameworkMediaDrm;->mediaDrm:Landroid/media/MediaDrm;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaDrm;->setPropertyString(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    return-void
.end method
