.class public final Lcom/google/android/gms/internal/zzad$zzc;
.super Lcom/google/android/gms/internal/zzasa;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzad;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zzc"
.end annotation


# instance fields
.field public zzcn:Ljava/lang/String;

.field public zzco:Ljava/lang/String;

.field public zzcp:Ljava/lang/String;

.field public zzcq:Ljava/lang/String;

.field public zzcr:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzasa;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzad$zzc;->zzz()Lcom/google/android/gms/internal/zzad$zzc;

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zzart;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzad$zzc;->zzcn:Ljava/lang/String;

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzad$zzc;->zzcn:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzart;->zzq(ILjava/lang/String;)V

    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/zzad$zzc;->zzco:Ljava/lang/String;

    if-eqz v0, :cond_14

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzad$zzc;->zzco:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzart;->zzq(ILjava/lang/String;)V

    :cond_14
    iget-object v0, p0, Lcom/google/android/gms/internal/zzad$zzc;->zzcp:Ljava/lang/String;

    if-eqz v0, :cond_1e

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzad$zzc;->zzcp:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzart;->zzq(ILjava/lang/String;)V

    :cond_1e
    iget-object v0, p0, Lcom/google/android/gms/internal/zzad$zzc;->zzcq:Ljava/lang/String;

    if-eqz v0, :cond_28

    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/android/gms/internal/zzad$zzc;->zzcq:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzart;->zzq(ILjava/lang/String;)V

    :cond_28
    iget-object v0, p0, Lcom/google/android/gms/internal/zzad$zzc;->zzcr:Ljava/lang/String;

    if-eqz v0, :cond_32

    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/android/gms/internal/zzad$zzc;->zzcr:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzart;->zzq(ILjava/lang/String;)V

    :cond_32
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/zzasa;->zza(Lcom/google/android/gms/internal/zzart;)V

    return-void
.end method

.method public synthetic zzb(Lcom/google/android/gms/internal/zzars;)Lcom/google/android/gms/internal/zzasa;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzad$zzc;->zzd(Lcom/google/android/gms/internal/zzars;)Lcom/google/android/gms/internal/zzad$zzc;

    move-result-object v0

    return-object v0
.end method

.method public zzd(Lcom/google/android/gms/internal/zzars;)Lcom/google/android/gms/internal/zzad$zzc;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzars;->bU()I

    move-result v0

    sparse-switch v0, :sswitch_data_32

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzasd;->zzb(Lcom/google/android/gms/internal/zzars;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_d
    return-object p0

    :sswitch_e
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzars;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzad$zzc;->zzcn:Ljava/lang/String;

    goto :goto_0

    :sswitch_15
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzars;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzad$zzc;->zzco:Ljava/lang/String;

    goto :goto_0

    :sswitch_1c
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzars;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzad$zzc;->zzcp:Ljava/lang/String;

    goto :goto_0

    :sswitch_23
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzars;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzad$zzc;->zzcq:Ljava/lang/String;

    goto :goto_0

    :sswitch_2a
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzars;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzad$zzc;->zzcr:Ljava/lang/String;

    goto :goto_0

    nop

    :sswitch_data_32
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_15
        0x1a -> :sswitch_1c
        0x22 -> :sswitch_23
        0x2a -> :sswitch_2a
    .end sparse-switch
.end method

.method protected zzx()I
    .registers 4

    invoke-super {p0}, Lcom/google/android/gms/internal/zzasa;->zzx()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzad$zzc;->zzcn:Ljava/lang/String;

    if-eqz v1, :cond_10

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzad$zzc;->zzcn:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzart;->zzr(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_10
    iget-object v1, p0, Lcom/google/android/gms/internal/zzad$zzc;->zzco:Ljava/lang/String;

    if-eqz v1, :cond_1c

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/zzad$zzc;->zzco:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzart;->zzr(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1c
    iget-object v1, p0, Lcom/google/android/gms/internal/zzad$zzc;->zzcp:Ljava/lang/String;

    if-eqz v1, :cond_28

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/internal/zzad$zzc;->zzcp:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzart;->zzr(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_28
    iget-object v1, p0, Lcom/google/android/gms/internal/zzad$zzc;->zzcq:Ljava/lang/String;

    if-eqz v1, :cond_34

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/gms/internal/zzad$zzc;->zzcq:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzart;->zzr(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_34
    iget-object v1, p0, Lcom/google/android/gms/internal/zzad$zzc;->zzcr:Ljava/lang/String;

    if-eqz v1, :cond_40

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/android/gms/internal/zzad$zzc;->zzcr:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzart;->zzr(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_40
    return v0
.end method

.method public zzz()Lcom/google/android/gms/internal/zzad$zzc;
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzad$zzc;->zzcn:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzad$zzc;->zzco:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzad$zzc;->zzcp:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzad$zzc;->zzcq:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzad$zzc;->zzcr:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzad$zzc;->btP:I

    return-object p0
.end method
