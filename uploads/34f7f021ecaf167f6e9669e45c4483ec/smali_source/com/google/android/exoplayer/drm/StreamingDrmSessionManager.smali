.class public Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;
.super Ljava/lang/Object;
.source "StreamingDrmSessionManager.java"

# interfaces
.implements Lcom/google/android/exoplayer/drm/DrmSessionManager;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x12
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$PostRequestHandler;,
        Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$PostResponseHandler;,
        Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$MediaDrmEventListener;,
        Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$MediaDrmHandler;,
        Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$EventListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/google/android/exoplayer/drm/ExoMediaCrypto;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/exoplayer/drm/DrmSessionManager",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final MSG_KEYS:I = 0x1

.field private static final MSG_PROVISION:I = 0x0

.field public static final PLAYREADY_CUSTOM_DATA_KEY:Ljava/lang/String; = "PRCustomData"

.field public static final PLAYREADY_UUID:Ljava/util/UUID;

.field public static final WIDEVINE_UUID:Ljava/util/UUID;


# instance fields
.field final callback:Lcom/google/android/exoplayer/drm/MediaDrmCallback;

.field private final eventHandler:Landroid/os/Handler;

.field private final eventListener:Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$EventListener;

.field private lastException:Ljava/lang/Exception;

.field private mediaCrypto:Lcom/google/android/exoplayer/drm/ExoMediaCrypto;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final mediaDrm:Lcom/google/android/exoplayer/drm/ExoMediaDrm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer/drm/ExoMediaDrm",
            "<TT;>;"
        }
    .end annotation
.end field

.field final mediaDrmHandler:Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$MediaDrmHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager",
            "<TT;>.MediaDrmHandler;"
        }
    .end annotation
.end field

.field private openCount:I

.field private final optionalKeyRequestParameters:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private postRequestHandler:Landroid/os/Handler;

.field final postResponseHandler:Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$PostResponseHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager",
            "<TT;>.PostResponseHandler;"
        }
    .end annotation
.end field

.field private provisioningInProgress:Z

.field private requestHandlerThread:Landroid/os/HandlerThread;

.field private schemeInitData:Lcom/google/android/exoplayer/drm/DrmInitData$SchemeInitData;

