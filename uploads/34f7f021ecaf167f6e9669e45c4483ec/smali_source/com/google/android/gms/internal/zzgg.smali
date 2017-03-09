.class public Lcom/google/android/gms/internal/zzgg;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzge;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzji;
.end annotation


# instance fields
.field private final zzbnz:Lcom/google/android/gms/internal/zzmd;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/zzav;Lcom/google/android/gms/ads/internal/zzd;)V
    .registers 15
    .param p3    # Lcom/google/android/gms/internal/zzav;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v7, 0x0

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzgn()Lcom/google/android/gms/internal/zzmf;

    move-result-object v0

    new-instance v2, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    invoke-direct {v2}, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;-><init>()V

    move-object v1, p1

    move v4, v3

    move-object v5, p3

    move-object v6, p2

    move-object v8, v7

    move-object v9, p4

    invoke-virtual/range {v0 .. v9}, Lcom/google/android/gms/internal/zzmf;->zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;ZZLcom/google/android/gms/internal/zzav;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/zzdz;Lcom/google/android/gms/ads/internal/zzs;Lcom/google/android/gms/ads/internal/zzd;)Lcom/google/android/gms/internal/zzmd;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzgg;->zzbnz:Lcom/google/android/gms/internal/zzmd;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgg;->zzbnz:Lcom/google/android/gms/internal/zzmd;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzmd;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWillNotDraw(Z)V

    return-void
.end method

.method private runOnUiThread(Ljava/lang/Runnable;)V
    .registers 3

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzm;->zzkr()Lcom/google/android/gms/ads/internal/util/client/zza;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/util/client/zza;->zzwq()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :goto_d
    return-void

    :cond_e
    sget-object v0, Lcom/google/android/gms/internal/zzlb;->zzcvl:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_d
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzgg;)Lcom/google/android/gms/internal/zzmd;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgg;->zzbnz:Lcom/google/android/gms/internal/zzmd;

    return-object v0
.end method


# virtual methods
.method public destroy()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgg;->zzbnz:Lcom/google/android/gms/internal/zzmd;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzmd;->destroy()V

    return-void
.end method

.method public zza(Lcom/google/android/gms/ads/internal/client/zza;Lcom/google/android/gms/ads/internal/overlay/zzg;Lcom/google/android/gms/internal/zzfa;Lcom/google/android/gms/ads/internal/overlay/zzp;ZLcom/google/android/gms/internal/zzfg;Lcom/google/android/gms/internal/zzfi;Lcom/google/android/gms/ads/internal/zze;Lcom/google/android/gms/internal/zzhw;)V
    .registers 21

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgg;->zzbnz:Lcom/google/android/gms/internal/zzmd;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzmd;->zzxc()Lcom/google/android/gms/internal/zzme;

    move-result-object v0

    new-instance v8, Lcom/google/android/gms/ads/internal/zze;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzgg;->zzbnz:Lcom/google/android/gms/internal/zzmd;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzmd;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v8, v1, v2}, Lcom/google/android/gms/ads/internal/zze;-><init>(Landroid/content/Context;Z)V

    const/4 v10, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v9, p9

    invoke-virtual/range {v0 .. v10}, Lcom/google/android/gms/internal/zzme;->zza(Lcom/google/android/gms/ads/internal/client/zza;Lcom/google/android/gms/ads/internal/overlay/zzg;Lcom/google/android/gms/internal/zzfa;Lcom/google/android/gms/ads/internal/overlay/zzp;ZLcom/google/android/gms/internal/zzfg;Lcom/google/android/gms/internal/zzfi;Lcom/google/android/gms/ads/internal/zze;Lcom/google/android/gms/internal/zzhw;Lcom/google/android/gms/ads/internal/safebrowsing/zzc;)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzge$zza;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgg;->zzbnz:Lcom/google/android/gms/internal/zzmd;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzmd;->zzxc()Lcom/google/android/gms/internal/zzme;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzgg$6;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/zzgg$6;-><init>(Lcom/google/android/gms/internal/zzgg;Lcom/google/android/gms/internal/zzge$zza;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzme;->zza(Lcom/google/android/gms/internal/zzme$zza;)V

    return-void
.end method

.method public zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzfe;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgg;->zzbnz:Lcom/google/android/gms/internal/zzmd;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzmd;->zzxc()Lcom/google/android/gms/internal/zzme;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/zzme;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzfe;)V

    return-void
.end method

.method public zza(Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 4

    new-instance v0, Lcom/google/android/gms/internal/zzgg$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/zzgg$1;-><init>(Lcom/google/android/gms/internal/zzgg;Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzgg;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public zzb(Ljava/lang/String;Lcom/google/android/gms/internal/zzfe;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgg;->zzbnz:Lcom/google/android/gms/internal/zzmd;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzmd;->zzxc()Lcom/google/android/gms/internal/zzme;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/zzme;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/zzfe;)V

    return-void
.end method

.method public zzb(Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgg;->zzbnz:Lcom/google/android/gms/internal/zzmd;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/zzmd;->zzb(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public zzbo(Ljava/lang/String;)V
    .registers 5

    const-string v0, "<!DOCTYPE html><html><head><script src=\"%s\"></script></head><body></body></html>"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzgg$3;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/zzgg$3;-><init>(Lcom/google/android/gms/internal/zzgg;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/zzgg;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public zzbp(Ljava/lang/String;)V
    .registers 3

    new-instance v0, Lcom/google/android/gms/internal/zzgg$5;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/zzgg$5;-><init>(Lcom/google/android/gms/internal/zzgg;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzgg;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public zzbq(Ljava/lang/String;)V
    .registers 3

    new-instance v0, Lcom/google/android/gms/internal/zzgg$4;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/zzgg$4;-><init>(Lcom/google/android/gms/internal/zzgg;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzgg;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public zzi(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    new-instance v0, Lcom/google/android/gms/internal/zzgg$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/zzgg$2;-><init>(Lcom/google/android/gms/internal/zzgg;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzgg;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public zznw()Lcom/google/android/gms/internal/zzgj;
    .registers 2

    new-instance v0, Lcom/google/android/gms/internal/zzgk;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzgk;-><init>(Lcom/google/android/gms/internal/zzgi;)V

    return-object v0
.end method
