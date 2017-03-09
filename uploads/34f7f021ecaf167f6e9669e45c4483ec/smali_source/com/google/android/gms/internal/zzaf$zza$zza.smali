.class public final Lcom/google/android/gms/internal/zzaf$zza$zza;
.super Lcom/google/android/gms/internal/zzaru;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzaf$zza;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzaru",
        "<",
        "Lcom/google/android/gms/internal/zzaf$zza$zza;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile zzfc:[Lcom/google/android/gms/internal/zzaf$zza$zza;


# instance fields
.field public zzdn:Ljava/lang/Long;

.field public zzdo:Ljava/lang/Long;

.field public zzfd:Ljava/lang/Long;

.field public zzfe:Ljava/lang/Long;

.field public zzff:Ljava/lang/Long;

.field public zzfg:Ljava/lang/Long;

.field public zzfh:Ljava/lang/Integer;

.field public zzfi:Ljava/lang/Long;

.field public zzfj:Ljava/lang/Long;

.field public zzfk:Ljava/lang/Long;

.field public zzfl:Ljava/lang/Integer;

.field public zzfm:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaru;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaf$zza$zza;->zzdn:Ljava/lang/Long;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaf$zza$zza;->zzdo:Ljava/lang/Long;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaf$zza$zza;->zzfd:Ljava/lang/Long;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaf$zza$zza;->zzfe:Ljava/lang/Long;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaf$zza$zza;->zzff:Ljava/lang/Long;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaf$zza$zza;->zzfg:Ljava/lang/Long;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaf$zza$zza;->zzfh:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaf$zza$zza;->zzfi:Ljava/lang/Long;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaf$zza$zza;->zzfj:Ljava/lang/Long;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaf$zza$zza;->zzfk:Ljava/lang/Long;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaf$zza$zza;->zzfl:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaf$zza$zza;->zzfm:Ljava/lang/Long;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzaf$zza$zza;->btP:I

    return-void
.end method

