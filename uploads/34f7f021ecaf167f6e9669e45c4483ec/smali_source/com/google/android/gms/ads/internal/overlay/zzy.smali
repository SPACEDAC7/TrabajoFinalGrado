.class public Lcom/google/android/gms/ads/internal/overlay/zzy;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzji;
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final zzapc:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

.field private final zzcbz:Lcom/google/android/gms/internal/zzdz;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private zzccd:Z

.field private final zzcec:Ljava/lang/String;

.field private final zzced:Lcom/google/android/gms/internal/zzdx;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final zzcee:Lcom/google/android/gms/internal/zzlh;

.field private final zzcef:[J

.field private final zzceg:[Ljava/lang/String;

.field private zzceh:Z

.field private zzcei:Z

.field private zzcej:Z

.field private zzcek:Z

.field private zzcel:Lcom/google/android/gms/ads/internal/overlay/zzi;

.field private zzcem:Z

.field private zzcen:Z

.field private zzceo:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Ljava/lang/String;Lcom/google/android/gms/internal/zzdz;Lcom/google/android/gms/internal/zzdx;)V
    .registers 12
    .param p4    # Lcom/google/android/gms/internal/zzdz;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/google/android/gms/internal/zzdx;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/zzlh$zzb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzlh$zzb;-><init>()V

    const-string v1, "min_1"

    const-wide/16 v2, 0x1

    const-wide/high16 v4, 0x3ff0000000000000L

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/zzlh$zzb;->zza(Ljava/lang/String;DD)Lcom/google/android/gms/internal/zzlh$zzb;

    move-result-object v0

    const-string v1, "1_5"

    const-wide/high16 v2, 0x3ff0000000000000L

    const-wide/high16 v4, 0x4014000000000000L

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/zzlh$zzb;->zza(Ljava/lang/String;DD)Lcom/google/android/gms/internal/zzlh$zzb;

    move-result-object v0

    const-string v1, "5_10"

    const-wide/high16 v2, 0x4014000000000000L

    const-wide/high16 v4, 0x4024000000000000L

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/zzlh$zzb;->zza(Ljava/lang/String;DD)Lcom/google/android/gms/internal/zzlh$zzb;

    move-result-object v0

    const-string v1, "10_20"

    const-wide/high16 v2, 0x4024000000000000L

    const-wide/high16 v4, 0x4034000000000000L

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/zzlh$zzb;->zza(Ljava/lang/String;DD)Lcom/google/android/gms/internal/zzlh$zzb;

    move-result-object v0

    const-string v1, "20_30"

    const-wide/high16 v2, 0x4034000000000000L

    const-wide/high16 v4, 0x403e000000000000L

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/zzlh$zzb;->zza(Ljava/lang/String;DD)Lcom/google/android/gms/internal/zzlh$zzb;

    move-result-object v0

    const-string v1, "30_max"

    const-wide/high16 v2, 0x403e000000000000L

    const-wide v4, 0x7fefffffffffffffL

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/zzlh$zzb;->zza(Ljava/lang/String;DD)Lcom/google/android/gms/internal/zzlh$zzb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzlh$zzb;->zzwi()Lcom/google/android/gms/internal/zzlh;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzy;->zzcee:Lcom/google/android/gms/internal/zzlh;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzy;->zzceh:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzy;->zzcei:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzy;->zzcej:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzy;->zzcek:Z

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzy;->zzceo:J

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzy;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/overlay/zzy;->zzapc:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/overlay/zzy;->zzcec:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/ads/internal/overlay/zzy;->zzcbz:Lcom/google/android/gms/internal/zzdz;

    iput-object p5, p0, Lcom/google/android/gms/ads/internal/overlay/zzy;->zzced:Lcom/google/android/gms/internal/zzdx;

    sget-object v0, Lcom/google/android/gms/internal/zzdr;->zzbdv:Lcom/google/android/gms/internal/zzdn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdn;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_7c

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzy;->zzceg:[Ljava/lang/String;

    const/4 v0, 0x0

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzy;->zzcef:[J

    :cond_7b
    return-void

    :cond_7c
    const-string v1, ","

    invoke-static {v0, v1}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v0, v2

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzy;->zzceg:[Ljava/lang/String;

    array-length v0, v2

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzy;->zzcef:[J

    const/4 v0, 0x0

    :goto_8d
    array-length v1, v2

    if-ge v0, v1, :cond_7b

    :try_start_90
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzy;->zzcef:[J

    aget-object v3, v2, v0

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    aput-wide v4, v1, v0
    :try_end_9a
    .catch Ljava/lang/NumberFormatException; {:try_start_90 .. :try_end_9a} :catch_9d

    :goto_9a
    add-int/lit8 v0, v0, 0x1

    goto :goto_8d

    :catch_9d
    move-exception v1

    const-string v3, "Unable to parse frame hash target time number."

    invoke-static {v3, v1}, Lcom/google/android/gms/internal/zzkx;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzy;->zzcef:[J

    const-wide/16 v4, -0x1

    aput-wide v4, v1, v0

    goto :goto_9a
.end method

.method private zzc(Lcom/google/android/gms/ads/internal/overlay/zzi;)V
    .registers 10

    sget-object v0, Lcom/google/android/gms/internal/zzdr;->zzbdw:Lcom/google/android/gms/internal/zzdn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdn;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/overlay/zzi;->getCurrentPosition()I

    move-result v0

    int-to-long v4, v0

    const/4 v0, 0x0

    :goto_12
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzy;->zzceg:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_36

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzy;->zzceg:[Ljava/lang/String;

    aget-object v1, v1, v0

    if-eqz v1, :cond_20

    :cond_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    :cond_20
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzy;->zzcef:[J

    aget-wide v6, v1, v0

    sub-long v6, v4, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    cmp-long v1, v2, v6

    if-lez v1, :cond_1d

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzy;->zzceg:[Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/ads/internal/overlay/zzy;->zza(Landroid/view/TextureView;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    :cond_36
    return-void
.end method

.method private zzrd()V
    .registers 7

    const/4 v5, 0x1

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzy;->zzcej:Z

    if-eqz v0, :cond_1a

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzy;->zzcek:Z

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzy;->zzcbz:Lcom/google/android/gms/internal/zzdz;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzy;->zzced:Lcom/google/android/gms/internal/zzdx;

    new-array v2, v5, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "vff2"

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/zzdv;->zza(Lcom/google/android/gms/internal/zzdz;Lcom/google/android/gms/internal/zzdx;[Ljava/lang/String;)Z

    iput-boolean v5, p0, Lcom/google/android/gms/ads/internal/overlay/zzy;->zzcek:Z

    :cond_1a
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzgs()Lcom/google/android/gms/common/util/zze;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/zze;->nanoTime()J

    move-result-wide v0

    iget-boolean v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzy;->zzccd:Z

    if-eqz v2, :cond_46

    iget-boolean v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzy;->zzcen:Z

    if-eqz v2, :cond_46

    iget-wide v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzy;->zzceo:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_46

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x1

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v2

    long-to-double v2, v2

    iget-wide v4, p0, Lcom/google/android/gms/ads/internal/overlay/zzy;->zzceo:J

    sub-long v4, v0, v4

    long-to-double v4, v4

    div-double/2addr v2, v4

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/overlay/zzy;->zzcee:Lcom/google/android/gms/internal/zzlh;

    invoke-virtual {v4, v2, v3}, Lcom/google/android/gms/internal/zzlh;->zza(D)V

    :cond_46
    iget-boolean v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzy;->zzccd:Z

    iput-boolean v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzy;->zzcen:Z

    iput-wide v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzy;->zzceo:J

    return-void
.end method


# virtual methods
.method public onStop()V
    .registers 10

    const/4 v5, 0x1

    sget-object v0, Lcom/google/android/gms/internal/zzdr;->zzbdu:Lcom/google/android/gms/internal/zzdn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdn;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_ed

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzy;->zzcem:Z

    if-nez v0, :cond_ed

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v0, "type"

    const-string v1, "native-player-metrics"

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "request"

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzy;->zzcec:Ljava/lang/String;

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "player"

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzy;->zzcel:Lcom/google/android/gms/ads/internal/overlay/zzi;

    invoke-virtual {v1}, Lcom/google/android/gms/ads/internal/overlay/zzi;->zzpg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzy;->zzcee:Lcom/google/android/gms/internal/zzlh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzlh;->getBuckets()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_93

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzlh$zza;

    const-string v1, "fps_c_"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-object v1, v0, Lcom/google/android/gms/internal/zzlh$zza;->name:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_87

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_5e
    iget v3, v0, Lcom/google/android/gms/internal/zzlh$zza;->count:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "fps_p_"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-object v1, v0, Lcom/google/android/gms/internal/zzlh$zza;->name:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_8d

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_7d
    iget-wide v6, v0, Lcom/google/android/gms/internal/zzlh$zza;->zzcwo:D

    invoke-static {v6, v7}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3c

    :cond_87
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_5e

    :cond_8d
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_7d

    :cond_93
    const/4 v0, 0x0

    :goto_94
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzy;->zzcef:[J

    array-length v1, v1

    if-ge v0, v1, :cond_dc

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzy;->zzceg:[Ljava/lang/String;

    aget-object v1, v1, v0

    if-nez v1, :cond_a2

    :goto_9f
    add-int/lit8 v0, v0, 0x1

    goto :goto_94

    :cond_a2
    const-string v2, "fh_"

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/overlay/zzy;->zzcef:[J

    aget-wide v6, v3, v0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x0

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9f

    :cond_dc
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzgm()Lcom/google/android/gms/internal/zzlb;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzy;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzy;->zzapc:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->zzda:Ljava/lang/String;

    const-string v3, "gmob-apps"

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/zzlb;->zza(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Z)V

    iput-boolean v5, p0, Lcom/google/android/gms/ads/internal/overlay/zzy;->zzcem:Z

    :cond_ed
    return-void
.end method

.method zza(Landroid/view/TextureView;)Ljava/lang/String;
    .registers 12
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    const/16 v0, 0x8

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Landroid/view/TextureView;->getBitmap(II)Landroid/graphics/Bitmap;

    move-result-object v9

    const-wide/16 v4, 0x0

    const-wide/16 v2, 0x3f

    const/4 v0, 0x0

    move v8, v0

    :goto_e
    const/16 v0, 0x8

    if-ge v8, v0, :cond_47

    const/4 v0, 0x0

    move-wide v6, v4

    move-wide v4, v2

    move v2, v0

    :goto_16
    const/16 v0, 0x8

    if-ge v2, v0, :cond_41

    invoke-virtual {v9, v2, v8}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v0

    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v3

    add-int/2addr v1, v3

    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v0

    add-int/2addr v0, v1

    const/16 v1, 0x80

    if-le v0, v1, :cond_3e

    const-wide/16 v0, 0x1

    :goto_32
    long-to-int v3, v4

    shl-long/2addr v0, v3

    or-long/2addr v6, v0

    add-int/lit8 v0, v2, 0x1

    const-wide/16 v2, 0x1

    sub-long v2, v4, v2

    move-wide v4, v2

    move v2, v0

    goto :goto_16

    :cond_3e
    const-wide/16 v0, 0x0

    goto :goto_32

    :cond_41
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    move-wide v2, v4

    move-wide v4, v6

    goto :goto_e

    :cond_47
    const-string v0, "%016X"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public zza(Lcom/google/android/gms/ads/internal/overlay/zzi;)V
    .registers 8

    const/4 v5, 0x1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzy;->zzcbz:Lcom/google/android/gms/internal/zzdz;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzy;->zzced:Lcom/google/android/gms/internal/zzdx;

    new-array v2, v5, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "vpc2"

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/zzdv;->zza(Lcom/google/android/gms/internal/zzdz;Lcom/google/android/gms/internal/zzdx;[Ljava/lang/String;)Z

    iput-boolean v5, p0, Lcom/google/android/gms/ads/internal/overlay/zzy;->zzceh:Z

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzy;->zzcbz:Lcom/google/android/gms/internal/zzdz;

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzy;->zzcbz:Lcom/google/android/gms/internal/zzdz;

    const-string/jumbo v1, "vpn"

    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/overlay/zzi;->zzpg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzdz;->zzg(Ljava/lang/String;Ljava/lang/String;)V

    :cond_22
    iput-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzy;->zzcel:Lcom/google/android/gms/ads/internal/overlay/zzi;

    return-void
.end method

.method public zzb(Lcom/google/android/gms/ads/internal/overlay/zzi;)V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/overlay/zzy;->zzrd()V

    invoke-direct {p0, p1}, Lcom/google/android/gms/ads/internal/overlay/zzy;->zzc(Lcom/google/android/gms/ads/internal/overlay/zzi;)V

    return-void
.end method

.method public zzqc()V
    .registers 7

    const/4 v5, 0x1

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzy;->zzceh:Z

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzy;->zzcei:Z

    if-eqz v0, :cond_a

    :cond_9
    :goto_9
    return-void

    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzy;->zzcbz:Lcom/google/android/gms/internal/zzdz;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzy;->zzced:Lcom/google/android/gms/internal/zzdx;

    new-array v2, v5, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "vfr2"

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/zzdv;->zza(Lcom/google/android/gms/internal/zzdz;Lcom/google/android/gms/internal/zzdx;[Ljava/lang/String;)Z

    iput-boolean v5, p0, Lcom/google/android/gms/ads/internal/overlay/zzy;->zzcei:Z

    goto :goto_9
.end method

.method public zzre()V
    .registers 7

    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/google/android/gms/ads/internal/overlay/zzy;->zzccd:Z

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzy;->zzcei:Z

    if-eqz v0, :cond_1c

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzy;->zzcej:Z

    if-nez v0, :cond_1c

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzy;->zzcbz:Lcom/google/android/gms/internal/zzdz;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzy;->zzced:Lcom/google/android/gms/internal/zzdx;

    new-array v2, v5, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "vfp2"

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/zzdv;->zza(Lcom/google/android/gms/internal/zzdz;Lcom/google/android/gms/internal/zzdx;[Ljava/lang/String;)Z

    iput-boolean v5, p0, Lcom/google/android/gms/ads/internal/overlay/zzy;->zzcej:Z

    :cond_1c
    return-void
.end method

.method public zzrf()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzy;->zzccd:Z

    return-void
.end method