.field private sessionId:[B

.field private state:I

.field final uuid:Ljava/util/UUID;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    .line 68
    new-instance v0, Ljava/util/UUID;

    const-wide v2, -0x121074568629b532L

    const-wide v4, -0x5c37d8232ae2de13L

    invoke-direct {v0, v2, v3, v4, v5}, Ljava/util/UUID;-><init>(JJ)V

    sput-object v0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->WIDEVINE_UUID:Ljava/util/UUID;

    .line 76
    new-instance v0, Ljava/util/UUID;

    const-wide v2, -0x65fb0f8667bfbd7aL

    const-wide v4, -0x546d19a41f77a06bL

    invoke-direct {v0, v2, v3, v4, v5}, Ljava/util/UUID;-><init>(JJ)V

    sput-object v0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->PLAYREADY_UUID:Ljava/util/UUID;

    return-void
.end method

.method private constructor <init>(Ljava/util/UUID;Landroid/os/Looper;Lcom/google/android/exoplayer/drm/MediaDrmCallback;Ljava/util/HashMap;Landroid/os/Handler;Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$EventListener;Lcom/google/android/exoplayer/drm/ExoMediaDrm;)V
    .registers 10
    .param p1, "uuid"    # Ljava/util/UUID;
    .param p2, "playbackLooper"    # Landroid/os/Looper;
    .param p3, "callback"    # Lcom/google/android/exoplayer/drm/MediaDrmCallback;
    .param p5, "eventHandler"    # Landroid/os/Handler;
    .param p6, "eventListener"    # Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$EventListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "Landroid/os/Looper;",
            "Lcom/google/android/exoplayer/drm/MediaDrmCallback;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Handler;",
            "Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$EventListener;",
            "Lcom/google/android/exoplayer/drm/ExoMediaDrm",
            "<TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/drm/UnsupportedDrmException;
        }
    .end annotation

    .prologue
    .line 223
    .local p0, "this":Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;, "Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager<TT;>;"
    .local p4, "optionalKeyRequestParameters":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .local p7, "mediaDrm":Lcom/google/android/exoplayer/drm/ExoMediaDrm;, "Lcom/google/android/exoplayer/drm/ExoMediaDrm<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 224
    iput-object p1, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->uuid:Ljava/util/UUID;

    .line 225
    iput-object p3, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->callback:Lcom/google/android/exoplayer/drm/MediaDrmCallback;

    .line 226
    iput-object p4, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->optionalKeyRequestParameters:Ljava/util/HashMap;

    .line 227
    iput-object p5, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->eventHandler:Landroid/os/Handler;

    .line 228
    iput-object p6, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->eventListener:Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$EventListener;

    .line 229
    iput-object p7, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->mediaDrm:Lcom/google/android/exoplayer/drm/ExoMediaDrm;

    .line 230
    new-instance v0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$MediaDrmEventListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$MediaDrmEventListener;-><init>(Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$1;)V

    invoke-interface {p7, v0}, Lcom/google/android/exoplayer/drm/ExoMediaDrm;->setOnEventListener(Lcom/google/android/exoplayer/drm/ExoMediaDrm$OnEventListener;)V

    .line 231
    new-instance v0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$MediaDrmHandler;

    invoke-direct {v0, p0, p2}, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$MediaDrmHandler;-><init>(Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->mediaDrmHandler:Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$MediaDrmHandler;

    .line 232
    new-instance v0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$PostResponseHandler;

    invoke-direct {v0, p0, p2}, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$PostResponseHandler;-><init>(Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->postResponseHandler:Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$PostResponseHandler;

    .line 233
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->state:I

    .line 234
    return-void
.end method

.method static synthetic access$100(Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;)Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$EventListener;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->eventListener:Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$EventListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;)I
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;

    .prologue
    .line 43
    iget v0, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->openCount:I

    return v0
.end method

.method static synthetic access$300(Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;)I
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;

    .prologue
    .line 43
    iget v0, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->state:I

    return v0
.end method

.method static synthetic access$302(Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;I)I
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;
    .param p1, "x1"    # I

    .prologue
    .line 43
    iput p1, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->state:I

    return p1
.end method

.method static synthetic access$400(Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;)V
    .registers 1
    .param p0, "x0"    # Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->postKeyRequest()V

    return-void
.end method

.method static synthetic access$500(Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;Ljava/lang/Exception;)V
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;
    .param p1, "x1"    # Ljava/lang/Exception;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->onError(Ljava/lang/Exception;)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;)V
    .registers 1
    .param p0, "x0"    # Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->postProvisionRequest()V

    return-void
.end method

.method static synthetic access$700(Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;Ljava/lang/Object;)V
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->onProvisionResponse(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$800(Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;Ljava/lang/Object;)V
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->onKeyResponse(Ljava/lang/Object;)V

    return-void
.end method

.method private static createFrameworkDrm(Ljava/util/UUID;)Lcom/google/android/exoplayer/drm/FrameworkMediaDrm;
    .registers 4
    .param p0, "uuid"    # Ljava/util/UUID;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/drm/UnsupportedDrmException;
        }
    .end annotation

    .prologue
    .line 109
    :try_start_0
    new-instance v1, Lcom/google/android/exoplayer/drm/FrameworkMediaDrm;

    invoke-direct {v1, p0}, Lcom/google/android/exoplayer/drm/FrameworkMediaDrm;-><init>(Ljava/util/UUID;)V
    :try_end_5
    .catch Landroid/media/UnsupportedSchemeException; {:try_start_0 .. :try_end_5} :catch_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_e

    return-object v1

    .line 110
    :catch_6
    move-exception v0

    .line 111
    .local v0, "e":Landroid/media/UnsupportedSchemeException;
    new-instance v1, Lcom/google/android/exoplayer/drm/UnsupportedDrmException;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v0}, Lcom/google/android/exoplayer/drm/UnsupportedDrmException;-><init>(ILjava/lang/Exception;)V

    throw v1

    .line 112
    .end local v0    # "e":Landroid/media/UnsupportedSchemeException;
    :catch_e
    move-exception v0

    .line 113
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lcom/google/android/exoplayer/drm/UnsupportedDrmException;

    const/4 v2, 0x2

    invoke-direct {v1, v2, v0}, Lcom/google/android/exoplayer/drm/UnsupportedDrmException;-><init>(ILjava/lang/Exception;)V

    throw v1
