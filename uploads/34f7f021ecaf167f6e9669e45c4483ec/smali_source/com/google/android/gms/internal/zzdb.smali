.class public Lcom/google/android/gms/internal/zzdb;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzji;
.end annotation


# instance fields
.field private final zzaxa:F

.field private final zzaxb:F

.field private final zzaxc:F

.field private final zzaxd:F

.field private final zzaxe:I


# direct methods
.method public constructor <init>(FFFFI)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/zzdb;->zzaxa:F

    iput p2, p0, Lcom/google/android/gms/internal/zzdb;->zzaxb:F

    add-float v0, p1, p3

    iput v0, p0, Lcom/google/android/gms/internal/zzdb;->zzaxc:F

    add-float v0, p2, p4

    iput v0, p0, Lcom/google/android/gms/internal/zzdb;->zzaxd:F

    iput p5, p0, Lcom/google/android/gms/internal/zzdb;->zzaxe:I

    return-void
.end method


# virtual methods
.method zzjm()F
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/zzdb;->zzaxa:F

    return v0
.end method

.method zzjn()F
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/zzdb;->zzaxb:F

    return v0
.end method

.method zzjo()F
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/zzdb;->zzaxc:F

    return v0
.end method

.method zzjp()F
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/zzdb;->zzaxd:F

    return v0
.end method

.method zzjq()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/zzdb;->zzaxe:I

    return v0
.end method
