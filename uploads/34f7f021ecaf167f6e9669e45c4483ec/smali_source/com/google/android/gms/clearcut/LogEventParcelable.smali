.class public Lcom/google/android/gms/clearcut/LogEventParcelable;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/clearcut/LogEventParcelable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final versionCode:I

.field public wA:[[B

.field public wB:Z

.field public final wC:Lcom/google/android/gms/internal/zzasf$zzc;

.field public final wD:Lcom/google/android/gms/clearcut/zza$zzc;

.field public final wE:Lcom/google/android/gms/clearcut/zza$zzc;

.field public wv:Lcom/google/android/gms/playlog/internal/PlayLoggerContext;

.field public ww:[B

.field public wx:[I

.field public wy:[Ljava/lang/String;

.field public wz:[I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/clearcut/zzc;

    invoke-direct {v0}, Lcom/google/android/gms/clearcut/zzc;-><init>()V

    sput-object v0, Lcom/google/android/gms/clearcut/LogEventParcelable;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/playlog/internal/PlayLoggerContext;[B[I[Ljava/lang/String;[I[[BZ)V
    .registers 10

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->versionCode:I

    iput-object p2, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->wv:Lcom/google/android/gms/playlog/internal/PlayLoggerContext;

    iput-object p3, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->ww:[B

    iput-object p4, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->wx:[I

    iput-object p5, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->wy:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->wC:Lcom/google/android/gms/internal/zzasf$zzc;

    iput-object v0, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->wD:Lcom/google/android/gms/clearcut/zza$zzc;

    iput-object v0, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->wE:Lcom/google/android/gms/clearcut/zza$zzc;

    iput-object p6, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->wz:[I

    iput-object p7, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->wA:[[B

    iput-boolean p8, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->wB:Z

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/playlog/internal/PlayLoggerContext;Lcom/google/android/gms/internal/zzasf$zzc;Lcom/google/android/gms/clearcut/zza$zzc;Lcom/google/android/gms/clearcut/zza$zzc;[I[Ljava/lang/String;[I[[BZ)V
    .registers 11

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->versionCode:I

    iput-object p1, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->wv:Lcom/google/android/gms/playlog/internal/PlayLoggerContext;

    iput-object p2, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->wC:Lcom/google/android/gms/internal/zzasf$zzc;

    iput-object p3, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->wD:Lcom/google/android/gms/clearcut/zza$zzc;

    iput-object p4, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->wE:Lcom/google/android/gms/clearcut/zza$zzc;

    iput-object p5, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->wx:[I

    iput-object p6, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->wy:[Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->wz:[I

    iput-object p8, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->wA:[[B

    iput-boolean p9, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->wB:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_5

    :cond_4
    :goto_4
    return v0

    :cond_5
    instance-of v2, p1, Lcom/google/android/gms/clearcut/LogEventParcelable;

    if-eqz v2, :cond_73

    check-cast p1, Lcom/google/android/gms/clearcut/LogEventParcelable;

    iget v2, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->versionCode:I

    iget v3, p1, Lcom/google/android/gms/clearcut/LogEventParcelable;->versionCode:I

    if-ne v2, v3, :cond_71

    iget-object v2, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->wv:Lcom/google/android/gms/playlog/internal/PlayLoggerContext;

    iget-object v3, p1, Lcom/google/android/gms/clearcut/LogEventParcelable;->wv:Lcom/google/android/gms/playlog/internal/PlayLoggerContext;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzz;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_71

    iget-object v2, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->ww:[B

    iget-object v3, p1, Lcom/google/android/gms/clearcut/LogEventParcelable;->ww:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_71

    iget-object v2, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->wx:[I

    iget-object v3, p1, Lcom/google/android/gms/clearcut/LogEventParcelable;->wx:[I

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    if-eqz v2, :cond_71

    iget-object v2, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->wy:[Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/clearcut/LogEventParcelable;->wy:[Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_71

    iget-object v2, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->wC:Lcom/google/android/gms/internal/zzasf$zzc;

    iget-object v3, p1, Lcom/google/android/gms/clearcut/LogEventParcelable;->wC:Lcom/google/android/gms/internal/zzasf$zzc;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzz;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_71

    iget-object v2, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->wD:Lcom/google/android/gms/clearcut/zza$zzc;

    iget-object v3, p1, Lcom/google/android/gms/clearcut/LogEventParcelable;->wD:Lcom/google/android/gms/clearcut/zza$zzc;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzz;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_71

    iget-object v2, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->wE:Lcom/google/android/gms/clearcut/zza$zzc;

    iget-object v3, p1, Lcom/google/android/gms/clearcut/LogEventParcelable;->wE:Lcom/google/android/gms/clearcut/zza$zzc;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzz;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_71

    iget-object v2, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->wz:[I

    iget-object v3, p1, Lcom/google/android/gms/clearcut/LogEventParcelable;->wz:[I

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    if-eqz v2, :cond_71

    iget-object v2, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->wA:[[B

    iget-object v3, p1, Lcom/google/android/gms/clearcut/LogEventParcelable;->wA:[[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->deepEquals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_71

    iget-boolean v2, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->wB:Z

    iget-boolean v3, p1, Lcom/google/android/gms/clearcut/LogEventParcelable;->wB:Z

    if-eq v2, v3, :cond_4

    :cond_71
    move v0, v1

    goto :goto_4

    :cond_73
    move v0, v1

    goto :goto_4
.end method

.method public hashCode()I
    .registers 4

    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->versionCode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->wv:Lcom/google/android/gms/playlog/internal/PlayLoggerContext;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->ww:[B

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->wx:[I

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->wy:[Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->wC:Lcom/google/android/gms/internal/zzasf$zzc;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->wD:Lcom/google/android/gms/clearcut/zza$zzc;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->wE:Lcom/google/android/gms/clearcut/zza$zzc;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    iget-object v2, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->wz:[I

    aput-object v2, v0, v1

    const/16 v1, 0x9

    iget-object v2, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->wA:[[B

    aput-object v2, v0, v1

    const/16 v1, 0xa

    iget-boolean v2, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->wB:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzz;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LogEventParcelable["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->versionCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->wv:Lcom/google/android/gms/playlog/internal/PlayLoggerContext;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "LogEventBytes: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->ww:[B

    if-nez v0, :cond_d9

    const/4 v0, 0x0

    :goto_2a
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "TestCodes: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->wx:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "MendelPackages: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->wy:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "LogEvent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->wC:Lcom/google/android/gms/internal/zzasf$zzc;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ExtensionProducer: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->wD:Lcom/google/android/gms/clearcut/zza$zzc;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "VeProducer: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->wE:Lcom/google/android/gms/clearcut/zza$zzc;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ExperimentIDs: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->wz:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ExperimentTokens: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->wA:[[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "AddPhenotypeExperimentTokens: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->wB:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_d9
    new-instance v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->ww:[B

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V

    goto/16 :goto_2a
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/clearcut/zzc;->zza(Lcom/google/android/gms/clearcut/LogEventParcelable;Landroid/os/Parcel;I)V

    return-void
.end method
