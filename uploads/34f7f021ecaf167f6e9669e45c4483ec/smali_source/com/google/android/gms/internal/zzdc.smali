.class public abstract Lcom/google/android/gms/internal/zzdc;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzji;
.end annotation


# static fields
.field private static zzaxf:Ljava/security/MessageDigest;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# instance fields
.field protected zzako:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/gms/internal/zzdc;->zzaxf:Ljava/security/MessageDigest;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzdc;->zzako:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method abstract zzag(Ljava/lang/String;)[B
.end method

.method protected zzjr()Ljava/security/MessageDigest;
    .registers 4
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v1, p0, Lcom/google/android/gms/internal/zzdc;->zzako:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/google/android/gms/internal/zzdc;->zzaxf:Ljava/security/MessageDigest;

    if-eqz v0, :cond_b

    sget-object v0, Lcom/google/android/gms/internal/zzdc;->zzaxf:Ljava/security/MessageDigest;

    monitor-exit v1
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_1e

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    :goto_c
    const/4 v2, 0x2

    if-ge v0, v2, :cond_1a

    :try_start_f
    const-string v2, "MD5"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    sput-object v2, Lcom/google/android/gms/internal/zzdc;->zzaxf:Ljava/security/MessageDigest;
    :try_end_17
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_f .. :try_end_17} :catch_21
    .catchall {:try_start_f .. :try_end_17} :catchall_1e

    :goto_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_1a
    :try_start_1a
    sget-object v0, Lcom/google/android/gms/internal/zzdc;->zzaxf:Ljava/security/MessageDigest;

    monitor-exit v1

    goto :goto_a

    :catchall_1e
    move-exception v0

    monitor-exit v1
    :try_end_20
    .catchall {:try_start_1a .. :try_end_20} :catchall_1e

    throw v0

    :catch_21
    move-exception v2

    goto :goto_17
.end method
