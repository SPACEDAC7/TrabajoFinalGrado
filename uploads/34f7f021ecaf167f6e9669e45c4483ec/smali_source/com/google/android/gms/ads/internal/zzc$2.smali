.class Lcom/google/android/gms/ads/internal/zzc$2;
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


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/zzc;Lcom/google/android/gms/internal/zzko$zza;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzc$2;->zzamj:Lcom/google/android/gms/ads/internal/zzc;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/zzc$2;->zzamk:Lcom/google/android/gms/internal/zzko$zza;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 11

    const/4 v2, 0x0

    iget-object v9, p0, Lcom/google/android/gms/ads/internal/zzc$2;->zzamj:Lcom/google/android/gms/ads/internal/zzc;

    new-instance v0, Lcom/google/android/gms/internal/zzko;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzc$2;->zzamk:Lcom/google/android/gms/internal/zzko$zza;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    move-object v8, v2

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/zzko;-><init>(Lcom/google/android/gms/internal/zzko$zza;Lcom/google/android/gms/internal/zzmd;Lcom/google/android/gms/internal/zzgp;Lcom/google/android/gms/internal/zzha;Ljava/lang/String;Lcom/google/android/gms/internal/zzgs;Lcom/google/android/gms/ads/internal/formats/zzi$zza;Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Lcom/google/android/gms/ads/internal/zzc;->zzb(Lcom/google/android/gms/internal/zzko;)V

    return-void
.end method
