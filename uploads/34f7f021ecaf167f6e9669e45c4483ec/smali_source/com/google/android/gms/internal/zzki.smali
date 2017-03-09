.class public Lcom/google/android/gms/internal/zzki;
.super Lcom/google/android/gms/internal/zzkw;

# interfaces
.implements Lcom/google/android/gms/internal/zzkh;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzji;
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final zzako:Ljava/lang/Object;

.field private final zzcgf:Lcom/google/android/gms/internal/zzko$zza;

.field private final zzcri:J

.field private final zzcrt:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/concurrent/Future;",
            ">;"
        }
    .end annotation
.end field

.field private final zzcru:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final zzcrv:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzkc;",
            ">;"
        }
    .end annotation
.end field

.field private final zzcrw:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzkd;",
            ">;"
        }
    .end annotation
.end field

.field private final zzcrx:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final zzcry:Lcom/google/android/gms/internal/zzkb;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzko$zza;Lcom/google/android/gms/internal/zzkb;)V
    .registers 10

    sget-object v0, Lcom/google/android/gms/internal/zzdr;->zzbfy:Lcom/google/android/gms/internal/zzdn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdn;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzki;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzko$zza;Lcom/google/android/gms/internal/zzkb;J)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzko$zza;Lcom/google/android/gms/internal/zzkb;J)V
    .registers 8

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzkw;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzki;->zzcrt:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzki;->zzcru:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzki;->zzcrv:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzki;->zzcrw:Ljava/util/List;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzki;->zzcrx:Ljava/util/HashSet;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzki;->zzako:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzki;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzki;->zzcgf:Lcom/google/android/gms/internal/zzko$zza;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzki;->zzcry:Lcom/google/android/gms/internal/zzkb;

    iput-wide p4, p0, Lcom/google/android/gms/internal/zzki;->zzcri:J

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzki;)Lcom/google/android/gms/internal/zzkb;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzki;->zzcry:Lcom/google/android/gms/internal/zzkb;

    return-object v0
.end method

