.class public Lcom/google/android/gms/ads/internal/overlay/zzc;
.super Lcom/google/android/gms/ads/internal/overlay/zzi;

# interfaces
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnInfoListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation

.annotation runtime Lcom/google/android/gms/internal/zzji;
.end annotation


# static fields
.field private static final zzbzp:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zzbzq:Lcom/google/android/gms/ads/internal/overlay/zzy;

.field private final zzbzr:Z

.field private zzbzs:I

.field private zzbzt:I

.field private zzbzu:Landroid/media/MediaPlayer;

.field private zzbzv:Landroid/net/Uri;

.field private zzbzw:I

.field private zzbzx:I

.field private zzbzy:I

.field private zzbzz:I

.field private zzcaa:I

.field private zzcab:Lcom/google/android/gms/ads/internal/overlay/zzx;

.field private zzcac:Z

.field private zzcad:I

.field private zzcae:Lcom/google/android/gms/ads/internal/overlay/zzh;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v3, 0x1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbzp:Ljava/util/Map;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_4e

    sget-object v0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbzp:Ljava/util/Map;

    const/16 v1, -0x3ec

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MEDIA_ERROR_IO"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbzp:Ljava/util/Map;

    const/16 v1, -0x3ef

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MEDIA_ERROR_MALFORMED"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbzp:Ljava/util/Map;

    const/16 v1, -0x3f2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MEDIA_ERROR_UNSUPPORTED"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbzp:Ljava/util/Map;

    const/16 v1, -0x6e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MEDIA_ERROR_TIMED_OUT"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbzp:Ljava/util/Map;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MEDIA_INFO_VIDEO_RENDERING_START"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4e
    sget-object v0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbzp:Ljava/util/Map;

    const/16 v1, 0x64

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MEDIA_ERROR_SERVER_DIED"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbzp:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MEDIA_ERROR_UNKNOWN"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbzp:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MEDIA_INFO_UNKNOWN"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbzp:Ljava/util/Map;

    const/16 v1, 0x2bc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MEDIA_INFO_VIDEO_TRACK_LAGGING"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbzp:Ljava/util/Map;

    const/16 v1, 0x2bd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MEDIA_INFO_BUFFERING_START"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbzp:Ljava/util/Map;

    const/16 v1, 0x2be

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MEDIA_INFO_BUFFERING_END"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbzp:Ljava/util/Map;

    const/16 v1, 0x320

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MEDIA_INFO_BAD_INTERLEAVING"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbzp:Ljava/util/Map;

    const/16 v1, 0x321

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MEDIA_INFO_NOT_SEEKABLE"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbzp:Ljava/util/Map;

    const/16 v1, 0x322

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MEDIA_INFO_METADATA_UPDATE"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_df

    sget-object v0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbzp:Ljava/util/Map;

    const/16 v1, 0x385

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MEDIA_INFO_UNSUPPORTED_SUBTITLE"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbzp:Ljava/util/Map;

    const/16 v1, 0x386

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MEDIA_INFO_SUBTITLE_TIMED_OUT"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_df
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZZLcom/google/android/gms/ads/internal/overlay/zzy;)V
    .registers 6

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/google/android/gms/ads/internal/overlay/zzi;-><init>(Landroid/content/Context;)V

    iput v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbzs:I

    iput v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbzt:I

    invoke-virtual {p0, p0}, Lcom/google/android/gms/ads/internal/overlay/zzc;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    iput-object p4, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbzq:Lcom/google/android/gms/ads/internal/overlay/zzy;

    iput-boolean p2, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzcac:Z

    iput-boolean p3, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbzr:Z

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbzq:Lcom/google/android/gms/ads/internal/overlay/zzy;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/ads/internal/overlay/zzy;->zza(Lcom/google/android/gms/ads/internal/overlay/zzi;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/ads/internal/overlay/zzc;)Lcom/google/android/gms/ads/internal/overlay/zzh;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzcae:Lcom/google/android/gms/ads/internal/overlay/zzh;

    return-object v0
.end method

