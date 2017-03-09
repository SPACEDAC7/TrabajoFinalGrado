.class public final Lcom/google/android/gms/internal/zzgu;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzji;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzgu$zza;
    }
.end annotation


# instance fields
.field public final zzbwl:I

.field public final zzbwm:Lcom/google/android/gms/internal/zzgp;

.field public final zzbwn:Lcom/google/android/gms/internal/zzha;

.field public final zzbwo:Ljava/lang/String;

.field public final zzbwp:Lcom/google/android/gms/internal/zzgs;

.field public final zzbwq:Lcom/google/android/gms/internal/zzhc;

.field public final zzbwr:J


# direct methods
.method public constructor <init>(I)V
    .registers 12

    const/4 v2, 0x0

    const-wide/16 v8, 0x0

    move-object v1, p0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move v6, p1

    move-object v7, v2

    invoke-direct/range {v1 .. v9}, Lcom/google/android/gms/internal/zzgu;-><init>(Lcom/google/android/gms/internal/zzgp;Lcom/google/android/gms/internal/zzha;Ljava/lang/String;Lcom/google/android/gms/internal/zzgs;ILcom/google/android/gms/internal/zzhc;J)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/zzgp;Lcom/google/android/gms/internal/zzha;Ljava/lang/String;Lcom/google/android/gms/internal/zzgs;ILcom/google/android/gms/internal/zzhc;J)V
    .registers 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzgu;->zzbwm:Lcom/google/android/gms/internal/zzgp;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzgu;->zzbwn:Lcom/google/android/gms/internal/zzha;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzgu;->zzbwo:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzgu;->zzbwp:Lcom/google/android/gms/internal/zzgs;

    iput p5, p0, Lcom/google/android/gms/internal/zzgu;->zzbwl:I

    iput-object p6, p0, Lcom/google/android/gms/internal/zzgu;->zzbwq:Lcom/google/android/gms/internal/zzhc;

    iput-wide p7, p0, Lcom/google/android/gms/internal/zzgu;->zzbwr:J

    return-void
.end method