.end method

.method public static newFrameworkInstance(Ljava/util/UUID;Landroid/os/Looper;Lcom/google/android/exoplayer/drm/MediaDrmCallback;Ljava/util/HashMap;Landroid/os/Handler;Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$EventListener;)Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;
    .registers 13
    .param p0, "uuid"    # Ljava/util/UUID;
    .param p1, "playbackLooper"    # Landroid/os/Looper;
    .param p2, "callback"    # Lcom/google/android/exoplayer/drm/MediaDrmCallback;
    .param p4, "eventHandler"    # Landroid/os/Handler;
    .param p5, "eventListener"    # Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$EventListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "Landroid/os/Looper;",
            "Lcom/google/android/exoplayer/drm/MediaDrmCallback;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Handler;",
            "Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$EventListener;",
            ")",
            "Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager",
            "<",
            "Lcom/google/android/exoplayer/drm/FrameworkMediaCrypto;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/drm/UnsupportedDrmException;
        }
    .end annotation

    .prologue
    .line 183
    .line 184
    .local p3, "optionalKeyRequestParameters":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p0}, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->createFrameworkDrm(Ljava/util/UUID;)Lcom/google/android/exoplayer/drm/FrameworkMediaDrm;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 183
    invoke-static/range {v0 .. v6}, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->newInstance(Ljava/util/UUID;Landroid/os/Looper;Lcom/google/android/exoplayer/drm/MediaDrmCallback;Ljava/util/HashMap;Landroid/os/Handler;Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$EventListener;Lcom/google/android/exoplayer/drm/ExoMediaDrm;)Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance(Ljava/util/UUID;Landroid/os/Looper;Lcom/google/android/exoplayer/drm/MediaDrmCallback;Ljava/util/HashMap;Landroid/os/Handler;Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$EventListener;Lcom/google/android/exoplayer/drm/ExoMediaDrm;)Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;
    .registers 15
    .param p0, "uuid"    # Ljava/util/UUID;
    .param p1, "playbackLooper"    # Landroid/os/Looper;
    .param p2, "callback"    # Lcom/google/android/exoplayer/drm/MediaDrmCallback;
    .param p4, "eventHandler"    # Landroid/os/Handler;
    .param p5, "eventListener"    # Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$EventListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/android/exoplayer/drm/ExoMediaCrypto;",
            ">(",
            "Ljava/util/UUID;",
            "Landroid/os/Looper;",
            "Lcom/google/android/exoplayer/drm/MediaDrmCallback;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Handler;",
            "Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$EventListener;",
            "Lcom/google/android/exoplayer/drm/ExoMediaDrm",
            "<TT;>;)",
            "Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/drm/UnsupportedDrmException;
        }
    .end annotation

    .prologue
    .line 204
    .local p3, "optionalKeyRequestParameters":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .local p6, "mediaDrm":Lcom/google/android/exoplayer/drm/ExoMediaDrm;, "Lcom/google/android/exoplayer/drm/ExoMediaDrm<TT;>;"
    new-instance v0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;-><init>(Ljava/util/UUID;Landroid/os/Looper;Lcom/google/android/exoplayer/drm/MediaDrmCallback;Ljava/util/HashMap;Landroid/os/Handler;Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$EventListener;Lcom/google/android/exoplayer/drm/ExoMediaDrm;)V

    return-object v0
.end method