.method private zza(F)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbzu:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_a

    :try_start_4
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbzu:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1, p1}, Landroid/media/MediaPlayer;->setVolume(FF)V
    :try_end_9
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_9} :catch_10

    :goto_9
    return-void

    :cond_a
    const-string v0, "AdMediaPlayerView setMediaPlayerVolume() called before onPrepared()."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkx;->zzdi(Ljava/lang/String;)V

    goto :goto_9

    :catch_10
    move-exception v0

    goto :goto_9
.end method

.method private zzai(I)V
    .registers 4

    const/4 v1, 0x3

    if-ne p1, v1, :cond_10

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbzq:Lcom/google/android/gms/ads/internal/overlay/zzy;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/overlay/zzy;->zzre()V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzcbx:Lcom/google/android/gms/ads/internal/overlay/zzaa;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/overlay/zzaa;->zzre()V

    :cond_d
    :goto_d
    iput p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbzs:I

    return-void

    :cond_10
    iget v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbzs:I

    if-ne v0, v1, :cond_d

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbzq:Lcom/google/android/gms/ads/internal/overlay/zzy;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/overlay/zzy;->zzrf()V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzcbx:Lcom/google/android/gms/ads/internal/overlay/zzaa;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/overlay/zzaa;->zzrf()V

    goto :goto_d
.end method

.method private zzaj(I)V
    .registers 2

    iput p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbzt:I

    return-void
.end method

.method private zzph()V
    .registers 7

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v0, "AdMediaPlayerView init MediaPlayer"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkx;->v(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/overlay/zzc;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbzv:Landroid/net/Uri;

    if-eqz v0, :cond_11

    if-nez v1, :cond_12

    :cond_11
    :goto_11
    return-void

    :cond_12
    invoke-direct {p0, v4}, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzz(Z)V

    :try_start_15
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzhd()Lcom/google/android/gms/ads/internal/overlay/zzq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/overlay/zzq;->zzqr()Landroid/media/MediaPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbzu:Landroid/media/MediaPlayer;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbzu:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbzu:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbzu:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbzu:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbzu:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbzu:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbzy:I

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzcac:Z

    if-eqz v0, :cond_ce

    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/zzx;

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/overlay/zzc;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/google/android/gms/ads/internal/overlay/zzx;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzcab:Lcom/google/android/gms/ads/internal/overlay/zzx;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzcab:Lcom/google/android/gms/ads/internal/overlay/zzx;

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/overlay/zzc;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/overlay/zzc;->getHeight()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/ads/internal/overlay/zzx;->zza(Landroid/graphics/SurfaceTexture;II)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzcab:Lcom/google/android/gms/ads/internal/overlay/zzx;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/overlay/zzx;->start()V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzcab:Lcom/google/android/gms/ads/internal/overlay/zzx;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzqt()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    if-eqz v0, :cond_c6

    :goto_69
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbzu:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/overlay/zzc;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbzv:Landroid/net/Uri;

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzhe()Lcom/google/android/gms/ads/internal/overlay/zzr;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/internal/overlay/zzr;->zza(Landroid/graphics/SurfaceTexture;)Landroid/view/Surface;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbzu:Landroid/media/MediaPlayer;

    invoke-virtual {v1, v0}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbzu:Landroid/media/MediaPlayer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbzu:Landroid/media/MediaPlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setScreenOnWhilePlaying(Z)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbzu:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzai(I)V
    :try_end_96
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_96} :catch_98
    .catch Ljava/lang/IllegalArgumentException; {:try_start_15 .. :try_end_96} :catch_d2
    .catch Ljava/lang/IllegalStateException; {:try_start_15 .. :try_end_96} :catch_d0

    goto/16 :goto_11

    :catch_98
    move-exception v0

    :goto_99
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbzv:Landroid/net/Uri;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x24

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Failed to initialize MediaPlayer at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzkx;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbzu:Landroid/media/MediaPlayer;

    invoke-virtual {p0, v0, v5, v4}, Lcom/google/android/gms/ads/internal/overlay/zzc;->onError(Landroid/media/MediaPlayer;II)Z

    goto/16 :goto_11

    :cond_c6
    :try_start_c6
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzcab:Lcom/google/android/gms/ads/internal/overlay/zzx;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzqs()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzcab:Lcom/google/android/gms/ads/internal/overlay/zzx;
    :try_end_ce
    .catch Ljava/io/IOException; {:try_start_c6 .. :try_end_ce} :catch_98
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c6 .. :try_end_ce} :catch_d2
    .catch Ljava/lang/IllegalStateException; {:try_start_c6 .. :try_end_ce} :catch_d0

    :cond_ce
    move-object v0, v1

    goto :goto_69

    :catch_d0
    move-exception v0

    goto :goto_99

    :catch_d2
    move-exception v0

    goto :goto_99
