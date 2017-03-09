.class Lcom/google/android/gms/internal/zzff$zzc;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzji;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzff;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "zzc"
.end annotation


# instance fields
.field final synthetic zzbqf:Lcom/google/android/gms/internal/zzff;

.field private final zzbqm:Lcom/google/android/gms/internal/zzff$zzd;

.field private final zzbqn:Z

.field private final zzbqo:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzff;ZLcom/google/android/gms/internal/zzff$zzd;Ljava/lang/String;)V
    .registers 5

    iput-object p1, p0, Lcom/google/android/gms/internal/zzff$zzc;->zzbqf:Lcom/google/android/gms/internal/zzff;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Lcom/google/android/gms/internal/zzff$zzc;->zzbqn:Z

    iput-object p3, p0, Lcom/google/android/gms/internal/zzff$zzc;->zzbqm:Lcom/google/android/gms/internal/zzff$zzd;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzff$zzc;->zzbqo:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getReason()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzff$zzc;->zzbqo:Ljava/lang/String;

    return-object v0
.end method

.method public isSuccess()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzff$zzc;->zzbqn:Z

    return v0
.end method

.method public zzng()Lcom/google/android/gms/internal/zzff$zzd;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzff$zzc;->zzbqm:Lcom/google/android/gms/internal/zzff$zzd;

    return-object v0
.end method
