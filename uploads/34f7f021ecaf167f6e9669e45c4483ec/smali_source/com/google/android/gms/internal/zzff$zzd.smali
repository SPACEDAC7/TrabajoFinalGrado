.class Lcom/google/android/gms/internal/zzff$zzd;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzji;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzff;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "zzd"
.end annotation


# instance fields
.field private final zzbna:Ljava/lang/String;

.field private final zzbqi:Ljava/lang/String;

.field private final zzbqp:I

.field private final zzbqq:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzff$zza;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/util/List;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzff$zza;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzff$zzd;->zzbqi:Ljava/lang/String;

    iput p2, p0, Lcom/google/android/gms/internal/zzff$zzd;->zzbqp:I

    if-nez p3, :cond_13

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzff$zzd;->zzbqq:Ljava/util/List;

    :goto_10
    iput-object p4, p0, Lcom/google/android/gms/internal/zzff$zzd;->zzbna:Ljava/lang/String;

    return-void

    :cond_13
    iput-object p3, p0, Lcom/google/android/gms/internal/zzff$zzd;->zzbqq:Ljava/util/List;

    goto :goto_10
.end method


# virtual methods
.method public getBody()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzff$zzd;->zzbna:Ljava/lang/String;

    return-object v0
.end method

.method public getResponseCode()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/zzff$zzd;->zzbqp:I

    return v0
.end method

.method public zznc()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzff$zzd;->zzbqi:Ljava/lang/String;

    return-object v0
.end method

.method public zznh()Ljava/lang/Iterable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/google/android/gms/internal/zzff$zza;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzff$zzd;->zzbqq:Ljava/util/List;

    return-object v0
.end method
