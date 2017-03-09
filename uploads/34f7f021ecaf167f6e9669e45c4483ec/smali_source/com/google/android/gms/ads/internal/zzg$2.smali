.class Lcom/google/android/gms/ads/internal/zzg$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/ads/internal/zzg;->zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;ZLcom/google/android/gms/internal/zzkq;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzanb:Lcom/google/android/gms/ads/internal/zzg;

.field final synthetic zzanc:Lcom/google/android/gms/internal/zzgh;

.field final synthetic zzand:Ljava/lang/String;

.field final synthetic zzane:Ljava/lang/String;

.field final synthetic zzanf:Z

.field final synthetic zzang:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/zzg;Lcom/google/android/gms/internal/zzgh;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)V
    .registers 7

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzg$2;->zzanb:Lcom/google/android/gms/ads/internal/zzg;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/zzg$2;->zzanc:Lcom/google/android/gms/internal/zzgh;

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/zzg$2;->zzand:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/ads/internal/zzg$2;->zzane:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/google/android/gms/ads/internal/zzg$2;->zzanf:Z

    iput-object p6, p0, Lcom/google/android/gms/ads/internal/zzg$2;->zzang:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzg$2;->zzanc:Lcom/google/android/gms/internal/zzgh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzgh;->zzny()Lcom/google/android/gms/internal/zzgh$zzc;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/ads/internal/zzg$2$1;

    invoke-direct {v1, p0}, Lcom/google/android/gms/ads/internal/zzg$2$1;-><init>(Lcom/google/android/gms/ads/internal/zzg$2;)V

    new-instance v2, Lcom/google/android/gms/internal/zzlw$zzb;

    invoke-direct {v2}, Lcom/google/android/gms/internal/zzlw$zzb;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzgh$zzc;->zza(Lcom/google/android/gms/internal/zzlw$zzc;Lcom/google/android/gms/internal/zzlw$zza;)V

    return-void
.end method
