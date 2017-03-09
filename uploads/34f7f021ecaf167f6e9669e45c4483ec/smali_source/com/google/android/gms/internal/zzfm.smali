.class public Lcom/google/android/gms/internal/zzfm;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzfe;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzji;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzfm$zza;
    }
.end annotation


# instance fields
.field private final zzako:Ljava/lang/Object;

.field private final zzbqx:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzfm$zza;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfm;->zzako:Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfm;->zzbqx:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zzmd;Ljava/util/Map;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzmd;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "id"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "fail"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "fail_reason"

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "result"

    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/internal/zzfm;->zzako:Ljava/lang/Object;

    monitor-enter v5

    :try_start_23
    iget-object v4, p0, Lcom/google/android/gms/internal/zzfm;->zzbqx:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/zzfm$zza;

    if-nez v4, :cond_4b

    const-string v1, "Received result for unexpected method invocation: "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_42

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_3d
    invoke-static {v0}, Lcom/google/android/gms/internal/zzkx;->zzdi(Ljava/lang/String;)V

    monitor-exit v5

    :goto_41
    return-void

    :cond_42
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_3d

    :catchall_48
    move-exception v0

    monitor-exit v5
    :try_end_4a
    .catchall {:try_start_23 .. :try_end_4a} :catchall_48

    throw v0

    :cond_4b
    :try_start_4b
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_56

    invoke-interface {v4, v2}, Lcom/google/android/gms/internal/zzfm$zza;->zzbf(Ljava/lang/String;)V

    monitor-exit v5

    goto :goto_41

    :cond_56
    if-nez v3, :cond_5f

    const-string v0, "No result."

    invoke-interface {v4, v0}, Lcom/google/android/gms/internal/zzfm$zza;->zzbf(Ljava/lang/String;)V

    monitor-exit v5
    :try_end_5e
    .catchall {:try_start_4b .. :try_end_5e} :catchall_48

    goto :goto_41

    :cond_5f
    :try_start_5f
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-interface {v4, v0}, Lcom/google/android/gms/internal/zzfm$zza;->zzc(Lorg/json/JSONObject;)V
    :try_end_67
    .catch Lorg/json/JSONException; {:try_start_5f .. :try_end_67} :catch_69
    .catchall {:try_start_5f .. :try_end_67} :catchall_48

    :goto_67
    :try_start_67
    monitor-exit v5

    goto :goto_41

    :catch_69
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Lcom/google/android/gms/internal/zzfm$zza;->zzbf(Ljava/lang/String;)V
    :try_end_71
    .catchall {:try_start_67 .. :try_end_71} :catchall_48

    goto :goto_67
.end method