.method private zza(ILjava/lang/String;Lcom/google/android/gms/internal/zzgp;)Lcom/google/android/gms/internal/zzko;
    .registers 43
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/google/android/gms/internal/zzgp;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    new-instance v2, Lcom/google/android/gms/internal/zzko;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/internal/zzki;->zzcgf:Lcom/google/android/gms/internal/zzko$zza;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzko$zza;->zzcmx:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzcju:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/internal/zzki;->zzcgf:Lcom/google/android/gms/internal/zzko$zza;

    iget-object v5, v5, Lcom/google/android/gms/internal/zzko$zza;->zzcsu:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v5, v5, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzbvk:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzki;->zzcgf:Lcom/google/android/gms/internal/zzko$zza;

    iget-object v6, v6, Lcom/google/android/gms/internal/zzko$zza;->zzcsu:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v7, v6, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzbvl:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzki;->zzcgf:Lcom/google/android/gms/internal/zzko$zza;

    iget-object v6, v6, Lcom/google/android/gms/internal/zzko$zza;->zzcsu:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v8, v6, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzcld:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzki;->zzcgf:Lcom/google/android/gms/internal/zzko$zza;

    iget-object v6, v6, Lcom/google/android/gms/internal/zzko$zza;->zzcsu:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget v9, v6, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->orientation:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzki;->zzcgf:Lcom/google/android/gms/internal/zzko$zza;

    iget-object v6, v6, Lcom/google/android/gms/internal/zzko$zza;->zzcsu:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-wide v10, v6, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzbvq:J

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzki;->zzcgf:Lcom/google/android/gms/internal/zzko$zza;

    iget-object v6, v6, Lcom/google/android/gms/internal/zzko$zza;->zzcmx:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    iget-object v12, v6, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzcjx:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzki;->zzcgf:Lcom/google/android/gms/internal/zzko$zza;

    iget-object v6, v6, Lcom/google/android/gms/internal/zzko$zza;->zzcsu:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-boolean v13, v6, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzclb:Z

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzki;->zzcgf:Lcom/google/android/gms/internal/zzko$zza;

    iget-object v0, v6, Lcom/google/android/gms/internal/zzko$zza;->zzcsk:Lcom/google/android/gms/internal/zzgq;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzki;->zzcgf:Lcom/google/android/gms/internal/zzko$zza;

    iget-object v6, v6, Lcom/google/android/gms/internal/zzko$zza;->zzcsu:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-wide v0, v6, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzclc:J

    move-wide/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzki;->zzcgf:Lcom/google/android/gms/internal/zzko$zza;

    iget-object v0, v6, Lcom/google/android/gms/internal/zzko$zza;->zzarm:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzki;->zzcgf:Lcom/google/android/gms/internal/zzko$zza;

    iget-object v6, v6, Lcom/google/android/gms/internal/zzko$zza;->zzcsu:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-wide v0, v6, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzcla:J

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzki;->zzcgf:Lcom/google/android/gms/internal/zzko$zza;

    iget-wide v0, v6, Lcom/google/android/gms/internal/zzko$zza;->zzcso:J

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzki;->zzcgf:Lcom/google/android/gms/internal/zzko$zza;

    iget-object v6, v6, Lcom/google/android/gms/internal/zzko$zza;->zzcsu:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-wide v0, v6, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzclf:J

    move-wide/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzki;->zzcgf:Lcom/google/android/gms/internal/zzko$zza;

    iget-object v6, v6, Lcom/google/android/gms/internal/zzko$zza;->zzcsu:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v0, v6, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzclg:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzki;->zzcgf:Lcom/google/android/gms/internal/zzko$zza;

    iget-object v0, v6, Lcom/google/android/gms/internal/zzko$zza;->zzcsi:Lorg/json/JSONObject;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzki;->zzcgf:Lcom/google/android/gms/internal/zzko$zza;

    iget-object v6, v6, Lcom/google/android/gms/internal/zzko$zza;->zzcsu:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v0, v6, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzclq:Lcom/google/android/gms/ads/internal/reward/mediation/client/RewardItemParcel;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzki;->zzcgf:Lcom/google/android/gms/internal/zzko$zza;

    iget-object v6, v6, Lcom/google/android/gms/internal/zzko$zza;->zzcsu:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v0, v6, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzclr:Ljava/util/List;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzki;->zzcgf:Lcom/google/android/gms/internal/zzko$zza;

    iget-object v6, v6, Lcom/google/android/gms/internal/zzko$zza;->zzcsu:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v0, v6, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzcls:Ljava/util/List;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzki;->zzcgf:Lcom/google/android/gms/internal/zzko$zza;

    iget-object v6, v6, Lcom/google/android/gms/internal/zzko$zza;->zzcsu:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-boolean v0, v6, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzclt:Z

    move/from16 v34, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzki;->zzcgf:Lcom/google/android/gms/internal/zzko$zza;

    iget-object v6, v6, Lcom/google/android/gms/internal/zzko$zza;->zzcsu:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v0, v6, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzclu:Lcom/google/android/gms/ads/internal/request/AutoClickProtectionConfigurationParcel;

    move-object/from16 v35, v0

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/zzki;->zzub()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzki;->zzcgf:Lcom/google/android/gms/internal/zzko$zza;

    iget-object v6, v6, Lcom/google/android/gms/internal/zzko$zza;->zzcsu:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v0, v6, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzbvn:Ljava/util/List;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzki;->zzcgf:Lcom/google/android/gms/internal/zzko$zza;

    iget-object v6, v6, Lcom/google/android/gms/internal/zzko$zza;->zzcsu:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v0, v6, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzclx:Ljava/lang/String;

    move-object/from16 v38, v0

    move/from16 v6, p1

    move-object/from16 v14, p3

    move-object/from16 v16, p2

    invoke-direct/range {v2 .. v38}, Lcom/google/android/gms/internal/zzko;-><init>(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;Lcom/google/android/gms/internal/zzmd;Ljava/util/List;ILjava/util/List;Ljava/util/List;IJLjava/lang/String;ZLcom/google/android/gms/internal/zzgp;Lcom/google/android/gms/internal/zzha;Ljava/lang/String;Lcom/google/android/gms/internal/zzgq;Lcom/google/android/gms/internal/zzgs;JLcom/google/android/gms/ads/internal/client/AdSizeParcel;JJJLjava/lang/String;Lorg/json/JSONObject;Lcom/google/android/gms/ads/internal/formats/zzi$zza;Lcom/google/android/gms/ads/internal/reward/mediation/client/RewardItemParcel;Ljava/util/List;Ljava/util/List;ZLcom/google/android/gms/ads/internal/request/AutoClickProtectionConfigurationParcel;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    return-object v2
.end method

.method private zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzgp;)Lcom/google/android/gms/internal/zzko;
    .registers 4

    const/4 v0, -0x2

    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/gms/internal/zzki;->zza(ILjava/lang/String;Lcom/google/android/gms/internal/zzgp;)Lcom/google/android/gms/internal/zzko;

    move-result-object v0

    return-object v0
.end method

