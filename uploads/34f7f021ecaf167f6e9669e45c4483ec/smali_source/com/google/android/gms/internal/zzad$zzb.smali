.class public final Lcom/google/android/gms/internal/zzad$zzb;
.super Lcom/google/android/gms/internal/zzasa;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzad;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zzb"
.end annotation


# instance fields
.field public zzcm:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzasa;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzad$zzb;->zzy()Lcom/google/android/gms/internal/zzad$zzb;

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

    iget-object v0, p0, Lcom/google/android/gms/internal/zzad$zzb;->zzcm:Ljava/lang/Integer;

    if-eqz v0, :cond_f

    const/16 v0, 0x1b

    iget-object v1, p0, Lcom/google/android/gms/internal/zzad$zzb;->zzcm:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzart;->zzaf(II)V

    :cond_f
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

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzad$zzb;->zzc(Lcom/google/android/gms/internal/zzars;)Lcom/google/android/gms/internal/zzad$zzb;

    move-result-object v0

    return-object v0
.end method

.method public zzc(Lcom/google/android/gms/internal/zzars;)Lcom/google/android/gms/internal/zzad$zzb;
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

    sparse-switch v0, :sswitch_data_1e

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzasd;->zzb(Lcom/google/android/gms/internal/zzars;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_d
    return-object p0

    :sswitch_e
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzars;->bY()I

    move-result v0

    packed-switch v0, :pswitch_data_28

    goto :goto_0

    :pswitch_16
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzad$zzb;->zzcm:Ljava/lang/Integer;

    goto :goto_0

    nop

    :sswitch_data_1e
    .sparse-switch
        0x0 -> :sswitch_d
        0xd8 -> :sswitch_e
    .end sparse-switch

    :pswitch_data_28
    .packed-switch 0x0
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
    .end packed-switch
.end method

.method protected zzx()I
    .registers 4

    invoke-super {p0}, Lcom/google/android/gms/internal/zzasa;->zzx()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzad$zzb;->zzcm:Ljava/lang/Integer;

    if-eqz v1, :cond_15

    const/16 v1, 0x1b

    iget-object v2, p0, Lcom/google/android/gms/internal/zzad$zzb;->zzcm:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzart;->zzah(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_15
    return v0
.end method

.method public zzy()Lcom/google/android/gms/internal/zzad$zzb;
    .registers 2

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzad$zzb;->btP:I

    return-object p0
.end method
