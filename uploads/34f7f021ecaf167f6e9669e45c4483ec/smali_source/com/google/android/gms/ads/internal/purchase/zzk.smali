.class public Lcom/google/android/gms/ads/internal/purchase/zzk;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzji;
.end annotation


# instance fields
.field private final zzbbj:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/purchase/zzk;->zzbbj:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public zza(Ljava/lang/String;ILandroid/content/Intent;)Z
    .registers 8

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    if-nez p3, :cond_6

    :cond_5
    :goto_5
    return v0

    :cond_6
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzha()Lcom/google/android/gms/ads/internal/purchase/zzi;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/google/android/gms/ads/internal/purchase/zzi;->zze(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzha()Lcom/google/android/gms/ads/internal/purchase/zzi;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/google/android/gms/ads/internal/purchase/zzi;->zzf(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v2

    if-eqz v1, :cond_5

    if-eqz v2, :cond_5

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzha()Lcom/google/android/gms/ads/internal/purchase/zzi;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/google/android/gms/ads/internal/purchase/zzi;->zzcg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2e

    const-string v1, "Developer payload not match."

    invoke-static {v1}, Lcom/google/android/gms/internal/zzkx;->zzdi(Ljava/lang/String;)V

    goto :goto_5

    :cond_2e
    iget-object v3, p0, Lcom/google/android/gms/ads/internal/purchase/zzk;->zzbbj:Ljava/lang/String;

    if-eqz v3, :cond_40

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/purchase/zzk;->zzbbj:Ljava/lang/String;

    invoke-static {v3, v1, v2}, Lcom/google/android/gms/ads/internal/purchase/zzl;->zzc(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_40

    const-string v1, "Fail to verify signature."

    invoke-static {v1}, Lcom/google/android/gms/internal/zzkx;->zzdi(Ljava/lang/String;)V

    goto :goto_5

    :cond_40
    const/4 v0, 0x1

    goto :goto_5
.end method

.method public zzrv()Ljava/lang/String;
    .registers 2

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzgm()Lcom/google/android/gms/internal/zzlb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzlb;->zzvs()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
