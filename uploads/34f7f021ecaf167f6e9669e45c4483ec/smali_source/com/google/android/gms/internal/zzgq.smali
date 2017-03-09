.class public final Lcom/google/android/gms/internal/zzgq;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzji;
.end annotation


# instance fields
.field public final zzbvi:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzgp;",
            ">;"
        }
    .end annotation
.end field

.field public final zzbvj:J

.field public final zzbvk:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final zzbvl:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final zzbvm:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final zzbvn:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final zzbvo:Z

.field public final zzbvp:Ljava/lang/String;

.field public final zzbvq:J

.field public final zzbvr:Ljava/lang/String;

.field public final zzbvs:I

.field public final zzbvt:I

.field public final zzbvu:J

.field public final zzbvv:Z

.field public zzbvw:I

.field public zzbvx:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 v7, 0x2

    const/4 v3, -0x1

    const-wide/16 v4, -0x1

    const/4 v11, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v7}, Lcom/google/android/gms/internal/zzkx;->zzbi(I)Z

    move-result v0

    if-eqz v0, :cond_2b

    const-string v2, "Mediation Response JSON: "

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_5a

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_28
    invoke-static {v0}, Lcom/google/android/gms/internal/zzkx;->v(Ljava/lang/String;)V

    :cond_2b
    const-string v0, "ad_networks"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    new-instance v8, Ljava/util/ArrayList;

    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v0

    invoke-direct {v8, v0}, Ljava/util/ArrayList;-><init>(I)V

    move v0, v1

    move v2, v3

    :goto_3c
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v0, v9, :cond_60

    new-instance v9, Lcom/google/android/gms/internal/zzgp;

    invoke-virtual {v7, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/google/android/gms/internal/zzgp;-><init>(Lorg/json/JSONObject;)V

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-gez v2, :cond_57

    invoke-direct {p0, v9}, Lcom/google/android/gms/internal/zzgq;->zza(Lcom/google/android/gms/internal/zzgp;)Z

    move-result v9

    if-eqz v9, :cond_57

    move v2, v0

    :cond_57
    add-int/lit8 v0, v0, 0x1

    goto :goto_3c

    :cond_5a
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_28

    :cond_60
    iput v2, p0, Lcom/google/android/gms/internal/zzgq;->zzbvw:I

    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzgq;->zzbvx:I

    invoke-static {v8}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzgq;->zzbvi:Ljava/util/List;

    const-string v0, "qdata"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzgq;->zzbvp:Ljava/lang/String;

    const-string v0, "fs_model_type"

    invoke-virtual {v6, v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzgq;->zzbvt:I

    const-string/jumbo v0, "timeout_ms"

    invoke-virtual {v6, v0, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gms/internal/zzgq;->zzbvu:J

    const-string v0, "settings"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_105

    const-string v2, "ad_network_timeout_millis"

    invoke-virtual {v0, v2, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gms/internal/zzgq;->zzbvj:J

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzhf()Lcom/google/android/gms/internal/zzgv;

    move-result-object v2

    const-string v3, "click_urls"

    invoke-virtual {v2, v0, v3}, Lcom/google/android/gms/internal/zzgv;->zza(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/zzgq;->zzbvk:Ljava/util/List;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzhf()Lcom/google/android/gms/internal/zzgv;

    move-result-object v2

    const-string v3, "imp_urls"

    invoke-virtual {v2, v0, v3}, Lcom/google/android/gms/internal/zzgv;->zza(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/zzgq;->zzbvl:Ljava/util/List;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzhf()Lcom/google/android/gms/internal/zzgv;

    move-result-object v2

    const-string v3, "nofill_urls"

    invoke-virtual {v2, v0, v3}, Lcom/google/android/gms/internal/zzgv;->zza(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/zzgq;->zzbvm:Ljava/util/List;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzhf()Lcom/google/android/gms/internal/zzgv;

    move-result-object v2

    const-string v3, "remote_ping_urls"

    invoke-virtual {v2, v0, v3}, Lcom/google/android/gms/internal/zzgv;->zza(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/zzgq;->zzbvn:Ljava/util/List;

    const-string v2, "render_in_browser"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/android/gms/internal/zzgq;->zzbvo:Z

    const-string v2, "refresh"

    invoke-virtual {v0, v2, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v2

    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-lez v6, :cond_fa

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    :goto_de
    iput-wide v2, p0, Lcom/google/android/gms/internal/zzgq;->zzbvq:J

    const-string v2, "rewards"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/ads/internal/reward/mediation/client/RewardItemParcel;->zza(Lorg/json/JSONArray;)Lcom/google/android/gms/ads/internal/reward/mediation/client/RewardItemParcel;

    move-result-object v2

    if-nez v2, :cond_fc

    iput-object v11, p0, Lcom/google/android/gms/internal/zzgq;->zzbvr:Ljava/lang/String;

    iput v1, p0, Lcom/google/android/gms/internal/zzgq;->zzbvs:I

    :goto_f0
    const-string/jumbo v2, "use_displayed_impression"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzgq;->zzbvv:Z

    :goto_f9
    return-void

    :cond_fa
    move-wide v2, v4

    goto :goto_de

    :cond_fc
    iget-object v3, v2, Lcom/google/android/gms/ads/internal/reward/mediation/client/RewardItemParcel;->type:Ljava/lang/String;

    iput-object v3, p0, Lcom/google/android/gms/internal/zzgq;->zzbvr:Ljava/lang/String;

    iget v2, v2, Lcom/google/android/gms/ads/internal/reward/mediation/client/RewardItemParcel;->zzcsc:I

    iput v2, p0, Lcom/google/android/gms/internal/zzgq;->zzbvs:I

    goto :goto_f0

    :cond_105
    iput-wide v4, p0, Lcom/google/android/gms/internal/zzgq;->zzbvj:J

    iput-object v11, p0, Lcom/google/android/gms/internal/zzgq;->zzbvk:Ljava/util/List;

    iput-object v11, p0, Lcom/google/android/gms/internal/zzgq;->zzbvl:Ljava/util/List;

    iput-object v11, p0, Lcom/google/android/gms/internal/zzgq;->zzbvm:Ljava/util/List;

    iput-object v11, p0, Lcom/google/android/gms/internal/zzgq;->zzbvn:Ljava/util/List;

    iput-wide v4, p0, Lcom/google/android/gms/internal/zzgq;->zzbvq:J

    iput-object v11, p0, Lcom/google/android/gms/internal/zzgq;->zzbvr:Ljava/lang/String;

    iput v1, p0, Lcom/google/android/gms/internal/zzgq;->zzbvs:I

    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzgq;->zzbvv:Z

    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzgq;->zzbvo:Z

    goto :goto_f9
.end method

.method public constructor <init>(Ljava/util/List;JLjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;ZLjava/lang/String;JIILjava/lang/String;IIJZ)V
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzgp;",
            ">;J",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z",
            "Ljava/lang/String;",
            "JII",
            "Ljava/lang/String;",
            "IIJZ)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzgq;->zzbvi:Ljava/util/List;

    iput-wide p2, p0, Lcom/google/android/gms/internal/zzgq;->zzbvj:J

    iput-object p4, p0, Lcom/google/android/gms/internal/zzgq;->zzbvk:Ljava/util/List;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzgq;->zzbvl:Ljava/util/List;

    iput-object p6, p0, Lcom/google/android/gms/internal/zzgq;->zzbvm:Ljava/util/List;

    iput-object p7, p0, Lcom/google/android/gms/internal/zzgq;->zzbvn:Ljava/util/List;

    iput-boolean p8, p0, Lcom/google/android/gms/internal/zzgq;->zzbvo:Z

    iput-object p9, p0, Lcom/google/android/gms/internal/zzgq;->zzbvp:Ljava/lang/String;

    iput-wide p10, p0, Lcom/google/android/gms/internal/zzgq;->zzbvq:J

    iput p12, p0, Lcom/google/android/gms/internal/zzgq;->zzbvw:I

    iput p13, p0, Lcom/google/android/gms/internal/zzgq;->zzbvx:I

    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/google/android/gms/internal/zzgq;->zzbvr:Ljava/lang/String;

    move/from16 v0, p15

    iput v0, p0, Lcom/google/android/gms/internal/zzgq;->zzbvs:I

    move/from16 v0, p16

    iput v0, p0, Lcom/google/android/gms/internal/zzgq;->zzbvt:I

    move-wide/from16 v0, p17

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzgq;->zzbvu:J

    move/from16 v0, p19

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzgq;->zzbvv:Z

    return-void
.end method

.method private zza(Lcom/google/android/gms/internal/zzgp;)Z
    .registers 5

    iget-object v0, p1, Lcom/google/android/gms/internal/zzgp;->zzbuu:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "com.google.ads.mediation.admob.AdMobAdapter"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_1b
    return v0

    :cond_1c
    const/4 v0, 0x0

    goto :goto_1b
.end method
