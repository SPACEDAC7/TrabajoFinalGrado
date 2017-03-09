.class public Lcom/google/android/gms/ads/internal/cache/CacheOffering;
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
            "Lcom/google/android/gms/ads/internal/cache/CacheOffering;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final url:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public final version:I

.field public final zzayd:J

.field public final zzaye:Ljava/lang/String;

.field public final zzayf:Ljava/lang/String;

.field public final zzayg:Ljava/lang/String;

.field public final zzayh:Landroid/os/Bundle;

.field public final zzayi:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/ads/internal/cache/zzd;

    invoke-direct {v0}, Lcom/google/android/gms/ads/internal/cache/zzd;-><init>()V

    sput-object v0, Lcom/google/android/gms/ads/internal/cache/CacheOffering;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Z)V
    .registers 11
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/ads/internal/cache/CacheOffering;->version:I

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/cache/CacheOffering;->url:Ljava/lang/String;

    iput-wide p3, p0, Lcom/google/android/gms/ads/internal/cache/CacheOffering;->zzayd:J

    if-eqz p5, :cond_1c

    :goto_b
    iput-object p5, p0, Lcom/google/android/gms/ads/internal/cache/CacheOffering;->zzaye:Ljava/lang/String;

    if-eqz p6, :cond_1f

    :goto_f
    iput-object p6, p0, Lcom/google/android/gms/ads/internal/cache/CacheOffering;->zzayf:Ljava/lang/String;

    if-eqz p7, :cond_22

    :goto_13
    iput-object p7, p0, Lcom/google/android/gms/ads/internal/cache/CacheOffering;->zzayg:Ljava/lang/String;

    if-eqz p8, :cond_25

    :goto_17
    iput-object p8, p0, Lcom/google/android/gms/ads/internal/cache/CacheOffering;->zzayh:Landroid/os/Bundle;

    iput-boolean p9, p0, Lcom/google/android/gms/ads/internal/cache/CacheOffering;->zzayi:Z

    return-void

    :cond_1c
    const-string p5, ""

    goto :goto_b

    :cond_1f
    const-string p6, ""

    goto :goto_f

    :cond_22
    const-string p7, ""

    goto :goto_13

    :cond_25
    new-instance p8, Landroid/os/Bundle;

    invoke-direct {p8}, Landroid/os/Bundle;-><init>()V

    goto :goto_17
.end method

.method public static zzak(Ljava/lang/String;)Lcom/google/android/gms/ads/internal/cache/CacheOffering;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/cache/CacheOffering;->zze(Landroid/net/Uri;)Lcom/google/android/gms/ads/internal/cache/CacheOffering;

    move-result-object v0

    return-object v0
.end method

.method public static zze(Landroid/net/Uri;)Lcom/google/android/gms/ads/internal/cache/CacheOffering;
    .registers 13
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const/4 v11, 0x0

    :try_start_1
    const-string v0, "gcache"

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    move-object v1, v11

    :goto_e
    return-object v1

    :cond_f
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_38

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x3e

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Expected 2 path parts for namespace and id, found :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkx;->zzdi(Ljava/lang/String;)V

    move-object v1, v11

    goto :goto_e

    :cond_38
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {p0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v0, "url"

    invoke-virtual {p0, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "1"

    const-string v1, "read_only"

    invoke-virtual {p0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    const-string v0, "expiration"

    invoke-virtual {p0, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_a9

    const-wide/16 v4, 0x0

    :goto_67
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzgo()Lcom/google/android/gms/internal/zzlc;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/zzlc;->zzh(Landroid/net/Uri;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_78
    :goto_78
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_ae

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v2, "tag."

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_78

    const-string/jumbo v2, "tag."

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9f
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_9f} :catch_a0
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_9f} :catch_b6

    goto :goto_78

    :catch_a0
    move-exception v0

    :goto_a1
    const-string v1, "Unable to parse Uri into cache offering."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzkx;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v1, v11

    goto/16 :goto_e

    :cond_a9
    :try_start_a9
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    goto :goto_67

    :cond_ae
    new-instance v1, Lcom/google/android/gms/ads/internal/cache/CacheOffering;

    const/4 v2, 0x1

    invoke-direct/range {v1 .. v10}, Lcom/google/android/gms/ads/internal/cache/CacheOffering;-><init>(ILjava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Z)V
    :try_end_b4
    .catch Ljava/lang/NullPointerException; {:try_start_a9 .. :try_end_b4} :catch_a0
    .catch Ljava/lang/NumberFormatException; {:try_start_a9 .. :try_end_b4} :catch_b6

    goto/16 :goto_e

    :catch_b6
    move-exception v0

    goto :goto_a1
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/ads/internal/cache/zzd;->zza(Lcom/google/android/gms/ads/internal/cache/CacheOffering;Landroid/os/Parcel;I)V

    return-void
.end method
