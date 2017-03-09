.class public Lcom/google/android/gms/internal/zzkj;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzji;
.end annotation


# instance fields
.field private final zzbwf:Lcom/google/android/gms/internal/zzha;

.field private final zzcsa:Lcom/google/android/gms/internal/zzkg;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzha;Lcom/google/android/gms/internal/zzkf;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzkj;->zzbwf:Lcom/google/android/gms/internal/zzha;

    new-instance v0, Lcom/google/android/gms/internal/zzkg;

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/zzkg;-><init>(Lcom/google/android/gms/internal/zzkf;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzkj;->zzcsa:Lcom/google/android/gms/internal/zzkg;

    return-void
.end method


# virtual methods
.method public zzuc()Lcom/google/android/gms/internal/zzha;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzkj;->zzbwf:Lcom/google/android/gms/internal/zzha;

    return-object v0
.end method

.method public zzud()Lcom/google/android/gms/internal/zzkg;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzkj;->zzcsa:Lcom/google/android/gms/internal/zzkg;

    return-object v0
.end method
