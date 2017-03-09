.class public Lcom/google/android/gms/ads/internal/safebrowsing/SafeBrowsingConfigParcel;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzji;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/ads/internal/safebrowsing/SafeBrowsingConfigParcel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final versionCode:I

.field public final zzcsd:Ljava/lang/String;

.field public final zzcse:Ljava/lang/String;

.field public final zzcsf:Z

.field public final zzcsg:Z

.field public final zzcsh:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/ads/internal/safebrowsing/zzb;

    invoke-direct {v0}, Lcom/google/android/gms/ads/internal/safebrowsing/zzb;-><init>()V

    sput-object v0, Lcom/google/android/gms/ads/internal/safebrowsing/SafeBrowsingConfigParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;ZZLjava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZ",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/ads/internal/safebrowsing/SafeBrowsingConfigParcel;->versionCode:I

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/safebrowsing/SafeBrowsingConfigParcel;->zzcsd:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/safebrowsing/SafeBrowsingConfigParcel;->zzcse:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/google/android/gms/ads/internal/safebrowsing/SafeBrowsingConfigParcel;->zzcsf:Z

    iput-boolean p5, p0, Lcom/google/android/gms/ads/internal/safebrowsing/SafeBrowsingConfigParcel;->zzcsg:Z

    iput-object p6, p0, Lcom/google/android/gms/ads/internal/safebrowsing/SafeBrowsingConfigParcel;->zzcsh:Ljava/util/List;

    return-void
.end method

.method public static zzj(Lorg/json/JSONObject;)Lcom/google/android/gms/ads/internal/safebrowsing/SafeBrowsingConfigParcel;
    .registers 10
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 v1, 0x0

    if-nez p0, :cond_5

    const/4 v0, 0x0

    :goto_4
    return-object v0

    :cond_5
    const-string v0, "click_string"

    const-string v2, ""

    invoke-virtual {p0, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "report_url"

    const-string v3, ""

    invoke-virtual {p0, v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "rendered_ad_enabled"

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v4

    const-string v0, "non_malicious_reporting_enabled"

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v5

    const-string v0, "allowed_headers"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-nez v0, :cond_2e

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    :cond_2e
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    :goto_33
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v1, v7, :cond_4f

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_4c

    sget-object v8, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v7, v8}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4c
    add-int/lit8 v1, v1, 0x1

    goto :goto_33

    :cond_4f
    new-instance v0, Lcom/google/android/gms/ads/internal/safebrowsing/SafeBrowsingConfigParcel;

    const/4 v1, 0x2

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/ads/internal/safebrowsing/SafeBrowsingConfigParcel;-><init>(ILjava/lang/String;Ljava/lang/String;ZZLjava/util/List;)V

    goto :goto_4
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/ads/internal/safebrowsing/zzb;->zza(Lcom/google/android/gms/ads/internal/safebrowsing/SafeBrowsingConfigParcel;Landroid/os/Parcel;I)V

    return-void
.end method
