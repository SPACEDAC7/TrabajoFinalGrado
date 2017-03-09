.class Lcom/google/android/gms/ads/internal/zzc$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/ads/internal/zzc;->zza(Lcom/google/android/gms/internal/zzko$zza;Lcom/google/android/gms/internal/zzdz;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzamj:Lcom/google/android/gms/ads/internal/zzc;

.field final synthetic zzamk:Lcom/google/android/gms/internal/zzko$zza;

.field final synthetic zzaml:Lcom/google/android/gms/ads/internal/safebrowsing/zzc;

.field final synthetic zzamm:Lcom/google/android/gms/internal/zzdz;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/zzc;Lcom/google/android/gms/internal/zzko$zza;Lcom/google/android/gms/ads/internal/safebrowsing/zzc;Lcom/google/android/gms/internal/zzdz;)V
    .registers 5

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzc$3;->zzamj:Lcom/google/android/gms/ads/internal/zzc;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/zzc$3;->zzamk:Lcom/google/android/gms/internal/zzko$zza;

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/zzc$3;->zzaml:Lcom/google/android/gms/ads/internal/safebrowsing/zzc;

    iput-object p4, p0, Lcom/google/android/gms/ads/internal/zzc$3;->zzamm:Lcom/google/android/gms/internal/zzdz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 11

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzc$3;->zzamk:Lcom/google/android/gms/internal/zzko$zza;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzko$zza;->zzcsu:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-boolean v0, v0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzclk:Z

    if-eqz v0, :cond_55

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzc$3;->zzamj:Lcom/google/android/gms/ads/internal/zzc;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzc;->zzaly:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzv;->zzasc:Lcom/google/android/gms/internal/zzed;

    if-eqz v0, :cond_55

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzc$3;->zzamk:Lcom/google/android/gms/internal/zzko$zza;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzko$zza;->zzcsu:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzcbo:Ljava/lang/String;

    if-eqz v1, :cond_29

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzgm()Lcom/google/android/gms/internal/zzlb;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzc$3;->zzamk:Lcom/google/android/gms/internal/zzko$zza;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzko$zza;->zzcsu:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzcbo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzlb;->zzcz(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_29
    new-instance v1, Lcom/google/android/gms/internal/zzea;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzc$3;->zzamj:Lcom/google/android/gms/ads/internal/zzc;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/zzc$3;->zzamk:Lcom/google/android/gms/internal/zzko$zza;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzko$zza;->zzcsu:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->body:Ljava/lang/String;

    invoke-direct {v1, v2, v0, v3}, Lcom/google/android/gms/internal/zzea;-><init>(Lcom/google/android/gms/ads/internal/zzh;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzc$3;->zzamj:Lcom/google/android/gms/ads/internal/zzc;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzc;->zzaly:Lcom/google/android/gms/ads/internal/zzv;

    iput v5, v0, Lcom/google/android/gms/ads/internal/zzv;->zzasi:I

    :try_start_3c
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzc$3;->zzamj:Lcom/google/android/gms/ads/internal/zzc;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/google/android/gms/ads/internal/zzc;->zzalw:Z

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzc$3;->zzamj:Lcom/google/android/gms/ads/internal/zzc;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzc;->zzaly:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzv;->zzasc:Lcom/google/android/gms/internal/zzed;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzed;->zza(Lcom/google/android/gms/internal/zzec;)V
    :try_end_4a
    .catch Landroid/os/RemoteException; {:try_start_3c .. :try_end_4a} :catch_4b

    :goto_4a
    return-void

    :catch_4b
    move-exception v0

    const-string v1, "Could not call the onCustomRenderedAdLoadedListener."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzkx;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzc$3;->zzamj:Lcom/google/android/gms/ads/internal/zzc;

    iput-boolean v5, v0, Lcom/google/android/gms/ads/internal/zzc;->zzalw:Z

    :cond_55
    new-instance v0, Lcom/google/android/gms/ads/internal/zze;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzc$3;->zzamj:Lcom/google/android/gms/ads/internal/zzc;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzc;->zzaly:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzv;->zzahs:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzc$3;->zzamk:Lcom/google/android/gms/internal/zzko$zza;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/ads/internal/zze;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzko$zza;)V

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzc$3;->zzamj:Lcom/google/android/gms/ads/internal/zzc;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzc$3;->zzamk:Lcom/google/android/gms/internal/zzko$zza;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/zzc$3;->zzaml:Lcom/google/android/gms/ads/internal/safebrowsing/zzc;

    invoke-virtual {v1, v2, v0, v3}, Lcom/google/android/gms/ads/internal/zzc;->zza(Lcom/google/android/gms/internal/zzko$zza;Lcom/google/android/gms/ads/internal/zze;Lcom/google/android/gms/ads/internal/safebrowsing/zzc;)Lcom/google/android/gms/internal/zzmd;

    move-result-object v5

    new-instance v1, Lcom/google/android/gms/ads/internal/zzc$3$1;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/ads/internal/zzc$3$1;-><init>(Lcom/google/android/gms/ads/internal/zzc$3;Lcom/google/android/gms/ads/internal/zze;)V

    invoke-interface {v5, v1}, Lcom/google/android/gms/internal/zzmd;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v1, Lcom/google/android/gms/ads/internal/zzc$3$2;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/ads/internal/zzc$3$2;-><init>(Lcom/google/android/gms/ads/internal/zzc$3;Lcom/google/android/gms/ads/internal/zze;)V

    invoke-interface {v5, v1}, Lcom/google/android/gms/internal/zzmd;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzc$3;->zzamj:Lcom/google/android/gms/ads/internal/zzc;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzc;->zzaly:Lcom/google/android/gms/ads/internal/zzv;

    iput v4, v0, Lcom/google/android/gms/ads/internal/zzv;->zzasi:I

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzc$3;->zzamj:Lcom/google/android/gms/ads/internal/zzc;

    iget-object v9, v0, Lcom/google/android/gms/ads/internal/zzc;->zzaly:Lcom/google/android/gms/ads/internal/zzv;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzgl()Lcom/google/android/gms/internal/zziu;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzc$3;->zzamj:Lcom/google/android/gms/ads/internal/zzc;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzc;->zzaly:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzv;->zzahs:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzc$3;->zzamj:Lcom/google/android/gms/ads/internal/zzc;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/zzc$3;->zzamk:Lcom/google/android/gms/internal/zzko$zza;

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/zzc$3;->zzamj:Lcom/google/android/gms/ads/internal/zzc;

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/zzc;->zzaly:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/zzv;->zzarh:Lcom/google/android/gms/internal/zzav;

    iget-object v6, p0, Lcom/google/android/gms/ads/internal/zzc$3;->zzamj:Lcom/google/android/gms/ads/internal/zzc;

    iget-object v6, v6, Lcom/google/android/gms/ads/internal/zzc;->zzamf:Lcom/google/android/gms/internal/zzgz;

    iget-object v7, p0, Lcom/google/android/gms/ads/internal/zzc$3;->zzamj:Lcom/google/android/gms/ads/internal/zzc;

    iget-object v8, p0, Lcom/google/android/gms/ads/internal/zzc$3;->zzamm:Lcom/google/android/gms/internal/zzdz;

    invoke-virtual/range {v0 .. v8}, Lcom/google/android/gms/internal/zziu;->zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/zza;Lcom/google/android/gms/internal/zzko$zza;Lcom/google/android/gms/internal/zzav;Lcom/google/android/gms/internal/zzmd;Lcom/google/android/gms/internal/zzgz;Lcom/google/android/gms/internal/zziu$zza;Lcom/google/android/gms/internal/zzdz;)Lcom/google/android/gms/internal/zzld;

    move-result-object v0

    iput-object v0, v9, Lcom/google/android/gms/ads/internal/zzv;->zzarl:Lcom/google/android/gms/internal/zzld;

    goto :goto_4a
.end method