.method public static newPlayReadyInstance(Landroid/os/Looper;Lcom/google/android/exoplayer/drm/MediaDrmCallback;Ljava/lang/String;Landroid/os/Handler;Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$EventListener;)Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;
    .registers 11
    .param p0, "playbackLooper"    # Landroid/os/Looper;
    .param p1, "callback"    # Lcom/google/android/exoplayer/drm/MediaDrmCallback;
    .param p2, "customData"    # Ljava/lang/String;
    .param p3, "eventHandler"    # Landroid/os/Handler;
    .param p4, "eventListener"    # Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$EventListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Looper;",
            "Lcom/google/android/exoplayer/drm/MediaDrmCallback;",
            "Ljava/lang/String;",
            "Landroid/os/Handler;",
            "Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$EventListener;",
            ")",
            "Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager",
            "<",
            "Lcom/google/android/exoplayer/drm/FrameworkMediaCrypto;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/drm/UnsupportedDrmException;
        }
    .end annotation

    .prologue
    .line 157
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 158
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 159
    .local v3, "optionalKeyRequestParameters":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "PRCustomData"

    invoke-virtual {v3, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    :goto_10
    sget-object v0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->PLAYREADY_UUID:Ljava/util/UUID;

    move-object v1, p0

    move-object v2, p1

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->newFrameworkInstance(Ljava/util/UUID;Landroid/os/Looper;Lcom/google/android/exoplayer/drm/MediaDrmCallback;Ljava/util/HashMap;Landroid/os/Handler;Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$EventListener;)Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;

    move-result-object v0

    return-object v0

    .line 161
    .end local v3    # "optionalKeyRequestParameters":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1b
    const/4 v3, 0x0

    .restart local v3    # "optionalKeyRequestParameters":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_10
.end method

.method public static newWidevineInstance(Landroid/os/Looper;Lcom/google/android/exoplayer/drm/MediaDrmCallback;Ljava/util/HashMap;Landroid/os/Handler;Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$EventListener;)Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;
    .registers 11
    .param p0, "playbackLooper"    # Landroid/os/Looper;
    .param p1, "callback"    # Lcom/google/android/exoplayer/drm/MediaDrmCallback;
    .param p3, "eventHandler"    # Landroid/os/Handler;
    .param p4, "eventListener"    # Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$EventListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Looper;",
            "Lcom/google/android/exoplayer/drm/MediaDrmCallback;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Handler;",
            "Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$EventListener;",
            ")",
            "Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager",
            "<",
            "Lcom/google/android/exoplayer/drm/FrameworkMediaCrypto;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/drm/UnsupportedDrmException;
        }
    .end annotation

    .prologue
    .line 134
    .local p2, "optionalKeyRequestParameters":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->WIDEVINE_UUID:Ljava/util/UUID;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->newFrameworkInstance(Ljava/util/UUID;Landroid/os/Looper;Lcom/google/android/exoplayer/drm/MediaDrmCallback;Ljava/util/HashMap;Landroid/os/Handler;Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$EventListener;)Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;

    move-result-object v0

    return-object v0
.end method

