.class public final Lcom/google/android/gms/internal/zzaf$zzf;
.super Lcom/google/android/gms/internal/zzaru;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzaf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zzf"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzaru",
        "<",
        "Lcom/google/android/gms/internal/zzaf$zzf;",
        ">;"
    }
.end annotation


# instance fields
.field public zzfv:[B

.field public zzga:[[B

.field public zzgb:Ljava/lang/Integer;

.field public zzgc:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaru;-><init>()V

    sget-object v0, Lcom/google/android/gms/internal/zzasd;->btX:[[B

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaf$zzf;->zzga:[[B

    iput-object v1, p0, Lcom/google/android/gms/internal/zzaf$zzf;->zzfv:[B

    iput-object v1, p0, Lcom/google/android/gms/internal/zzaf$zzf;->zzgb:Ljava/lang/Integer;

    iput-object v1, p0, Lcom/google/android/gms/internal/zzaf$zzf;->zzgc:Ljava/lang/Integer;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzaf$zzf;->btP:I

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zzart;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaf$zzf;->zzga:[[B

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaf$zzf;->zzga:[[B

    array-length v0, v0

    if-lez v0, :cond_1c

    const/4 v0, 0x0

    :goto_a
    iget-object v1, p0, Lcom/google/android/gms/internal/zzaf$zzf;->zzga:[[B

    array-length v1, v1

    if-ge v0, v1, :cond_1c

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaf$zzf;->zzga:[[B

    aget-object v1, v1, v0

    if-eqz v1, :cond_19

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v1}, Lcom/google/android/gms/internal/zzart;->zzb(I[B)V

    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_1c
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaf$zzf;->zzfv:[B

    if-eqz v0, :cond_26

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaf$zzf;->zzfv:[B

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzart;->zzb(I[B)V

    :cond_26
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaf$zzf;->zzgb:Ljava/lang/Integer;

    if-eqz v0, :cond_34

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaf$zzf;->zzgb:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzart;->zzaf(II)V

    :cond_34
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaf$zzf;->zzgc:Ljava/lang/Integer;

    if-eqz v0, :cond_42

    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaf$zzf;->zzgc:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzart;->zzaf(II)V

    :cond_42
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

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzaf$zzf;->zzm(Lcom/google/android/gms/internal/zzars;)Lcom/google/android/gms/internal/zzaf$zzf;

    move-result-object v0

    return-object v0
.end method

.method public zzm(Lcom/google/android/gms/internal/zzars;)Lcom/google/android/gms/internal/zzaf$zzf;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    :cond_1
    :goto_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzars;->bU()I

    move-result v0

    sparse-switch v0, :sswitch_data_68

    invoke-super {p0, p1, v0}, Lcom/google/android/gms/internal/zzaru;->zza(Lcom/google/android/gms/internal/zzars;I)Z

    move-result v0

    if-nez v0, :cond_1

    :sswitch_e
    return-object p0

    :sswitch_f
    const/16 v0, 0xa

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzasd;->zzc(Lcom/google/android/gms/internal/zzars;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaf$zzf;->zzga:[[B

    if-nez v0, :cond_35

    move v0, v1

    :goto_1a
    add-int/2addr v2, v0

    new-array v2, v2, [[B

    if-eqz v0, :cond_24

    iget-object v3, p0, Lcom/google/android/gms/internal/zzaf$zzf;->zzga:[[B

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_24
    :goto_24
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_39

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzars;->readBytes()[B

    move-result-object v3

    aput-object v3, v2, v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzars;->bU()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_24

    :cond_35
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaf$zzf;->zzga:[[B

    array-length v0, v0

    goto :goto_1a

    :cond_39
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzars;->readBytes()[B

    move-result-object v3

    aput-object v3, v2, v0

    iput-object v2, p0, Lcom/google/android/gms/internal/zzaf$zzf;->zzga:[[B

    goto :goto_1

    :sswitch_42
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzars;->readBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaf$zzf;->zzfv:[B

    goto :goto_1

    :sswitch_49
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzars;->bY()I

    move-result v0

    packed-switch v0, :pswitch_data_7e

    goto :goto_1

    :pswitch_51
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaf$zzf;->zzgb:Ljava/lang/Integer;

    goto :goto_1

    :sswitch_58
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzars;->bY()I

    move-result v0

    packed-switch v0, :pswitch_data_86

    goto :goto_1

    :pswitch_60
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaf$zzf;->zzgc:Ljava/lang/Integer;

    goto :goto_1

    nop

    :sswitch_data_68
    .sparse-switch
        0x0 -> :sswitch_e
        0xa -> :sswitch_f
        0x12 -> :sswitch_42
        0x18 -> :sswitch_49
        0x20 -> :sswitch_58
    .end sparse-switch

    :pswitch_data_7e
    .packed-switch 0x0
        :pswitch_51
        :pswitch_51
    .end packed-switch

    :pswitch_data_86
    .packed-switch 0x0
        :pswitch_60
        :pswitch_60
    .end packed-switch
.end method

.method protected zzx()I
    .registers 6

    const/4 v0, 0x0

    invoke-super {p0}, Lcom/google/android/gms/internal/zzaru;->zzx()I

    move-result v3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaf$zzf;->zzga:[[B

    if-eqz v1, :cond_57

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaf$zzf;->zzga:[[B

    array-length v1, v1

    if-lez v1, :cond_57

    move v1, v0

    move v2, v0

    :goto_10
    iget-object v4, p0, Lcom/google/android/gms/internal/zzaf$zzf;->zzga:[[B

    array-length v4, v4

    if-ge v0, v4, :cond_25

    iget-object v4, p0, Lcom/google/android/gms/internal/zzaf$zzf;->zzga:[[B

    aget-object v4, v4, v0

    if-eqz v4, :cond_22

    add-int/lit8 v2, v2, 0x1

    invoke-static {v4}, Lcom/google/android/gms/internal/zzart;->zzbg([B)I

    move-result v4

    add-int/2addr v1, v4

    :cond_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :cond_25
    add-int v0, v3, v1

    mul-int/lit8 v1, v2, 0x1

    add-int/2addr v0, v1

    :goto_2a
    iget-object v1, p0, Lcom/google/android/gms/internal/zzaf$zzf;->zzfv:[B

    if-eqz v1, :cond_36

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaf$zzf;->zzfv:[B

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzart;->zzc(I[B)I

    move-result v1

    add-int/2addr v0, v1

    :cond_36
    iget-object v1, p0, Lcom/google/android/gms/internal/zzaf$zzf;->zzgb:Ljava/lang/Integer;

    if-eqz v1, :cond_46

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaf$zzf;->zzgb:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzart;->zzah(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_46
    iget-object v1, p0, Lcom/google/android/gms/internal/zzaf$zzf;->zzgc:Ljava/lang/Integer;

    if-eqz v1, :cond_56

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaf$zzf;->zzgc:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzart;->zzah(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_56
    return v0

    :cond_57
    move v0, v3

    goto :goto_2a
.end method
