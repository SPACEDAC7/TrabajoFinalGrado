.class public final Lcom/google/android/gms/internal/zzcn;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzji;
.end annotation


# instance fields
.field private final zzasu:Ljava/lang/String;

.field private final zzasv:Lorg/json/JSONObject;

.field private final zzasw:Ljava/lang/String;

.field private final zzasx:Ljava/lang/String;

.field private final zzasy:Z

.field private final zzasz:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Ljava/lang/String;Lorg/json/JSONObject;ZZ)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p2, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->zzda:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcn;->zzasx:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzcn;->zzasv:Lorg/json/JSONObject;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcn;->zzasw:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzcn;->zzasu:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/google/android/gms/internal/zzcn;->zzasy:Z

    iput-boolean p6, p0, Lcom/google/android/gms/internal/zzcn;->zzasz:Z

    return-void
.end method


# virtual methods
.method public zzhy()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcn;->zzasu:Ljava/lang/String;

    return-object v0
.end method

.method public zzhz()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcn;->zzasx:Ljava/lang/String;

    return-object v0
.end method

.method public zzia()Lorg/json/JSONObject;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcn;->zzasv:Lorg/json/JSONObject;

    return-object v0
.end method

.method public zzib()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcn;->zzasw:Ljava/lang/String;

    return-object v0
.end method

.method public zzic()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzcn;->zzasy:Z

    return v0
.end method

.method public zzid()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzcn;->zzasz:Z

    return v0
.end method
