.class public Lcom/google/android/gms/gcm/zzc;
.super Ljava/lang/Object;


# static fields
.field public static final aho:Lcom/google/android/gms/gcm/zzc;

.field public static final ahp:Lcom/google/android/gms/gcm/zzc;


# instance fields
.field private final ahq:I

.field private final ahr:I

.field private final ahs:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/16 v3, 0xe10

    const/16 v2, 0x1e

    new-instance v0, Lcom/google/android/gms/gcm/zzc;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/gcm/zzc;-><init>(III)V

    sput-object v0, Lcom/google/android/gms/gcm/zzc;->aho:Lcom/google/android/gms/gcm/zzc;

    new-instance v0, Lcom/google/android/gms/gcm/zzc;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/gcm/zzc;-><init>(III)V

    sput-object v0, Lcom/google/android/gms/gcm/zzc;->ahp:Lcom/google/android/gms/gcm/zzc;

    return-void
.end method

.method private constructor <init>(III)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/gcm/zzc;->ahq:I

    iput p2, p0, Lcom/google/android/gms/gcm/zzc;->ahr:I

    iput p3, p0, Lcom/google/android/gms/gcm/zzc;->ahs:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, p0, :cond_5

    :cond_4
    :goto_4
    return v0

    :cond_5
    instance-of v2, p1, Lcom/google/android/gms/gcm/zzc;

    if-nez v2, :cond_b

    move v0, v1

    goto :goto_4

    :cond_b
    check-cast p1, Lcom/google/android/gms/gcm/zzc;

    iget v2, p1, Lcom/google/android/gms/gcm/zzc;->ahq:I

    iget v3, p0, Lcom/google/android/gms/gcm/zzc;->ahq:I

    if-ne v2, v3, :cond_1f

    iget v2, p1, Lcom/google/android/gms/gcm/zzc;->ahr:I

    iget v3, p0, Lcom/google/android/gms/gcm/zzc;->ahr:I

    if-ne v2, v3, :cond_1f

    iget v2, p1, Lcom/google/android/gms/gcm/zzc;->ahs:I

    iget v3, p0, Lcom/google/android/gms/gcm/zzc;->ahs:I

    if-eq v2, v3, :cond_4

    :cond_1f
    move v0, v1

    goto :goto_4
.end method

.method public hashCode()I
    .registers 4

    const v2, 0xf4243

    iget v0, p0, Lcom/google/android/gms/gcm/zzc;->ahq:I

    add-int/lit8 v0, v0, 0x1

    xor-int/2addr v0, v2

    mul-int/2addr v0, v2

    iget v1, p0, Lcom/google/android/gms/gcm/zzc;->ahr:I

    xor-int/2addr v0, v1

    mul-int/2addr v0, v2

    iget v1, p0, Lcom/google/android/gms/gcm/zzc;->ahs:I

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    iget v0, p0, Lcom/google/android/gms/gcm/zzc;->ahq:I

    iget v1, p0, Lcom/google/android/gms/gcm/zzc;->ahr:I

    iget v2, p0, Lcom/google/android/gms/gcm/zzc;->ahs:I

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x4a

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "policy="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " initial_backoff="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " maximum_backoff="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public zzaj(Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 4

    const-string v0, "retry_policy"

    iget v1, p0, Lcom/google/android/gms/gcm/zzc;->ahq:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "initial_backoff_seconds"

    iget v1, p0, Lcom/google/android/gms/gcm/zzc;->ahr:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "maximum_backoff_seconds"

    iget v1, p0, Lcom/google/android/gms/gcm/zzc;->ahs:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object p1
.end method

.method public zzbnv()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/gcm/zzc;->ahq:I

    return v0
.end method

.method public zzbnw()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/gcm/zzc;->ahr:I

    return v0
.end method

.method public zzbnx()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/gcm/zzc;->ahs:I

    return v0
.end method
