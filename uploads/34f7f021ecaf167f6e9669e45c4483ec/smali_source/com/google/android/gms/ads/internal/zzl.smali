.class public Lcom/google/android/gms/ads/internal/zzl;
.super Lcom/google/android/gms/ads/internal/zzc;

# interfaces
.implements Lcom/google/android/gms/internal/zzfi;
.implements Lcom/google/android/gms/internal/zzfn$zza;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzji;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/ads/internal/zzl$zza;
    }
.end annotation


# instance fields
.field protected transient zzaoc:Z

.field private zzaod:I

.field private zzaoe:Z

.field private zzaof:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Ljava/lang/String;Lcom/google/android/gms/internal/zzgz;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/ads/internal/zzd;)V
    .registers 8

    invoke-direct/range {p0 .. p6}, Lcom/google/android/gms/ads/internal/zzc;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Ljava/lang/String;Lcom/google/android/gms/internal/zzgz;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/ads/internal/zzd;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/ads/internal/zzl;->zzaod:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/zzl;->zzaoc:Z

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/ads/internal/zzl;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/zzl;->zzaoe:Z

    return v0
.end method

.method static synthetic zzb(Lcom/google/android/gms/ads/internal/zzl;)F
    .registers 2

    iget v0, p0, Lcom/google/android/gms/ads/internal/zzl;->zzaof:F

    return v0
.end method

.method private zzb(Landroid/os/Bundle;)V
    .registers 8

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzgm()Lcom/google/android/gms/internal/zzlb;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzl;->zzaly:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzv;->zzahs:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzl;->zzaly:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzv;->zzari:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->zzda:Ljava/lang/String;

    const-string v3, "gmob-apps"

    const/4 v5, 0x0

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/zzlb;->zzb(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Z)V

    return-void
.end method

