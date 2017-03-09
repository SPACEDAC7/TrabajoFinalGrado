.class synthetic Lcom/google/ads/interactivemedia/v3/impl/i$1;
.super Ljava/lang/Object;
.source "IMASDK"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/interactivemedia/v3/impl/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic a:[I

.field static final synthetic b:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 185
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->values()[Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/ads/interactivemedia/v3/impl/i$1;->b:[I

    :try_start_9
    sget-object v0, Lcom/google/ads/interactivemedia/v3/impl/i$1;->b:[I

    sget-object v1, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->ALL_ADS_COMPLETED:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_38

    .line 91
    :goto_14
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/impl/aa$a;->values()[Lcom/google/ads/interactivemedia/v3/impl/aa$a;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/ads/interactivemedia/v3/impl/i$1;->a:[I

    :try_start_1d
    sget-object v0, Lcom/google/ads/interactivemedia/v3/impl/i$1;->a:[I

    sget-object v1, Lcom/google/ads/interactivemedia/v3/impl/aa$a;->b:Lcom/google/ads/interactivemedia/v3/impl/aa$a;

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/impl/aa$a;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_36

    :goto_28
    :try_start_28
    sget-object v0, Lcom/google/ads/interactivemedia/v3/impl/i$1;->a:[I

    sget-object v1, Lcom/google/ads/interactivemedia/v3/impl/aa$a;->a:Lcom/google/ads/interactivemedia/v3/impl/aa$a;

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/impl/aa$a;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_33} :catch_34

    :goto_33
    return-void

    :catch_34
    move-exception v0

    goto :goto_33

    :catch_36
    move-exception v0

    goto :goto_28

    .line 185
    :catch_38
    move-exception v0

    goto :goto_14
.end method
