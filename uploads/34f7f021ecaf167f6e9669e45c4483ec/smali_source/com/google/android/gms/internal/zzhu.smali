.class public Lcom/google/android/gms/internal/zzhu;
.super Lcom/google/android/gms/internal/zzhv;

# interfaces
.implements Lcom/google/android/gms/internal/zzfe;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzji;
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final zzati:Landroid/view/WindowManager;

.field zzaur:Landroid/util/DisplayMetrics;

.field private final zzbnz:Lcom/google/android/gms/internal/zzmd;

.field private final zzbzb:Lcom/google/android/gms/internal/zzdj;

.field private zzbzc:F

.field zzbzd:I

.field zzbze:I

.field private zzbzf:I

.field zzbzg:I

.field zzbzh:I

.field zzbzi:I

.field zzbzj:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzmd;Landroid/content/Context;Lcom/google/android/gms/internal/zzdj;)V
    .registers 5

    const/4 v0, -0x1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzhv;-><init>(Lcom/google/android/gms/internal/zzmd;)V

    iput v0, p0, Lcom/google/android/gms/internal/zzhu;->zzbzd:I

    iput v0, p0, Lcom/google/android/gms/internal/zzhu;->zzbze:I

    iput v0, p0, Lcom/google/android/gms/internal/zzhu;->zzbzg:I

    iput v0, p0, Lcom/google/android/gms/internal/zzhu;->zzbzh:I

    iput v0, p0, Lcom/google/android/gms/internal/zzhu;->zzbzi:I

    iput v0, p0, Lcom/google/android/gms/internal/zzhu;->zzbzj:I

    iput-object p1, p0, Lcom/google/android/gms/internal/zzhu;->zzbnz:Lcom/google/android/gms/internal/zzmd;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzhu;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzhu;->zzbzb:Lcom/google/android/gms/internal/zzdj;

    const-string/jumbo v0, "window"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzhu;->zzati:Landroid/view/WindowManager;

    return-void
.end method

.method private zzox()V
    .registers 3

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzhu;->zzaur:Landroid/util/DisplayMetrics;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhu;->zzati:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzhu;->zzaur:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzhu;->zzaur:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iput v1, p0, Lcom/google/android/gms/internal/zzhu;->zzbzc:F

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzhu;->zzbzf:I

    return-void
.end method

