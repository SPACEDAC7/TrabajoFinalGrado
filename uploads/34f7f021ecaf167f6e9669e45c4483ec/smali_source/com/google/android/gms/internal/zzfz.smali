.class public Lcom/google/android/gms/internal/zzfz;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzji;
.end annotation


# instance fields
.field private final zzbsl:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/internal/zzga;",
            "Lcom/google/android/gms/internal/zzgb;",
            ">;"
        }
    .end annotation
.end field

.field private final zzbsm:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/google/android/gms/internal/zzga;",
            ">;"
        }
    .end annotation
.end field

.field private zzbsn:Lcom/google/android/gms/internal/zzfw;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfz;->zzbsl:Ljava/util/Map;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfz;->zzbsm:Ljava/util/LinkedList;

    return-void
.end method

.method private static zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzga;)V
    .registers 4

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkx;->zzbi(I)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkx;->v(Ljava/lang/String;)V

    :cond_14
    return-void
.end method

.method private zzbl(Ljava/lang/String;)[Ljava/lang/String;
    .registers 8

    const/4 v2, 0x0

    :try_start_1
    const-string v0, "\u0000"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    move v1, v2

    :goto_8
    array-length v3, v0

    if-ge v1, v3, :cond_21

    new-instance v3, Ljava/lang/String;

    aget-object v4, v0, v1

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v4

    const-string v5, "UTF-8"

    invoke-direct {v3, v4, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    aput-object v3, v0, v1
    :try_end_1b
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1b} :catch_1e

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :catch_1e
    move-exception v0

    new-array v0, v2, [Ljava/lang/String;

    :cond_21
    return-object v0
.end method

.method private zzbm(Ljava/lang/String;)Z
    .registers 5

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/zzdr;->zzbgn:Lcom/google/android/gms/internal/zzdn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdn;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z
    :try_end_b
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_b} :catch_d

    move-result v0

    :goto_c
    return v0

    :catch_d
    move-exception v0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzgq()Lcom/google/android/gms/internal/zzkr;

    move-result-object v1

    const-string v2, "InterstitialAdPool.isExcludedAdUnit"

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/zzkr;->zza(Ljava/lang/Throwable;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_c
.end method

.method private static zzc(Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 6

    const/4 v3, 0x1

    const-string v0, "/"

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    if-nez v1, :cond_c

    :cond_b
    :goto_b
    return-void

    :cond_c
    const/4 v1, 0x0

    aget-object v1, v0, v1

    array-length v2, v0

    if-ne v2, v3, :cond_16

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    goto :goto_b

    :cond_16
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_b

    aget-object v0, v0, v3

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzfz;->zzc(Landroid/os/Bundle;Ljava/lang/String;)V

    goto :goto_b
.end method

.method static zzk(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;)Landroid/os/Bundle;
    .registers 3
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzayv:Landroid/os/Bundle;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    const-string v1, "com.google.ads.mediation.admob.AdMobAdapter"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_5
.end method

.method static zzl(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;)Lcom/google/android/gms/ads/internal/client/AdRequestParcel;
    .registers 5

    invoke-static {p0}, Lcom/google/android/gms/internal/zzfz;->zzo(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;)Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/zzfz;->zzk(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;)Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_16

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v2, v1, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzayv:Landroid/os/Bundle;

    const-string v3, "com.google.ads.mediation.admob.AdMobAdapter"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_16
    const-string v2, "_skipMediation"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v1
.end method

.method static zzm(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;)Z
    .registers 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzayv:Landroid/os/Bundle;

    if-nez v1, :cond_6

    :cond_5
    :goto_5
    return v0

    :cond_6
    const-string v2, "com.google.ads.mediation.admob.AdMobAdapter"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_5

    const-string v2, "_skipMediation"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v0, 0x1

    goto :goto_5
.end method

.method private static zzn(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;)Lcom/google/android/gms/ads/internal/client/AdRequestParcel;
    .registers 7

    invoke-static {p0}, Lcom/google/android/gms/internal/zzfz;->zzo(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;)Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    move-result-object v1

    sget-object v0, Lcom/google/android/gms/internal/zzdr;->zzbgj:Lcom/google/android/gms/internal/zzdn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdn;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_14
    if-ge v0, v3, :cond_20

    aget-object v4, v2, v0

    iget-object v5, v1, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzayv:Landroid/os/Bundle;

    invoke-static {v5, v4}, Lcom/google/android/gms/internal/zzfz;->zzc(Landroid/os/Bundle;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    :cond_20
    return-object v1
.end method

.method private zznn()Ljava/lang/String;
    .registers 5

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfz;->zzbsm:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_b
    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_39

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzga;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzga;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "UTF-8"

    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {v0, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "\u0000"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_34
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_34} :catch_35

    goto :goto_b

    :catch_35
    move-exception v0

    const-string v0, ""

    :goto_38
    return-object v0

    :cond_39
    :try_start_39
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_3c
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_39 .. :try_end_3c} :catch_35

    move-result-object v0

    goto :goto_38
.end method

.method static zzo(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;)Lcom/google/android/gms/ads/internal/client/AdRequestParcel;
    .registers 3

    const/4 v0, 0x0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->writeToParcel(Landroid/os/Parcel;I)V

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    sget-object v0, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzj(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;)V

    return-object v0
.end method


# virtual methods
.method flush()V
    .registers 4

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzfz;->zzbsm:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_34

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfz;->zzbsm:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzga;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfz;->zzbsl:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzgb;

    const-string v2, "Flushing interstitial queue for %s."

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/zzfz;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzga;)V

    :goto_1d
    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzgb;->size()I

    move-result v2

    if-lez v2, :cond_2e

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzgb;->zzp(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;)Lcom/google/android/gms/internal/zzgb$zza;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/internal/zzgb$zza;->zzbss:Lcom/google/android/gms/ads/internal/zzl;

    invoke-virtual {v2}, Lcom/google/android/gms/ads/internal/zzl;->zzfn()V

    goto :goto_1d

    :cond_2e
    iget-object v1, p0, Lcom/google/android/gms/internal/zzfz;->zzbsl:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_34
    return-void
.end method

.method restore()V
    .registers 10

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfz;->zzbsn:Lcom/google/android/gms/internal/zzfw;

    if-nez v0, :cond_6

    :cond_5
    :goto_5
    return-void

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/zzfz;->zzbsn:Lcom/google/android/gms/internal/zzfw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzfw;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.google.android.gms.ads.internal.interstitial.InterstitialAdPool"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzfz;->flush()V

    :try_start_15
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v3}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_26
    :goto_26
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_95

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v6, "PoolKeys"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_26

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzgd;->zzbn(Ljava/lang/String;)Lcom/google/android/gms/internal/zzgd;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzga;

    iget-object v6, v0, Lcom/google/android/gms/internal/zzgd;->zzapj:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    iget-object v7, v0, Lcom/google/android/gms/internal/zzgd;->zzant:Ljava/lang/String;

    iget v8, v0, Lcom/google/android/gms/internal/zzgd;->zzbsq:I

    invoke-direct {v1, v6, v7, v8}, Lcom/google/android/gms/internal/zzga;-><init>(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;Ljava/lang/String;I)V

    iget-object v6, p0, Lcom/google/android/gms/internal/zzfz;->zzbsl:Ljava/util/Map;

    invoke-interface {v6, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_26

    new-instance v6, Lcom/google/android/gms/internal/zzgb;

    iget-object v7, v0, Lcom/google/android/gms/internal/zzgd;->zzapj:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    iget-object v8, v0, Lcom/google/android/gms/internal/zzgd;->zzant:Ljava/lang/String;

    iget v0, v0, Lcom/google/android/gms/internal/zzgd;->zzbsq:I

    invoke-direct {v6, v7, v8, v0}, Lcom/google/android/gms/internal/zzgb;-><init>(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfz;->zzbsl:Ljava/util/Map;

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzga;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Restored interstitial queue for %s."

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzfz;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzga;)V
    :try_end_79
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_79} :catch_7a

    goto :goto_26

    :catch_7a
    move-exception v0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzgq()Lcom/google/android/gms/internal/zzkr;

    move-result-object v1

    const-string v2, "InterstitialAdPool.restore"

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/zzkr;->zza(Ljava/lang/Throwable;Ljava/lang/String;)V

    const-string v1, "Malformed preferences value for InterstitialAdPool."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzkx;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfz;->zzbsl:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfz;->zzbsm:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    goto/16 :goto_5

    :cond_95
    :try_start_95
    const-string v0, "PoolKeys"

    const-string v1, ""

    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzfz;->zzbl(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v5, v3

    move v1, v2

    :goto_a3
    if-ge v1, v5, :cond_5

    aget-object v0, v3, v1

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzga;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzfz;->zzbsl:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ba

    iget-object v2, p0, Lcom/google/android/gms/internal/zzfz;->zzbsm:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_ba
    .catch Ljava/lang/Throwable; {:try_start_95 .. :try_end_ba} :catch_7a

    :cond_ba
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_a3
.end method

.method save()V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfz;->zzbsn:Lcom/google/android/gms/internal/zzfw;

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/zzfz;->zzbsn:Lcom/google/android/gms/internal/zzfw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzfw;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.google.android.gms.ads.internal.interstitial.InterstitialAdPool"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfz;->zzbsl:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_23
    :goto_23
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_57

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzga;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzgb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzgb;->zzns()Z

    move-result v4

    if-eqz v4, :cond_23

    new-instance v4, Lcom/google/android/gms/internal/zzgd;

    invoke-direct {v4, v0}, Lcom/google/android/gms/internal/zzgd;-><init>(Lcom/google/android/gms/internal/zzgb;)V

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzgd;->zznv()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzga;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v0, "Saved interstitial queue for %s."

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzfz;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzga;)V

    goto :goto_23

    :cond_57
    const-string v0, "PoolKeys"

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzfz;->zznn()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_4
.end method

.method zza(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;Ljava/lang/String;)Lcom/google/android/gms/internal/zzgb$zza;
    .registers 15
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const/4 v3, 0x0

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzfz;->zzbm(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    move-object v0, v3

    :goto_8
    return-object v0

    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/internal/zzfz;->zzbsn:Lcom/google/android/gms/internal/zzfw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzfw;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzjr$zza;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/zzjr$zza;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzjr$zza;->zztr()Lcom/google/android/gms/internal/zzjr;

    move-result-object v0

    iget v1, v0, Lcom/google/android/gms/internal/zzjr;->zzcqe:I

    invoke-static {p1}, Lcom/google/android/gms/internal/zzfz;->zzn(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;)Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    move-result-object v4

    new-instance v5, Lcom/google/android/gms/internal/zzga;

    invoke-direct {v5, v4, p2, v1}, Lcom/google/android/gms/internal/zzga;-><init>(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfz;->zzbsl:Ljava/util/Map;

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzgb;

    if-nez v0, :cond_f1

    const-string v0, "Interstitial pool created at %s."

    invoke-static {v0, v5}, Lcom/google/android/gms/internal/zzfz;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzga;)V

    new-instance v0, Lcom/google/android/gms/internal/zzgb;

    invoke-direct {v0, v4, p2, v1}, Lcom/google/android/gms/internal/zzgb;-><init>(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfz;->zzbsl:Ljava/util/Map;

    invoke-interface {v1, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v0

    :goto_3d
    iget-object v0, p0, Lcom/google/android/gms/internal/zzfz;->zzbsm:Ljava/util/LinkedList;

    invoke-virtual {v0, v5}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfz;->zzbsm:Ljava/util/LinkedList;

    invoke-virtual {v0, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzgb;->zznr()V

    :goto_4a
    iget-object v0, p0, Lcom/google/android/gms/internal/zzfz;->zzbsm:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v1

    sget-object v0, Lcom/google/android/gms/internal/zzdr;->zzbgk:Lcom/google/android/gms/internal/zzdn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdn;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-le v1, v0, :cond_89

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfz;->zzbsm:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzga;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfz;->zzbsl:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzgb;

    const-string v6, "Evicting interstitial queue for %s."

    invoke-static {v6, v0}, Lcom/google/android/gms/internal/zzfz;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzga;)V

    :goto_73
    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzgb;->size()I

    move-result v6

    if-lez v6, :cond_83

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/zzgb;->zzp(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;)Lcom/google/android/gms/internal/zzgb$zza;

    move-result-object v6

    iget-object v6, v6, Lcom/google/android/gms/internal/zzgb$zza;->zzbss:Lcom/google/android/gms/ads/internal/zzl;

    invoke-virtual {v6}, Lcom/google/android/gms/ads/internal/zzl;->zzfn()V

    goto :goto_73

    :cond_83
    iget-object v1, p0, Lcom/google/android/gms/internal/zzfz;->zzbsl:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4a

    :cond_89
    :goto_89
    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzgb;->size()I

    move-result v0

    if-lez v0, :cond_ee

    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/zzgb;->zzp(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;)Lcom/google/android/gms/internal/zzgb$zza;

    move-result-object v1

    iget-boolean v0, v1, Lcom/google/android/gms/internal/zzgb$zza;->zzbsw:Z

    if-eqz v0, :cond_bc

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzgs()Lcom/google/android/gms/common/util/zze;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/zze;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, v1, Lcom/google/android/gms/internal/zzgb$zza;->zzbsv:J

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x3e8

    sget-object v0, Lcom/google/android/gms/internal/zzdr;->zzbgm:Lcom/google/android/gms/internal/zzdn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdn;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v10, v0

    mul-long/2addr v8, v10

    cmp-long v0, v6, v8

    if-lez v0, :cond_bc

    const-string v0, "Expired interstitial at %s."

    invoke-static {v0, v5}, Lcom/google/android/gms/internal/zzfz;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzga;)V

    goto :goto_89

    :cond_bc
    iget-object v0, v1, Lcom/google/android/gms/internal/zzgb$zza;->zzbst:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    if-eqz v0, :cond_eb

    const-string v0, " (inline) "

    :goto_c2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x22

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Pooled interstitial"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "returned at %s."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v5}, Lcom/google/android/gms/internal/zzfz;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzga;)V

    move-object v0, v1

    goto/16 :goto_8

    :cond_eb
    const-string v0, " "

    goto :goto_c2

    :cond_ee
    move-object v0, v3

    goto/16 :goto_8

    :cond_f1
    move-object v2, v0

    goto/16 :goto_3d
.end method

.method zza(Lcom/google/android/gms/internal/zzfw;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfz;->zzbsn:Lcom/google/android/gms/internal/zzfw;

    if-nez v0, :cond_d

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzfw;->zznl()Lcom/google/android/gms/internal/zzfw;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfz;->zzbsn:Lcom/google/android/gms/internal/zzfw;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzfz;->restore()V

    :cond_d
    return-void
.end method

.method zzb(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;Ljava/lang/String;)V
    .registers 7

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfz;->zzbsn:Lcom/google/android/gms/internal/zzfw;

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/zzfz;->zzbsn:Lcom/google/android/gms/internal/zzfw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzfw;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzjr$zza;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/zzjr$zza;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzjr$zza;->zztr()Lcom/google/android/gms/internal/zzjr;

    move-result-object v0

    iget v1, v0, Lcom/google/android/gms/internal/zzjr;->zzcqe:I

    invoke-static {p1}, Lcom/google/android/gms/internal/zzfz;->zzn(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;)Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/internal/zzga;

    invoke-direct {v3, v2, p2, v1}, Lcom/google/android/gms/internal/zzga;-><init>(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfz;->zzbsl:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzgb;

    if-nez v0, :cond_38

    const-string v0, "Interstitial pool created at %s."

    invoke-static {v0, v3}, Lcom/google/android/gms/internal/zzfz;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzga;)V

    new-instance v0, Lcom/google/android/gms/internal/zzgb;

    invoke-direct {v0, v2, p2, v1}, Lcom/google/android/gms/internal/zzgb;-><init>(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfz;->zzbsl:Ljava/util/Map;

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_38
    iget-object v1, p0, Lcom/google/android/gms/internal/zzfz;->zzbsn:Lcom/google/android/gms/internal/zzfw;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/zzgb;->zza(Lcom/google/android/gms/internal/zzfw;Lcom/google/android/gms/ads/internal/client/AdRequestParcel;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzgb;->zznr()V

    const-string v0, "Inline entry added to the queue at %s."

    invoke-static {v0, v3}, Lcom/google/android/gms/internal/zzfz;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzga;)V

    goto :goto_4
.end method

.method zznm()V
    .registers 10

    const/4 v8, 0x2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfz;->zzbsn:Lcom/google/android/gms/internal/zzfw;

    if-nez v0, :cond_6

    :goto_5
    return-void

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/zzfz;->zzbsl:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_10
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_76

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzga;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzgb;

    invoke-static {v8}, Lcom/google/android/gms/internal/zzkx;->zzbi(I)Z

    move-result v2

    if-eqz v2, :cond_56

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzgb;->size()I

    move-result v2

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzgb;->zznp()I

    move-result v4

    if-ge v4, v2, :cond_56

    const-string v5, "Loading %s/%s pooled interstitials for %s."

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    sub-int v4, v2, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v6, v7

    const/4 v4, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v6, v4

    aput-object v1, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/zzkx;->v(Ljava/lang/String;)V

    :cond_56
    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzgb;->zznq()V

    :goto_59
    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzgb;->size()I

    move-result v4

    sget-object v2, Lcom/google/android/gms/internal/zzdr;->zzbgl:Lcom/google/android/gms/internal/zzdn;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzdn;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ge v4, v2, :cond_10

    const-string v2, "Pooling and loading one new interstitial for %s."

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/zzfz;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzga;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/zzfz;->zzbsn:Lcom/google/android/gms/internal/zzfw;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/zzgb;->zzb(Lcom/google/android/gms/internal/zzfw;)V

    goto :goto_59

    :cond_76
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzfz;->save()V

    goto :goto_5
.end method
