.class public Lcom/google/android/gms/internal/zziw;
.super Lcom/google/android/gms/internal/zzkw;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzji;
.end annotation


# instance fields
.field private final zzcge:Lcom/google/android/gms/internal/zziu$zza;

.field private final zzcgf:Lcom/google/android/gms/internal/zzko$zza;

.field private final zzcgg:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzko$zza;Lcom/google/android/gms/internal/zziu$zza;)V
    .registers 4

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzkw;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zziw;->zzcgf:Lcom/google/android/gms/internal/zzko$zza;

    iget-object v0, p0, Lcom/google/android/gms/internal/zziw;->zzcgf:Lcom/google/android/gms/internal/zzko$zza;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzko$zza;->zzcsu:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iput-object v0, p0, Lcom/google/android/gms/internal/zziw;->zzcgg:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iput-object p2, p0, Lcom/google/android/gms/internal/zziw;->zzcge:Lcom/google/android/gms/internal/zziu$zza;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zziw;)Lcom/google/android/gms/internal/zziu$zza;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zziw;->zzcge:Lcom/google/android/gms/internal/zziu$zza;

    return-object v0
.end method

.method private zzaq(I)Lcom/google/android/gms/internal/zzko;
    .registers 41

    new-instance v2, Lcom/google/android/gms/internal/zzko;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/internal/zziw;->zzcgf:Lcom/google/android/gms/internal/zzko$zza;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzko$zza;->zzcmx:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzcju:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zziw;->zzcgg:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget v9, v6, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->orientation:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zziw;->zzcgg:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-wide v10, v6, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzbvq:J

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zziw;->zzcgf:Lcom/google/android/gms/internal/zzko$zza;

    iget-object v6, v6, Lcom/google/android/gms/internal/zzko$zza;->zzcmx:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    iget-object v12, v6, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzcjx:Ljava/lang/String;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zziw;->zzcgg:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-wide v0, v6, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzclc:J

    move-wide/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zziw;->zzcgf:Lcom/google/android/gms/internal/zzko$zza;

    iget-object v0, v6, Lcom/google/android/gms/internal/zzko$zza;->zzarm:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zziw;->zzcgg:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-wide v0, v6, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzcla:J

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zziw;->zzcgf:Lcom/google/android/gms/internal/zzko$zza;

    iget-wide v0, v6, Lcom/google/android/gms/internal/zzko$zza;->zzcso:J

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zziw;->zzcgg:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-wide v0, v6, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzclf:J

    move-wide/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zziw;->zzcgg:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v0, v6, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzclg:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zziw;->zzcgf:Lcom/google/android/gms/internal/zzko$zza;

    iget-object v0, v6, Lcom/google/android/gms/internal/zzko$zza;->zzcsi:Lorg/json/JSONObject;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zziw;->zzcgf:Lcom/google/android/gms/internal/zzko$zza;

    iget-object v6, v6, Lcom/google/android/gms/internal/zzko$zza;->zzcsu:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-boolean v0, v6, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzclt:Z

    move/from16 v34, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zziw;->zzcgf:Lcom/google/android/gms/internal/zzko$zza;

    iget-object v6, v6, Lcom/google/android/gms/internal/zzko$zza;->zzcsu:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v0, v6, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzclu:Lcom/google/android/gms/ads/internal/request/AutoClickProtectionConfigurationParcel;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    move/from16 v6, p1

    invoke-direct/range {v2 .. v38}, Lcom/google/android/gms/internal/zzko;-><init>(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;Lcom/google/android/gms/internal/zzmd;Ljava/util/List;ILjava/util/List;Ljava/util/List;IJLjava/lang/String;ZLcom/google/android/gms/internal/zzgp;Lcom/google/android/gms/internal/zzha;Ljava/lang/String;Lcom/google/android/gms/internal/zzgq;Lcom/google/android/gms/internal/zzgs;JLcom/google/android/gms/ads/internal/client/AdSizeParcel;JJJLjava/lang/String;Lorg/json/JSONObject;Lcom/google/android/gms/ads/internal/formats/zzi$zza;Lcom/google/android/gms/ads/internal/reward/mediation/client/RewardItemParcel;Ljava/util/List;Ljava/util/List;ZLcom/google/android/gms/ads/internal/request/AutoClickProtectionConfigurationParcel;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    return-object v2
.end method


# virtual methods
.method public onStop()V
    .registers 1

    return-void
.end method

.method public zzfp()V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zziw;->zzaq(I)Lcom/google/android/gms/internal/zzko;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/zzlb;->zzcvl:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/gms/internal/zziw$1;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/internal/zziw$1;-><init>(Lcom/google/android/gms/internal/zziw;Lcom/google/android/gms/internal/zzko;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