.method private onError(Ljava/lang/Exception;)V
    .registers 4
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 459
    .local p0, "this":Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;, "Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager<TT;>;"
    iput-object p1, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->lastException:Ljava/lang/Exception;

    .line 460
    iget-object v0, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->eventHandler:Landroid/os/Handler;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->eventListener:Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$EventListener;

    if-eqz v0, :cond_14

    .line 461
    iget-object v0, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->eventHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$2;

    invoke-direct {v1, p0, p1}, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$2;-><init>(Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;Ljava/lang/Exception;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 468
    :cond_14
    iget v0, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->state:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1c

    .line 469
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->state:I

    .line 471
    :cond_1c
    return-void
.end method

.method private onKeyResponse(Ljava/lang/Object;)V
    .registers 6
    .param p1, "response"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;, "Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager<TT;>;"
    const/4 v3, 0x4

    .line 424
    iget v1, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->state:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_b

    iget v1, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->state:I

    if-eq v1, v3, :cond_b

    .line 448
    .end local p1    # "response":Ljava/lang/Object;
    :cond_a
    :goto_a
    return-void

    .line 429
    .restart local p1    # "response":Ljava/lang/Object;
    :cond_b
    instance-of v1, p1, Ljava/lang/Exception;

    if-eqz v1, :cond_15

    .line 430
    check-cast p1, Ljava/lang/Exception;

    .end local p1    # "response":Ljava/lang/Object;
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->onKeysError(Ljava/lang/Exception;)V

    goto :goto_a

    .line 435
    .restart local p1    # "response":Ljava/lang/Object;
    :cond_15
    :try_start_15
    iget-object v1, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->mediaDrm:Lcom/google/android/exoplayer/drm/ExoMediaDrm;

    iget-object v2, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->sessionId:[B

    check-cast p1, [B

    .end local p1    # "response":Ljava/lang/Object;
    check-cast p1, [B

    invoke-interface {v1, v2, p1}, Lcom/google/android/exoplayer/drm/ExoMediaDrm;->provideKeyResponse([B[B)[B

    .line 436
    const/4 v1, 0x4

    iput v1, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->state:I

    .line 437
    iget-object v1, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->eventHandler:Landroid/os/Handler;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->eventListener:Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$EventListener;

    if-eqz v1, :cond_a

    .line 438
    iget-object v1, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->eventHandler:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$1;

    invoke-direct {v2, p0}, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$1;-><init>(Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_35} :catch_36

    goto :goto_a

    .line 445
    :catch_36
    move-exception v0

    .line 446
    .local v0, "e":Ljava/lang/Exception;
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->onKeysError(Ljava/lang/Exception;)V

    goto :goto_a
.end method

.method private onKeysError(Ljava/lang/Exception;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 451
    .local p0, "this":Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;, "Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager<TT;>;"
    instance-of v0, p1, Landroid/media/NotProvisionedException;

    if-eqz v0, :cond_8

    .line 452
    invoke-direct {p0}, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->postProvisionRequest()V

    .line 456
    :goto_7
    return-void

    .line 454
    :cond_8
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->onError(Ljava/lang/Exception;)V

    goto :goto_7
.end method

.method private onProvisionResponse(Ljava/lang/Object;)V
    .registers 6
    .param p1, "response"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;, "Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager<TT;>;"
    const/4 v3, 0x2

    const/4 v1, 0x0

    .line 389
    iput-boolean v1, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->provisioningInProgress:Z

    .line 390
    iget v1, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->state:I

    if-eq v1, v3, :cond_13

    iget v1, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->state:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_13

    iget v1, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->state:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_13

    .line 410
    .end local p1    # "response":Ljava/lang/Object;
    :goto_12
    return-void

    .line 395
    .restart local p1    # "response":Ljava/lang/Object;
    :cond_13
    instance-of v1, p1, Ljava/lang/Exception;

    if-eqz v1, :cond_1d

    .line 396
    check-cast p1, Ljava/lang/Exception;

    .end local p1    # "response":Ljava/lang/Object;
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->onError(Ljava/lang/Exception;)V

    goto :goto_12

    .line 401
    .restart local p1    # "response":Ljava/lang/Object;
    :cond_1d
    :try_start_1d
    iget-object v1, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->mediaDrm:Lcom/google/android/exoplayer/drm/ExoMediaDrm;

    check-cast p1, [B

    .end local p1    # "response":Ljava/lang/Object;
    check-cast p1, [B

    invoke-interface {v1, p1}, Lcom/google/android/exoplayer/drm/ExoMediaDrm;->provideProvisionResponse([B)V

    .line 402
    iget v1, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->state:I

    if-ne v1, v3, :cond_34

    .line 403
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->openInternal(Z)V
    :try_end_2e
    .catch Landroid/media/DeniedByServerException; {:try_start_1d .. :try_end_2e} :catch_2f

    goto :goto_12

    .line 407
    :catch_2f
    move-exception v0

    .line 408
    .local v0, "e":Landroid/media/DeniedByServerException;
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->onError(Ljava/lang/Exception;)V

    goto :goto_12

    .line 405
    .end local v0    # "e":Landroid/media/DeniedByServerException;
    :cond_34
    :try_start_34
    invoke-direct {p0}, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->postKeyRequest()V
    :try_end_37
    .catch Landroid/media/DeniedByServerException; {:try_start_34 .. :try_end_37} :catch_2f

    goto :goto_12
.end method

.method private openInternal(Z)V
    .registers 6
    .param p1, "allowProvisioning"    # Z

    .prologue
    .line 364
    .local p0, "this":Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;, "Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager<TT;>;"
    :try_start_0
    iget-object v1, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->mediaDrm:Lcom/google/android/exoplayer/drm/ExoMediaDrm;

    invoke-interface {v1}, Lcom/google/android/exoplayer/drm/ExoMediaDrm;->openSession()[B

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->sessionId:[B

    .line 365
    iget-object v1, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->mediaDrm:Lcom/google/android/exoplayer/drm/ExoMediaDrm;

    iget-object v2, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->uuid:Ljava/util/UUID;

    iget-object v3, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->sessionId:[B

    invoke-interface {v1, v2, v3}, Lcom/google/android/exoplayer/drm/ExoMediaDrm;->createMediaCrypto(Ljava/util/UUID;[B)Lcom/google/android/exoplayer/drm/ExoMediaCrypto;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->mediaCrypto:Lcom/google/android/exoplayer/drm/ExoMediaCrypto;

    .line 366
    const/4 v1, 0x3

    iput v1, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->state:I

    .line 367
    invoke-direct {p0}, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->postKeyRequest()V
    :try_end_1a
    .catch Landroid/media/NotProvisionedException; {:try_start_0 .. :try_end_1a} :catch_1b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1a} :catch_26

    .line 377
    :goto_1a
    return-void

    .line 368
    :catch_1b
    move-exception v0

    .line 369
    .local v0, "e":Landroid/media/NotProvisionedException;
    if-eqz p1, :cond_22

    .line 370
    invoke-direct {p0}, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->postProvisionRequest()V

    goto :goto_1a

    .line 372
    :cond_22
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->onError(Ljava/lang/Exception;)V

    goto :goto_1a

    .line 374
    .end local v0    # "e":Landroid/media/NotProvisionedException;
    :catch_26
    move-exception v0

    .line 375
    .local v0, "e":Ljava/lang/Exception;
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->onError(Ljava/lang/Exception;)V

    goto :goto_1a
.end method

.method private postKeyRequest()V
    .registers 9

    .prologue
    .line 415
    .local p0, "this":Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;, "Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager<TT;>;"
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->mediaDrm:Lcom/google/android/exoplayer/drm/ExoMediaDrm;

    iget-object v1, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->sessionId:[B

    iget-object v2, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->schemeInitData:Lcom/google/android/exoplayer/drm/DrmInitData$SchemeInitData;

    iget-object v2, v2, Lcom/google/android/exoplayer/drm/DrmInitData$SchemeInitData;->data:[B

    iget-object v3, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->schemeInitData:Lcom/google/android/exoplayer/drm/DrmInitData$SchemeInitData;

    iget-object v3, v3, Lcom/google/android/exoplayer/drm/DrmInitData$SchemeInitData;->mimeType:Ljava/lang/String;

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->optionalKeyRequestParameters:Ljava/util/HashMap;

    invoke-interface/range {v0 .. v5}, Lcom/google/android/exoplayer/drm/ExoMediaDrm;->getKeyRequest([B[BLjava/lang/String;ILjava/util/HashMap;)Lcom/google/android/exoplayer/drm/ExoMediaDrm$KeyRequest;

    move-result-object v7

    .line 417
    .local v7, "keyRequest":Lcom/google/android/exoplayer/drm/ExoMediaDrm$KeyRequest;
    iget-object v0, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->postRequestHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_1d
    .catch Landroid/media/NotProvisionedException; {:try_start_0 .. :try_end_1d} :catch_1e

    .line 421
    .end local v7    # "keyRequest":Lcom/google/android/exoplayer/drm/ExoMediaDrm$KeyRequest;
    :goto_1d
    return-void

    .line 418
    :catch_1e
    move-exception v6

    .line 419
    .local v6, "e":Landroid/media/NotProvisionedException;
    invoke-direct {p0, v6}, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->onKeysError(Ljava/lang/Exception;)V

    goto :goto_1d
.end method

.method private postProvisionRequest()V
    .registers 4

    .prologue
    .line 380
    .local p0, "this":Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;, "Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager<TT;>;"
    iget-boolean v1, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->provisioningInProgress:Z

    if-eqz v1, :cond_5

    .line 386
    :goto_4
    return-void

    .line 383
    :cond_5
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->provisioningInProgress:Z

    .line 384
    iget-object v1, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->mediaDrm:Lcom/google/android/exoplayer/drm/ExoMediaDrm;

    invoke-interface {v1}, Lcom/google/android/exoplayer/drm/ExoMediaDrm;->getProvisionRequest()Lcom/google/android/exoplayer/drm/ExoMediaDrm$ProvisionRequest;

    move-result-object v0

    .line 385
    .local v0, "request":Lcom/google/android/exoplayer/drm/ExoMediaDrm$ProvisionRequest;
    iget-object v1, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->postRequestHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_4
.end method


# virtual methods
.method public close()V
    .registers 4

    .prologue
    .local p0, "this":Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;, "Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager<TT;>;"
    const/4 v2, 0x0

    .line 342
    iget v0, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->openCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->openCount:I

    if-eqz v0, :cond_a

    .line 360
    :cond_9
    :goto_9
    return-void

    .line 345
    :cond_a
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->state:I

    .line 346
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->provisioningInProgress:Z

    .line 347
    iget-object v0, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->mediaDrmHandler:Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$MediaDrmHandler;

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$MediaDrmHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 348
    iget-object v0, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->postResponseHandler:Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$PostResponseHandler;

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$PostResponseHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 349
    iget-object v0, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->postRequestHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 350
    iput-object v2, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->postRequestHandler:Landroid/os/Handler;

    .line 351
    iget-object v0, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->requestHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 352
    iput-object v2, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->requestHandlerThread:Landroid/os/HandlerThread;

    .line 353
    iput-object v2, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->schemeInitData:Lcom/google/android/exoplayer/drm/DrmInitData$SchemeInitData;

    .line 354
    iput-object v2, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->mediaCrypto:Lcom/google/android/exoplayer/drm/ExoMediaCrypto;

    .line 355
    iput-object v2, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->lastException:Ljava/lang/Exception;

    .line 356
    iget-object v0, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->sessionId:[B

    if-eqz v0, :cond_9

    .line 357
    iget-object v0, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->mediaDrm:Lcom/google/android/exoplayer/drm/ExoMediaDrm;

    iget-object v1, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->sessionId:[B

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer/drm/ExoMediaDrm;->closeSession([B)V

    .line 358
    iput-object v2, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->sessionId:[B

    goto :goto_9
.end method

.method public final getError()Ljava/lang/Exception;
    .registers 2

    .prologue
    .line 259
    .local p0, "this":Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;, "Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager<TT;>;"
    iget v0, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->state:I

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->lastException:Ljava/lang/Exception;

    :goto_6
    return-object v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public final getMediaCrypto()Lcom/google/android/exoplayer/drm/ExoMediaCrypto;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 243
    .local p0, "this":Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;, "Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager<TT;>;"
    iget v0, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->state:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_10

    iget v0, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->state:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_10

    .line 244
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 246
    :cond_10
    iget-object v0, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->mediaCrypto:Lcom/google/android/exoplayer/drm/ExoMediaCrypto;

    return-object v0
.end method

.method public final getPropertyByteArray(Ljava/lang/String;)[B
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 295
    .local p0, "this":Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;, "Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager<TT;>;"
    iget-object v0, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->mediaDrm:Lcom/google/android/exoplayer/drm/ExoMediaDrm;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer/drm/ExoMediaDrm;->getPropertyByteArray(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public final getPropertyString(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 271
    .local p0, "this":Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;, "Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager<TT;>;"
    iget-object v0, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->mediaDrm:Lcom/google/android/exoplayer/drm/ExoMediaDrm;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer/drm/ExoMediaDrm;->getPropertyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getState()I
    .registers 2

    .prologue
    .line 238
    .local p0, "this":Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;, "Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager<TT;>;"
    iget v0, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->state:I

    return v0
.end method

.method public open(Lcom/google/android/exoplayer/drm/DrmInitData;)V
    .registers 6
    .param p1, "drmInitData"    # Lcom/google/android/exoplayer/drm/DrmInitData;

    .prologue
    .local p0, "this":Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;, "Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager<TT;>;"
    const/4 v3, 0x1

    .line 312
    iget v1, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->openCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->openCount:I

    if-eq v1, v3, :cond_a

    .line 338
    :goto_9
    return-void

    .line 315
    :cond_a
    iget-object v1, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->postRequestHandler:Landroid/os/Handler;

    if-nez v1, :cond_29

    .line 316
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "DrmRequestHandler"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->requestHandlerThread:Landroid/os/HandlerThread;

    .line 317
    iget-object v1, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->requestHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 318
    new-instance v1, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$PostRequestHandler;

    iget-object v2, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->requestHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$PostRequestHandler;-><init>(Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->postRequestHandler:Landroid/os/Handler;

    .line 320
    :cond_29
    iget-object v1, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->schemeInitData:Lcom/google/android/exoplayer/drm/DrmInitData$SchemeInitData;

    if-nez v1, :cond_69

    .line 321
    iget-object v1, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->uuid:Ljava/util/UUID;

    invoke-interface {p1, v1}, Lcom/google/android/exoplayer/drm/DrmInitData;->get(Ljava/util/UUID;)Lcom/google/android/exoplayer/drm/DrmInitData$SchemeInitData;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->schemeInitData:Lcom/google/android/exoplayer/drm/DrmInitData$SchemeInitData;

    .line 322
    iget-object v1, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->schemeInitData:Lcom/google/android/exoplayer/drm/DrmInitData$SchemeInitData;

    if-nez v1, :cond_57

    .line 323
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Media does not support uuid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->uuid:Ljava/util/UUID;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->onError(Ljava/lang/Exception;)V

    goto :goto_9

    .line 326
    :cond_57
    sget v1, Lcom/google/android/exoplayer/util/Util;->SDK_INT:I

    const/16 v2, 0x15

    if-ge v1, v2, :cond_69

    .line 328
    iget-object v1, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->schemeInitData:Lcom/google/android/exoplayer/drm/DrmInitData$SchemeInitData;

    iget-object v1, v1, Lcom/google/android/exoplayer/drm/DrmInitData$SchemeInitData;->data:[B

    sget-object v2, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->WIDEVINE_UUID:Ljava/util/UUID;

    invoke-static {v1, v2}, Lcom/google/android/exoplayer/extractor/mp4/PsshAtomUtil;->parseSchemeSpecificData([BLjava/util/UUID;)[B

    move-result-object v0

    .line 329
    .local v0, "psshData":[B
    if-nez v0, :cond_70

    .line 336
    .end local v0    # "psshData":[B
    :cond_69
    :goto_69
    const/4 v1, 0x2

    iput v1, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->state:I

    .line 337
    invoke-direct {p0, v3}, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->openInternal(Z)V

    goto :goto_9

    .line 332
    .restart local v0    # "psshData":[B
    :cond_70
    new-instance v1, Lcom/google/android/exoplayer/drm/DrmInitData$SchemeInitData;

    iget-object v2, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->schemeInitData:Lcom/google/android/exoplayer/drm/DrmInitData$SchemeInitData;

    iget-object v2, v2, Lcom/google/android/exoplayer/drm/DrmInitData$SchemeInitData;->mimeType:Ljava/lang/String;

    invoke-direct {v1, v2, v0}, Lcom/google/android/exoplayer/drm/DrmInitData$SchemeInitData;-><init>(Ljava/lang/String;[B)V

    iput-object v1, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->schemeInitData:Lcom/google/android/exoplayer/drm/DrmInitData$SchemeInitData;

    goto :goto_69
.end method

.method public requiresSecureDecoderComponent(Ljava/lang/String;)Z
    .registers 4
    .param p1, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 251
    .local p0, "this":Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;, "Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager<TT;>;"
    iget v0, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->state:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_10

    iget v0, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->state:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_10

    .line 252
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 254
    :cond_10
    iget-object v0, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->mediaCrypto:Lcom/google/android/exoplayer/drm/ExoMediaCrypto;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer/drm/ExoMediaCrypto;->requiresSecureDecoderComponent(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final setPropertyByteArray(Ljava/lang/String;[B)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [B

    .prologue
    .line 307
    .local p0, "this":Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;, "Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager<TT;>;"
    iget-object v0, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->mediaDrm:Lcom/google/android/exoplayer/drm/ExoMediaDrm;

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer/drm/ExoMediaDrm;->setPropertyByteArray(Ljava/lang/String;[B)V

    .line 308
    return-void
.end method

.method public final setPropertyString(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 283
    .local p0, "this":Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;, "Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager<TT;>;"
    iget-object v0, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->mediaDrm:Lcom/google/android/exoplayer/drm/ExoMediaDrm;

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer/drm/ExoMediaDrm;->setPropertyString(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    return-void
.end method
