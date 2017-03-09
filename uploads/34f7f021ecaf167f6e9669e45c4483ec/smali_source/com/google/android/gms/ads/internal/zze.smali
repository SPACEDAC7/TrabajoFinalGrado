.class public Lcom/google/android/gms/ads/internal/zze;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzji;
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final zzamt:Lcom/google/android/gms/ads/internal/request/AutoClickProtectionConfigurationParcel;

.field private zzamu:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/ads/internal/zze;-><init>(Landroid/content/Context;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzko$zza;)V
    .registers 4
    .param p2    # Lcom/google/android/gms/internal/zzko$zza;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zze;->mContext:Landroid/content/Context;

    if-eqz p2, :cond_14

    iget-object v0, p2, Lcom/google/android/gms/internal/zzko$zza;->zzcsu:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzclu:Lcom/google/android/gms/ads/internal/request/AutoClickProtectionConfigurationParcel;

    if-eqz v0, :cond_14

    iget-object v0, p2, Lcom/google/android/gms/internal/zzko$zza;->zzcsu:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzclu:Lcom/google/android/gms/ads/internal/request/AutoClickProtectionConfigurationParcel;

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/zze;->zzamt:Lcom/google/android/gms/ads/internal/request/AutoClickProtectionConfigurationParcel;

    :goto_13
    return-void

    :cond_14
    new-instance v0, Lcom/google/android/gms/ads/internal/request/AutoClickProtectionConfigurationParcel;

    invoke-direct {v0}, Lcom/google/android/gms/ads/internal/request/AutoClickProtectionConfigurationParcel;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/zze;->zzamt:Lcom/google/android/gms/ads/internal/request/AutoClickProtectionConfigurationParcel;

    goto :goto_13
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zze;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/google/android/gms/ads/internal/request/AutoClickProtectionConfigurationParcel;

    invoke-direct {v0, p2}, Lcom/google/android/gms/ads/internal/request/AutoClickProtectionConfigurationParcel;-><init>(Z)V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/zze;->zzamt:Lcom/google/android/gms/ads/internal/request/AutoClickProtectionConfigurationParcel;

    return-void
.end method


# virtual methods
.method public recordClick()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/zze;->zzamu:Z

    return-void
.end method

.method public zzfe()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zze;->zzamt:Lcom/google/android/gms/ads/internal/request/AutoClickProtectionConfigurationParcel;

    iget-boolean v0, v0, Lcom/google/android/gms/ads/internal/request/AutoClickProtectionConfigurationParcel;->zzclz:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/zze;->zzamu:Z

    if-eqz v0, :cond_c

    :cond_a
    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public zzy(Ljava/lang/String;)V
    .registers 7
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_44

    :goto_2
    const-string v0, "Action was blocked because no touch was detected."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkx;->zzdh(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zze;->zzamt:Lcom/google/android/gms/ads/internal/request/AutoClickProtectionConfigurationParcel;

    iget-boolean v0, v0, Lcom/google/android/gms/ads/internal/request/AutoClickProtectionConfigurationParcel;->zzclz:Z

    if-eqz v0, :cond_47

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zze;->zzamt:Lcom/google/android/gms/ads/internal/request/AutoClickProtectionConfigurationParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/request/AutoClickProtectionConfigurationParcel;->zzcma:Ljava/util/List;

    if-eqz v0, :cond_47

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zze;->zzamt:Lcom/google/android/gms/ads/internal/request/AutoClickProtectionConfigurationParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/request/AutoClickProtectionConfigurationParcel;->zzcma:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1b
    :goto_1b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_47

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1b

    const-string/jumbo v2, "{NAVIGATION_URL}"

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzgm()Lcom/google/android/gms/internal/zzlb;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/zze;->mContext:Landroid/content/Context;

    const-string v4, ""

    invoke-virtual {v2, v3, v4, v0}, Lcom/google/android/gms/internal/zzlb;->zzc(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1b

    :cond_44
    const-string p1, ""

    goto :goto_2

    :cond_47
    return-void
.end method
