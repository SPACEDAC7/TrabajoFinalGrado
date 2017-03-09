.class public Lcom/google/android/gms/internal/zzis;
.super Lcom/google/android/gms/internal/zziq;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzji;
.end annotation


# instance fields
.field private zzcgu:Lcom/google/android/gms/internal/zzir;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzko$zza;Lcom/google/android/gms/internal/zzmd;Lcom/google/android/gms/internal/zziu$zza;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/zziq;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzko$zza;Lcom/google/android/gms/internal/zzmd;Lcom/google/android/gms/internal/zziu$zza;)V

    return-void
.end method


# virtual methods
.method protected zzrx()V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzis;->zzbnz:Lcom/google/android/gms/internal/zzmd;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzmd;->zzeg()Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    move-result-object v0

    iget-boolean v1, v0, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->zzazr:Z

    if-eqz v1, :cond_32

    iget-object v0, p0, Lcom/google/android/gms/internal/zzis;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    :goto_18
    new-instance v2, Lcom/google/android/gms/internal/zzir;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzis;->zzbnz:Lcom/google/android/gms/internal/zzmd;

    invoke-direct {v2, p0, v3, v1, v0}, Lcom/google/android/gms/internal/zzir;-><init>(Lcom/google/android/gms/internal/zzme$zza;Lcom/google/android/gms/internal/zzmd;II)V

    iput-object v2, p0, Lcom/google/android/gms/internal/zzis;->zzcgu:Lcom/google/android/gms/internal/zzir;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzis;->zzbnz:Lcom/google/android/gms/internal/zzmd;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzmd;->zzxc()Lcom/google/android/gms/internal/zzme;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/zzme;->zza(Lcom/google/android/gms/internal/zzme$zza;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzis;->zzcgu:Lcom/google/android/gms/internal/zzir;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzis;->zzcgg:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzir;->zza(Lcom/google/android/gms/ads/internal/request/AdResponseParcel;)V

    return-void

    :cond_32
    iget v1, v0, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->widthPixels:I

    iget v0, v0, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->heightPixels:I

    goto :goto_18
.end method

.method protected zzry()I
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzis;->zzcgu:Lcom/google/android/gms/internal/zzir;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzir;->zzsc()Z

    move-result v0

    if-eqz v0, :cond_f

    const-string v0, "Ad-Network indicated no fill with passback URL."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkx;->zzdg(Ljava/lang/String;)V

    const/4 v0, 0x3

    :goto_e
    return v0

    :cond_f
    iget-object v0, p0, Lcom/google/android/gms/internal/zzis;->zzcgu:Lcom/google/android/gms/internal/zzir;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzir;->zzsd()Z

    move-result v0

    if-nez v0, :cond_19

    const/4 v0, 0x2

    goto :goto_e

    :cond_19
    const/4 v0, -0x2

    goto :goto_e
.end method