.end method

.method private zzpi()V
    .registers 9

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbzr:Z

    if-nez v0, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzpj()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbzu:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    if-lez v0, :cond_4

    iget v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbzt:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    const-string v0, "AdMediaPlayerView nudging MediaPlayer"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkx;->v(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/ads/internal/overlay/zzc;->zza(F)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbzu:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbzu:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzgs()Lcom/google/android/gms/common/util/zze;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/zze;->currentTimeMillis()J

    move-result-wide v2

    :cond_34
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzpj()Z

    move-result v1

    if-eqz v1, :cond_51

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbzu:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v1

    if-ne v1, v0, :cond_51

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzgs()Lcom/google/android/gms/common/util/zze;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/zze;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    const-wide/16 v6, 0xfa

    cmp-long v1, v4, v6

    if-lez v1, :cond_34

    :cond_51
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbzu:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzpk()V

    goto :goto_4
.end method

.method private zzpj()Z
    .registers 4

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbzu:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_13

    iget v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbzs:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_13

    iget v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbzs:I

    if-eqz v1, :cond_13

    iget v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbzs:I

    if-eq v1, v0, :cond_13

    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method private zzz(Z)V
    .registers 5

    const/4 v2, 0x0

    const/4 v1, 0x0

    const-string v0, "AdMediaPlayerView release"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkx;->v(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzcab:Lcom/google/android/gms/ads/internal/overlay/zzx;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzcab:Lcom/google/android/gms/ads/internal/overlay/zzx;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzqs()V

    iput-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzcab:Lcom/google/android/gms/ads/internal/overlay/zzx;

    :cond_12
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbzu:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbzu:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbzu:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    iput-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbzu:Landroid/media/MediaPlayer;

    invoke-direct {p0, v1}, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzai(I)V

    if-eqz p1, :cond_2c

    iput v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbzt:I

    invoke-direct {p0, v1}, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzaj(I)V

    :cond_2c
    return-void
.end method


# virtual methods
.method public getCurrentPosition()I
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzpj()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbzu:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public getDuration()I
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzpj()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbzu:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    :goto_c
    return v0

    :cond_d
    const/4 v0, -0x1

    goto :goto_c
.end method

.method public getVideoHeight()I
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbzu:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbzu:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getVideoWidth()I
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbzu:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbzu:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .registers 3

    iput p2, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbzy:I

    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .registers 4

    const/4 v1, 0x5

    const-string v0, "AdMediaPlayerView completion"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkx;->v(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzai(I)V

    invoke-direct {p0, v1}, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzaj(I)V

    sget-object v0, Lcom/google/android/gms/internal/zzlb;->zzcvl:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/ads/internal/overlay/zzc$2;

    invoke-direct {v1, p0}, Lcom/google/android/gms/ads/internal/overlay/zzc$2;-><init>(Lcom/google/android/gms/ads/internal/overlay/zzc;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .registers 10

    const/4 v5, -0x1

    sget-object v0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbzp:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v1, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbzp:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x26

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "AdMediaPlayerView MediaPlayer error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/zzkx;->zzdi(Ljava/lang/String;)V

    invoke-direct {p0, v5}, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzai(I)V

    invoke-direct {p0, v5}, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzaj(I)V

    sget-object v2, Lcom/google/android/gms/internal/zzlb;->zzcvl:Landroid/os/Handler;

    new-instance v3, Lcom/google/android/gms/ads/internal/overlay/zzc$3;

    invoke-direct {v3, p0, v0, v1}, Lcom/google/android/gms/ads/internal/overlay/zzc$3;-><init>(Lcom/google/android/gms/ads/internal/overlay/zzc;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x1

    return v0
.end method

.method public onInfo(Landroid/media/MediaPlayer;II)Z
    .registers 9

    sget-object v0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbzp:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v1, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbzp:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x25

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "AdMediaPlayerView MediaPlayer info: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkx;->v(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method protected onMeasure(II)V
    .registers 10

    const/high16 v3, 0x40000000

    const/high16 v6, -0x80000000

    iget v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbzw:I

    invoke-static {v0, p1}, Lcom/google/android/gms/ads/internal/overlay/zzc;->getDefaultSize(II)I

    move-result v1

    iget v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbzx:I

    invoke-static {v0, p2}, Lcom/google/android/gms/ads/internal/overlay/zzc;->getDefaultSize(II)I

    move-result v0

    iget v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbzw:I

    if-lez v2, :cond_3e

    iget v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbzx:I

    if-lez v2, :cond_3e

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzcab:Lcom/google/android/gms/ads/internal/overlay/zzx;

    if-nez v2, :cond_3e

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    if-ne v4, v3, :cond_78

    if-ne v5, v3, :cond_78

    iget v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbzw:I

    mul-int/2addr v1, v0

    iget v3, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbzx:I

    mul-int/2addr v3, v2

    if-ge v1, v3, :cond_68

    iget v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbzw:I

    mul-int/2addr v1, v0

    iget v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbzx:I

    div-int/2addr v1, v2

    :cond_3e
    :goto_3e
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/ads/internal/overlay/zzc;->setMeasuredDimension(II)V

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzcab:Lcom/google/android/gms/ads/internal/overlay/zzx;

    if-eqz v2, :cond_4a

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzcab:Lcom/google/android/gms/ads/internal/overlay/zzx;

    invoke-virtual {v2, v1, v0}, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzi(II)V

    :cond_4a
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-ne v2, v3, :cond_67

    iget v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbzz:I

    if-lez v2, :cond_58

    iget v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbzz:I

    if-ne v2, v1, :cond_60

    :cond_58
    iget v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzcaa:I

    if-lez v2, :cond_63

    iget v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzcaa:I

    if-eq v2, v0, :cond_63

    :cond_60
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzpi()V

    :cond_63
    iput v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbzz:I

    iput v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzcaa:I

    :cond_67
    return-void

    :cond_68
    iget v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbzw:I

    mul-int/2addr v1, v0

    iget v3, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbzx:I

    mul-int/2addr v3, v2

    if-le v1, v3, :cond_b4

    iget v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbzx:I

    mul-int/2addr v0, v2

    iget v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbzw:I

    div-int/2addr v0, v1

    move v1, v2

    goto :goto_3e

    :cond_78
    if-ne v4, v3, :cond_86

    iget v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbzx:I

    mul-int/2addr v1, v2

    iget v3, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbzw:I

    div-int/2addr v1, v3

    if-ne v5, v6, :cond_b1

    if-le v1, v0, :cond_b1

    move v1, v2

    goto :goto_3e

    :cond_86
    if-ne v5, v3, :cond_94

    iget v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbzw:I

    mul-int/2addr v1, v0

    iget v3, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbzx:I

    div-int/2addr v1, v3

    if-ne v4, v6, :cond_3e

    if-le v1, v2, :cond_3e

    move v1, v2

    goto :goto_3e

    :cond_94
    iget v3, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbzw:I

    iget v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbzx:I

    if-ne v5, v6, :cond_ae

    if-le v1, v0, :cond_ae

    iget v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbzw:I

    mul-int/2addr v1, v0

    iget v3, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbzx:I

    div-int/2addr v1, v3

    :goto_a2
    if-ne v4, v6, :cond_3e

    if-le v1, v2, :cond_3e

    iget v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbzx:I

    mul-int/2addr v0, v2

    iget v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbzw:I

    div-int/2addr v0, v1

    move v1, v2

    goto :goto_3e

    :cond_ae
    move v0, v1

    move v1, v3

    goto :goto_a2

    :cond_b1
    move v0, v1

    move v1, v2

    goto :goto_3e

    :cond_b4
    move v1, v2

    goto :goto_3e
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .registers 6

    const-string v0, "AdMediaPlayerView prepared"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkx;->v(Ljava/lang/String;)V

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzai(I)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbzq:Lcom/google/android/gms/ads/internal/overlay/zzy;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/overlay/zzy;->zzqc()V

    sget-object v0, Lcom/google/android/gms/internal/zzlb;->zzcvl:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/ads/internal/overlay/zzc$1;

    invoke-direct {v1, p0}, Lcom/google/android/gms/ads/internal/overlay/zzc$1;-><init>(Lcom/google/android/gms/ads/internal/overlay/zzc;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbzw:I

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbzx:I

    iget v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzcad:I

    if-eqz v0, :cond_2d

    iget v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzcad:I

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/internal/overlay/zzc;->seekTo(I)V

    :cond_2d
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzpi()V

    iget v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbzw:I

    iget v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbzx:I

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x3e

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "AdMediaPlayerView stream dimensions: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " x "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkx;->zzdh(Ljava/lang/String;)V

    iget v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbzt:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_5e

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/overlay/zzc;->play()V

    :cond_5e
    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzpk()V

    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .registers 6

    const-string v0, "AdMediaPlayerView surface created"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkx;->v(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzph()V

    sget-object v0, Lcom/google/android/gms/internal/zzlb;->zzcvl:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/ads/internal/overlay/zzc$4;

    invoke-direct {v1, p0}, Lcom/google/android/gms/ads/internal/overlay/zzc$4;-><init>(Lcom/google/android/gms/ads/internal/overlay/zzc;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .registers 5

    const/4 v2, 0x1

    const-string v0, "AdMediaPlayerView surface destroyed"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkx;->v(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbzu:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_16

    iget v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzcad:I

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbzu:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzcad:I

    :cond_16
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzcab:Lcom/google/android/gms/ads/internal/overlay/zzx;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzcab:Lcom/google/android/gms/ads/internal/overlay/zzx;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzqs()V

    :cond_1f
    sget-object v0, Lcom/google/android/gms/internal/zzlb;->zzcvl:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/ads/internal/overlay/zzc$6;

    invoke-direct {v1, p0}, Lcom/google/android/gms/ads/internal/overlay/zzc$6;-><init>(Lcom/google/android/gms/ads/internal/overlay/zzc;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-direct {p0, v2}, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzz(Z)V

    return v2
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .registers 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v0, "AdMediaPlayerView surface changed"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkx;->v(Ljava/lang/String;)V

    iget v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbzt:I

    const/4 v3, 0x3

    if-ne v0, v3, :cond_3d

    move v0, v1

    :goto_d
    iget v3, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbzw:I

    if-ne v3, p2, :cond_3f

    iget v3, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbzx:I

    if-ne v3, p3, :cond_3f

    :goto_15
    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbzu:Landroid/media/MediaPlayer;

    if-eqz v2, :cond_29

    if-eqz v0, :cond_29

    if-eqz v1, :cond_29

    iget v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzcad:I

    if-eqz v0, :cond_26

    iget v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzcad:I

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/internal/overlay/zzc;->seekTo(I)V

    :cond_26
    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/overlay/zzc;->play()V

    :cond_29
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzcab:Lcom/google/android/gms/ads/internal/overlay/zzx;

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzcab:Lcom/google/android/gms/ads/internal/overlay/zzx;

    invoke-virtual {v0, p2, p3}, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzi(II)V

    :cond_32
    sget-object v0, Lcom/google/android/gms/internal/zzlb;->zzcvl:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/ads/internal/overlay/zzc$5;

    invoke-direct {v1, p0, p2, p3}, Lcom/google/android/gms/ads/internal/overlay/zzc$5;-><init>(Lcom/google/android/gms/ads/internal/overlay/zzc;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_3d
    move v0, v2

    goto :goto_d

    :cond_3f
    move v1, v2

    goto :goto_15
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbzq:Lcom/google/android/gms/ads/internal/overlay/zzy;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/ads/internal/overlay/zzy;->zzb(Lcom/google/android/gms/ads/internal/overlay/zzi;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzcbw:Lcom/google/android/gms/ads/internal/overlay/zzv;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzcae:Lcom/google/android/gms/ads/internal/overlay/zzh;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/ads/internal/overlay/zzv;->zza(Landroid/graphics/SurfaceTexture;Lcom/google/android/gms/ads/internal/overlay/zzh;)V

    return-void
.end method

.method public onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x39

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "AdMediaPlayerView size changed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " x "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkx;->v(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbzw:I

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbzx:I

    iget v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbzw:I

    if-eqz v0, :cond_39

    iget v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbzx:I

    if-eqz v0, :cond_39

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/overlay/zzc;->requestLayout()V

    :cond_39
    return-void
.end method

.method public pause()V
    .registers 4

    const/4 v2, 0x4

    const-string v0, "AdMediaPlayerView pause"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkx;->v(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzpj()Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbzu:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbzu:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    invoke-direct {p0, v2}, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzai(I)V

    sget-object v0, Lcom/google/android/gms/internal/zzlb;->zzcvl:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/ads/internal/overlay/zzc$8;

    invoke-direct {v1, p0}, Lcom/google/android/gms/ads/internal/overlay/zzc$8;-><init>(Lcom/google/android/gms/ads/internal/overlay/zzc;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_26
    invoke-direct {p0, v2}, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzaj(I)V

    return-void
.end method

.method public play()V
    .registers 4

    const/4 v2, 0x3

    const-string v0, "AdMediaPlayerView play"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkx;->v(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzpj()Z

    move-result v0

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbzu:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    invoke-direct {p0, v2}, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzai(I)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzcbw:Lcom/google/android/gms/ads/internal/overlay/zzv;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/overlay/zzv;->zzqd()V

    sget-object v0, Lcom/google/android/gms/internal/zzlb;->zzcvl:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/ads/internal/overlay/zzc$7;

    invoke-direct {v1, p0}, Lcom/google/android/gms/ads/internal/overlay/zzc$7;-><init>(Lcom/google/android/gms/ads/internal/overlay/zzc;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_23
    invoke-direct {p0, v2}, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzaj(I)V

    return-void
.end method

.method public seekTo(I)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x22

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "AdMediaPlayerView seek "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkx;->v(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzpj()Z

    move-result v0

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbzu:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzcad:I

    :goto_26
    return-void

    :cond_27
    iput p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzcad:I

    goto :goto_26
.end method

.method public setVideoPath(Ljava/lang/String;)V
    .registers 3

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/internal/overlay/zzc;->setVideoURI(Landroid/net/Uri;)V

    return-void
.end method

.method public setVideoURI(Landroid/net/Uri;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbzv:Landroid/net/Uri;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzcad:I

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzph()V

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/overlay/zzc;->requestLayout()V

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/overlay/zzc;->invalidate()V

    return-void
.end method

.method public stop()V
    .registers 3

    const/4 v1, 0x0

    const-string v0, "AdMediaPlayerView stop"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkx;->v(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbzu:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbzu:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbzu:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbzu:Landroid/media/MediaPlayer;

    invoke-direct {p0, v1}, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzai(I)V

    invoke-direct {p0, v1}, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzaj(I)V

    :cond_1d
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbzq:Lcom/google/android/gms/ads/internal/overlay/zzy;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/overlay/zzy;->onStop()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "@"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public zza(FF)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzcab:Lcom/google/android/gms/ads/internal/overlay/zzx;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzcab:Lcom/google/android/gms/ads/internal/overlay/zzx;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzb(FF)V

    :cond_9
    return-void
.end method

.method public zza(Lcom/google/android/gms/ads/internal/overlay/zzh;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzcae:Lcom/google/android/gms/ads/internal/overlay/zzh;

    return-void
.end method

.method public zzpg()Ljava/lang/String;
    .registers 4

    const-string v1, "MediaPlayer"

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzcac:Z

    if-eqz v0, :cond_17

    const-string v0, " spherical"

    :goto_8
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1a

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_16
    return-object v0

    :cond_17
    const-string v0, ""

    goto :goto_8

    :cond_1a
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_16
.end method

.method public zzpk()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzcbx:Lcom/google/android/gms/ads/internal/overlay/zzaa;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/overlay/zzaa;->zzrh()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/ads/internal/overlay/zzc;->zza(F)V

    return-void
.end method
