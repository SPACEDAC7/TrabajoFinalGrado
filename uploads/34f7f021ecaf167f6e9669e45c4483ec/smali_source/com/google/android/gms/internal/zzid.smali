.class public Lcom/google/android/gms/internal/zzid;
.super Landroid/os/Handler;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzji;
.end annotation


# instance fields
.field private final zzceu:Lcom/google/android/gms/internal/zzic;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    new-instance v0, Lcom/google/android/gms/internal/zzie;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_c

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    :cond_c
    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzie;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzid;-><init>(Lcom/google/android/gms/internal/zzic;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/zzic;)V
    .registers 2

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzid;->zzceu:Lcom/google/android/gms/internal/zzic;

    return-void
.end method

.method private zzd(Lorg/json/JSONObject;)V
    .registers 6

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzid;->zzceu:Lcom/google/android/gms/internal/zzic;

    const-string v1, "request_id"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "base_url"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "html"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/internal/zzic;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_17} :catch_18

    :goto_17
    return-void

    :catch_18
    move-exception v0

    goto :goto_17
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    :try_start_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_7

    :cond_6
    :goto_6
    return-void

    :cond_7
    new-instance v1, Lorg/json/JSONObject;

    const-string v2, "data"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "fetch_html"

    const-string v2, "message_name"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/zzid;->zzd(Lorg/json/JSONObject;)V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_23} :catch_24

    goto :goto_6

    :catch_24
    move-exception v0

    goto :goto_6
.end method
