.class Lcom/google/android/gms/internal/zzff$zzb;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzji;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzff;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "zzb"
.end annotation


# instance fields
.field private final zzbqi:Ljava/lang/String;

.field private final zzbqj:Ljava/net/URL;

.field private final zzbqk:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/internal/zzff$zza;",
            ">;"
        }
    .end annotation
.end field

.field private final zzbql:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/net/URL;Ljava/util/ArrayList;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/net/URL;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/internal/zzff$zza;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzff$zzb;->zzbqi:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzff$zzb;->zzbqj:Ljava/net/URL;

    if-nez p3, :cond_13

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzff$zzb;->zzbqk:Ljava/util/ArrayList;

    :goto_10
    iput-object p4, p0, Lcom/google/android/gms/internal/zzff$zzb;->zzbql:Ljava/lang/String;

    return-void

    :cond_13
    iput-object p3, p0, Lcom/google/android/gms/internal/zzff$zzb;->zzbqk:Ljava/util/ArrayList;

    goto :goto_10
.end method


# virtual methods
.method public zznc()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzff$zzb;->zzbqi:Ljava/lang/String;

    return-object v0
.end method

.method public zznd()Ljava/net/URL;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzff$zzb;->zzbqj:Ljava/net/URL;

    return-object v0
.end method

.method public zzne()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/internal/zzff$zza;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzff$zzb;->zzbqk:Ljava/util/ArrayList;

    return-object v0
.end method

.method public zznf()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzff$zzb;->zzbql:Ljava/lang/String;

    return-object v0
.end method