.method static zzc(Lcom/google/android/gms/internal/zzko$zza;)Lcom/google/android/gms/internal/zzko$zza;
    .registers 47

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/zzko$zza;->zzcsu:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzjm;->zzc(Lcom/google/android/gms/ads/internal/request/AdResponseParcel;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "pubid"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/internal/zzko$zza;->zzcmx:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    iget-object v5, v5, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzarg:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_1f
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_1f} :catch_162

    move-result-object v10

    new-instance v2, Lcom/google/android/gms/internal/zzgp;

    const/4 v4, 0x0

    const-string v5, "com.google.ads.mediation.admob.AdMobAdapter"

    invoke-static {v5}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v8

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v9

    const/4 v11, 0x0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v12

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v19

    invoke-direct/range {v2 .. v19}, Lcom/google/android/gms/internal/zzgp;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/List;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzko$zza;->zzcsu:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    move-object/from16 v44, v0

    new-instance v45, Lcom/google/android/gms/internal/zzgq;

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    const-wide/16 v4, -0x1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v7

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v8

    move-object/from16 v0, v44

    iget-object v9, v0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzbvn:Ljava/util/List;

    move-object/from16 v0, v44

    iget-boolean v10, v0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzbvo:Z

    const-string v11, ""

    const-wide/16 v12, -0x1

    const/4 v14, 0x0

    const/4 v15, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, -0x1

    const-wide/16 v19, -0x1

    const/16 v21, 0x0

    move-object/from16 v2, v45

    invoke-direct/range {v2 .. v21}, Lcom/google/android/gms/internal/zzgq;-><init>(Ljava/util/List;JLjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;ZLjava/lang/String;JIILjava/lang/String;IIJZ)V

    new-instance v2, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/internal/zzko$zza;->zzcmx:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    move-object/from16 v0, v44

    iget-object v4, v0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzcbo:Ljava/lang/String;

    move-object/from16 v0, v44

    iget-object v5, v0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->body:Ljava/lang/String;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v7

    move-object/from16 v0, v44

    iget-wide v8, v0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzcla:J

    const/4 v10, 0x1

    move-object/from16 v0, v44

    iget-wide v11, v0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzclc:J

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v13

    move-object/from16 v0, v44

    iget-wide v14, v0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzbvq:J

    move-object/from16 v0, v44

    iget v0, v0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->orientation:I

    move/from16 v16, v0

    move-object/from16 v0, v44

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzcle:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v44

    iget-wide v0, v0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzclf:J

    move-wide/from16 v18, v0

    move-object/from16 v0, v44

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzclg:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v44

    iget-boolean v0, v0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzclh:Z

    move/from16 v21, v0

    move-object/from16 v0, v44

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzcli:Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, v44

    iget-boolean v0, v0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzclk:Z

    move/from16 v24, v0

    move-object/from16 v0, v44

    iget-boolean v0, v0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzazt:Z

    move/from16 v25, v0

    move-object/from16 v0, v44

    iget-boolean v0, v0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzckc:Z

    move/from16 v26, v0

    move-object/from16 v0, v44

    iget-boolean v0, v0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzcll:Z

    move/from16 v27, v0

    move-object/from16 v0, v44

    iget-boolean v0, v0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzclm:Z

    move/from16 v28, v0

    move-object/from16 v0, v44

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzclp:Ljava/lang/String;

    move-object/from16 v29, v0

    move-object/from16 v0, v44

    iget-boolean v0, v0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzazu:Z

    move/from16 v30, v0

    move-object/from16 v0, v44

    iget-boolean v0, v0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzazv:Z

    move/from16 v31, v0

    const/16 v32, 0x0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v33

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v34

    move-object/from16 v0, v44

    iget-boolean v0, v0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzclt:Z

    move/from16 v35, v0

    move-object/from16 v0, v44

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzclu:Lcom/google/android/gms/ads/internal/request/AutoClickProtectionConfigurationParcel;

    move-object/from16 v36, v0

    move-object/from16 v0, v44

    iget-boolean v0, v0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzcks:Z

    move/from16 v37, v0

    move-object/from16 v0, v44

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzckt:Ljava/lang/String;

    move-object/from16 v38, v0

    move-object/from16 v0, v44

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzbvn:Ljava/util/List;

    move-object/from16 v39, v0

    move-object/from16 v0, v44

    iget-boolean v0, v0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzbvo:Z

    move/from16 v40, v0

    move-object/from16 v0, v44

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzclv:Ljava/lang/String;

    move-object/from16 v41, v0

    const/16 v42, 0x0

    move-object/from16 v0, v44

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzclx:Ljava/lang/String;

    move-object/from16 v43, v0

    move-object/from16 v0, v44

    iget-boolean v0, v0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzcly:Z

    move/from16 v44, v0

    invoke-direct/range {v2 .. v44}, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;-><init>(Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;JZJLjava/util/List;JILjava/lang/String;JLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZZZZZLjava/lang/String;ZZLcom/google/android/gms/ads/internal/reward/mediation/client/RewardItemParcel;Ljava/util/List;Ljava/util/List;ZLcom/google/android/gms/ads/internal/request/AutoClickProtectionConfigurationParcel;ZLjava/lang/String;Ljava/util/List;ZLjava/lang/String;Lcom/google/android/gms/ads/internal/safebrowsing/SafeBrowsingConfigParcel;Ljava/lang/String;Z)V

    new-instance v4, Lcom/google/android/gms/internal/zzko$zza;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/internal/zzko$zza;->zzcmx:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/gms/internal/zzko$zza;->zzarm:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    move-object/from16 v0, p0

    iget v9, v0, Lcom/google/android/gms/internal/zzko$zza;->errorCode:I

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/google/android/gms/internal/zzko$zza;->zzcso:J

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/google/android/gms/internal/zzko$zza;->zzcsp:J

    const/4 v14, 0x0

    move-object v6, v2

    move-object/from16 v7, v45

    invoke-direct/range {v4 .. v14}, Lcom/google/android/gms/internal/zzko$zza;-><init>(Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;Lcom/google/android/gms/ads/internal/request/AdResponseParcel;Lcom/google/android/gms/internal/zzgq;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;IJJLorg/json/JSONObject;)V

    :goto_161
    return-object v4

    :catch_162
    move-exception v2

    const-string v3, "Unable to generate ad state for an interstitial ad with pooling."

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/zzkx;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object/from16 v4, p0

    goto :goto_161
