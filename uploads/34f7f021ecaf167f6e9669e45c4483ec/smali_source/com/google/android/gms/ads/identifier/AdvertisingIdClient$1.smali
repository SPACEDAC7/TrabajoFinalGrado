.class Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$1;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->zza(Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;ZFLjava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzall:Ljava/lang/String;

.field final synthetic zzalm:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$1;->zzalm:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;

    iput-object p2, p0, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$1;->zzall:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    new-instance v0, Lcom/google/android/gms/ads/identifier/zza;

    invoke-direct {v0}, Lcom/google/android/gms/ads/identifier/zza;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$1;->zzall:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/identifier/zza;->zzv(Ljava/lang/String;)V

    return-void
.end method
