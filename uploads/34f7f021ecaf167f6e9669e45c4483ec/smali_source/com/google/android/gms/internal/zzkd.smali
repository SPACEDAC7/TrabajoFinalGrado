.class public Lcom/google/android/gms/internal/zzkd;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzji;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzkd$zza;
    }
.end annotation


# instance fields
.field public final errorCode:I

.field public final zzbuv:Ljava/lang/String;

.field public final zzbwr:J

.field public final zzcro:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/zzkd$zza;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/zzkd$zza;->zza(Lcom/google/android/gms/internal/zzkd$zza;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzkd;->zzcro:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzkd$zza;->zzb(Lcom/google/android/gms/internal/zzkd$zza;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzkd;->zzbuv:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzkd$zza;->zzc(Lcom/google/android/gms/internal/zzkd$zza;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzkd;->errorCode:I

    invoke-static {p1}, Lcom/google/android/gms/internal/zzkd$zza;->zzd(Lcom/google/android/gms/internal/zzkd$zza;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzkd;->zzbwr:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/zzkd$zza;Lcom/google/android/gms/internal/zzkd$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzkd;-><init>(Lcom/google/android/gms/internal/zzkd$zza;)V

    return-void
.end method