.end method


# virtual methods
.method public showInterstitial()V
    .registers 11

    const/4 v5, -0x1

    const-string v0, "showInterstitial must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzaa;->zzhs(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzl;->zzaly:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzv;->zzarn:Lcom/google/android/gms/internal/zzko;

    if-nez v0, :cond_12

    const-string v0, "The interstitial has not loaded."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkx;->zzdi(Ljava/lang/String;)V

    :cond_11
    :goto_11
    return-void

    :cond_12
    sget-object v0, Lcom/google/android/gms/internal/zzdr;->zzbgx:Lcom/google/android/gms/internal/zzdn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdn;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_7a

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzl;->zzaly:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzv;->zzahs:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_a8

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzl;->zzaly:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzv;->zzahs:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    :goto_36
    iget-boolean v1, p0, Lcom/google/android/gms/ads/internal/zzl;->zzaoc:Z

    if-nez v1, :cond_53

    const-string v1, "It is not recommended to show an interstitial before onAdLoaded completes."

    invoke-static {v1}, Lcom/google/android/gms/internal/zzkx;->zzdi(Ljava/lang/String;)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "appid"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "action"

    const-string v3, "show_interstitial_before_load_finish"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/google/android/gms/ads/internal/zzl;->zzb(Landroid/os/Bundle;)V

    :cond_53
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzgm()Lcom/google/android/gms/internal/zzlb;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzl;->zzaly:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzv;->zzahs:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzlb;->zzae(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_7a

    const-string v1, "It is not recommended to show an interstitial when app is not in foreground."

    invoke-static {v1}, Lcom/google/android/gms/internal/zzkx;->zzdi(Ljava/lang/String;)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "appid"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "action"

    const-string v2, "show_interstitial_app_not_in_foreground"

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/google/android/gms/ads/internal/zzl;->zzb(Landroid/os/Bundle;)V

    :cond_7a
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzl;->zzaly:Lcom/google/android/gms/ads/internal/zzv;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzv;->zzhq()Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzl;->zzaly:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzv;->zzarn:Lcom/google/android/gms/internal/zzko;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/zzko;->zzclb:Z

    if-eqz v0, :cond_b1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzl;->zzaly:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzv;->zzarn:Lcom/google/android/gms/internal/zzko;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzko;->zzbwn:Lcom/google/android/gms/internal/zzha;

    if-eqz v0, :cond_b1

    :try_start_92
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzl;->zzaly:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzv;->zzarn:Lcom/google/android/gms/internal/zzko;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzko;->zzbwn:Lcom/google/android/gms/internal/zzha;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzha;->showInterstitial()V
    :try_end_9b
    .catch Landroid/os/RemoteException; {:try_start_92 .. :try_end_9b} :catch_9d

    goto/16 :goto_11

    :catch_9d
    move-exception v0

    const-string v1, "Could not show interstitial."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzkx;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/zzl;->zzfn()V

    goto/16 :goto_11

    :cond_a8
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzl;->zzaly:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzv;->zzahs:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_36

    :cond_b1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzl;->zzaly:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzv;->zzarn:Lcom/google/android/gms/internal/zzko;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzko;->zzcbm:Lcom/google/android/gms/internal/zzmd;

    if-nez v0, :cond_c0

    const-string v0, "The interstitial failed to load."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkx;->zzdi(Ljava/lang/String;)V

    goto/16 :goto_11

    :cond_c0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzl;->zzaly:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzv;->zzarn:Lcom/google/android/gms/internal/zzko;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzko;->zzcbm:Lcom/google/android/gms/internal/zzmd;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzmd;->zzxg()Z

    move-result v0

    if-eqz v0, :cond_d3

    const-string v0, "The interstitial is already showing."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkx;->zzdi(Ljava/lang/String;)V

    goto/16 :goto_11

    :cond_d3
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzl;->zzaly:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzv;->zzarn:Lcom/google/android/gms/internal/zzko;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzko;->zzcbm:Lcom/google/android/gms/internal/zzmd;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzmd;->zzak(Z)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzl;->zzaly:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzv;->zzarn:Lcom/google/android/gms/internal/zzko;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzko;->zzcsi:Lorg/json/JSONObject;

    if-eqz v0, :cond_f2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzl;->zzama:Lcom/google/android/gms/internal/zzco;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzl;->zzaly:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzv;->zzarm:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzl;->zzaly:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzv;->zzarn:Lcom/google/android/gms/internal/zzko;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzco;->zza(Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Lcom/google/android/gms/internal/zzko;)V

    :cond_f2
    invoke-static {}, Lcom/google/android/gms/common/util/zzs;->zzayq()Z

    move-result v0

    if-eqz v0, :cond_116

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzl;->zzaly:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzv;->zzarn:Lcom/google/android/gms/internal/zzko;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzko;->zzic()Z

    move-result v1

    if-eqz v1, :cond_152

    new-instance v1, Lcom/google/android/gms/internal/zzcu;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzl;->zzaly:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzv;->zzahs:Landroid/content/Context;

    iget-object v3, v0, Lcom/google/android/gms/internal/zzko;->zzcbm:Lcom/google/android/gms/internal/zzmd;

    invoke-interface {v3}, Lcom/google/android/gms/internal/zzmd;->getView()Landroid/view/View;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/internal/zzcu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iget-object v0, v0, Lcom/google/android/gms/internal/zzko;->zzcbm:Lcom/google/android/gms/internal/zzmd;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzcu;->zza(Lcom/google/android/gms/internal/zzcu$zzb;)V

    :cond_116
    :goto_116
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzl;->zzaly:Lcom/google/android/gms/ads/internal/zzv;

    iget-boolean v0, v0, Lcom/google/android/gms/ads/internal/zzv;->zzaok:Z

    if-eqz v0, :cond_161

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzgm()Lcom/google/android/gms/internal/zzlb;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzl;->zzaly:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzv;->zzahs:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzlb;->zzaf(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    move-object v1, v0

    :goto_129
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzhh()Lcom/google/android/gms/internal/zzlk;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzlk;->zzb(Landroid/graphics/Bitmap;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/ads/internal/zzl;->zzaod:I

    sget-object v0, Lcom/google/android/gms/internal/zzdr;->zzbip:Lcom/google/android/gms/internal/zzdn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdn;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_164

    if-eqz v1, :cond_164

    new-instance v0, Lcom/google/android/gms/ads/internal/zzl$zza;

    iget v1, p0, Lcom/google/android/gms/ads/internal/zzl;->zzaod:I

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/ads/internal/zzl$zza;-><init>(Lcom/google/android/gms/ads/internal/zzl;I)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzkw;->zzrz()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    goto/16 :goto_11

    :cond_152
    iget-object v1, v0, Lcom/google/android/gms/internal/zzko;->zzcbm:Lcom/google/android/gms/internal/zzmd;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzmd;->zzxc()Lcom/google/android/gms/internal/zzme;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/ads/internal/zzl$1;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/ads/internal/zzl$1;-><init>(Lcom/google/android/gms/ads/internal/zzl;Lcom/google/android/gms/internal/zzko;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzme;->zza(Lcom/google/android/gms/internal/zzme$zzc;)V

    goto :goto_116

    :cond_161
    const/4 v0, 0x0

    move-object v1, v0

    goto :goto_129

    :cond_164
    new-instance v0, Lcom/google/android/gms/ads/internal/InterstitialAdParameterParcel;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzl;->zzaly:Lcom/google/android/gms/ads/internal/zzv;

    iget-boolean v1, v1, Lcom/google/android/gms/ads/internal/zzv;->zzaok:Z

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/zzl;->zzfm()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/ads/internal/InterstitialAdParameterParcel;-><init>(ZZZFI)V

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzl;->zzaly:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzv;->zzarn:Lcom/google/android/gms/internal/zzko;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzko;->zzcbm:Lcom/google/android/gms/internal/zzmd;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzmd;->getRequestedOrientation()I

    move-result v6

    if-ne v6, v5, :cond_185

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzl;->zzaly:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzv;->zzarn:Lcom/google/android/gms/internal/zzko;

    iget v6, v1, Lcom/google/android/gms/internal/zzko;->orientation:I

    :cond_185
    new-instance v1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzl;->zzaly:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzv;->zzarn:Lcom/google/android/gms/internal/zzko;

    iget-object v5, v2, Lcom/google/android/gms/internal/zzko;->zzcbm:Lcom/google/android/gms/internal/zzmd;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzl;->zzaly:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v7, v2, Lcom/google/android/gms/ads/internal/zzv;->zzari:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzl;->zzaly:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzv;->zzarn:Lcom/google/android/gms/internal/zzko;

    iget-object v8, v2, Lcom/google/android/gms/internal/zzko;->zzclg:Ljava/lang/String;

    move-object v2, p0

    move-object v3, p0

    move-object v4, p0

    move-object v9, v0

    invoke-direct/range {v1 .. v9}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;-><init>(Lcom/google/android/gms/ads/internal/client/zza;Lcom/google/android/gms/ads/internal/overlay/zzg;Lcom/google/android/gms/ads/internal/overlay/zzp;Lcom/google/android/gms/internal/zzmd;ILcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Ljava/lang/String;Lcom/google/android/gms/ads/internal/InterstitialAdParameterParcel;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzgk()Lcom/google/android/gms/ads/internal/overlay/zze;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzl;->zzaly:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzv;->zzahs:Landroid/content/Context;

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/ads/internal/overlay/zze;->zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V

    goto/16 :goto_11
.end method

.method protected zza(Lcom/google/android/gms/internal/zzko$zza;Lcom/google/android/gms/ads/internal/zze;Lcom/google/android/gms/ads/internal/safebrowsing/zzc;)Lcom/google/android/gms/internal/zzmd;
    .registers 16
    .param p2    # Lcom/google/android/gms/ads/internal/zze;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/google/android/gms/ads/internal/safebrowsing/zzc;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v10, 0x0

    const/4 v3, 0x0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzgn()Lcom/google/android/gms/internal/zzmf;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzl;->zzaly:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzv;->zzahs:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzl;->zzaly:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzv;->zzarm:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/zzl;->zzaly:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v5, v4, Lcom/google/android/gms/ads/internal/zzv;->zzarh:Lcom/google/android/gms/internal/zzav;

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/zzl;->zzaly:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v6, v4, Lcom/google/android/gms/ads/internal/zzv;->zzari:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-object v7, p0, Lcom/google/android/gms/ads/internal/zzl;->zzalt:Lcom/google/android/gms/internal/zzdz;

    iget-object v9, p0, Lcom/google/android/gms/ads/internal/zzl;->zzamb:Lcom/google/android/gms/ads/internal/zzd;

    move v4, v3

    move-object v8, p0

    invoke-virtual/range {v0 .. v9}, Lcom/google/android/gms/internal/zzmf;->zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;ZZLcom/google/android/gms/internal/zzav;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/zzdz;Lcom/google/android/gms/ads/internal/zzs;Lcom/google/android/gms/ads/internal/zzd;)Lcom/google/android/gms/internal/zzmd;

    move-result-object v11

    invoke-interface {v11}, Lcom/google/android/gms/internal/zzmd;->zzxc()Lcom/google/android/gms/internal/zzme;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/zzdr;->zzbfn:Lcom/google/android/gms/internal/zzdn;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzdn;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    move-object v1, p0

    move-object v2, v10

    move-object v3, p0

    move-object v4, p0

    move-object v6, p0

    move-object v7, p0

    move-object v8, p2

    move-object v9, v10

    move-object v10, p3

    invoke-virtual/range {v0 .. v10}, Lcom/google/android/gms/internal/zzme;->zza(Lcom/google/android/gms/ads/internal/client/zza;Lcom/google/android/gms/ads/internal/overlay/zzg;Lcom/google/android/gms/internal/zzfa;Lcom/google/android/gms/ads/internal/overlay/zzp;ZLcom/google/android/gms/internal/zzfg;Lcom/google/android/gms/internal/zzfi;Lcom/google/android/gms/ads/internal/zze;Lcom/google/android/gms/internal/zzhw;Lcom/google/android/gms/ads/internal/safebrowsing/zzc;)V

    invoke-virtual {p0, v11}, Lcom/google/android/gms/ads/internal/zzl;->zza(Lcom/google/android/gms/internal/zzgi;)V

    iget-object v0, p1, Lcom/google/android/gms/internal/zzko$zza;->zzcmx:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzcki:Ljava/lang/String;

    invoke-interface {v11, v0}, Lcom/google/android/gms/internal/zzmd;->zzdk(Ljava/lang/String;)V

    invoke-static {v11, p0}, Lcom/google/android/gms/internal/zzfn;->zza(Lcom/google/android/gms/internal/zzmd;Lcom/google/android/gms/internal/zzfn$zza;)V

    return-object v11
.end method

.method public zza(Lcom/google/android/gms/internal/zzko$zza;Lcom/google/android/gms/internal/zzdz;)V
    .registers 7

    const/4 v2, 0x1

    const/4 v1, 0x0

    sget-object v0, Lcom/google/android/gms/internal/zzdr;->zzbgg:Lcom/google/android/gms/internal/zzdn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdn;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_14

    invoke-super {p0, p1, p2}, Lcom/google/android/gms/ads/internal/zzc;->zza(Lcom/google/android/gms/internal/zzko$zza;Lcom/google/android/gms/internal/zzdz;)V

    :goto_13
    return-void

    :cond_14
    iget v0, p1, Lcom/google/android/gms/internal/zzko$zza;->errorCode:I

    const/4 v3, -0x2

    if-eq v0, v3, :cond_1d

    invoke-super {p0, p1, p2}, Lcom/google/android/gms/ads/internal/zzc;->zza(Lcom/google/android/gms/internal/zzko$zza;Lcom/google/android/gms/internal/zzdz;)V

    goto :goto_13

    :cond_1d
    iget-object v0, p1, Lcom/google/android/gms/internal/zzko$zza;->zzcmx:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzcju:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzayv:Landroid/os/Bundle;

    const-string v3, "com.google.ads.mediation.admob.AdMobAdapter"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_33

    const-string v3, "gw"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4e

    :cond_33
    move v0, v2

    :goto_34
    iget-object v3, p1, Lcom/google/android/gms/internal/zzko$zza;->zzcsu:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-boolean v3, v3, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzclb:Z

    if-nez v3, :cond_50

    :goto_3a
    if-eqz v0, :cond_46

    if-eqz v2, :cond_46

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzl;->zzaly:Lcom/google/android/gms/ads/internal/zzv;

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/zzl;->zzc(Lcom/google/android/gms/internal/zzko$zza;)Lcom/google/android/gms/internal/zzko$zza;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/ads/internal/zzv;->zzaro:Lcom/google/android/gms/internal/zzko$zza;

    :cond_46
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzl;->zzaly:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzv;->zzaro:Lcom/google/android/gms/internal/zzko$zza;

    invoke-super {p0, v0, p2}, Lcom/google/android/gms/ads/internal/zzc;->zza(Lcom/google/android/gms/internal/zzko$zza;Lcom/google/android/gms/internal/zzdz;)V

    goto :goto_13

    :cond_4e
    move v0, v1

    goto :goto_34

    :cond_50
    move v2, v1

    goto :goto_3a
.end method

.method public zza(ZF)V
    .registers 3

    iput-boolean p1, p0, Lcom/google/android/gms/ads/internal/zzl;->zzaoe:Z

    iput p2, p0, Lcom/google/android/gms/ads/internal/zzl;->zzaof:F

    return-void
.end method

.method public zza(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;Lcom/google/android/gms/internal/zzdz;)Z
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzl;->zzaly:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzv;->zzarn:Lcom/google/android/gms/internal/zzko;

    if-eqz v0, :cond_d

    const-string v0, "An interstitial is already loading. Aborting."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkx;->zzdi(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_c
    return v0

    :cond_d
    invoke-super {p0, p1, p2}, Lcom/google/android/gms/ads/internal/zzc;->zza(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;Lcom/google/android/gms/internal/zzdz;)Z

    move-result v0

    goto :goto_c
.end method

.method protected zza(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;Lcom/google/android/gms/internal/zzko;Z)Z
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzl;->zzaly:Lcom/google/android/gms/ads/internal/zzv;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzv;->zzhp()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p2, Lcom/google/android/gms/internal/zzko;->zzcbm:Lcom/google/android/gms/internal/zzmd;

    if-eqz v0, :cond_15

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzgo()Lcom/google/android/gms/internal/zzlc;

    move-result-object v0

    iget-object v1, p2, Lcom/google/android/gms/internal/zzko;->zzcbm:Lcom/google/android/gms/internal/zzmd;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzlc;->zzl(Lcom/google/android/gms/internal/zzmd;)Z

    :cond_15
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzl;->zzalx:Lcom/google/android/gms/ads/internal/zzr;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzr;->zzfy()Z

    move-result v0

    return v0
.end method

.method public zza(Lcom/google/android/gms/internal/zzko;Lcom/google/android/gms/internal/zzko;)Z
    .registers 6
    .param p1    # Lcom/google/android/gms/internal/zzko;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1, p2}, Lcom/google/android/gms/ads/internal/zzc;->zza(Lcom/google/android/gms/internal/zzko;Lcom/google/android/gms/internal/zzko;)Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return v0

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzl;->zzaly:Lcom/google/android/gms/ads/internal/zzv;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzv;->zzhp()Z

    move-result v0

    if-nez v0, :cond_27

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzl;->zzaly:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzv;->zzash:Landroid/view/View;

    if-eqz v0, :cond_27

    iget-object v0, p2, Lcom/google/android/gms/internal/zzko;->zzcsi:Lorg/json/JSONObject;

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzl;->zzama:Lcom/google/android/gms/internal/zzco;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzl;->zzaly:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzv;->zzarm:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzl;->zzaly:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzv;->zzash:Landroid/view/View;

    invoke-virtual {v0, v1, p2, v2}, Lcom/google/android/gms/internal/zzco;->zza(Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Lcom/google/android/gms/internal/zzko;Landroid/view/View;)V

    :cond_27
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public zzb(Lcom/google/android/gms/ads/internal/reward/mediation/client/RewardItemParcel;)V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzl;->zzaly:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzv;->zzarn:Lcom/google/android/gms/internal/zzko;

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzl;->zzaly:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzv;->zzarn:Lcom/google/android/gms/internal/zzko;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzko;->zzcls:Ljava/util/List;

    if-eqz v0, :cond_25

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzgm()Lcom/google/android/gms/internal/zzlb;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzl;->zzaly:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzv;->zzahs:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzl;->zzaly:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzv;->zzari:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->zzda:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/zzl;->zzaly:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/zzv;->zzarn:Lcom/google/android/gms/internal/zzko;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzko;->zzcls:Ljava/util/List;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/zzlb;->zza(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V

    :cond_25
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzl;->zzaly:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzv;->zzarn:Lcom/google/android/gms/internal/zzko;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzko;->zzclq:Lcom/google/android/gms/ads/internal/reward/mediation/client/RewardItemParcel;

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzl;->zzaly:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzv;->zzarn:Lcom/google/android/gms/internal/zzko;

    iget-object p1, v0, Lcom/google/android/gms/internal/zzko;->zzclq:Lcom/google/android/gms/ads/internal/reward/mediation/client/RewardItemParcel;

    :cond_33
    invoke-virtual {p0, p1}, Lcom/google/android/gms/ads/internal/zzl;->zza(Lcom/google/android/gms/ads/internal/reward/mediation/client/RewardItemParcel;)V

    return-void
.end method

.method protected zzek()V
    .registers 1

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/zzl;->zzfn()V

    invoke-super {p0}, Lcom/google/android/gms/ads/internal/zzc;->zzek()V

    return-void
.end method

.method protected zzen()V
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/ads/internal/zzc;->zzen()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/zzl;->zzaoc:Z

    return-void
.end method

.method public zzer()V
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/zzl;->recordImpression()V

    invoke-super {p0}, Lcom/google/android/gms/ads/internal/zzc;->zzer()V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzl;->zzaly:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzv;->zzarn:Lcom/google/android/gms/internal/zzko;

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzl;->zzaly:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzv;->zzarn:Lcom/google/android/gms/internal/zzko;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzko;->zzcbm:Lcom/google/android/gms/internal/zzmd;

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzl;->zzaly:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzv;->zzarn:Lcom/google/android/gms/internal/zzko;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzko;->zzcbm:Lcom/google/android/gms/internal/zzmd;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzmd;->zzxc()Lcom/google/android/gms/internal/zzme;

    move-result-object v0

    if-eqz v0, :cond_23

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzme;->zzya()V

    :cond_23
    return-void
.end method

.method protected zzfm()Z
    .registers 7

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzl;->zzaly:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzv;->zzahs:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-nez v0, :cond_a

    :cond_9
    :goto_9
    return v1

    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzl;->zzaly:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzv;->zzahs:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_9

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v2, v5}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    iget v0, v2, Landroid/graphics/Rect;->bottom:I

    if-eqz v0, :cond_46

    iget v0, v3, Landroid/graphics/Rect;->bottom:I

    if-eqz v0, :cond_46

    iget v0, v2, Landroid/graphics/Rect;->top:I

    iget v2, v3, Landroid/graphics/Rect;->top:I

    if-ne v0, v2, :cond_46

    const/4 v0, 0x1

    :goto_44
    move v1, v0

    goto :goto_9

    :cond_46
    move v0, v1

    goto :goto_44
.end method

.method public zzfn()V
    .registers 4

    const/4 v2, 0x0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzhh()Lcom/google/android/gms/internal/zzlk;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/ads/internal/zzl;->zzaod:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzlk;->zzb(Ljava/lang/Integer;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzl;->zzaly:Lcom/google/android/gms/ads/internal/zzv;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzv;->zzhp()Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzl;->zzaly:Lcom/google/android/gms/ads/internal/zzv;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzv;->zzhm()V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzl;->zzaly:Lcom/google/android/gms/ads/internal/zzv;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/gms/ads/internal/zzv;->zzarn:Lcom/google/android/gms/internal/zzko;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzl;->zzaly:Lcom/google/android/gms/ads/internal/zzv;

    iput-boolean v2, v0, Lcom/google/android/gms/ads/internal/zzv;->zzaok:Z

    iput-boolean v2, p0, Lcom/google/android/gms/ads/internal/zzl;->zzaoc:Z

    :cond_26
    return-void
.end method

.method public zzfo()V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzl;->zzaly:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzv;->zzarn:Lcom/google/android/gms/internal/zzko;

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzl;->zzaly:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzv;->zzarn:Lcom/google/android/gms/internal/zzko;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzko;->zzcsn:Ljava/util/List;

    if-eqz v0, :cond_25

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzgm()Lcom/google/android/gms/internal/zzlb;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzl;->zzaly:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzv;->zzahs:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzl;->zzaly:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzv;->zzari:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->zzda:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/zzl;->zzaly:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/zzv;->zzarn:Lcom/google/android/gms/internal/zzko;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzko;->zzcsn:Ljava/util/List;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/zzlb;->zza(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V

    :cond_25
    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/zzl;->zzeo()V

    return-void
.end method

.method public zzg(Z)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzl;->zzaly:Lcom/google/android/gms/ads/internal/zzv;

    iput-boolean p1, v0, Lcom/google/android/gms/ads/internal/zzv;->zzaok:Z

    return-void
.end method
