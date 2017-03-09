.class public Lcom/google/android/gms/ads/internal/overlay/zzaa;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation

.annotation runtime Lcom/google/android/gms/internal/zzji;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/ads/internal/overlay/zzaa$zza;
    }
.end annotation


# instance fields
.field private final mAudioManager:Landroid/media/AudioManager;

.field private zzccd:Z

.field private final zzceq:Lcom/google/android/gms/ads/internal/overlay/zzaa$zza;

.field private zzcer:Z

.field private zzces:Z

.field private zzcet:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/overlay/zzaa$zza;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000

    iput v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzaa;->zzcet:F

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzaa;->mAudioManager:Landroid/media/AudioManager;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/overlay/zzaa;->zzceq:Lcom/google/android/gms/ads/internal/overlay/zzaa$zza;

    return-void
.end method

.method private zzri()V
    .registers 3

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzaa;->zzccd:Z

    if-eqz v0, :cond_1f

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzaa;->zzces:Z

    if-nez v0, :cond_1f

    iget v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzaa;->zzcet:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1f

    const/4 v0, 0x1

    :goto_10
    if-eqz v0, :cond_21

    iget-boolean v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzaa;->zzcer:Z

    if-nez v1, :cond_21

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/overlay/zzaa;->zzrj()V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzaa;->zzceq:Lcom/google/android/gms/ads/internal/overlay/zzaa$zza;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/overlay/zzaa$zza;->zzpk()V

    :cond_1e
    :goto_1e
    return-void

    :cond_1f
    const/4 v0, 0x0

    goto :goto_10

    :cond_21
    if-nez v0, :cond_1e

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzaa;->zzcer:Z

    if-eqz v0, :cond_1e

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/overlay/zzaa;->zzrk()V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzaa;->zzceq:Lcom/google/android/gms/ads/internal/overlay/zzaa$zza;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/overlay/zzaa$zza;->zzpk()V

    goto :goto_1e
.end method

.method private zzrj()V
    .registers 5

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzaa;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v1, :cond_9

    iget-boolean v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzaa;->zzcer:Z

    if-eqz v1, :cond_a

    :cond_9
    :goto_9
    return-void

    :cond_a
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzaa;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x3

    const/4 v3, 0x2

    invoke-virtual {v1, p0, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v1

    if-ne v1, v0, :cond_17

    :goto_14
    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzaa;->zzcer:Z

    goto :goto_9

    :cond_17
    const/4 v0, 0x0

    goto :goto_14
.end method

.method private zzrk()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzaa;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzaa;->zzcer:Z

    if-nez v0, :cond_9

    :cond_8
    :goto_8
    return-void

    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzaa;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p0}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    move-result v0

    if-nez v0, :cond_15

    const/4 v0, 0x1

    :goto_12
    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzaa;->zzcer:Z

    goto :goto_8

    :cond_15
    const/4 v0, 0x0

    goto :goto_12
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .registers 3

    if-lez p1, :cond_b

    const/4 v0, 0x1

    :goto_3
    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzaa;->zzcer:Z

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzaa;->zzceq:Lcom/google/android/gms/ads/internal/overlay/zzaa$zza;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/overlay/zzaa$zza;->zzpk()V

    return-void

    :cond_b
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public setMuted(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzaa;->zzces:Z

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/overlay/zzaa;->zzri()V

    return-void
.end method

.method public zzb(F)V
    .registers 2

    iput p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzaa;->zzcet:F

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/overlay/zzaa;->zzri()V

    return-void
.end method

.method public zzre()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzaa;->zzccd:Z

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/overlay/zzaa;->zzri()V

    return-void
.end method

.method public zzrf()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzaa;->zzccd:Z

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/overlay/zzaa;->zzri()V

    return-void
.end method

.method public zzrh()F
    .registers 4

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzaa;->zzces:Z

    if-eqz v0, :cond_b

    move v0, v1

    :goto_6
    iget-boolean v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzaa;->zzcer:Z

    if-eqz v2, :cond_e

    :goto_a
    return v0

    :cond_b
    iget v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzaa;->zzcet:F

    goto :goto_6

    :cond_e
    move v0, v1

    goto :goto_a
.end method
