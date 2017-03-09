.class public final Lcom/google/android/gms/internal/zzhf;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/ads/mediation/MediationAdRequest;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzji;
.end annotation


# instance fields
.field private final zzazc:I

.field private final zzazo:Z

.field private final zzbxg:I

.field private final zzgr:Ljava/util/Date;

.field private final zzgt:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final zzgu:Z

.field private final zzgv:Landroid/location/Location;


# direct methods
.method public constructor <init>(Ljava/util/Date;ILjava/util/Set;Landroid/location/Location;ZIZ)V
    .registers 8
    .param p1    # Ljava/util/Date;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/util/Set;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Landroid/location/Location;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Date;",
            "I",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/location/Location;",
            "ZIZ)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzhf;->zzgr:Ljava/util/Date;

    iput p2, p0, Lcom/google/android/gms/internal/zzhf;->zzazc:I

    iput-object p3, p0, Lcom/google/android/gms/internal/zzhf;->zzgt:Ljava/util/Set;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzhf;->zzgv:Landroid/location/Location;

    iput-boolean p5, p0, Lcom/google/android/gms/internal/zzhf;->zzgu:Z

    iput p6, p0, Lcom/google/android/gms/internal/zzhf;->zzbxg:I

    iput-boolean p7, p0, Lcom/google/android/gms/internal/zzhf;->zzazo:Z

    return-void
.end method


# virtual methods
.method public getBirthday()Ljava/util/Date;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhf;->zzgr:Ljava/util/Date;

    return-object v0
.end method

.method public getGender()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/zzhf;->zzazc:I

    return v0
.end method

.method public getKeywords()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhf;->zzgt:Ljava/util/Set;

    return-object v0
.end method

.method public getLocation()Landroid/location/Location;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhf;->zzgv:Landroid/location/Location;

    return-object v0
.end method

.method public isDesignedForFamilies()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzhf;->zzazo:Z

    return v0
.end method

.method public isTesting()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzhf;->zzgu:Z

    return v0
.end method

.method public taggedForChildDirectedTreatment()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/zzhf;->zzbxg:I

    return v0
.end method