.method public static zzaa()[Lcom/google/android/gms/internal/zzaf$zza$zza;
    .registers 2

    sget-object v0, Lcom/google/android/gms/internal/zzaf$zza$zza;->zzfc:[Lcom/google/android/gms/internal/zzaf$zza$zza;

    if-nez v0, :cond_11

    sget-object v1, Lcom/google/android/gms/internal/zzary;->btO:Ljava/lang/Object;

    monitor-enter v1

    :try_start_7
    sget-object v0, Lcom/google/android/gms/internal/zzaf$zza$zza;->zzfc:[Lcom/google/android/gms/internal/zzaf$zza$zza;

    if-nez v0, :cond_10

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/gms/internal/zzaf$zza$zza;

    sput-object v0, Lcom/google/android/gms/internal/zzaf$zza$zza;->zzfc:[Lcom/google/android/gms/internal/zzaf$zza$zza;

    :cond_10
    monitor-exit v1
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_14

    :cond_11
    sget-object v0, Lcom/google/android/gms/internal/zzaf$zza$zza;->zzfc:[Lcom/google/android/gms/internal/zzaf$zza$zza;

    return-object v0

    :catchall_14
    move-exception v0

    :try_start_15
    monitor-exit v1
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw v0
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zzart;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaf$zza$zza;->zzdn:Ljava/lang/Long;

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaf$zza$zza;->zzdn:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/android/gms/internal/zzart;->zzb(IJ)V

    :cond_e
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaf$zza$zza;->zzdo:Ljava/lang/Long;

    if-eqz v0, :cond_1c

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaf$zza$zza;->zzdo:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/android/gms/internal/zzart;->zzb(IJ)V

    :cond_1c
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaf$zza$zza;->zzfd:Ljava/lang/Long;

    if-eqz v0, :cond_2a

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaf$zza$zza;->zzfd:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/android/gms/internal/zzart;->zzb(IJ)V

    :cond_2a
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaf$zza$zza;->zzfe:Ljava/lang/Long;

    if-eqz v0, :cond_38

    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaf$zza$zza;->zzfe:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/android/gms/internal/zzart;->zzb(IJ)V

    :cond_38
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaf$zza$zza;->zzff:Ljava/lang/Long;

    if-eqz v0, :cond_46

    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaf$zza$zza;->zzff:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/android/gms/internal/zzart;->zzb(IJ)V

    :cond_46
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaf$zza$zza;->zzfg:Ljava/lang/Long;

    if-eqz v0, :cond_54

    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaf$zza$zza;->zzfg:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/android/gms/internal/zzart;->zzb(IJ)V

    :cond_54
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaf$zza$zza;->zzfh:Ljava/lang/Integer;

    if-eqz v0, :cond_62

    const/4 v0, 0x7

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaf$zza$zza;->zzfh:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzart;->zzaf(II)V

    :cond_62
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaf$zza$zza;->zzfi:Ljava/lang/Long;

    if-eqz v0, :cond_71

    const/16 v0, 0x8

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaf$zza$zza;->zzfi:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/android/gms/internal/zzart;->zzb(IJ)V

    :cond_71
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaf$zza$zza;->zzfj:Ljava/lang/Long;

    if-eqz v0, :cond_80

    const/16 v0, 0x9

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaf$zza$zza;->zzfj:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/android/gms/internal/zzart;->zzb(IJ)V

    :cond_80
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaf$zza$zza;->zzfk:Ljava/lang/Long;

    if-eqz v0, :cond_8f

    const/16 v0, 0xa

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaf$zza$zza;->zzfk:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/android/gms/internal/zzart;->zzb(IJ)V

    :cond_8f
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaf$zza$zza;->zzfl:Ljava/lang/Integer;

    if-eqz v0, :cond_9e

    const/16 v0, 0xb

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaf$zza$zza;->zzfl:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzart;->zzaf(II)V

    :cond_9e
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaf$zza$zza;->zzfm:Ljava/lang/Long;

    if-eqz v0, :cond_ad

    const/16 v0, 0xc

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaf$zza$zza;->zzfm:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/android/gms/internal/zzart;->zzb(IJ)V

    :cond_ad
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

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzaf$zza$zza;->zzg(Lcom/google/android/gms/internal/zzars;)Lcom/google/android/gms/internal/zzaf$zza$zza;

    move-result-object v0

    return-object v0
.end method

.method public zzg(Lcom/google/android/gms/internal/zzars;)Lcom/google/android/gms/internal/zzaf$zza$zza;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzars;->bU()I

    move-result v0

    sparse-switch v0, :sswitch_data_9e

    invoke-super {p0, p1, v0}, Lcom/google/android/gms/internal/zzaru;->zza(Lcom/google/android/gms/internal/zzars;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_d
    return-object p0

    :sswitch_e
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzars;->bX()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaf$zza$zza;->zzdn:Ljava/lang/Long;

    goto :goto_0

    :sswitch_19
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzars;->bX()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaf$zza$zza;->zzdo:Ljava/lang/Long;

    goto :goto_0

    :sswitch_24
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzars;->bX()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaf$zza$zza;->zzfd:Ljava/lang/Long;

    goto :goto_0

    :sswitch_2f
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzars;->bX()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaf$zza$zza;->zzfe:Ljava/lang/Long;

    goto :goto_0

    :sswitch_3a
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzars;->bX()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaf$zza$zza;->zzff:Ljava/lang/Long;

    goto :goto_0

    :sswitch_45
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzars;->bX()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaf$zza$zza;->zzfg:Ljava/lang/Long;

    goto :goto_0

    :sswitch_50
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzars;->bY()I

    move-result v0

    sparse-switch v0, :sswitch_data_d4

    goto :goto_0

    :sswitch_58
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaf$zza$zza;->zzfh:Ljava/lang/Integer;

    goto :goto_0

    :sswitch_5f
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzars;->bX()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaf$zza$zza;->zzfi:Ljava/lang/Long;

    goto :goto_0

    :sswitch_6a
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzars;->bX()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaf$zza$zza;->zzfj:Ljava/lang/Long;

    goto :goto_0

    :sswitch_75
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzars;->bX()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaf$zza$zza;->zzfk:Ljava/lang/Long;

    goto :goto_0

    :sswitch_80
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzars;->bY()I

    move-result v0

    sparse-switch v0, :sswitch_data_e6

    goto/16 :goto_0

    :sswitch_89
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaf$zza$zza;->zzfl:Ljava/lang/Integer;

    goto/16 :goto_0

    :sswitch_91
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzars;->bX()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaf$zza$zza;->zzfm:Ljava/lang/Long;

    goto/16 :goto_0

    nop

    :sswitch_data_9e
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
        0x10 -> :sswitch_19
        0x18 -> :sswitch_24
        0x20 -> :sswitch_2f
        0x28 -> :sswitch_3a
        0x30 -> :sswitch_45
        0x38 -> :sswitch_50
        0x40 -> :sswitch_5f
        0x48 -> :sswitch_6a
        0x50 -> :sswitch_75
        0x58 -> :sswitch_80
        0x60 -> :sswitch_91
    .end sparse-switch

    :sswitch_data_d4
    .sparse-switch
        0x0 -> :sswitch_58
        0x1 -> :sswitch_58
        0x2 -> :sswitch_58
        0x3e8 -> :sswitch_58
    .end sparse-switch

    :sswitch_data_e6
    .sparse-switch
        0x0 -> :sswitch_89
        0x1 -> :sswitch_89
        0x2 -> :sswitch_89
        0x3e8 -> :sswitch_89
    .end sparse-switch
.end method

.method protected zzx()I
    .registers 5

    invoke-super {p0}, Lcom/google/android/gms/internal/zzaru;->zzx()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaf$zza$zza;->zzdn:Ljava/lang/Long;

    if-eqz v1, :cond_14

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaf$zza$zza;->zzdn:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/zzart;->zzf(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_14
    iget-object v1, p0, Lcom/google/android/gms/internal/zzaf$zza$zza;->zzdo:Ljava/lang/Long;

    if-eqz v1, :cond_24

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaf$zza$zza;->zzdo:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/zzart;->zzf(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_24
    iget-object v1, p0, Lcom/google/android/gms/internal/zzaf$zza$zza;->zzfd:Ljava/lang/Long;

    if-eqz v1, :cond_34

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaf$zza$zza;->zzfd:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/zzart;->zzf(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_34
    iget-object v1, p0, Lcom/google/android/gms/internal/zzaf$zza$zza;->zzfe:Ljava/lang/Long;

    if-eqz v1, :cond_44

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaf$zza$zza;->zzfe:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/zzart;->zzf(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_44
    iget-object v1, p0, Lcom/google/android/gms/internal/zzaf$zza$zza;->zzff:Ljava/lang/Long;

    if-eqz v1, :cond_54

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaf$zza$zza;->zzff:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/zzart;->zzf(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_54
    iget-object v1, p0, Lcom/google/android/gms/internal/zzaf$zza$zza;->zzfg:Ljava/lang/Long;

    if-eqz v1, :cond_64

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaf$zza$zza;->zzfg:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/zzart;->zzf(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_64
    iget-object v1, p0, Lcom/google/android/gms/internal/zzaf$zza$zza;->zzfh:Ljava/lang/Integer;

    if-eqz v1, :cond_74

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaf$zza$zza;->zzfh:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzart;->zzah(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_74
    iget-object v1, p0, Lcom/google/android/gms/internal/zzaf$zza$zza;->zzfi:Ljava/lang/Long;

    if-eqz v1, :cond_85

    const/16 v1, 0x8

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaf$zza$zza;->zzfi:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/zzart;->zzf(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_85
    iget-object v1, p0, Lcom/google/android/gms/internal/zzaf$zza$zza;->zzfj:Ljava/lang/Long;

    if-eqz v1, :cond_96

    const/16 v1, 0x9

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaf$zza$zza;->zzfj:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/zzart;->zzf(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_96
    iget-object v1, p0, Lcom/google/android/gms/internal/zzaf$zza$zza;->zzfk:Ljava/lang/Long;

    if-eqz v1, :cond_a7

    const/16 v1, 0xa

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaf$zza$zza;->zzfk:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/zzart;->zzf(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_a7
    iget-object v1, p0, Lcom/google/android/gms/internal/zzaf$zza$zza;->zzfl:Ljava/lang/Integer;

    if-eqz v1, :cond_b8

    const/16 v1, 0xb

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaf$zza$zza;->zzfl:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzart;->zzah(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_b8
    iget-object v1, p0, Lcom/google/android/gms/internal/zzaf$zza$zza;->zzfm:Ljava/lang/Long;

    if-eqz v1, :cond_c9

    const/16 v1, 0xc

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaf$zza$zza;->zzfm:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/zzart;->zzf(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_c9
    return v0
.end method
