.class public final Lcom/google/android/gms/common/stats/zzb$zza;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/stats/zzb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zza"
.end annotation


# static fields
.field public static FJ:Lcom/google/android/gms/internal/zzsi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzsi",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static FK:Lcom/google/android/gms/internal/zzsi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzsi",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static FL:Lcom/google/android/gms/internal/zzsi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzsi",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static FM:Lcom/google/android/gms/internal/zzsi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzsi",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static FN:Lcom/google/android/gms/internal/zzsi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzsi",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static FO:Lcom/google/android/gms/internal/zzsi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzsi",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-string v0, "gms:common:stats:connections:level"

    sget v1, Lcom/google/android/gms/common/stats/zzc;->LOG_LEVEL_OFF:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzsi;->zza(Ljava/lang/String;Ljava/lang/Integer;)Lcom/google/android/gms/internal/zzsi;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/stats/zzb$zza;->FJ:Lcom/google/android/gms/internal/zzsi;

    const-string v0, "gms:common:stats:connections:ignored_calling_processes"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzsi;->zzaa(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/zzsi;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/stats/zzb$zza;->FK:Lcom/google/android/gms/internal/zzsi;

    const-string v0, "gms:common:stats:connections:ignored_calling_services"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzsi;->zzaa(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/zzsi;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/stats/zzb$zza;->FL:Lcom/google/android/gms/internal/zzsi;

    const-string v0, "gms:common:stats:connections:ignored_target_processes"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzsi;->zzaa(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/zzsi;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/stats/zzb$zza;->FM:Lcom/google/android/gms/internal/zzsi;

    const-string v0, "gms:common:stats:connections:ignored_target_services"

    const-string v1, "com.google.android.gms.auth.GetToken"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzsi;->zzaa(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/zzsi;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/stats/zzb$zza;->FN:Lcom/google/android/gms/internal/zzsi;

    const-string v0, "gms:common:stats:connections:time_out_duration"

    const-wide/32 v2, 0x927c0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzsi;->zza(Ljava/lang/String;Ljava/lang/Long;)Lcom/google/android/gms/internal/zzsi;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/stats/zzb$zza;->FO:Lcom/google/android/gms/internal/zzsi;

    return-void
.end method