.method private zzpc()V
    .registers 6

    const/4 v0, 0x2

    new-array v0, v0, [I

    iget-object v1, p0, Lcom/google/android/gms/internal/zzhu;->zzbnz:Lcom/google/android/gms/internal/zzmd;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/zzmd;->getLocationOnScreen([I)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzm;->zzkr()Lcom/google/android/gms/ads/internal/util/client/zza;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzhu;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    aget v3, v0, v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/ads/internal/util/client/zza;->zzc(Landroid/content/Context;I)I

    move-result v1

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzm;->zzkr()Lcom/google/android/gms/ads/internal/util/client/zza;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/zzhu;->mContext:Landroid/content/Context;

    const/4 v4, 0x1

    aget v0, v0, v4

    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/ads/internal/util/client/zza;->zzc(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/zzhu;->zze(II)V

    return-void
.end method

.method private zzpf()Lcom/google/android/gms/internal/zzht;
    .registers 3

    new-instance v0, Lcom/google/android/gms/internal/zzht$zza;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzht$zza;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzhu;->zzbzb:Lcom/google/android/gms/internal/zzdj;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzdj;->zzlj()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzht$zza;->zzv(Z)Lcom/google/android/gms/internal/zzht$zza;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzhu;->zzbzb:Lcom/google/android/gms/internal/zzdj;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzdj;->zzlk()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzht$zza;->zzu(Z)Lcom/google/android/gms/internal/zzht$zza;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzhu;->zzbzb:Lcom/google/android/gms/internal/zzdj;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzdj;->zzln()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzht$zza;->zzw(Z)Lcom/google/android/gms/internal/zzht$zza;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzhu;->zzbzb:Lcom/google/android/gms/internal/zzdj;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzdj;->zzll()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzht$zza;->zzx(Z)Lcom/google/android/gms/internal/zzht$zza;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzhu;->zzbzb:Lcom/google/android/gms/internal/zzdj;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzht$zza;->zzy(Z)Lcom/google/android/gms/internal/zzht$zza;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzht$zza;->zzow()Lcom/google/android/gms/internal/zzht;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zzmd;Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzmd;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzhu;->zzpa()V

    return-void
.end method

.method public zze(II)V
    .registers 7

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhu;->mContext:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_5e

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzgm()Lcom/google/android/gms/internal/zzlb;

    move-result-object v2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhu;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/zzlb;->zzk(Landroid/app/Activity;)[I

    move-result-object v0

    aget v0, v0, v1

    :goto_15
    iget-object v1, p0, Lcom/google/android/gms/internal/zzhu;->zzbnz:Lcom/google/android/gms/internal/zzmd;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzmd;->zzeg()Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    move-result-object v1

    if-eqz v1, :cond_27

    iget-object v1, p0, Lcom/google/android/gms/internal/zzhu;->zzbnz:Lcom/google/android/gms/internal/zzmd;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzmd;->zzeg()Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    move-result-object v1

    iget-boolean v1, v1, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->zzazr:Z

    if-nez v1, :cond_4b

    :cond_27
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzm;->zzkr()Lcom/google/android/gms/ads/internal/util/client/zza;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzhu;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzhu;->zzbnz:Lcom/google/android/gms/internal/zzmd;

    invoke-interface {v3}, Lcom/google/android/gms/internal/zzmd;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/ads/internal/util/client/zza;->zzc(Landroid/content/Context;I)I

    move-result v1

    iput v1, p0, Lcom/google/android/gms/internal/zzhu;->zzbzi:I

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzm;->zzkr()Lcom/google/android/gms/ads/internal/util/client/zza;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzhu;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzhu;->zzbnz:Lcom/google/android/gms/internal/zzmd;

    invoke-interface {v3}, Lcom/google/android/gms/internal/zzmd;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/ads/internal/util/client/zza;->zzc(Landroid/content/Context;I)I

    move-result v1

    iput v1, p0, Lcom/google/android/gms/internal/zzhu;->zzbzj:I

    :cond_4b
    sub-int v0, p2, v0

    iget v1, p0, Lcom/google/android/gms/internal/zzhu;->zzbzi:I

    iget v2, p0, Lcom/google/android/gms/internal/zzhu;->zzbzj:I

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/google/android/gms/internal/zzhu;->zzc(IIII)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhu;->zzbnz:Lcom/google/android/gms/internal/zzmd;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzmd;->zzxc()Lcom/google/android/gms/internal/zzme;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/zzme;->zzd(II)V

    return-void

    :cond_5e
    move v0, v1

    goto :goto_15
.end method

.method zzoy()V
    .registers 5

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzm;->zzkr()Lcom/google/android/gms/ads/internal/util/client/zza;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzhu;->zzaur:Landroid/util/DisplayMetrics;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzhu;->zzaur:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/ads/internal/util/client/zza;->zzb(Landroid/util/DisplayMetrics;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzhu;->zzbzd:I

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzm;->zzkr()Lcom/google/android/gms/ads/internal/util/client/zza;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzhu;->zzaur:Landroid/util/DisplayMetrics;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzhu;->zzaur:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/ads/internal/util/client/zza;->zzb(Landroid/util/DisplayMetrics;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzhu;->zzbze:I

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhu;->zzbnz:Lcom/google/android/gms/internal/zzmd;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzmd;->zzwy()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_2e

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-nez v1, :cond_37

    :cond_2e
    iget v0, p0, Lcom/google/android/gms/internal/zzhu;->zzbzd:I

    iput v0, p0, Lcom/google/android/gms/internal/zzhu;->zzbzg:I

    iget v0, p0, Lcom/google/android/gms/internal/zzhu;->zzbze:I

    iput v0, p0, Lcom/google/android/gms/internal/zzhu;->zzbzh:I

    :goto_36
    return-void

    :cond_37
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzgm()Lcom/google/android/gms/internal/zzlb;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzlb;->zzh(Landroid/app/Activity;)[I

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzm;->zzkr()Lcom/google/android/gms/ads/internal/util/client/zza;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzhu;->zzaur:Landroid/util/DisplayMetrics;

    const/4 v3, 0x0

    aget v3, v0, v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/ads/internal/util/client/zza;->zzb(Landroid/util/DisplayMetrics;I)I

    move-result v1

    iput v1, p0, Lcom/google/android/gms/internal/zzhu;->zzbzg:I

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzm;->zzkr()Lcom/google/android/gms/ads/internal/util/client/zza;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzhu;->zzaur:Landroid/util/DisplayMetrics;

    const/4 v3, 0x1

    aget v0, v0, v3

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/ads/internal/util/client/zza;->zzb(Landroid/util/DisplayMetrics;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzhu;->zzbzh:I

    goto :goto_36
.end method

.method zzoz()V
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhu;->zzbnz:Lcom/google/android/gms/internal/zzmd;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzmd;->zzeg()Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    move-result-object v0

    iget-boolean v0, v0, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->zzazr:Z

    if-eqz v0, :cond_14

    iget v0, p0, Lcom/google/android/gms/internal/zzhu;->zzbzd:I

    iput v0, p0, Lcom/google/android/gms/internal/zzhu;->zzbzi:I

    iget v0, p0, Lcom/google/android/gms/internal/zzhu;->zzbze:I

    iput v0, p0, Lcom/google/android/gms/internal/zzhu;->zzbzj:I

    :goto_13
    return-void

    :cond_14
    iget-object v0, p0, Lcom/google/android/gms/internal/zzhu;->zzbnz:Lcom/google/android/gms/internal/zzmd;

    invoke-interface {v0, v1, v1}, Lcom/google/android/gms/internal/zzmd;->measure(II)V

    goto :goto_13
.end method

.method public zzpa()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzhu;->zzox()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzhu;->zzoy()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzhu;->zzoz()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzhu;->zzpd()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzhu;->zzpe()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzhu;->zzpc()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzhu;->zzpb()V

    return-void
.end method

.method zzpb()V
    .registers 2

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkx;->zzbi(I)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string v0, "Dispatching Ready Event."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkx;->zzdh(Ljava/lang/String;)V

    :cond_c
    iget-object v0, p0, Lcom/google/android/gms/internal/zzhu;->zzbnz:Lcom/google/android/gms/internal/zzmd;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzmd;->zzxf()Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->zzda:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzhu;->zzcc(Ljava/lang/String;)V

    return-void
.end method

.method zzpd()V
    .registers 8

    iget v1, p0, Lcom/google/android/gms/internal/zzhu;->zzbzd:I

    iget v2, p0, Lcom/google/android/gms/internal/zzhu;->zzbze:I

    iget v3, p0, Lcom/google/android/gms/internal/zzhu;->zzbzg:I

    iget v4, p0, Lcom/google/android/gms/internal/zzhu;->zzbzh:I

    iget v5, p0, Lcom/google/android/gms/internal/zzhu;->zzbzc:F

    iget v6, p0, Lcom/google/android/gms/internal/zzhu;->zzbzf:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/zzhu;->zza(IIIIFI)V

    return-void
.end method

.method zzpe()V
    .registers 4

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzhu;->zzpf()Lcom/google/android/gms/internal/zzht;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzhu;->zzbnz:Lcom/google/android/gms/internal/zzmd;

    const-string v2, "onDeviceFeaturesReceived"

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzht;->toJson()Lorg/json/JSONObject;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/google/android/gms/internal/zzmd;->zzb(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method
