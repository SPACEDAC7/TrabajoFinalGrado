.class public Lcom/google/android/gms/internal/zzdh;
.super Lcom/google/android/gms/internal/zzdc;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzji;
.end annotation


# instance fields
.field private zzaxn:Ljava/security/MessageDigest;

.field private final zzaxq:I

.field private final zzaxr:I


# direct methods
.method public constructor <init>(I)V
    .registers 4

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzdc;-><init>()V

    div-int/lit8 v0, p1, 0x8

    rem-int/lit8 v1, p1, 0x8

    if-lez v1, :cond_b

    add-int/lit8 v0, v0, 0x1

    :cond_b
    iput v0, p0, Lcom/google/android/gms/internal/zzdh;->zzaxq:I

    iput p1, p0, Lcom/google/android/gms/internal/zzdh;->zzaxr:I

    return-void
.end method


# virtual methods
.method public zzag(Ljava/lang/String;)[B
    .registers 11

    const/16 v8, 0x8

    const/4 v1, 0x0

    iget-object v4, p0, Lcom/google/android/gms/internal/zzdh;->zzako:Ljava/lang/Object;

    monitor-enter v4

    :try_start_6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzdh;->zzjr()Ljava/security/MessageDigest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzdh;->zzaxn:Ljava/security/MessageDigest;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdh;->zzaxn:Ljava/security/MessageDigest;

    if-nez v0, :cond_15

    const/4 v0, 0x0

    new-array v0, v0, [B

    monitor-exit v4

    :goto_14
    return-object v0

    :cond_15
    iget-object v0, p0, Lcom/google/android/gms/internal/zzdh;->zzaxn:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->reset()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdh;->zzaxn:Ljava/security/MessageDigest;

    const-string v2, "UTF-8"

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/security/MessageDigest;->update([B)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdh;->zzaxn:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    array-length v0, v2

    iget v3, p0, Lcom/google/android/gms/internal/zzdh;->zzaxq:I

    if-le v0, v3, :cond_55

    iget v0, p0, Lcom/google/android/gms/internal/zzdh;->zzaxq:I

    :goto_36
    new-array v0, v0, [B

    const/4 v3, 0x0

    const/4 v5, 0x0

    array-length v6, v0

    invoke-static {v2, v3, v0, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v2, p0, Lcom/google/android/gms/internal/zzdh;->zzaxr:I

    rem-int/lit8 v2, v2, 0x8

    if-lez v2, :cond_6f

    const-wide/16 v2, 0x0

    :goto_46
    array-length v5, v0

    if-ge v1, v5, :cond_57

    if-lez v1, :cond_4c

    shl-long/2addr v2, v8

    :cond_4c
    aget-byte v5, v0, v1

    and-int/lit16 v5, v5, 0xff

    int-to-long v6, v5

    add-long/2addr v2, v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_46

    :cond_55
    array-length v0, v2

    goto :goto_36

    :cond_57
    iget v1, p0, Lcom/google/android/gms/internal/zzdh;->zzaxr:I

    rem-int/lit8 v1, v1, 0x8

    rsub-int/lit8 v1, v1, 0x8

    ushr-long/2addr v2, v1

    iget v1, p0, Lcom/google/android/gms/internal/zzdh;->zzaxq:I

    add-int/lit8 v1, v1, -0x1

    :goto_62
    if-ltz v1, :cond_6f

    const-wide/16 v6, 0xff

    and-long/2addr v6, v2

    long-to-int v5, v6

    int-to-byte v5, v5

    aput-byte v5, v0, v1

    ushr-long/2addr v2, v8

    add-int/lit8 v1, v1, -0x1

    goto :goto_62

    :cond_6f
    monitor-exit v4

    goto :goto_14

    :catchall_71
    move-exception v0

    monitor-exit v4
    :try_end_73
    .catchall {:try_start_6 .. :try_end_73} :catchall_71

    throw v0
.end method
