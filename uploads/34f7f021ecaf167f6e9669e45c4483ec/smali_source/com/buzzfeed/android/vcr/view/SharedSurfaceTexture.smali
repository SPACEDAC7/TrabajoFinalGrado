.class public Lcom/buzzfeed/android/vcr/view/SharedSurfaceTexture;
.super Landroid/graphics/SurfaceTexture;
.source "SharedSurfaceTexture.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 14
    const-class v0, Lcom/buzzfeed/android/vcr/view/SharedSurfaceTexture;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/buzzfeed/android/vcr/view/SharedSurfaceTexture;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 17
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    .line 18
    invoke-virtual {p0}, Lcom/buzzfeed/android/vcr/view/SharedSurfaceTexture;->detachFromGLContext()V

    .line 19
    return-void
.end method

.method private safelyDetachFromGlContext()V
    .registers 4

    .prologue
    .line 37
    :try_start_0
    invoke-super {p0}, Landroid/graphics/SurfaceTexture;->detachFromGLContext()V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_3} :catch_4

    .line 41
    :goto_3
    return-void

    .line 38
    :catch_4
    move-exception v0

    .line 39
    .local v0, "ex":Ljava/lang/RuntimeException;
    sget-object v1, Lcom/buzzfeed/android/vcr/view/SharedSurfaceTexture;->TAG:Ljava/lang/String;

    const-string v2, "error with detachFromGLContext"

    invoke-static {v1, v2}, Lcom/buzzfeed/toolkit/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method


# virtual methods
.method public detachFromGLContext()V
    .registers 3

    .prologue
    .line 23
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_a

    .line 24
    invoke-direct {p0}, Lcom/buzzfeed/android/vcr/view/SharedSurfaceTexture;->safelyDetachFromGlContext()V

    .line 28
    :goto_9
    return-void

    .line 26
    :cond_a
    invoke-super {p0}, Landroid/graphics/SurfaceTexture;->detachFromGLContext()V

    goto :goto_9
.end method
