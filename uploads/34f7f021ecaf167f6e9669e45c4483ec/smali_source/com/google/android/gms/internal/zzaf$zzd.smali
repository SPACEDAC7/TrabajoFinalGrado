.class public final Lcom/google/android/gms/internal/zzaf$zzd;
.super Lcom/google/android/gms/internal/zzaru;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzaf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zzd"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzaru",
        "<",
        "Lcom/google/android/gms/internal/zzaf$zzd;",
        ">;"
    }
.end annotation


# instance fields
.field public data:[B

.field public zzfv:[B

.field public zzfw:[B

.field public zzfx:[B


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaru;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaf$zzd;->data:[B

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaf$zzd;->zzfv:[B

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaf$zzd;->zzfw:[B

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaf$zzd;->zzfx:[B

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzaf$zzd;->btP:I

    return-void
.end method

.method public static zze([B)Lcom/google/android/gms/internal/zzaf$zzd;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/zzarz;
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzaf$zzd;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzaf$zzd;-><init>()V

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/zzasa;->zza(Lcom/google/android/gms/internal/zzasa;[B)Lcom/google/android/gms/internal/zzasa;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzaf$zzd;

    return-object v0
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zzart;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaf$zzd;->data:[B

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaf$zzd;->data:[B

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzart;->zzb(I[B)V

    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaf$zzd;->zzfv:[B

    if-eqz v0, :cond_14

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaf$zzd;->zzfv:[B

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzart;->zzb(I[B)V

    :cond_14
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaf$zzd;->zzfw:[B

    if-eqz v0, :cond_1e

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaf$zzd;->zzfw:[B

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzart;->zzb(I[B)V

    :cond_1e
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaf$zzd;->zzfx:[B

    if-eqz v0, :cond_28

    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaf$zzd;->zzfx:[B

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzart;->zzb(I[B)V

    :cond_28
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/zzaru;->zza(Lcom/google/android/gms/internal/zzart;)V

    return-void
.end method

.method public synthetic zzb(Lcom/google/android/gms/internal/zzars;)Lcom/google/android/gms/internal/zzasa;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzaf$zzd;->zzk(Lcom/google/android/gms/internal/zzars;)Lcom/google/android/gms/internal/zzaf$zzd;

    move-result-object v0

    return-object v0
.end method

.method public zzk(Lcom/google/android/gms/internal/zzars;)Lcom/google/android/gms/internal/zzaf$zzd;
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

    sparse-switch v0, :sswitch_data_2a

    invoke-super {p0, p1, v0}, Lcom/google/android/gms/internal/zzaru;->zza(Lcom/google/android/gms/internal/zzars;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_d
    return-object p0

    :sswitch_e
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzars;->readBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaf$zzd;->data:[B

    goto :goto_0

    :sswitch_15
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzars;->readBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaf$zzd;->zzfv:[B

    goto :goto_0

    :sswitch_1c
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzars;->readBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaf$zzd;->zzfw:[B

    goto :goto_0

    :sswitch_23
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzars;->readBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaf$zzd;->zzfx:[B

    goto :goto_0

    :sswitch_data_2a
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_15
        0x1a -> :sswitch_1c
        0x22 -> :sswitch_23
    .end sparse-switch
.end method

.method protected zzx()I
    .registers 4

    invoke-super {p0}, Lcom/google/android/gms/internal/zzaru;->zzx()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaf$zzd;->data:[B

    if-eqz v1, :cond_10

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaf$zzd;->data:[B

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzart;->zzc(I[B)I

    move-result v1

    add-int/2addr v0, v1

    :cond_10
    iget-object v1, p0, Lcom/google/android/gms/internal/zzaf$zzd;->zzfv:[B

    if-eqz v1, :cond_1c

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaf$zzd;->zzfv:[B

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzart;->zzc(I[B)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1c
    iget-object v1, p0, Lcom/google/android/gms/internal/zzaf$zzd;->zzfw:[B

    if-eqz v1, :cond_28

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaf$zzd;->zzfw:[B

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzart;->zzc(I[B)I

    move-result v1

    add-int/2addr v0, v1

    :cond_28
    iget-object v1, p0, Lcom/google/android/gms/internal/zzaf$zzd;->zzfx:[B

    if-eqz v1, :cond_34

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaf$zzd;->zzfx:[B

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzart;->zzc(I[B)I

    move-result v1

    add-int/2addr v0, v1

    :cond_34
    return v0
.end method
