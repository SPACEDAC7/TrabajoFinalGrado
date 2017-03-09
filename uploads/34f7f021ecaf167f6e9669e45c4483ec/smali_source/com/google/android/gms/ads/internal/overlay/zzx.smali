.class public Lcom/google/android/gms/ads/internal/overlay/zzx;
.super Ljava/lang/Thread;

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;
.implements Lcom/google/android/gms/ads/internal/overlay/zzw$zza;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation

.annotation runtime Lcom/google/android/gms/internal/zzji;
.end annotation


# static fields
.field private static final zzcdd:[F


# instance fields
.field private zzakh:I

.field private zzaki:I

.field private final zzccz:[F

.field private final zzcde:Lcom/google/android/gms/ads/internal/overlay/zzw;

.field private final zzcdf:[F

.field private final zzcdg:[F

.field private final zzcdh:[F

.field private final zzcdi:[F

.field private final zzcdj:[F

.field private final zzcdk:[F

.field private zzcdl:F

.field private zzcdm:F

.field private zzcdn:F

.field private zzcdo:Landroid/graphics/SurfaceTexture;

.field private zzcdp:Landroid/graphics/SurfaceTexture;

.field private zzcdq:I

.field private zzcdr:I

.field private zzcds:I

.field private zzcdt:Ljava/nio/FloatBuffer;

.field private final zzcdu:Ljava/util/concurrent/CountDownLatch;

.field private final zzcdv:Ljava/lang/Object;

.field private zzcdw:Ljavax/microedition/khronos/egl/EGL10;

.field private zzcdx:Ljavax/microedition/khronos/egl/EGLDisplay;

.field private zzcdy:Ljavax/microedition/khronos/egl/EGLContext;

.field private zzcdz:Ljavax/microedition/khronos/egl/EGLSurface;

.field private volatile zzcea:Z

.field private volatile zzceb:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0xc

    new-array v0, v0, [F

    fill-array-data v0, :array_a

    sput-object v0, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzcdd:[F

    return-void

    :array_a
    .array-data 4
        -0x40800000
        -0x40800000
        -0x40800000
        0x3f800000
        -0x40800000
        -0x40800000
        -0x40800000
        0x3f800000
        -0x40800000
        0x3f800000
        0x3f800000
        -0x40800000
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    const/16 v2, 0x9

    const-string v0, "SphericalVideoProcessor"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzcdd:[F

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzcdt:Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzcdt:Ljava/nio/FloatBuffer;

    sget-object v1, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzcdd:[F

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    new-array v0, v2, [F

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzccz:[F

    new-array v0, v2, [F

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzcdf:[F

    new-array v0, v2, [F

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzcdg:[F

    new-array v0, v2, [F

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzcdh:[F

    new-array v0, v2, [F

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzcdi:[F

    new-array v0, v2, [F

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzcdj:[F

    new-array v0, v2, [F

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzcdk:[F

    const/high16 v0, 0x7fc00000

    iput v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzcdl:F

    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/zzw;

    invoke-direct {v0, p1}, Lcom/google/android/gms/ads/internal/overlay/zzw;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzcde:Lcom/google/android/gms/ads/internal/overlay/zzw;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzcde:Lcom/google/android/gms/ads/internal/overlay/zzw;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/ads/internal/overlay/zzw;->zza(Lcom/google/android/gms/ads/internal/overlay/zzw$zza;)V

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzcdu:Ljava/util/concurrent/CountDownLatch;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzcdv:Ljava/lang/Object;

    return-void
.end method

.method private zza([FF)V
    .registers 8

    const/4 v4, 0x0

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000

    aput v1, p1, v0

    const/4 v0, 0x1

    aput v4, p1, v0

    const/4 v0, 0x2

    aput v4, p1, v0

    const/4 v0, 0x3

    aput v4, p1, v0

    const/4 v0, 0x4

    float-to-double v2, p2

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float v1, v2

    aput v1, p1, v0

    const/4 v0, 0x5

    float-to-double v2, p2

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    neg-double v2, v2

    double-to-float v1, v2

    aput v1, p1, v0

    const/4 v0, 0x6

    aput v4, p1, v0

    const/4 v0, 0x7

    float-to-double v2, p2

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v1, v2

    aput v1, p1, v0

    const/16 v0, 0x8

    float-to-double v2, p2

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float v1, v2

    aput v1, p1, v0

    return-void
.end method

.method private zza([F[F[F)V
    .registers 13

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    aget v0, p2, v4

    aget v1, p3, v4

    mul-float/2addr v0, v1

    aget v1, p2, v5

    aget v2, p3, v7

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    aget v1, p2, v6

    const/4 v2, 0x6

    aget v2, p3, v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    aput v0, p1, v4

    aget v0, p2, v4

    aget v1, p3, v5

    mul-float/2addr v0, v1

    aget v1, p2, v5

    aget v2, p3, v8

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    aget v1, p2, v6

    const/4 v2, 0x7

    aget v2, p3, v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    aput v0, p1, v5

    aget v0, p2, v4

    aget v1, p3, v6

    mul-float/2addr v0, v1

    aget v1, p2, v5

    const/4 v2, 0x5

    aget v2, p3, v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    aget v1, p2, v6

    const/16 v2, 0x8

    aget v2, p3, v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    aput v0, p1, v6

    aget v0, p2, v7

    aget v1, p3, v4

    mul-float/2addr v0, v1

    aget v1, p2, v8

    aget v2, p3, v7

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    const/4 v1, 0x5

    aget v1, p2, v1

    const/4 v2, 0x6

    aget v2, p3, v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    aput v0, p1, v7

    aget v0, p2, v7

    aget v1, p3, v5

    mul-float/2addr v0, v1

    aget v1, p2, v8

    aget v2, p3, v8

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    const/4 v1, 0x5

    aget v1, p2, v1

    const/4 v2, 0x7

    aget v2, p3, v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    aput v0, p1, v8

    const/4 v0, 0x5

    aget v1, p2, v7

    aget v2, p3, v6

    mul-float/2addr v1, v2

    aget v2, p2, v8

    const/4 v3, 0x5

    aget v3, p3, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/4 v2, 0x5

    aget v2, p2, v2

    const/16 v3, 0x8

    aget v3, p3, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    aput v1, p1, v0

    const/4 v0, 0x6

    const/4 v1, 0x6

    aget v1, p2, v1

    aget v2, p3, v4

    mul-float/2addr v1, v2

    const/4 v2, 0x7

    aget v2, p2, v2

    aget v3, p3, v7

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/16 v2, 0x8

    aget v2, p2, v2

    const/4 v3, 0x6

    aget v3, p3, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    aput v1, p1, v0

    const/4 v0, 0x7

    const/4 v1, 0x6

    aget v1, p2, v1

    aget v2, p3, v5

    mul-float/2addr v1, v2

    const/4 v2, 0x7

    aget v2, p2, v2

    aget v3, p3, v8

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/16 v2, 0x8

    aget v2, p2, v2

    const/4 v3, 0x7

    aget v3, p3, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    aput v1, p1, v0

    const/16 v0, 0x8

    const/4 v1, 0x6

    aget v1, p2, v1

    aget v2, p3, v6

    mul-float/2addr v1, v2

    const/4 v2, 0x7

    aget v2, p2, v2

    const/4 v3, 0x5

    aget v3, p3, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/16 v2, 0x8

    aget v2, p2, v2

    const/16 v3, 0x8

    aget v3, p3, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    aput v1, p1, v0

    return-void
.end method

.method private zza([F[F)[F
    .registers 11

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-array v0, v7, [F

    aget v1, p1, v4

    aget v2, p2, v4

    mul-float/2addr v1, v2

    aget v2, p1, v5

    aget v3, p2, v5

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    aget v2, p1, v6

    aget v3, p2, v6

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    aput v1, v0, v4

    aget v1, p1, v7

    aget v2, p2, v4

    mul-float/2addr v1, v2

    const/4 v2, 0x4

    aget v2, p1, v2

    aget v3, p2, v5

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/4 v2, 0x5

    aget v2, p1, v2

    aget v3, p2, v6

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    aput v1, v0, v5

    const/4 v1, 0x6

    aget v1, p1, v1

    aget v2, p2, v4

    mul-float/2addr v1, v2

    const/4 v2, 0x7

    aget v2, p1, v2

    aget v3, p2, v5

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/16 v2, 0x8

    aget v2, p1, v2

    aget v3, p2, v6

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    aput v1, v0, v6

    return-object v0
.end method

.method private zzb([FF)V
    .registers 8

    const/4 v4, 0x0

    const/4 v0, 0x0

    float-to-double v2, p2

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float v1, v2

    aput v1, p1, v0

    const/4 v0, 0x1

    float-to-double v2, p2

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    neg-double v2, v2

    double-to-float v1, v2

    aput v1, p1, v0

    const/4 v0, 0x2

    aput v4, p1, v0

    const/4 v0, 0x3

    float-to-double v2, p2

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v1, v2

    aput v1, p1, v0

    const/4 v0, 0x4

    float-to-double v2, p2

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float v1, v2

    aput v1, p1, v0

    const/4 v0, 0x5

    aput v4, p1, v0

    const/4 v0, 0x6

    aput v4, p1, v0

    const/4 v0, 0x7

    aput v4, p1, v0

    const/16 v0, 0x8

    const/high16 v1, 0x3f800000

    aput v1, p1, v0

    return-void
.end method

.method private zzc([F)F
    .registers 6

    const/4 v0, 0x3

    new-array v0, v0, [F

    fill-array-data v0, :array_1c

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/ads/internal/overlay/zzx;->zza([F[F)[F

    move-result-object v0

    const/4 v1, 0x1

    aget v1, v0, v1

    float-to-double v2, v1

    const/4 v1, 0x0

    aget v0, v0, v1

    float-to-double v0, v0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    double-to-float v0, v0

    const v1, 0x3fc90fdb

    sub-float/2addr v0, v1

    return v0

    :array_1c
    .array-data 4
        0x0
        0x3f800000
        0x0
    .end array-data
.end method

.method private zzc(ILjava/lang/String;)I
    .registers 8

    const/4 v0, 0x0

    invoke-static {p1}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v1

    const-string v2, "createShader"

    invoke-direct {p0, v2}, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzcf(Ljava/lang/String;)V

    if-eqz v1, :cond_60

    invoke-static {v1, p2}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    const-string v2, "shaderSource"

    invoke-direct {p0, v2}, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzcf(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/opengl/GLES20;->glCompileShader(I)V

    const-string v2, "compileShader"

    invoke-direct {p0, v2}, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzcf(Ljava/lang/String;)V

    const/4 v2, 0x1

    new-array v2, v2, [I

    const v3, 0x8b81

    invoke-static {v1, v3, v2, v0}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    const-string v3, "getShaderiv"

    invoke-direct {p0, v3}, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzcf(Ljava/lang/String;)V

    aget v2, v2, v0

    if-nez v2, :cond_60

    const-string v2, "SphericalVideoRenderer"

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x25

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Could not compile shader "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "SphericalVideoRenderer"

    invoke-static {v1}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    const-string v1, "deleteShader"

    invoke-direct {p0, v1}, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzcf(Ljava/lang/String;)V

    :goto_5f
    return v0

    :cond_60
    move v0, v1

    goto :goto_5f
.end method

.method private zzcf(Ljava/lang/String;)V
    .registers 6

    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    if-eqz v0, :cond_2c

    const-string v1, "SphericalVideoRenderer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x15

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": glError "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2c
    return-void
.end method

.method private zzqv()V
    .registers 6

    const/4 v2, 0x0

    const v4, 0x3f5f66f3

    iget v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzakh:I

    iget v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzaki:I

    invoke-static {v2, v2, v0, v1}, Landroid/opengl/GLES20;->glViewport(IIII)V

    const-string/jumbo v0, "viewport"

    invoke-direct {p0, v0}, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzcf(Ljava/lang/String;)V

    iget v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzcdq:I

    const-string/jumbo v1, "uFOVx"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzcdq:I

    const-string/jumbo v2, "uFOVy"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iget v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzakh:I

    iget v3, p0, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzaki:I

    if-le v2, v3, :cond_38

    invoke-static {v0, v4}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzaki:I

    int-to-float v0, v0

    mul-float/2addr v0, v4

    iget v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzakh:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    :goto_37
    return-void

    :cond_38
    iget v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzakh:I

    int-to-float v2, v2

    mul-float/2addr v2, v4

    iget v3, p0, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzaki:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    invoke-static {v1, v4}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    goto :goto_37
.end method

.method private zzqx()I
    .registers 7

    const/4 v5, 0x1

    const/4 v0, 0x0

    const v1, 0x8b31

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzra()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzc(ILjava/lang/String;)I

    move-result v2

    if-nez v2, :cond_10

    :cond_f
    :goto_f
    return v0

    :cond_10
    const v1, 0x8b30

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzrb()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzc(ILjava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_f

    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v1

    const-string v4, "createProgram"

    invoke-direct {p0, v4}, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzcf(Ljava/lang/String;)V

    if-eqz v1, :cond_73

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glAttachShader(II)V

    const-string v2, "attachShader"

    invoke-direct {p0, v2}, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzcf(Ljava/lang/String;)V

    invoke-static {v1, v3}, Landroid/opengl/GLES20;->glAttachShader(II)V

    const-string v2, "attachShader"

    invoke-direct {p0, v2}, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzcf(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    const-string v2, "linkProgram"

    invoke-direct {p0, v2}, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzcf(Ljava/lang/String;)V

    new-array v2, v5, [I

    const v3, 0x8b82

    invoke-static {v1, v3, v2, v0}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    const-string v3, "getProgramiv"

    invoke-direct {p0, v3}, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzcf(Ljava/lang/String;)V

    aget v2, v2, v0

    if-eq v2, v5, :cond_6a

    const-string v2, "SphericalVideoRenderer"

    const-string v3, "Could not link program: "

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "SphericalVideoRenderer"

    invoke-static {v1}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    const-string v1, "deleteProgram"

    invoke-direct {p0, v1}, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzcf(Ljava/lang/String;)V

    goto :goto_f

    :cond_6a
    invoke-static {v1}, Landroid/opengl/GLES20;->glValidateProgram(I)V

    const-string/jumbo v0, "validateProgram"

    invoke-direct {p0, v0}, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzcf(Ljava/lang/String;)V

    :cond_73
    move v0, v1

    goto :goto_f
.end method

.method private zzqz()Ljavax/microedition/khronos/egl/EGLConfig;
    .registers 9
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x1

    new-array v5, v4, [I

    new-array v3, v4, [Ljavax/microedition/khronos/egl/EGLConfig;

    const/16 v0, 0xb

    new-array v2, v0, [I

    fill-array-data v2, :array_24

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzcdw:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzcdx:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v0

    if-nez v0, :cond_1a

    move-object v0, v6

    :goto_19
    return-object v0

    :cond_1a
    aget v0, v5, v7

    if-lez v0, :cond_21

    aget-object v0, v3, v7

    goto :goto_19

    :cond_21
    move-object v0, v6

    goto :goto_19

    nop

    :array_24
    .array-data 4
        0x3040
        0x4
        0x3024
        0x8
        0x3023
        0x8
        0x3022
        0x8
        0x3025
        0x10
        0x3038
    .end array-data
.end method

.method private zzra()Ljava/lang/String;
    .registers 4

    sget-object v1, Lcom/google/android/gms/internal/zzdr;->zzbgo:Lcom/google/android/gms/internal/zzdn;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzdn;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzdn;->zzlp()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzdn;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_18
    return-object v0

    :cond_19
    const-string v0, "attribute highp vec3 aPosition;varying vec3 pos;void main() {  gl_Position = vec4(aPosition, 1.0);  pos = aPosition;}"

    goto :goto_18
.end method

.method private zzrb()Ljava/lang/String;
    .registers 4

    sget-object v1, Lcom/google/android/gms/internal/zzdr;->zzbgp:Lcom/google/android/gms/internal/zzdn;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzdn;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzdn;->zzlp()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzdn;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_18
    return-object v0

    :cond_19
    const-string v0, "#extension GL_OES_EGL_image_external : require\n#define INV_PI 0.3183\nprecision highp float;varying vec3 pos;uniform samplerExternalOES uSplr;uniform mat3 uVMat;uniform float uFOVx;uniform float uFOVy;void main() {  vec3 ray = vec3(pos.x * tan(uFOVx), pos.y * tan(uFOVy), -1);  ray = (uVMat * ray).xyz;  ray = normalize(ray);  vec2 texCrd = vec2(    0.5 + atan(ray.x, - ray.z) * INV_PI * 0.5, acos(ray.y) * INV_PI);  gl_FragColor = vec4(texture2D(uSplr, texCrd).xyz, 1.0);}"

    goto :goto_18
.end method


# virtual methods
.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .registers 4

    iget v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzcds:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzcds:I

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzcdv:Ljava/lang/Object;

    monitor-enter v1

    :try_start_9
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzcdv:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    return-void

    :catchall_10
    move-exception v0

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_9 .. :try_end_12} :catchall_10

    throw v0
.end method

.method public run()V
    .registers 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzcdp:Landroid/graphics/SurfaceTexture;

    if-nez v2, :cond_12

    const-string v0, "SphericalVideoProcessor started with no output texture."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkx;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzcdu:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :goto_11
    return-void

    :cond_12
    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzqy()Z

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzqw()I

    move-result v3

    iget v4, p0, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzcdq:I

    if-eqz v4, :cond_56

    :goto_1e
    if-eqz v2, :cond_22

    if-nez v0, :cond_5e

    :cond_22
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzcdw:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    invoke-static {v0}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "EGL initialization failed: "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_58

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_3c
    invoke-static {v0}, Lcom/google/android/gms/internal/zzkx;->e(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzgq()Lcom/google/android/gms/internal/zzkr;

    move-result-object v1

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    const-string v0, "SphericalVideoProcessor.run.1"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/zzkr;->zza(Ljava/lang/Throwable;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzrc()Z

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzcdu:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_11

    :cond_56
    move v0, v1

    goto :goto_1e

    :cond_58
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_3c

    :cond_5e
    new-instance v0, Landroid/graphics/SurfaceTexture;

    invoke-direct {v0, v3}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzcdo:Landroid/graphics/SurfaceTexture;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzcdo:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, p0}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzcdu:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzcde:Lcom/google/android/gms/ads/internal/overlay/zzw;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/overlay/zzw;->start()V

    const/4 v0, 0x1

    :try_start_75
    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzcea:Z

    :goto_77
    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzceb:Z

    if-nez v0, :cond_a3

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzqu()V

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzcea:Z

    if-eqz v0, :cond_88

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzqv()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzcea:Z
    :try_end_88
    .catch Ljava/lang/IllegalStateException; {:try_start_75 .. :try_end_88} :catch_b4
    .catch Ljava/lang/Throwable; {:try_start_75 .. :try_end_88} :catch_cb
    .catchall {:try_start_75 .. :try_end_88} :catchall_eb

    :cond_88
    :try_start_88
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzcdv:Ljava/lang/Object;

    monitor-enter v1
    :try_end_8b
    .catch Ljava/lang/InterruptedException; {:try_start_88 .. :try_end_8b} :catch_a1
    .catch Ljava/lang/IllegalStateException; {:try_start_88 .. :try_end_8b} :catch_b4
    .catch Ljava/lang/Throwable; {:try_start_88 .. :try_end_8b} :catch_cb
    .catchall {:try_start_88 .. :try_end_8b} :catchall_eb

    :try_start_8b
    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzceb:Z

    if-nez v0, :cond_9c

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzcea:Z

    if-nez v0, :cond_9c

    iget v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzcds:I

    if-nez v0, :cond_9c

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzcdv:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    :cond_9c
    monitor-exit v1

    goto :goto_77

    :catchall_9e
    move-exception v0

    monitor-exit v1
    :try_end_a0
    .catchall {:try_start_8b .. :try_end_a0} :catchall_9e

    :try_start_a0
    throw v0
    :try_end_a1
    .catch Ljava/lang/InterruptedException; {:try_start_a0 .. :try_end_a1} :catch_a1
    .catch Ljava/lang/IllegalStateException; {:try_start_a0 .. :try_end_a1} :catch_b4
    .catch Ljava/lang/Throwable; {:try_start_a0 .. :try_end_a1} :catch_cb
    .catchall {:try_start_a0 .. :try_end_a1} :catchall_eb

    :catch_a1
    move-exception v0

    goto :goto_77

    :cond_a3
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzcde:Lcom/google/android/gms/ads/internal/overlay/zzw;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/overlay/zzw;->stop()V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzcdo:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v5}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    iput-object v5, p0, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzcdo:Landroid/graphics/SurfaceTexture;

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzrc()Z

    goto/16 :goto_11

    :catch_b4
    move-exception v0

    :try_start_b5
    const-string v0, "SphericalVideoProcessor halted unexpectedly."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkx;->zzdi(Ljava/lang/String;)V
    :try_end_ba
    .catchall {:try_start_b5 .. :try_end_ba} :catchall_eb

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzcde:Lcom/google/android/gms/ads/internal/overlay/zzw;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/overlay/zzw;->stop()V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzcdo:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v5}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    iput-object v5, p0, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzcdo:Landroid/graphics/SurfaceTexture;

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzrc()Z

    goto/16 :goto_11

    :catch_cb
    move-exception v0

    :try_start_cc
    const-string v1, "SphericalVideoProcessor died."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzkx;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzgq()Lcom/google/android/gms/internal/zzkr;

    move-result-object v1

    const-string v2, "SphericalVideoProcessor.run.2"

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/zzkr;->zza(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_da
    .catchall {:try_start_cc .. :try_end_da} :catchall_eb

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzcde:Lcom/google/android/gms/ads/internal/overlay/zzw;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/overlay/zzw;->stop()V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzcdo:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v5}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    iput-object v5, p0, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzcdo:Landroid/graphics/SurfaceTexture;

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzrc()Z

    goto/16 :goto_11

    :catchall_eb
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzcde:Lcom/google/android/gms/ads/internal/overlay/zzw;

    invoke-virtual {v1}, Lcom/google/android/gms/ads/internal/overlay/zzw;->stop()V

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzcdo:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v1, v5}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    iput-object v5, p0, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzcdo:Landroid/graphics/SurfaceTexture;

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzrc()Z

    throw v0
.end method

.method public zza(Landroid/graphics/SurfaceTexture;II)V
    .registers 4

    iput p2, p0, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzakh:I

    iput p3, p0, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzaki:I

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzcdp:Landroid/graphics/SurfaceTexture;

    return-void
.end method

.method public zzb(FF)V
    .registers 8

    const v4, 0x3fc90fdb

    const v3, -0x4036f025

    const v2, 0x3fdf66f3

    iget v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzakh:I

    iget v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzaki:I

    if-le v0, v1, :cond_39

    mul-float v0, v2, p1

    iget v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzakh:I

    int-to-float v1, v1

    div-float v1, v0, v1

    mul-float v0, v2, p2

    iget v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzakh:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    :goto_1c
    iget v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzcdm:F

    sub-float v1, v2, v1

    iput v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzcdm:F

    iget v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzcdn:F

    sub-float v0, v1, v0

    iput v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzcdn:F

    iget v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzcdn:F

    cmpg-float v0, v0, v3

    if-gez v0, :cond_30

    iput v3, p0, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzcdn:F

    :cond_30
    iget v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzcdn:F

    cmpl-float v0, v0, v4

    if-lez v0, :cond_38

    iput v4, p0, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzcdn:F

    :cond_38
    return-void

    :cond_39
    mul-float v0, v2, p1

    iget v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzaki:I

    int-to-float v1, v1

    div-float v1, v0, v1

    mul-float v0, v2, p2

    iget v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzaki:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    goto :goto_1c
.end method

.method public zzi(II)V
    .registers 5

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzcdv:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iput p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzakh:I

    iput p2, p0, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzaki:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzcea:Z

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzcdv:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    return-void

    :catchall_11
    move-exception v0

    monitor-exit v1
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v0
.end method

.method public zzpr()V
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzcdv:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzcdv:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    return-void

    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public zzqs()V
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzcdv:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_4
    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzceb:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzcdp:Landroid/graphics/SurfaceTexture;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzcdv:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    return-void

    :catchall_10
    move-exception v0

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_4 .. :try_end_12} :catchall_10

    throw v0
.end method

.method public zzqt()Landroid/graphics/SurfaceTexture;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzcdp:Landroid/graphics/SurfaceTexture;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    :try_start_6
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzcdu:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_b
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_b} :catch_e

    :goto_b
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzcdo:Landroid/graphics/SurfaceTexture;

    goto :goto_5

    :catch_e
    move-exception v0

    goto :goto_b
.end method

.method zzqu()V
    .registers 5

    const/4 v3, 0x0

    :goto_1
    iget v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzcds:I

    if-lez v0, :cond_11

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzcdo:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    iget v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzcds:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzcds:I

    goto :goto_1

    :cond_11
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzcde:Lcom/google/android/gms/ads/internal/overlay/zzw;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzccz:[F

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/overlay/zzw;->zzb([F)Z

    move-result v0

    if-eqz v0, :cond_7f

    iget v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzcdl:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzccz:[F

    invoke-direct {p0, v0}, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzc([F)F

    move-result v0

    neg-float v0, v0

    iput v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzcdl:F

    :cond_2c
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzcdj:[F

    iget v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzcdl:F

    iget v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzcdm:F

    add-float/2addr v1, v2

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzb([FF)V

    :goto_36
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzcdf:[F

    const v1, 0x3fc90fdb

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/ads/internal/overlay/zzx;->zza([FF)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzcdg:[F

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzcdj:[F

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzcdf:[F

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/gms/ads/internal/overlay/zzx;->zza([F[F[F)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzcdh:[F

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzccz:[F

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzcdg:[F

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/gms/ads/internal/overlay/zzx;->zza([F[F[F)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzcdi:[F

    iget v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzcdn:F

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/ads/internal/overlay/zzx;->zza([FF)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzcdk:[F

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzcdi:[F

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzcdh:[F

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/gms/ads/internal/overlay/zzx;->zza([F[F[F)V

    iget v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzcdr:I

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzcdk:[F

    invoke-static {v0, v1, v3, v2, v3}, Landroid/opengl/GLES20;->glUniformMatrix3fv(IIZ[FI)V

    const/4 v0, 0x5

    const/4 v1, 0x4

    invoke-static {v0, v3, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    const-string v0, "drawArrays"

    invoke-direct {p0, v0}, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzcf(Ljava/lang/String;)V

    invoke-static {}, Landroid/opengl/GLES20;->glFinish()V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzcdw:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzcdx:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzcdz:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglSwapBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    return-void

    :cond_7f
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzccz:[F

    const v1, -0x4036f025

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/ads/internal/overlay/zzx;->zza([FF)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzcdj:[F

    iget v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzcdm:F

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzb([FF)V

    goto :goto_36
.end method

.method zzqw()I
    .registers 11

    const v9, 0x812f

    const/16 v8, 0x2601

    const/4 v7, 0x1

    const v6, 0x8d65

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzqx()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzcdq:I

    iget v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzcdq:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    const-string/jumbo v0, "useProgram"

    invoke-direct {p0, v0}, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzcf(Ljava/lang/String;)V

    iget v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzcdq:I

    const-string v1, "aPosition"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    const/4 v1, 0x3

    const/16 v2, 0x1406

    const/16 v4, 0xc

    iget-object v5, p0, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzcdt:Ljava/nio/FloatBuffer;

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    const-string/jumbo v1, "vertexAttribPointer"

    invoke-direct {p0, v1}, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzcf(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const-string v0, "enableVertexAttribArray"

    invoke-direct {p0, v0}, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzcf(Ljava/lang/String;)V

    new-array v0, v7, [I

    invoke-static {v7, v0, v3}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    const-string v1, "genTextures"

    invoke-direct {p0, v1}, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzcf(Ljava/lang/String;)V

    aget v0, v0, v3

    invoke-static {v6, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const-string v1, "bindTextures"

    invoke-direct {p0, v1}, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzcf(Ljava/lang/String;)V

    const/16 v1, 0x2800

    invoke-static {v6, v1, v8}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const-string/jumbo v1, "texParameteri"

    invoke-direct {p0, v1}, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzcf(Ljava/lang/String;)V

    const/16 v1, 0x2801

    invoke-static {v6, v1, v8}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const-string/jumbo v1, "texParameteri"

    invoke-direct {p0, v1}, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzcf(Ljava/lang/String;)V

    const/16 v1, 0x2802

    invoke-static {v6, v1, v9}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const-string/jumbo v1, "texParameteri"

    invoke-direct {p0, v1}, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzcf(Ljava/lang/String;)V

    const/16 v1, 0x2803

    invoke-static {v6, v1, v9}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const-string/jumbo v1, "texParameteri"

    invoke-direct {p0, v1}, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzcf(Ljava/lang/String;)V

    iget v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzcdq:I

    const-string/jumbo v2, "uVMat"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzcdr:I

    const/16 v1, 0x9

    new-array v1, v1, [F

    fill-array-data v1, :array_94

    iget v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzcdr:I

    invoke-static {v2, v7, v3, v1, v3}, Landroid/opengl/GLES20;->glUniformMatrix3fv(IIZ[FI)V

    return v0

    nop

    :array_94
    .array-data 4
        0x3f800000
        0x0
        0x0
        0x0
        0x3f800000
        0x0
        0x0
        0x0
        0x3f800000
    .end array-data
.end method

.method zzqy()Z
    .registers 7

    const/4 v1, 0x0

    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/egl/EGL10;

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzcdw:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzcdw:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v0, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzcdx:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzcdx:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-ne v0, v2, :cond_1b

    move v0, v1

    :goto_1a
    return v0

    :cond_1b
    const/4 v0, 0x2

    new-array v0, v0, [I

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzcdw:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzcdx:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v2, v3, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    move-result v0

    if-nez v0, :cond_2a

    move v0, v1

    goto :goto_1a

    :cond_2a
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzqz()Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v0

    if-nez v0, :cond_32

    move v0, v1

    goto :goto_1a

    :cond_32
    const/4 v2, 0x3

    new-array v2, v2, [I

    fill-array-data v2, :array_7e

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzcdw:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzcdx:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v5, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v3, v4, v0, v5, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzcdy:Ljavax/microedition/khronos/egl/EGLContext;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzcdy:Ljavax/microedition/khronos/egl/EGLContext;

    if-eqz v2, :cond_4e

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzcdy:Ljavax/microedition/khronos/egl/EGLContext;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    if-ne v2, v3, :cond_50

    :cond_4e
    move v0, v1

    goto :goto_1a

    :cond_50
    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzcdw:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzcdx:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzcdp:Landroid/graphics/SurfaceTexture;

    const/4 v5, 0x0

    invoke-interface {v2, v3, v0, v4, v5}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateWindowSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzcdz:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzcdz:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz v0, :cond_67

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzcdz:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-ne v0, v2, :cond_69

    :cond_67
    move v0, v1

    goto :goto_1a

    :cond_69
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzcdw:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzcdx:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzcdz:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzcdz:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v5, p0, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzcdy:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v2, v3, v4, v5}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v0

    if-nez v0, :cond_7b

    move v0, v1

    goto :goto_1a

    :cond_7b
    const/4 v0, 0x1

    goto :goto_1a

    nop

    :array_7e
    .array-data 4
        0x3098
        0x2
        0x3038
    .end array-data
.end method

.method zzrc()Z
    .registers 7

    const/4 v5, 0x0

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzcdz:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz v1, :cond_29

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzcdz:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eq v1, v2, :cond_29

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzcdw:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzcdx:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v0

    or-int/lit8 v0, v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzcdw:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzcdx:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzcdz:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v1, v2, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    move-result v1

    or-int/2addr v0, v1

    iput-object v5, p0, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzcdz:Ljavax/microedition/khronos/egl/EGLSurface;

    :cond_29
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzcdy:Ljavax/microedition/khronos/egl/EGLContext;

    if-eqz v1, :cond_3a

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzcdw:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzcdx:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzcdy:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v1, v2, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v1

    or-int/2addr v0, v1

    iput-object v5, p0, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzcdy:Ljavax/microedition/khronos/egl/EGLContext;

    :cond_3a
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzcdx:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-eqz v1, :cond_49

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzcdw:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzcdx:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z

    move-result v1

    or-int/2addr v0, v1

    iput-object v5, p0, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzcdx:Ljavax/microedition/khronos/egl/EGLDisplay;

    :cond_49
    return v0
.end method