.method private static zza(Lcom/google/android/gms/internal/zzkd;)Ljava/lang/String;
    .registers 7

    iget-object v0, p0, Lcom/google/android/gms/internal/zzkd;->zzbuv:Ljava/lang/String;

    iget v1, p0, Lcom/google/android/gms/internal/zzkd;->errorCode:I

    invoke-static {v1}, Lcom/google/android/gms/internal/zzki;->zzar(I)I

    move-result v1

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzkd;->zzbwr:J

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x21

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "."

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private zza(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzgp;)V
    .registers 10

    iget-object v1, p0, Lcom/google/android/gms/internal/zzki;->zzako:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzki;->zzcry:Lcom/google/android/gms/internal/zzkb;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzkb;->zzcp(Ljava/lang/String;)Lcom/google/android/gms/internal/zzkj;

    move-result-object v0

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzkj;->zzud()Lcom/google/android/gms/internal/zzkg;

    move-result-object v2

    if-eqz v2, :cond_17

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzkj;->zzuc()Lcom/google/android/gms/internal/zzha;

    move-result-object v2

    if-nez v2, :cond_3c

    :cond_17
    iget-object v0, p0, Lcom/google/android/gms/internal/zzki;->zzcrw:Ljava/util/List;

    new-instance v2, Lcom/google/android/gms/internal/zzkd$zza;

    invoke-direct {v2}, Lcom/google/android/gms/internal/zzkd$zza;-><init>()V

    iget-object v3, p3, Lcom/google/android/gms/internal/zzgp;->zzbuv:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzkd$zza;->zzcs(Ljava/lang/String;)Lcom/google/android/gms/internal/zzkd$zza;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/zzkd$zza;->zzcr(Ljava/lang/String;)Lcom/google/android/gms/internal/zzkd$zza;

    move-result-object v2

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v4, v5}, Lcom/google/android/gms/internal/zzkd$zza;->zzl(J)Lcom/google/android/gms/internal/zzkd$zza;

    move-result-object v2

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzkd$zza;->zzbc(I)Lcom/google/android/gms/internal/zzkd$zza;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzkd$zza;->zztz()Lcom/google/android/gms/internal/zzkd;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    :goto_3b
    return-void

    :cond_3c
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/android/gms/internal/zzki;->zza(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzgp;Lcom/google/android/gms/internal/zzkj;)Lcom/google/android/gms/internal/zzkc;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/zzki;->zzcrt:Ljava/util/ArrayList;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzkw;->zzrz()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzki;->zzcru:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzki;->zzcrv:Ljava/util/HashMap;

    invoke-virtual {v0, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    goto :goto_3b

    :catchall_57
    move-exception v0

    monitor-exit v1
    :try_end_59
    .catchall {:try_start_3 .. :try_end_59} :catchall_57

    throw v0
.end method

.method private static zzar(I)I
    .registers 2

    packed-switch p0, :pswitch_data_10

    const/4 v0, 0x6

    :goto_4
    return v0

    :pswitch_5
    const/4 v0, 0x0

    goto :goto_4

    :pswitch_7
    const/4 v0, 0x1

    goto :goto_4

    :pswitch_9
    const/4 v0, 0x2

    goto :goto_4

    :pswitch_b
    const/4 v0, 0x3

    goto :goto_4

    :pswitch_d
    const/4 v0, 0x4

    goto :goto_4

    nop

    :pswitch_data_10
    .packed-switch 0x3
        :pswitch_7
        :pswitch_9
        :pswitch_d
        :pswitch_5
        :pswitch_b
    .end packed-switch
.end method

.method private zzua()Lcom/google/android/gms/internal/zzko;
    .registers 3

    const/4 v1, 0x0

    const/4 v0, 0x3

    invoke-direct {p0, v0, v1, v1}, Lcom/google/android/gms/internal/zzki;->zza(ILjava/lang/String;Lcom/google/android/gms/internal/zzgp;)Lcom/google/android/gms/internal/zzko;

    move-result-object v0

    return-object v0
.end method

.method private zzub()Ljava/lang/String;
    .registers 6

    const/4 v4, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzki;->zzcrw:Ljava/util/List;

    if-nez v0, :cond_11

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_10
    return-object v0

    :cond_11
    iget-object v0, p0, Lcom/google/android/gms/internal/zzki;->zzcrw:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_17
    :goto_17
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzkd;

    if-eqz v0, :cond_17

    iget-object v3, v0, Lcom/google/android/gms/internal/zzkd;->zzbuv:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_17

    invoke-static {v0}, Lcom/google/android/gms/internal/zzki;->zza(Lcom/google/android/gms/internal/zzkd;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "_"

    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_17

    :cond_3f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {v1, v4, v0}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_10
.end method


# virtual methods
.method public onStop()V
    .registers 1

    return-void
.end method

.method protected zza(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzgp;Lcom/google/android/gms/internal/zzkj;)Lcom/google/android/gms/internal/zzkc;
    .registers 15

    new-instance v0, Lcom/google/android/gms/internal/zzkc;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzki;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/google/android/gms/internal/zzki;->zzcgf:Lcom/google/android/gms/internal/zzko$zza;

    iget-wide v8, p0, Lcom/google/android/gms/internal/zzki;->zzcri:J

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, p4

    move-object v7, p0

    invoke-direct/range {v0 .. v9}, Lcom/google/android/gms/internal/zzkc;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzgp;Lcom/google/android/gms/internal/zzko$zza;Lcom/google/android/gms/internal/zzkj;Lcom/google/android/gms/internal/zzkh;J)V

    return-object v0
.end method

.method public zza(Ljava/lang/String;I)V
    .registers 3

    return-void
.end method

.method public zzcq(Ljava/lang/String;)V
    .registers 4

    iget-object v1, p0, Lcom/google/android/gms/internal/zzki;->zzako:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzki;->zzcrx:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    return-void

    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public zzfp()V
    .registers 7

    iget-object v0, p0, Lcom/google/android/gms/internal/zzki;->zzcgf:Lcom/google/android/gms/internal/zzko$zza;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzko$zza;->zzcsk:Lcom/google/android/gms/internal/zzgq;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzgq;->zzbvi:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_50

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzgp;

    iget-object v3, v0, Lcom/google/android/gms/internal/zzgp;->zzbva:Ljava/lang/String;

    iget-object v1, v0, Lcom/google/android/gms/internal/zzgp;->zzbuu:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v5, "com.google.android.gms.ads.mediation.customevent.CustomEventAdapter"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3a

    const-string v5, "com.google.ads.mediation.customevent.CustomEventAdapter"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_45

    :cond_3a
    :try_start_3a
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v5, "class_name"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_44
    .catch Lorg/json/JSONException; {:try_start_3a .. :try_end_44} :catch_49

    move-result-object v1

    :cond_45
    invoke-direct {p0, v1, v3, v0}, Lcom/google/android/gms/internal/zzki;->zza(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzgp;)V

    goto :goto_1e

    :catch_49
    move-exception v1

    const-string v5, "Unable to determine custom event class name, skipping..."

    invoke-static {v5, v1}, Lcom/google/android/gms/internal/zzkx;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1e

    :cond_50
    const/4 v0, 0x0

    move v1, v0

    :goto_52
    iget-object v0, p0, Lcom/google/android/gms/internal/zzki;->zzcrt:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_f7

    :try_start_5a
    iget-object v0, p0, Lcom/google/android/gms/internal/zzki;->zzcrt:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_65
    .catch Ljava/lang/InterruptedException; {:try_start_5a .. :try_end_65} :catch_ca
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_65} :catch_109
    .catchall {:try_start_5a .. :try_end_65} :catchall_13c

    iget-object v2, p0, Lcom/google/android/gms/internal/zzki;->zzako:Ljava/lang/Object;

    monitor-enter v2

    :try_start_68
    iget-object v0, p0, Lcom/google/android/gms/internal/zzki;->zzcru:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_89

    iget-object v3, p0, Lcom/google/android/gms/internal/zzki;->zzcrv:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzkc;

    if-eqz v0, :cond_89

    iget-object v3, p0, Lcom/google/android/gms/internal/zzki;->zzcrw:Ljava/util/List;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzkc;->zztw()Lcom/google/android/gms/internal/zzkd;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_89
    monitor-exit v2
    :try_end_8a
    .catchall {:try_start_68 .. :try_end_8a} :catchall_c7

    iget-object v2, p0, Lcom/google/android/gms/internal/zzki;->zzako:Ljava/lang/Object;

    monitor-enter v2

    :try_start_8d
    iget-object v0, p0, Lcom/google/android/gms/internal/zzki;->zzcrx:Ljava/util/HashSet;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzki;->zzcru:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16a

    iget-object v0, p0, Lcom/google/android/gms/internal/zzki;->zzcru:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzki;->zzcrv:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_167

    iget-object v1, p0, Lcom/google/android/gms/internal/zzki;->zzcrv:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzkc;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzkc;->zztx()Lcom/google/android/gms/internal/zzgp;

    move-result-object v1

    :goto_b7
    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/zzki;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzgp;)Lcom/google/android/gms/internal/zzko;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/ads/internal/util/client/zza;->zzcxr:Landroid/os/Handler;

    new-instance v3, Lcom/google/android/gms/internal/zzki$1;

    invoke-direct {v3, p0, v0}, Lcom/google/android/gms/internal/zzki$1;-><init>(Lcom/google/android/gms/internal/zzki;Lcom/google/android/gms/internal/zzko;)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    monitor-exit v2
    :try_end_c6
    .catchall {:try_start_8d .. :try_end_c6} :catchall_16c

    :goto_c6
    return-void

    :catchall_c7
    move-exception v0

    :try_start_c8
    monitor-exit v2
    :try_end_c9
    .catchall {:try_start_c8 .. :try_end_c9} :catchall_c7

    throw v0

    :catch_ca
    move-exception v0

    :try_start_cb
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_d2
    .catchall {:try_start_cb .. :try_end_d2} :catchall_13c

    iget-object v2, p0, Lcom/google/android/gms/internal/zzki;->zzako:Ljava/lang/Object;

    monitor-enter v2

    :try_start_d5
    iget-object v0, p0, Lcom/google/android/gms/internal/zzki;->zzcru:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_f6

    iget-object v1, p0, Lcom/google/android/gms/internal/zzki;->zzcrv:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzkc;

    if-eqz v0, :cond_f6

    iget-object v1, p0, Lcom/google/android/gms/internal/zzki;->zzcrw:Ljava/util/List;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzkc;->zztw()Lcom/google/android/gms/internal/zzkd;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_f6
    monitor-exit v2
    :try_end_f7
    .catchall {:try_start_d5 .. :try_end_f7} :catchall_106

    :cond_f7
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzki;->zzua()Lcom/google/android/gms/internal/zzko;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/ads/internal/util/client/zza;->zzcxr:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/gms/internal/zzki$2;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/internal/zzki$2;-><init>(Lcom/google/android/gms/internal/zzki;Lcom/google/android/gms/internal/zzko;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_c6

    :catchall_106
    move-exception v0

    :try_start_107
    monitor-exit v2
    :try_end_108
    .catchall {:try_start_107 .. :try_end_108} :catchall_106

    throw v0

    :catch_109
    move-exception v0

    :try_start_10a
    const-string v2, "Unable to resolve rewarded adapter."

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/zzkx;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_10f
    .catchall {:try_start_10a .. :try_end_10f} :catchall_13c

    iget-object v2, p0, Lcom/google/android/gms/internal/zzki;->zzako:Ljava/lang/Object;

    monitor-enter v2

    :try_start_112
    iget-object v0, p0, Lcom/google/android/gms/internal/zzki;->zzcru:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_133

    iget-object v3, p0, Lcom/google/android/gms/internal/zzki;->zzcrv:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzkc;

    if-eqz v0, :cond_133

    iget-object v3, p0, Lcom/google/android/gms/internal/zzki;->zzcrw:Ljava/util/List;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzkc;->zztw()Lcom/google/android/gms/internal/zzkd;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_133
    monitor-exit v2

    :goto_134
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_52

    :catchall_139
    move-exception v0

    monitor-exit v2
    :try_end_13b
    .catchall {:try_start_112 .. :try_end_13b} :catchall_139

    throw v0

    :catchall_13c
    move-exception v0

    move-object v2, v0

    iget-object v3, p0, Lcom/google/android/gms/internal/zzki;->zzako:Ljava/lang/Object;

    monitor-enter v3

    :try_start_141
    iget-object v0, p0, Lcom/google/android/gms/internal/zzki;->zzcru:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_162

    iget-object v1, p0, Lcom/google/android/gms/internal/zzki;->zzcrv:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzkc;

    if-eqz v0, :cond_162

    iget-object v1, p0, Lcom/google/android/gms/internal/zzki;->zzcrw:Ljava/util/List;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzkc;->zztw()Lcom/google/android/gms/internal/zzkd;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_162
    monitor-exit v3
    :try_end_163
    .catchall {:try_start_141 .. :try_end_163} :catchall_164

    throw v2

    :catchall_164
    move-exception v0

    :try_start_165
    monitor-exit v3
    :try_end_166
    .catchall {:try_start_165 .. :try_end_166} :catchall_164

    throw v0

    :cond_167
    const/4 v1, 0x0

    goto/16 :goto_b7

    :cond_16a
    :try_start_16a
    monitor-exit v2

    goto :goto_134

    :catchall_16c
    move-exception v0

    monitor-exit v2
    :try_end_16e
    .catchall {:try_start_16a .. :try_end_16e} :catchall_16c

    throw v0
.end method
