.class Lcom/google/android/gms/ads/internal/purchase/zzc$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/ads/internal/purchase/zzc;->zza(Lcom/google/android/gms/ads/internal/purchase/zzf;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$intent:Landroid/content/Intent;

.field final synthetic zzcfk:Lcom/google/android/gms/ads/internal/purchase/zzf;

.field final synthetic zzcfl:Lcom/google/android/gms/ads/internal/purchase/zzc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/purchase/zzc;Lcom/google/android/gms/ads/internal/purchase/zzf;Landroid/content/Intent;)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/purchase/zzc$1;->zzcfl:Lcom/google/android/gms/ads/internal/purchase/zzc;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/purchase/zzc$1;->zzcfk:Lcom/google/android/gms/ads/internal/purchase/zzf;

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/purchase/zzc$1;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/purchase/zzc$1;->zzcfl:Lcom/google/android/gms/ads/internal/purchase/zzc;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/purchase/zzc;->zza(Lcom/google/android/gms/ads/internal/purchase/zzc;)Lcom/google/android/gms/ads/internal/purchase/zzk;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/purchase/zzc$1;->zzcfk:Lcom/google/android/gms/ads/internal/purchase/zzf;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/purchase/zzf;->zzcfu:Ljava/lang/String;

    const/4 v2, -0x1

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/purchase/zzc$1;->val$intent:Landroid/content/Intent;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/ads/internal/purchase/zzk;->zza(Ljava/lang/String;ILandroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/purchase/zzc$1;->zzcfl:Lcom/google/android/gms/ads/internal/purchase/zzc;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/purchase/zzc;->zzc(Lcom/google/android/gms/ads/internal/purchase/zzc;)Lcom/google/android/gms/internal/zzik;

    move-result-object v7

    new-instance v0, Lcom/google/android/gms/ads/internal/purchase/zzg;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/purchase/zzc$1;->zzcfl:Lcom/google/android/gms/ads/internal/purchase/zzc;

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/purchase/zzc;->zzb(Lcom/google/android/gms/ads/internal/purchase/zzc;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/purchase/zzc$1;->zzcfk:Lcom/google/android/gms/ads/internal/purchase/zzf;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/purchase/zzf;->zzcfv:Ljava/lang/String;

    const/4 v3, 0x1

    const/4 v4, -0x1

    iget-object v5, p0, Lcom/google/android/gms/ads/internal/purchase/zzc$1;->val$intent:Landroid/content/Intent;

    iget-object v6, p0, Lcom/google/android/gms/ads/internal/purchase/zzc$1;->zzcfk:Lcom/google/android/gms/ads/internal/purchase/zzf;

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/ads/internal/purchase/zzg;-><init>(Landroid/content/Context;Ljava/lang/String;ZILandroid/content/Intent;Lcom/google/android/gms/ads/internal/purchase/zzf;)V

    invoke-interface {v7, v0}, Lcom/google/android/gms/internal/zzik;->zza(Lcom/google/android/gms/internal/zzij;)V

    :goto_31
    return-void

    :cond_32
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/purchase/zzc$1;->zzcfl:Lcom/google/android/gms/ads/internal/purchase/zzc;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/purchase/zzc;->zzc(Lcom/google/android/gms/ads/internal/purchase/zzc;)Lcom/google/android/gms/internal/zzik;

    move-result-object v7

    new-instance v0, Lcom/google/android/gms/ads/internal/purchase/zzg;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/purchase/zzc$1;->zzcfl:Lcom/google/android/gms/ads/internal/purchase/zzc;

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/purchase/zzc;->zzb(Lcom/google/android/gms/ads/internal/purchase/zzc;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/purchase/zzc$1;->zzcfk:Lcom/google/android/gms/ads/internal/purchase/zzf;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/purchase/zzf;->zzcfv:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, -0x1

    iget-object v5, p0, Lcom/google/android/gms/ads/internal/purchase/zzc$1;->val$intent:Landroid/content/Intent;

    iget-object v6, p0, Lcom/google/android/gms/ads/internal/purchase/zzc$1;->zzcfk:Lcom/google/android/gms/ads/internal/purchase/zzf;

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/ads/internal/purchase/zzg;-><init>(Landroid/content/Context;Ljava/lang/String;ZILandroid/content/Intent;Lcom/google/android/gms/ads/internal/purchase/zzf;)V

    invoke-interface {v7, v0}, Lcom/google/android/gms/internal/zzik;->zza(Lcom/google/android/gms/internal/zzij;)V
    :try_end_50
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_50} :catch_51

    goto :goto_31

    :catch_51
    move-exception v0

    const-string v0, "Fail to verify and dispatch pending transaction"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkx;->zzdi(Ljava/lang/String;)V

    goto :goto_31
.end method
