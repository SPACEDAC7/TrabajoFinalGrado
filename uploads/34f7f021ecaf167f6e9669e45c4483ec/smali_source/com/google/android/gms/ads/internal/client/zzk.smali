.class public final Lcom/google/android/gms/ads/internal/client/zzk;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzji;
.end annotation


# instance fields
.field private final zzant:Ljava/lang/String;

.field private final zzazx:[Lcom/google/android/gms/ads/AdSize;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 10

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v3, Lcom/google/android/gms/R$styleable;->AdsAttrs:[I

    invoke-virtual {v0, p2, v3}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v3

    sget v0, Lcom/google/android/gms/R$styleable;->AdsAttrs_adSize:I

    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget v0, Lcom/google/android/gms/R$styleable;->AdsAttrs_adSizes:I

    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4a

    move v0, v1

    :goto_22
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4c

    :goto_28
    if-eqz v0, :cond_4e

    if-nez v1, :cond_4e

    invoke-static {v4}, Lcom/google/android/gms/ads/internal/client/zzk;->zzal(Ljava/lang/String;)[Lcom/google/android/gms/ads/AdSize;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzk;->zzazx:[Lcom/google/android/gms/ads/AdSize;

    :goto_32
    sget v0, Lcom/google/android/gms/R$styleable;->AdsAttrs_adUnitId:I

    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzk;->zzant:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzk;->zzant:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6b

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Required XML attribute \"adUnitId\" was missing."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4a
    move v0, v2

    goto :goto_22

    :cond_4c
    move v1, v2

    goto :goto_28

    :cond_4e
    if-nez v0, :cond_59

    if-eqz v1, :cond_59

    invoke-static {v5}, Lcom/google/android/gms/ads/internal/client/zzk;->zzal(Ljava/lang/String;)[Lcom/google/android/gms/ads/AdSize;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzk;->zzazx:[Lcom/google/android/gms/ads/AdSize;

    goto :goto_32

    :cond_59
    if-eqz v0, :cond_63

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Either XML attribute \"adSize\" or XML attribute \"supportedAdSizes\" should be specified, but not both."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_63
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Required XML attribute \"adSize\" was missing."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6b
    return-void
.end method

.method private static zzal(Ljava/lang/String;)[Lcom/google/android/gms/ads/AdSize;
    .registers 11

    const/4 v9, 0x1

    const/4 v1, 0x0

    const-string v0, "\\s*,\\s*"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v0, v4

    new-array v5, v0, [Lcom/google/android/gms/ads/AdSize;

    move v0, v1

    :goto_c
    array-length v2, v4

    if-ge v0, v2, :cond_10a

    aget-object v2, v4, v0

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    const-string v2, "^(\\d+|FULL_WIDTH)\\s*[xX]\\s*(\\d+|AUTO_HEIGHT)$"

    invoke-virtual {v6, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_84

    const-string v2, "[xX]"

    invoke-virtual {v6, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    aget-object v2, v7, v1

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v7, v1

    aget-object v2, v7, v9

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v7, v9

    :try_start_33
    const-string v2, "FULL_WIDTH"

    const/4 v3, 0x0

    aget-object v3, v7, v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_56

    const/4 v2, -0x1

    move v3, v2

    :goto_40
    const-string v2, "AUTO_HEIGHT"

    const/4 v8, 0x1

    aget-object v8, v7, v8

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_48
    .catch Ljava/lang/NumberFormatException; {:try_start_33 .. :try_end_48} :catch_67

    move-result v2

    if-eqz v2, :cond_5f

    const/4 v2, -0x2

    :goto_4c
    new-instance v6, Lcom/google/android/gms/ads/AdSize;

    invoke-direct {v6, v3, v2}, Lcom/google/android/gms/ads/AdSize;-><init>(II)V

    aput-object v6, v5, v0

    :goto_53
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_56
    const/4 v2, 0x0

    :try_start_57
    aget-object v2, v7, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    move v3, v2

    goto :goto_40

    :cond_5f
    const/4 v2, 0x1

    aget-object v2, v7, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_65
    .catch Ljava/lang/NumberFormatException; {:try_start_57 .. :try_end_65} :catch_67

    move-result v2

    goto :goto_4c

    :catch_67
    move-exception v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Could not parse XML attribute \"adSize\": "

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_7e

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_7a
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_7e
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_7a

    :cond_84
    const-string v2, "BANNER"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_91

    sget-object v2, Lcom/google/android/gms/ads/AdSize;->BANNER:Lcom/google/android/gms/ads/AdSize;

    aput-object v2, v5, v0

    goto :goto_53

    :cond_91
    const-string v2, "LARGE_BANNER"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9e

    sget-object v2, Lcom/google/android/gms/ads/AdSize;->LARGE_BANNER:Lcom/google/android/gms/ads/AdSize;

    aput-object v2, v5, v0

    goto :goto_53

    :cond_9e
    const-string v2, "FULL_BANNER"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ab

    sget-object v2, Lcom/google/android/gms/ads/AdSize;->FULL_BANNER:Lcom/google/android/gms/ads/AdSize;

    aput-object v2, v5, v0

    goto :goto_53

    :cond_ab
    const-string v2, "LEADERBOARD"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b8

    sget-object v2, Lcom/google/android/gms/ads/AdSize;->LEADERBOARD:Lcom/google/android/gms/ads/AdSize;

    aput-object v2, v5, v0

    goto :goto_53

    :cond_b8
    const-string v2, "MEDIUM_RECTANGLE"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c5

    sget-object v2, Lcom/google/android/gms/ads/AdSize;->MEDIUM_RECTANGLE:Lcom/google/android/gms/ads/AdSize;

    aput-object v2, v5, v0

    goto :goto_53

    :cond_c5
    const-string v2, "SMART_BANNER"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d2

    sget-object v2, Lcom/google/android/gms/ads/AdSize;->SMART_BANNER:Lcom/google/android/gms/ads/AdSize;

    aput-object v2, v5, v0

    goto :goto_53

    :cond_d2
    const-string v2, "WIDE_SKYSCRAPER"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e0

    sget-object v2, Lcom/google/android/gms/ads/AdSize;->WIDE_SKYSCRAPER:Lcom/google/android/gms/ads/AdSize;

    aput-object v2, v5, v0

    goto/16 :goto_53

    :cond_e0
    const-string v2, "FLUID"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ee

    sget-object v2, Lcom/google/android/gms/ads/AdSize;->FLUID:Lcom/google/android/gms/ads/AdSize;

    aput-object v2, v5, v0

    goto/16 :goto_53

    :cond_ee
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Could not parse XML attribute \"adSize\": "

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_104

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_100
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_104
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_100

    :cond_10a
    array-length v0, v5

    if-nez v0, :cond_129

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Could not parse XML attribute \"adSize\": "

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_123

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_11f
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_123
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_11f

    :cond_129
    return-object v5
.end method


# virtual methods
.method public getAdUnitId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzk;->zzant:Ljava/lang/String;

    return-object v0
.end method

.method public zzm(Z)[Lcom/google/android/gms/ads/AdSize;
    .registers 4

    if-nez p1, :cond_10

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzk;->zzazx:[Lcom/google/android/gms/ads/AdSize;

    array-length v0, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_10

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The adSizes XML attribute is only allowed on PublisherAdViews."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzk;->zzazx:[Lcom/google/android/gms/ads/AdSize;

    return-object v0
.end method
