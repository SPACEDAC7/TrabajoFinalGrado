.class Lcom/google/android/gms/ads/internal/formats/zzj$3$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzme$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/ads/internal/formats/zzj$3$1;->zza(Lcom/google/android/gms/internal/zzmd;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzboh:Ljava/util/Map;

.field final synthetic zzboi:Lcom/google/android/gms/ads/internal/formats/zzj$3$1;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/formats/zzj$3$1;Ljava/util/Map;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/formats/zzj$3$1$1;->zzboi:Lcom/google/android/gms/ads/internal/formats/zzj$3$1;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/formats/zzj$3$1$1;->zzboh:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zzmd;Z)V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzj$3$1$1;->zzboi:Lcom/google/android/gms/ads/internal/formats/zzj$3$1;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/formats/zzj$3$1;->zzbog:Lcom/google/android/gms/ads/internal/formats/zzj$3;

    iget-object v1, v0, Lcom/google/android/gms/ads/internal/formats/zzj$3;->zzboe:Lcom/google/android/gms/ads/internal/formats/zzj;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzj$3$1$1;->zzboh:Ljava/util/Map;

    const-string v2, "id"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/formats/zzj;->zza(Lcom/google/android/gms/ads/internal/formats/zzj;Ljava/lang/String;)Ljava/lang/String;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_18
    const-string v1, "messageType"

    const-string v2, "htmlLoaded"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "id"

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/formats/zzj$3$1$1;->zzboi:Lcom/google/android/gms/ads/internal/formats/zzj$3$1;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/formats/zzj$3$1;->zzbog:Lcom/google/android/gms/ads/internal/formats/zzj$3;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/formats/zzj$3;->zzboe:Lcom/google/android/gms/ads/internal/formats/zzj;

    invoke-static {v2}, Lcom/google/android/gms/ads/internal/formats/zzj;->zza(Lcom/google/android/gms/ads/internal/formats/zzj;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/formats/zzj$3$1$1;->zzboi:Lcom/google/android/gms/ads/internal/formats/zzj$3$1;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/formats/zzj$3$1;->zzbof:Lcom/google/android/gms/internal/zzgi;

    const-string v2, "sendMessageToNativeJs"

    invoke-interface {v1, v2, v0}, Lcom/google/android/gms/internal/zzgi;->zzb(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_37
    .catch Lorg/json/JSONException; {:try_start_18 .. :try_end_37} :catch_38

    :goto_37
    return-void

    :catch_38
    move-exception v0

    const-string v1, "Unable to dispatch sendMessageToNativeJs event"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzkx;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_37
.end method
