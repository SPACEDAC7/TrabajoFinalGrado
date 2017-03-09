.class public Lcom/google/android/gms/internal/zziv;
.super Lcom/google/android/gms/internal/zziq;

# interfaces
.implements Lcom/google/android/gms/internal/zzme$zza;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzji;
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzko$zza;Lcom/google/android/gms/internal/zzmd;Lcom/google/android/gms/internal/zziu$zza;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/zziq;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzko$zza;Lcom/google/android/gms/internal/zzmd;Lcom/google/android/gms/internal/zziu$zza;)V

    return-void
.end method


# virtual methods
.method protected zzrx()V
    .registers 7

    iget-object v0, p0, Lcom/google/android/gms/internal/zziv;->zzcgg:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget v0, v0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->errorCode:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_8

    :goto_7
    return-void

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/zziv;->zzbnz:Lcom/google/android/gms/internal/zzmd;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzmd;->zzxc()Lcom/google/android/gms/internal/zzme;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/zzme;->zza(Lcom/google/android/gms/internal/zzme$zza;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zziv;->zzse()V

    const-string v0, "Loading HTML in WebView."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkx;->zzdg(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zziv;->zzbnz:Lcom/google/android/gms/internal/zzmd;

    iget-object v1, p0, Lcom/google/android/gms/internal/zziv;->zzcgg:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzcbo:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/zziv;->zzcgg:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->body:Ljava/lang/String;

    const-string/jumbo v3, "text/html"

    const-string v4, "UTF-8"

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/zzmd;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7
.end method

.method protected zzse()V
    .registers 1

    return-void
.end method
