.class public final Lcom/google/android/gms/internal/zzfl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzfe;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzji;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzfl$zza;
    }
.end annotation


# instance fields
.field private final zzbqt:Lcom/google/android/gms/ads/internal/zze;

.field private final zzbqu:Lcom/google/android/gms/internal/zzhq;

.field private final zzbqw:Lcom/google/android/gms/internal/zzfg;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzfg;Lcom/google/android/gms/ads/internal/zze;Lcom/google/android/gms/internal/zzhq;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzfl;->zzbqw:Lcom/google/android/gms/internal/zzfg;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzfl;->zzbqt:Lcom/google/android/gms/ads/internal/zze;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzfl;->zzbqu:Lcom/google/android/gms/internal/zzhq;

    return-void
.end method

.method private static zzd(Ljava/util/Map;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "1"

    const-string v1, "custom_close"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static zze(Ljava/util/Map;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    const-string v0, "o"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_3d

    const-string v1, "p"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzgo()Lcom/google/android/gms/internal/zzlc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzlc;->zzvx()I

    move-result v0

    :goto_1a
    return v0

    :cond_1b
    const-string v1, "l"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzgo()Lcom/google/android/gms/internal/zzlc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzlc;->zzvw()I

    move-result v0

    goto :goto_1a

    :cond_2c
    const-string v1, "c"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3d

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzgo()Lcom/google/android/gms/internal/zzlc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzlc;->zzvy()I

    move-result v0

    goto :goto_1a

    :cond_3d
    const/4 v0, -0x1

    goto :goto_1a
.end method

.method private static zzf(Lcom/google/android/gms/internal/zzmd;Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzmd;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p0}, Lcom/google/android/gms/internal/zzmd;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v0, "u"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_19

    const-string v0, "Destination url cannot be empty."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkx;->zzdi(Ljava/lang/String;)V

    :goto_18
    return-void

    :cond_19
    invoke-interface {p0}, Lcom/google/android/gms/internal/zzmd;->zzxc()Lcom/google/android/gms/internal/zzme;

    move-result-object v0

    new-instance v2, Lcom/google/android/gms/internal/zzfl$zza;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/zzfl$zza;-><init>(Lcom/google/android/gms/internal/zzmd;)V

    invoke-virtual {v2, v1, p1}, Lcom/google/android/gms/internal/zzfl$zza;->zza(Landroid/content/Context;Ljava/util/Map;)Landroid/content/Intent;

    move-result-object v1

    :try_start_26
    new-instance v2, Lcom/google/android/gms/ads/internal/overlay/AdLauncherIntentInfoParcel;

    invoke-direct {v2, v1}, Lcom/google/android/gms/ads/internal/overlay/AdLauncherIntentInfoParcel;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/zzme;->zza(Lcom/google/android/gms/ads/internal/overlay/AdLauncherIntentInfoParcel;)V
    :try_end_2e
    .catch Landroid/content/ActivityNotFoundException; {:try_start_26 .. :try_end_2e} :catch_2f

    goto :goto_18

    :catch_2f
    move-exception v0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkx;->zzdi(Ljava/lang/String;)V

    goto :goto_18
.end method

.method private zzs(Z)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfl;->zzbqu:Lcom/google/android/gms/internal/zzhq;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfl;->zzbqu:Lcom/google/android/gms/internal/zzhq;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzhq;->zzt(Z)V

    :cond_9
    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zzmd;Ljava/util/Map;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzmd;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v0, "a"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_12

    const-string v0, "Action missing from an open GMSG."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkx;->zzdi(Ljava/lang/String;)V

    :cond_11
    :goto_11
    return-void

    :cond_12
    iget-object v1, p0, Lcom/google/android/gms/internal/zzfl;->zzbqt:Lcom/google/android/gms/ads/internal/zze;

    if-eqz v1, :cond_2d

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfl;->zzbqt:Lcom/google/android/gms/ads/internal/zze;

    invoke-virtual {v1}, Lcom/google/android/gms/ads/internal/zze;->zzfe()Z

    move-result v1

    if-nez v1, :cond_2d

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfl;->zzbqt:Lcom/google/android/gms/ads/internal/zze;

    const-string/jumbo v0, "u"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/internal/zze;->zzy(Ljava/lang/String;)V

    goto :goto_11

    :cond_2d
    invoke-interface {p1}, Lcom/google/android/gms/internal/zzmd;->zzxc()Lcom/google/android/gms/internal/zzme;

    move-result-object v8

    const-string v1, "expand"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_54

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzmd;->zzxg()Z

    move-result v0

    if-eqz v0, :cond_45

    const-string v0, "Cannot expand WebView that is already expanded."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkx;->zzdi(Ljava/lang/String;)V

    goto :goto_11

    :cond_45
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/zzfl;->zzs(Z)V

    invoke-static {p2}, Lcom/google/android/gms/internal/zzfl;->zzd(Ljava/util/Map;)Z

    move-result v0

    invoke-static {p2}, Lcom/google/android/gms/internal/zzfl;->zze(Ljava/util/Map;)I

    move-result v1

    invoke-virtual {v8, v0, v1}, Lcom/google/android/gms/internal/zzme;->zza(ZI)V

    goto :goto_11

    :cond_54
    const-string/jumbo v1, "webapp"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_94

    const-string/jumbo v0, "u"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/zzfl;->zzs(Z)V

    if-eqz v0, :cond_77

    invoke-static {p2}, Lcom/google/android/gms/internal/zzfl;->zzd(Ljava/util/Map;)Z

    move-result v1

    invoke-static {p2}, Lcom/google/android/gms/internal/zzfl;->zze(Ljava/util/Map;)I

    move-result v2

    invoke-virtual {v8, v1, v2, v0}, Lcom/google/android/gms/internal/zzme;->zza(ZILjava/lang/String;)V

    goto :goto_11

    :cond_77
    invoke-static {p2}, Lcom/google/android/gms/internal/zzfl;->zzd(Ljava/util/Map;)Z

    move-result v2

    invoke-static {p2}, Lcom/google/android/gms/internal/zzfl;->zze(Ljava/util/Map;)I

    move-result v3

    const-string v0, "html"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "baseurl"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v8, v2, v3, v0, v1}, Lcom/google/android/gms/internal/zzme;->zza(ZILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_11

    :cond_94
    const-string v1, "in_app_purchase"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_da

    const-string v0, "product_id"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "report_urls"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzfl;->zzbqw:Lcom/google/android/gms/internal/zzfg;

    if-eqz v2, :cond_11

    if-eqz v1, :cond_ce

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_ce

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzfl;->zzbqw:Lcom/google/android/gms/internal/zzfg;

    new-instance v3, Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v2, v0, v3}, Lcom/google/android/gms/internal/zzfg;->zza(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto/16 :goto_11

    :cond_ce
    iget-object v1, p0, Lcom/google/android/gms/internal/zzfl;->zzbqw:Lcom/google/android/gms/internal/zzfg;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1, v0, v2}, Lcom/google/android/gms/internal/zzfg;->zza(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto/16 :goto_11

    :cond_da
    const-string v1, "app"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_fc

    const-string/jumbo v1, "true"

    const-string/jumbo v0, "system_browser"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_fc

    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/zzfl;->zzs(Z)V

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/zzfl;->zzf(Lcom/google/android/gms/internal/zzmd;Ljava/util/Map;)V

    goto/16 :goto_11

    :cond_fc
    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/zzfl;->zzs(Z)V

    const-string/jumbo v0, "u"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_150

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzgm()Lcom/google/android/gms/internal/zzlb;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/google/android/gms/internal/zzlb;->zza(Lcom/google/android/gms/internal/zzmd;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_116
    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/AdLauncherIntentInfoParcel;

    const-string v1, "i"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v3, "m"

    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "p"

    invoke-interface {p2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "c"

    invoke-interface {p2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "f"

    invoke-interface {p2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v7, "e"

    invoke-interface {p2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/ads/internal/overlay/AdLauncherIntentInfoParcel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Lcom/google/android/gms/internal/zzme;->zza(Lcom/google/android/gms/ads/internal/overlay/AdLauncherIntentInfoParcel;)V

    goto/16 :goto_11

    :cond_150
    move-object v2, v0

    goto :goto_116
.end method
