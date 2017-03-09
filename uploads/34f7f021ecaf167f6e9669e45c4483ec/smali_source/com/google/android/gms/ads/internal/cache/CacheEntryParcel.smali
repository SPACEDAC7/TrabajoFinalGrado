.class public Lcom/google/android/gms/ads/internal/cache/CacheEntryParcel;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzji;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/ads/internal/cache/CacheEntryParcel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final version:I

.field private zzayc:Landroid/os/ParcelFileDescriptor;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/ads/internal/cache/zzb;

    invoke-direct {v0}, Lcom/google/android/gms/ads/internal/cache/zzb;-><init>()V

    sput-object v0, Lcom/google/android/gms/ads/internal/cache/CacheEntryParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/ads/internal/cache/CacheEntryParcel;-><init>(ILandroid/os/ParcelFileDescriptor;)V

    return-void
.end method

.method constructor <init>(ILandroid/os/ParcelFileDescriptor;)V
    .registers 3
    .param p2    # Landroid/os/ParcelFileDescriptor;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/ads/internal/cache/CacheEntryParcel;->version:I

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/cache/CacheEntryParcel;->zzayc:Landroid/os/ParcelFileDescriptor;

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/ads/internal/cache/zzb;->zza(Lcom/google/android/gms/ads/internal/cache/CacheEntryParcel;Landroid/os/Parcel;I)V

    return-void
.end method

.method public declared-synchronized zzju()Z
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/cache/CacheEntryParcel;->zzayc:Landroid/os/ParcelFileDescriptor;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_a

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_6
    monitor-exit p0

    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_6

    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized zzjv()Ljava/io/InputStream;
    .registers 3
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_2
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/cache/CacheEntryParcel;->zzayc:Landroid/os/ParcelFileDescriptor;
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_13

    if-nez v1, :cond_8

    :goto_6
    monitor-exit p0

    return-object v0

    :cond_8
    :try_start_8
    new-instance v0, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/cache/CacheEntryParcel;->zzayc:Landroid/os/ParcelFileDescriptor;

    invoke-direct {v0, v1}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/cache/CacheEntryParcel;->zzayc:Landroid/os/ParcelFileDescriptor;
    :try_end_12
    .catchall {:try_start_8 .. :try_end_12} :catchall_13

    goto :goto_6

    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized zzjw()Landroid/os/ParcelFileDescriptor;
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/cache/CacheEntryParcel;->zzayc:Landroid/os/ParcelFileDescriptor;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method
