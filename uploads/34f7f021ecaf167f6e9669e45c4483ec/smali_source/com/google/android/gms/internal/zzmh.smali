.class Lcom/google/android/gms/internal/zzmh;
.super Landroid/webkit/WebView;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/webkit/DownloadListener;
.implements Lcom/google/android/gms/internal/zzmd;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzji;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzmh$zza;
    }
.end annotation


# instance fields
.field private a:Lcom/google/android/gms/ads/internal/overlay/zzd;

.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:I

.field private g:Z

.field h:Z

.field private i:Lcom/google/android/gms/internal/zzmi;

.field private j:Z

.field private k:Z

.field private l:Lcom/google/android/gms/ads/internal/formats/zzg;

.field private m:I

.field private n:I

.field private o:Lcom/google/android/gms/internal/zzdx;

.field private p:Lcom/google/android/gms/internal/zzdx;

.field private q:Lcom/google/android/gms/internal/zzdy;

.field private r:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View$OnClickListener;",
            ">;"
        }
    .end annotation
.end field

.field private s:Lcom/google/android/gms/ads/internal/overlay/zzd;

.field private t:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzfs;",
            ">;"
        }
    .end annotation
.end field

.field private final zzako:Ljava/lang/Object;

.field private final zzamb:Lcom/google/android/gms/ads/internal/zzd;

.field private final zzanu:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

.field private zzapp:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

.field private zzass:Lcom/google/android/gms/internal/zzlp;

.field private final zzati:Landroid/view/WindowManager;

.field private final zzbnx:Lcom/google/android/gms/internal/zzav;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private zzbzd:I

.field private zzbze:I

.field private zzbzg:I

.field private zzbzh:I

.field private zzcec:Ljava/lang/String;

.field private zzced:Lcom/google/android/gms/internal/zzdx;

.field private zzcub:Ljava/lang/Boolean;

.field private final zzczx:Lcom/google/android/gms/internal/zzmh$zza;

.field private final zzczy:Lcom/google/android/gms/ads/internal/zzs;

.field private zzczz:Lcom/google/android/gms/internal/zzme;


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/internal/zzmh$zza;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;ZZLcom/google/android/gms/internal/zzav;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/zzdz;Lcom/google/android/gms/ads/internal/zzs;Lcom/google/android/gms/ads/internal/zzd;)V
    .registers 14
    .param p5    # Lcom/google/android/gms/internal/zzav;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, -0x1

    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzmh;->zzako:Ljava/lang/Object;

    iput-boolean v3, p0, Lcom/google/android/gms/internal/zzmh;->g:Z

    iput-boolean v2, p0, Lcom/google/android/gms/internal/zzmh;->h:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/zzmh;->zzcec:Ljava/lang/String;

    iput v1, p0, Lcom/google/android/gms/internal/zzmh;->zzbze:I

    iput v1, p0, Lcom/google/android/gms/internal/zzmh;->zzbzd:I

    iput v1, p0, Lcom/google/android/gms/internal/zzmh;->zzbzg:I

    iput v1, p0, Lcom/google/android/gms/internal/zzmh;->zzbzh:I

    iput-object p1, p0, Lcom/google/android/gms/internal/zzmh;->zzczx:Lcom/google/android/gms/internal/zzmh$zza;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzmh;->zzapp:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    iput-boolean p3, p0, Lcom/google/android/gms/internal/zzmh;->d:Z

    iput v1, p0, Lcom/google/android/gms/internal/zzmh;->f:I

    iput-object p5, p0, Lcom/google/android/gms/internal/zzmh;->zzbnx:Lcom/google/android/gms/internal/zzav;

    iput-object p6, p0, Lcom/google/android/gms/internal/zzmh;->zzanu:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iput-object p8, p0, Lcom/google/android/gms/internal/zzmh;->zzczy:Lcom/google/android/gms/ads/internal/zzs;

    iput-object p9, p0, Lcom/google/android/gms/internal/zzmh;->zzamb:Lcom/google/android/gms/ads/internal/zzd;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzmh;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzmh;->zzati:Landroid/view/WindowManager;

    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/zzmh;->setBackgroundColor(I)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzmh;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_5c

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    :cond_5c
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzgm()Lcom/google/android/gms/internal/zzlb;

    move-result-object v1

    iget-object v2, p6, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->zzda:Ljava/lang/String;

    invoke-virtual {v1, p1, v2, v0}, Lcom/google/android/gms/internal/zzlb;->zza(Landroid/content/Context;Ljava/lang/String;Landroid/webkit/WebSettings;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzgo()Lcom/google/android/gms/internal/zzlc;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzmh;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/zzlc;->zza(Landroid/content/Context;Landroid/webkit/WebSettings;)Z

    invoke-virtual {p0, p0}, Lcom/google/android/gms/internal/zzmh;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzmh;->zzym()V

    invoke-static {}, Lcom/google/android/gms/common/util/zzs;->zzays()Z

    move-result v0

    if-eqz v0, :cond_86

    new-instance v0, Lcom/google/android/gms/internal/zzmj;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzmj;-><init>(Lcom/google/android/gms/internal/zzmd;)V

    const-string v1, "googleAdsJsInterface"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/zzmh;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_86
    invoke-static {}, Lcom/google/android/gms/common/util/zzs;->zzayn()Z

    move-result v0

    if-eqz v0, :cond_96

    const-string v0, "accessibility"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzmh;->removeJavascriptInterface(Ljava/lang/String;)V

    const-string v0, "accessibilityTraversal"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzmh;->removeJavascriptInterface(Ljava/lang/String;)V

    :cond_96
    new-instance v0, Lcom/google/android/gms/internal/zzlp;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzmh;->zzczx:Lcom/google/android/gms/internal/zzmh$zza;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzmh$zza;->zzwy()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, p0, v2}, Lcom/google/android/gms/internal/zzlp;-><init>(Landroid/app/Activity;Landroid/view/View;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzmh;->zzass:Lcom/google/android/gms/internal/zzlp;

    invoke-direct {p0, p7}, Lcom/google/android/gms/internal/zzmh;->zzd(Lcom/google/android/gms/internal/zzdz;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzmh;I)I
    .registers 2

    iput p1, p0, Lcom/google/android/gms/internal/zzmh;->n:I

    return p1
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzmh;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmh;->zzako:Ljava/lang/Object;

    return-object v0
.end method

.method private zzap(Z)V
    .registers 5

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "isVisible"

    if-eqz p1, :cond_14

    const-string v0, "1"

    :goto_b
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "onAdVisibilityChanged"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/zzmh;->zza(Ljava/lang/String;Ljava/util/Map;)V

    return-void

    :cond_14
    const-string v0, "0"

    goto :goto_b
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzmh;)I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/zzmh;->n:I

    return v0
.end method

.method static zzb(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;ZZLcom/google/android/gms/internal/zzav;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/zzdz;Lcom/google/android/gms/ads/internal/zzs;Lcom/google/android/gms/ads/internal/zzd;)Lcom/google/android/gms/internal/zzmh;
    .registers 19
    .param p4    # Lcom/google/android/gms/internal/zzav;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    new-instance v1, Lcom/google/android/gms/internal/zzmh$zza;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzmh$zza;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/google/android/gms/internal/zzmh;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/google/android/gms/internal/zzmh;-><init>(Lcom/google/android/gms/internal/zzmh$zza;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;ZZLcom/google/android/gms/internal/zzav;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/zzdz;Lcom/google/android/gms/ads/internal/zzs;Lcom/google/android/gms/ads/internal/zzd;)V

    return-object v0
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/zzmh;)V
    .registers 1

    invoke-super {p0}, Landroid/webkit/WebView;->destroy()V

    return-void
.end method

.method private zzd(Lcom/google/android/gms/internal/zzdz;)V
    .registers 8

    const/4 v5, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzmh;->zzyq()V

    new-instance v0, Lcom/google/android/gms/internal/zzdy;

    new-instance v1, Lcom/google/android/gms/internal/zzdz;

    const/4 v2, 0x1

    const-string v3, "make_wv"

    iget-object v4, p0, Lcom/google/android/gms/internal/zzmh;->zzapp:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->zzazq:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/gms/internal/zzdz;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzdy;-><init>(Lcom/google/android/gms/internal/zzdz;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzmh;->q:Lcom/google/android/gms/internal/zzdy;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmh;->q:Lcom/google/android/gms/internal/zzdy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdy;->zzly()Lcom/google/android/gms/internal/zzdz;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzdz;->zzc(Lcom/google/android/gms/internal/zzdz;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmh;->q:Lcom/google/android/gms/internal/zzdy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdy;->zzly()Lcom/google/android/gms/internal/zzdz;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzdv;->zzb(Lcom/google/android/gms/internal/zzdz;)Lcom/google/android/gms/internal/zzdx;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzmh;->zzced:Lcom/google/android/gms/internal/zzdx;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmh;->q:Lcom/google/android/gms/internal/zzdy;

    const-string v1, "native:view_create"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzmh;->zzced:Lcom/google/android/gms/internal/zzdx;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzdy;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzdx;)V

    iput-object v5, p0, Lcom/google/android/gms/internal/zzmh;->p:Lcom/google/android/gms/internal/zzdx;

    iput-object v5, p0, Lcom/google/android/gms/internal/zzmh;->o:Lcom/google/android/gms/internal/zzdx;

    return-void
.end method

.method private zzyi()V
    .registers 4

    iget-object v1, p0, Lcom/google/android/gms/internal/zzmh;->zzako:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzgq()Lcom/google/android/gms/internal/zzkr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzkr;->zzva()Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzmh;->zzcub:Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmh;->zzcub:Ljava/lang/Boolean;
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_2b

    if-nez v0, :cond_1f

    :try_start_11
    const-string v0, "(function(){})()"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/google/android/gms/internal/zzmh;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzmh;->zzb(Ljava/lang/Boolean;)V
    :try_end_1f
    .catch Ljava/lang/IllegalStateException; {:try_start_11 .. :try_end_1f} :catch_21
    .catchall {:try_start_11 .. :try_end_1f} :catchall_2b

    :cond_1f
    :goto_1f
    :try_start_1f
    monitor-exit v1

    return-void

    :catch_21
    move-exception v0

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzmh;->zzb(Ljava/lang/Boolean;)V

    goto :goto_1f

    :catchall_2b
    move-exception v0

    monitor-exit v1
    :try_end_2d
    .catchall {:try_start_1f .. :try_end_2d} :catchall_2b

    throw v0
.end method

.method private zzyj()V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmh;->q:Lcom/google/android/gms/internal/zzdy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdy;->zzly()Lcom/google/android/gms/internal/zzdz;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzmh;->zzced:Lcom/google/android/gms/internal/zzdx;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "aeh2"

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/zzdv;->zza(Lcom/google/android/gms/internal/zzdz;Lcom/google/android/gms/internal/zzdx;[Ljava/lang/String;)Z

    return-void
.end method

.method private zzyk()V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmh;->q:Lcom/google/android/gms/internal/zzdy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdy;->zzly()Lcom/google/android/gms/internal/zzdz;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzmh;->zzced:Lcom/google/android/gms/internal/zzdx;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "aebb2"

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/zzdv;->zza(Lcom/google/android/gms/internal/zzdz;Lcom/google/android/gms/internal/zzdx;[Ljava/lang/String;)Z

    return-void
.end method

.method private zzym()V
    .registers 4

    iget-object v1, p0, Lcom/google/android/gms/internal/zzmh;->zzako:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzmh;->d:Z

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmh;->zzapp:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    iget-boolean v0, v0, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->zzazr:Z

    if-eqz v0, :cond_29

    :cond_d
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-ge v0, v2, :cond_1d

    const-string v0, "Disabling hardware acceleration on an overlay."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkx;->zzdg(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzmh;->zzyn()V

    :goto_1b
    monitor-exit v1

    return-void

    :cond_1d
    const-string v0, "Enabling hardware acceleration on an overlay."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkx;->zzdg(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzmh;->zzyo()V

    goto :goto_1b

    :catchall_26
    move-exception v0

    monitor-exit v1
    :try_end_28
    .catchall {:try_start_3 .. :try_end_28} :catchall_26

    throw v0

    :cond_29
    :try_start_29
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-ge v0, v2, :cond_38

    const-string v0, "Disabling hardware acceleration on an AdView."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkx;->zzdg(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzmh;->zzyn()V

    goto :goto_1b

    :cond_38
    const-string v0, "Enabling hardware acceleration on an AdView."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkx;->zzdg(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzmh;->zzyo()V
    :try_end_40
    .catchall {:try_start_29 .. :try_end_40} :catchall_26

    goto :goto_1b
.end method

.method private zzyn()V
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzmh;->zzako:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzmh;->e:Z

    if-nez v0, :cond_e

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzgo()Lcom/google/android/gms/internal/zzlc;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/zzlc;->zzv(Landroid/view/View;)Z

    :cond_e
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzmh;->e:Z

    monitor-exit v1

    return-void

    :catchall_13
    move-exception v0

    monitor-exit v1
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v0
.end method

.method private zzyo()V
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzmh;->zzako:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzmh;->e:Z

    if-eqz v0, :cond_e

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzgo()Lcom/google/android/gms/internal/zzlc;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/zzlc;->zzu(Landroid/view/View;)Z

    :cond_e
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzmh;->e:Z

    monitor-exit v1

    return-void

    :catchall_13
    move-exception v0

    monitor-exit v1
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v0
.end method

.method private zzyp()V
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzmh;->zzako:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_4
    iput-object v0, p0, Lcom/google/android/gms/internal/zzmh;->t:Ljava/util/Map;

    monitor-exit v1

    return-void

    :catchall_8
    move-exception v0

    monitor-exit v1
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_8

    throw v0
.end method

.method private zzyq()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmh;->q:Lcom/google/android/gms/internal/zzdy;

    if-nez v0, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/zzmh;->q:Lcom/google/android/gms/internal/zzdy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdy;->zzly()Lcom/google/android/gms/internal/zzdz;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzgq()Lcom/google/android/gms/internal/zzkr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzkr;->zzuu()Lcom/google/android/gms/internal/zzdt;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzgq()Lcom/google/android/gms/internal/zzkr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzkr;->zzuu()Lcom/google/android/gms/internal/zzdt;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzdt;->zza(Lcom/google/android/gms/internal/zzdz;)Z

    goto :goto_4
.end method


# virtual methods
.method public destroy()V
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzmh;->zzako:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzmh;->zzyq()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmh;->zzass:Lcom/google/android/gms/internal/zzlp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzlp;->zzwm()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmh;->a:Lcom/google/android/gms/ads/internal/overlay/zzd;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmh;->a:Lcom/google/android/gms/ads/internal/overlay/zzd;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/overlay/zzd;->close()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmh;->a:Lcom/google/android/gms/ads/internal/overlay/zzd;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/overlay/zzd;->onDestroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzmh;->a:Lcom/google/android/gms/ads/internal/overlay/zzd;

    :cond_1c
    iget-object v0, p0, Lcom/google/android/gms/internal/zzmh;->zzczz:Lcom/google/android/gms/internal/zzme;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzme;->reset()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzmh;->c:Z

    if-eqz v0, :cond_27

    monitor-exit v1

    :goto_26
    return-void

    :cond_27
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzhj()Lcom/google/android/gms/internal/zzfr;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/zzfr;->zze(Lcom/google/android/gms/internal/zzmd;)Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzmh;->zzyp()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzmh;->c:Z

    const-string v0, "Initiating WebView self destruct sequence in 3..."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkx;->v(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmh;->zzczz:Lcom/google/android/gms/internal/zzme;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzme;->zzxz()V

    monitor-exit v1

    goto :goto_26

    :catchall_40
    move-exception v0

    monitor-exit v1
    :try_end_42
    .catchall {:try_start_3 .. :try_end_42} :catchall_40

    throw v0
.end method

.method public evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    .registers 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/webkit/ValueCallback",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v1, p0, Lcom/google/android/gms/internal/zzmh;->zzako:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzmh;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_16

    const-string v0, "The webview is destroyed. Ignoring action."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkx;->zzdi(Ljava/lang/String;)V

    if-eqz p2, :cond_14

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    :cond_14
    monitor-exit v1

    :goto_15
    return-void

    :cond_16
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    monitor-exit v1

    goto :goto_15

    :catchall_1b
    move-exception v0

    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw v0
.end method

.method protected finalize()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iget-object v1, p0, Lcom/google/android/gms/internal/zzmh;->zzako:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzmh;->c:Z

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmh;->zzczz:Lcom/google/android/gms/internal/zzme;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzme;->reset()V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzhj()Lcom/google/android/gms/internal/zzfr;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/zzfr;->zze(Lcom/google/android/gms/internal/zzmd;)Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzmh;->zzyp()V

    :cond_16
    monitor-exit v1
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_1b

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_1b
    move-exception v0

    :try_start_1c
    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    throw v0
.end method

.method public getRequestId()Ljava/lang/String;
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzmh;->zzako:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzmh;->zzcec:Ljava/lang/String;

    monitor-exit v1

    return-object v0

    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public getRequestedOrientation()I
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzmh;->zzako:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget v0, p0, Lcom/google/android/gms/internal/zzmh;->f:I

    monitor-exit v1

    return v0

    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public getView()Landroid/view/View;
    .registers 1

    return-object p0
.end method

.method public getWebView()Landroid/webkit/WebView;
    .registers 1

    return-object p0
.end method

.method public isDestroyed()Z
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzmh;->zzako:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzmh;->c:Z

    monitor-exit v1

    return v0

    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    iget-object v1, p0, Lcom/google/android/gms/internal/zzmh;->zzako:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzmh;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_c
    monitor-exit v1

    return-void

    :cond_e
    const-string v0, "The webview is destroyed. Ignoring action."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkx;->zzdi(Ljava/lang/String;)V

    goto :goto_c

    :catchall_14
    move-exception v0

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v0
.end method

.method public loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    iget-object v1, p0, Lcom/google/android/gms/internal/zzmh;->zzako:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzmh;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-super/range {p0 .. p5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_c
    monitor-exit v1

    return-void

    :cond_e
    const-string v0, "The webview is destroyed. Ignoring action."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkx;->zzdi(Ljava/lang/String;)V

    goto :goto_c

    :catchall_14
    move-exception v0

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v0
.end method

.method public loadUrl(Ljava/lang/String;)V
    .registers 6

    iget-object v1, p0, Lcom/google/android/gms/internal/zzmh;->zzako:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzmh;->isDestroyed()Z
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_34

    move-result v0

    if-nez v0, :cond_37

    :try_start_9
    invoke-super {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_c} :catch_e
    .catchall {:try_start_9 .. :try_end_c} :catchall_34

    :goto_c
    :try_start_c
    monitor-exit v1

    return-void

    :catch_e
    move-exception v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x18

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Could not call loadUrl. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkx;->zzdi(Ljava/lang/String;)V

    goto :goto_c

    :catchall_34
    move-exception v0

    monitor-exit v1
    :try_end_36
    .catchall {:try_start_c .. :try_end_36} :catchall_34

    throw v0

    :cond_37
    :try_start_37
    const-string v0, "The webview is destroyed. Ignoring action."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkx;->zzdi(Ljava/lang/String;)V
    :try_end_3c
    .catchall {:try_start_37 .. :try_end_3c} :catchall_34

    goto :goto_c
.end method

.method protected onAttachedToWindow()V
    .registers 6

    const/4 v0, 0x1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzmh;->zzako:Ljava/lang/Object;

    monitor-enter v2

    :try_start_4
    invoke-super {p0}, Landroid/webkit/WebView;->onAttachedToWindow()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzmh;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_12

    iget-object v1, p0, Lcom/google/android/gms/internal/zzmh;->zzass:Lcom/google/android/gms/internal/zzlp;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzlp;->onAttachedToWindow()V

    :cond_12
    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzmh;->j:Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzmh;->zzxc()Lcom/google/android/gms/internal/zzme;

    move-result-object v3

    if-eqz v3, :cond_5d

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzmh;->zzxc()Lcom/google/android/gms/internal/zzme;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzme;->zzxv()Z

    move-result v3

    if-eqz v3, :cond_5d

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzmh;->k:Z

    if-nez v1, :cond_55

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzmh;->zzxc()Lcom/google/android/gms/internal/zzme;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzme;->zzxw()Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    move-result-object v1

    if-eqz v1, :cond_3d

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzhk()Lcom/google/android/gms/internal/zzly;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzmh;->getView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Lcom/google/android/gms/internal/zzly;->zza(Landroid/view/View;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_3d
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzmh;->zzxc()Lcom/google/android/gms/internal/zzme;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzme;->zzxx()Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    move-result-object v1

    if-eqz v1, :cond_52

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzhk()Lcom/google/android/gms/internal/zzly;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzmh;->getView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Lcom/google/android/gms/internal/zzly;->zza(Landroid/view/View;Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    :cond_52
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzmh;->k:Z

    :cond_55
    :goto_55
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzmh;->zzap(Z)V

    monitor-exit v2

    return-void

    :catchall_5a
    move-exception v0

    monitor-exit v2
    :try_end_5c
    .catchall {:try_start_4 .. :try_end_5c} :catchall_5a

    throw v0

    :cond_5d
    move v0, v1

    goto :goto_55
.end method

.method protected onDetachedFromWindow()V
    .registers 6

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzmh;->zzako:Ljava/lang/Object;

    monitor-enter v1

    :try_start_4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzmh;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmh;->zzass:Lcom/google/android/gms/internal/zzlp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzlp;->onDetachedFromWindow()V

    :cond_f
    invoke-super {p0}, Landroid/webkit/WebView;->onDetachedFromWindow()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzmh;->k:Z

    if-eqz v0, :cond_5f

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzmh;->zzxc()Lcom/google/android/gms/internal/zzme;

    move-result-object v0

    if-eqz v0, :cond_5f

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzmh;->zzxc()Lcom/google/android/gms/internal/zzme;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzme;->zzxv()Z

    move-result v0

    if-eqz v0, :cond_5f

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzmh;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    if-eqz v0, :cond_5f

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzmh;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_5f

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzmh;->zzxc()Lcom/google/android/gms/internal/zzme;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzme;->zzxw()Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    move-result-object v0

    if-eqz v0, :cond_4b

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzgo()Lcom/google/android/gms/internal/zzlc;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzmh;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/internal/zzlc;->zza(Landroid/view/ViewTreeObserver;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_4b
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzmh;->zzxc()Lcom/google/android/gms/internal/zzme;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzme;->zzxx()Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    move-result-object v0

    if-eqz v0, :cond_5c

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzmh;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    :cond_5c
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzmh;->k:Z

    :cond_5f
    monitor-exit v1
    :try_end_60
    .catchall {:try_start_4 .. :try_end_60} :catchall_64

    invoke-direct {p0, v4}, Lcom/google/android/gms/internal/zzmh;->zzap(Z)V

    return-void

    :catchall_64
    move-exception v0

    :try_start_65
    monitor-exit v1
    :try_end_66
    .catchall {:try_start_65 .. :try_end_66} :catchall_64

    throw v0
.end method

.method public onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 10

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzgm()Lcom/google/android/gms/internal/zzlb;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzmh;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/zzlb;->zzb(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_19
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_19} :catch_1a

    :goto_19
    return-void

    :catch_1a
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x33

    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Couldn\'t find an Activity to view url/mimetype: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " / "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkx;->zzdg(Ljava/lang/String;)V

    goto :goto_19
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzmh;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    :goto_6
    return-void

    :cond_7
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ne v0, v1, :cond_19

    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzmh;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_19
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzmh;->zzxc()Lcom/google/android/gms/internal/zzme;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzmh;->zzxc()Lcom/google/android/gms/internal/zzme;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzme;->zzyg()Lcom/google/android/gms/internal/zzme$zze;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzmh;->zzxc()Lcom/google/android/gms/internal/zzme;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzme;->zzyg()Lcom/google/android/gms/internal/zzme$zze;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzme$zze;->zzff()V

    goto :goto_6
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 10

    const/4 v1, 0x0

    const/4 v7, -0x1

    const/4 v2, 0x1

    const/4 v6, 0x0

    sget-object v0, Lcom/google/android/gms/internal/zzdr;->zzbfv:Lcom/google/android/gms/internal/zzdn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdn;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_55

    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v3

    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/16 v5, 0x8

    if-ne v0, v5, :cond_53

    move v0, v2

    :goto_27
    if-eqz v0, :cond_55

    cmpl-float v0, v3, v6

    if-lez v0, :cond_33

    invoke-virtual {p0, v7}, Lcom/google/android/gms/internal/zzmh;->canScrollVertically(I)Z

    move-result v0

    if-eqz v0, :cond_51

    :cond_33
    cmpg-float v0, v3, v6

    if-gez v0, :cond_3d

    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/zzmh;->canScrollVertically(I)Z

    move-result v0

    if-eqz v0, :cond_51

    :cond_3d
    cmpl-float v0, v4, v6

    if-lez v0, :cond_47

    invoke-virtual {p0, v7}, Lcom/google/android/gms/internal/zzmh;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_51

    :cond_47
    cmpg-float v0, v4, v6

    if-gez v0, :cond_55

    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/zzmh;->canScrollHorizontally(I)Z

    move-result v0

    if-nez v0, :cond_55

    :cond_51
    move v0, v1

    :goto_52
    return v0

    :cond_53
    move v0, v1

    goto :goto_27

    :cond_55
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_52
.end method

.method public onGlobalLayout()V
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzmh;->zzyh()Z

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzmh;->zzxa()Lcom/google/android/gms/ads/internal/overlay/zzd;

    move-result-object v1

    if-eqz v1, :cond_f

    if-eqz v0, :cond_f

    invoke-virtual {v1}, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzpr()V

    :cond_f
    return-void
.end method

.method protected onMeasure(II)V
    .registers 12
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DrawAllocation"
        }
    .end annotation

    const v0, 0x7fffffff

    const/high16 v8, 0x40000000

    const/16 v7, 0x8

    const/high16 v6, -0x80000000

    iget-object v4, p0, Lcom/google/android/gms/internal/zzmh;->zzako:Ljava/lang/Object;

    monitor-enter v4

    :try_start_c
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzmh;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_19

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/zzmh;->setMeasuredDimension(II)V

    monitor-exit v4

    :goto_18
    return-void

    :cond_19
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzmh;->isInEditMode()Z

    move-result v1

    if-nez v1, :cond_29

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzmh;->d:Z

    if-nez v1, :cond_29

    iget-object v1, p0, Lcom/google/android/gms/internal/zzmh;->zzapp:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    iget-boolean v1, v1, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->zzazt:Z

    if-eqz v1, :cond_31

    :cond_29
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onMeasure(II)V

    monitor-exit v4

    goto :goto_18

    :catchall_2e
    move-exception v0

    monitor-exit v4
    :try_end_30
    .catchall {:try_start_c .. :try_end_30} :catchall_2e

    throw v0

    :cond_31
    :try_start_31
    iget-object v1, p0, Lcom/google/android/gms/internal/zzmh;->zzapp:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    iget-boolean v1, v1, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->zzazu:Z

    if-eqz v1, :cond_82

    sget-object v0, Lcom/google/android/gms/internal/zzdr;->zzbjk:Lcom/google/android/gms/internal/zzdn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdn;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_4b

    invoke-static {}, Lcom/google/android/gms/common/util/zzs;->zzays()Z

    move-result v0

    if-nez v0, :cond_50

    :cond_4b
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onMeasure(II)V

    monitor-exit v4

    goto :goto_18

    :cond_50
    const-string v0, "/contentHeight"

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzmh;->zzyl()Lcom/google/android/gms/internal/zzfe;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/zzmh;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzfe;)V

    const-string v0, "(function() {  var height = -1;  if (document.body) { height = document.body.offsetHeight;}  else if (document.documentElement) {      height = document.documentElement.offsetHeight;  }  var url = \'gmsg://mobileads.google.com/contentHeight?\';  url += \'height=\' + height;  window.googleAdsJsInterface.notify(url);  })();"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzmh;->zzdn(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmh;->zzczx:Lcom/google/android/gms/internal/zzmh$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzmh$zza;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    iget v2, p0, Lcom/google/android/gms/internal/zzmh;->n:I

    packed-switch v2, :pswitch_data_150

    iget v2, p0, Lcom/google/android/gms/internal/zzmh;->n:I

    int-to-float v2, v2

    mul-float/2addr v0, v2

    float-to-int v0, v0

    :goto_78
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/zzmh;->setMeasuredDimension(II)V

    monitor-exit v4

    goto :goto_18

    :pswitch_7d
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    goto :goto_78

    :cond_82
    iget-object v1, p0, Lcom/google/android/gms/internal/zzmh;->zzapp:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    iget-boolean v1, v1, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->zzazr:Z

    if-eqz v1, :cond_a0

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzmh;->zzati:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/zzmh;->setMeasuredDimension(II)V

    monitor-exit v4

    goto/16 :goto_18

    :cond_a0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    if-eq v2, v6, :cond_b4

    if-ne v2, v8, :cond_14d

    :cond_b4
    move v2, v3

    :goto_b5
    if-eq v5, v6, :cond_b9

    if-ne v5, v8, :cond_ba

    :cond_b9
    move v0, v1

    :cond_ba
    iget-object v5, p0, Lcom/google/android/gms/internal/zzmh;->zzapp:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    iget v5, v5, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->widthPixels:I

    if-gt v5, v2, :cond_c6

    iget-object v2, p0, Lcom/google/android/gms/internal/zzmh;->zzapp:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    iget v2, v2, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->heightPixels:I

    if-le v2, v0, :cond_137

    :cond_c6
    iget-object v0, p0, Lcom/google/android/gms/internal/zzmh;->zzczx:Lcom/google/android/gms/internal/zzmh$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzmh$zza;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iget-object v2, p0, Lcom/google/android/gms/internal/zzmh;->zzapp:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    iget v2, v2, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->widthPixels:I

    int-to-float v2, v2

    div-float/2addr v2, v0

    float-to-int v2, v2

    iget-object v5, p0, Lcom/google/android/gms/internal/zzmh;->zzapp:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    iget v5, v5, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->heightPixels:I

    int-to-float v5, v5

    div-float/2addr v5, v0

    float-to-int v5, v5

    int-to-float v3, v3

    div-float/2addr v3, v0

    float-to-int v3, v3

    int-to-float v1, v1

    div-float v0, v1, v0

    float-to-int v0, v0

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v6, 0x67

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "Not enough space to show ad. Needs "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " dp, but only has "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " dp."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkx;->zzdi(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzmh;->getVisibility()I

    move-result v0

    if-eq v0, v7, :cond_12f

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzmh;->setVisibility(I)V

    :cond_12f
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/zzmh;->setMeasuredDimension(II)V

    :goto_134
    monitor-exit v4

    goto/16 :goto_18

    :cond_137
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzmh;->getVisibility()I

    move-result v0

    if-eq v0, v7, :cond_141

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzmh;->setVisibility(I)V

    :cond_141
    iget-object v0, p0, Lcom/google/android/gms/internal/zzmh;->zzapp:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    iget v0, v0, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->widthPixels:I

    iget-object v1, p0, Lcom/google/android/gms/internal/zzmh;->zzapp:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    iget v1, v1, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->heightPixels:I

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/zzmh;->setMeasuredDimension(II)V
    :try_end_14c
    .catchall {:try_start_31 .. :try_end_14c} :catchall_2e

    goto :goto_134

    :cond_14d
    move v2, v0

    goto/16 :goto_b5

    :pswitch_data_150
    .packed-switch -0x1
        :pswitch_7d
    .end packed-switch
.end method

.method public onPause()V
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzmh;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    :goto_6
    return-void

    :cond_7
    :try_start_7
    invoke-static {}, Lcom/google/android/gms/common/util/zzs;->zzayn()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-super {p0}, Landroid/webkit/WebView;->onPause()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_10} :catch_11

    goto :goto_6

    :catch_11
    move-exception v0

    const-string v1, "Could not pause webview."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzkx;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6
.end method

.method public onResume()V
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzmh;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    :goto_6
    return-void

    :cond_7
    :try_start_7
    invoke-static {}, Lcom/google/android/gms/common/util/zzs;->zzayn()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-super {p0}, Landroid/webkit/WebView;->onResume()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_10} :catch_11

    goto :goto_6

    :catch_11
    move-exception v0

    const-string v1, "Could not resume webview."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzkx;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzmh;->zzxc()Lcom/google/android/gms/internal/zzme;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzme;->zzxv()Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v1, p0, Lcom/google/android/gms/internal/zzmh;->zzako:Ljava/lang/Object;

    monitor-enter v1

    :try_start_d
    iget-object v0, p0, Lcom/google/android/gms/internal/zzmh;->l:Lcom/google/android/gms/ads/internal/formats/zzg;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmh;->l:Lcom/google/android/gms/ads/internal/formats/zzg;

    invoke-interface {v0, p1}, Lcom/google/android/gms/ads/internal/formats/zzg;->zzc(Landroid/view/MotionEvent;)V

    :cond_16
    monitor-exit v1
    :try_end_17
    .catchall {:try_start_d .. :try_end_17} :catchall_1f

    :cond_17
    :goto_17
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzmh;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_2c

    const/4 v0, 0x0

    :goto_1e
    return v0

    :catchall_1f
    move-exception v0

    :try_start_20
    monitor-exit v1
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    throw v0

    :cond_22
    iget-object v0, p0, Lcom/google/android/gms/internal/zzmh;->zzbnx:Lcom/google/android/gms/internal/zzav;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmh;->zzbnx:Lcom/google/android/gms/internal/zzav;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzav;->zza(Landroid/view/MotionEvent;)V

    goto :goto_17

    :cond_2c
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_1e
.end method

.method public setContext(Landroid/content/Context;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmh;->zzczx:Lcom/google/android/gms/internal/zzmh$zza;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzmh$zza;->setBaseContext(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmh;->zzass:Lcom/google/android/gms/internal/zzlp;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzmh;->zzczx:Lcom/google/android/gms/internal/zzmh$zza;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzmh$zza;->zzwy()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzlp;->zzl(Landroid/app/Activity;)V

    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .registers 3

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzmh;->r:Ljava/lang/ref/WeakReference;

    invoke-super {p0, p1}, Landroid/webkit/WebView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setRequestedOrientation(I)V
    .registers 5

    iget-object v1, p0, Lcom/google/android/gms/internal/zzmh;->zzako:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iput p1, p0, Lcom/google/android/gms/internal/zzmh;->f:I

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmh;->a:Lcom/google/android/gms/ads/internal/overlay/zzd;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmh;->a:Lcom/google/android/gms/ads/internal/overlay/zzd;

    iget v2, p0, Lcom/google/android/gms/internal/zzmh;->f:I

    invoke-virtual {v0, v2}, Lcom/google/android/gms/ads/internal/overlay/zzd;->setRequestedOrientation(I)V

    :cond_10
    monitor-exit v1

    return-void

    :catchall_12
    move-exception v0

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v0
.end method

.method public setWebViewClient(Landroid/webkit/WebViewClient;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    instance-of v0, p1, Lcom/google/android/gms/internal/zzme;

    if-eqz v0, :cond_b

    check-cast p1, Lcom/google/android/gms/internal/zzme;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzmh;->zzczz:Lcom/google/android/gms/internal/zzme;

    :cond_b
    return-void
.end method

.method public stopLoading()V
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzmh;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_7

    :goto_6
    return-void

    :cond_7
    :try_start_7
    invoke-super {p0}, Landroid/webkit/WebView;->stopLoading()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_a} :catch_b

    goto :goto_6

    :catch_b
    move-exception v0

    const-string v1, "Could not stop loading webview."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzkx;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6
.end method

.method public zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Lcom/google/android/gms/internal/zzdz;)V
    .registers 6

    iget-object v1, p0, Lcom/google/android/gms/internal/zzmh;->zzako:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzmh;->zzass:Lcom/google/android/gms/internal/zzlp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzlp;->zzwm()V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzmh;->setContext(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzmh;->a:Lcom/google/android/gms/ads/internal/overlay/zzd;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzmh;->zzapp:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzmh;->d:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzmh;->b:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/zzmh;->zzcec:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzmh;->f:I

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzgo()Lcom/google/android/gms/internal/zzlc;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/zzlc;->zzm(Lcom/google/android/gms/internal/zzmd;)Z

    const-string v0, "about:blank"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzmh;->loadUrl(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmh;->zzczz:Lcom/google/android/gms/internal/zzme;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzme;->reset()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzmh;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzmh;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzmh;->g:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzmh;->h:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzmh;->i:Lcom/google/android/gms/internal/zzmi;

    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/zzmh;->zzd(Lcom/google/android/gms/internal/zzdz;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzmh;->j:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/zzmh;->m:I

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzhj()Lcom/google/android/gms/internal/zzfr;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/zzfr;->zze(Lcom/google/android/gms/internal/zzmd;)Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzmh;->zzyp()V

    monitor-exit v1

    return-void

    :catchall_54
    move-exception v0

    monitor-exit v1
    :try_end_56
    .catchall {:try_start_3 .. :try_end_56} :catchall_54

    throw v0
.end method

.method public zza(Lcom/google/android/gms/ads/internal/client/AdSizeParcel;)V
    .registers 4

    iget-object v1, p0, Lcom/google/android/gms/internal/zzmh;->zzako:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iput-object p1, p0, Lcom/google/android/gms/internal/zzmh;->zzapp:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzmh;->requestLayout()V

    monitor-exit v1

    return-void

    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public zza(Lcom/google/android/gms/internal/zzcu$zza;)V
    .registers 4

    iget-object v1, p0, Lcom/google/android/gms/internal/zzmh;->zzako:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-boolean v0, p1, Lcom/google/android/gms/internal/zzcu$zza;->zzave:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzmh;->j:Z

    monitor-exit v1
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_e

    iget-boolean v0, p1, Lcom/google/android/gms/internal/zzcu$zza;->zzave:Z

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzmh;->zzap(Z)V

    return-void

    :catchall_e
    move-exception v0

    :try_start_f
    monitor-exit v1
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_e

    throw v0
.end method

.method public zza(Lcom/google/android/gms/internal/zzmi;)V
    .registers 4

    iget-object v1, p0, Lcom/google/android/gms/internal/zzmh;->zzako:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzmh;->i:Lcom/google/android/gms/internal/zzmi;

    if-eqz v0, :cond_e

    const-string v0, "Attempt to create multiple AdWebViewVideoControllers."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkx;->e(Ljava/lang/String;)V

    monitor-exit v1

    :goto_d
    return-void

    :cond_e
    iput-object p1, p0, Lcom/google/android/gms/internal/zzmh;->i:Lcom/google/android/gms/internal/zzmi;

    monitor-exit v1

    goto :goto_d

    :catchall_12
    move-exception v0

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v0
.end method

.method protected zza(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    .registers 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/webkit/ValueCallback",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v1, p0, Lcom/google/android/gms/internal/zzmh;->zzako:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzmh;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/zzmh;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    :cond_c
    :goto_c
    monitor-exit v1

    return-void

    :cond_e
    const-string v0, "The webview is destroyed. Ignoring action."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkx;->zzdi(Ljava/lang/String;)V

    if-eqz p2, :cond_c

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    goto :goto_c

    :catchall_1a
    move-exception v0

    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw v0
.end method

.method public zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzfe;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmh;->zzczz:Lcom/google/android/gms/internal/zzme;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmh;->zzczz:Lcom/google/android/gms/internal/zzme;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/zzme;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzfe;)V

    :cond_9
    return-void
.end method

.method public zza(Ljava/lang/String;Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    :try_start_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzgm()Lcom/google/android/gms/internal/zzlb;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/zzlb;->zzap(Ljava/util/Map;)Lorg/json/JSONObject;
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_7} :catch_c

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/zzmh;->zzb(Ljava/lang/String;Lorg/json/JSONObject;)V

    :goto_b
    return-void

    :catch_c
    move-exception v0

    const-string v0, "Could not convert parameters to JSON."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkx;->zzdi(Ljava/lang/String;)V

    goto :goto_b
.end method

.method public zza(Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 4

    if-nez p2, :cond_7

    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    :cond_7
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/zzmh;->zzi(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public zzak(I)V
    .registers 5

    if-nez p1, :cond_5

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzmh;->zzyk()V

    :cond_5
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzmh;->zzyj()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmh;->q:Lcom/google/android/gms/internal/zzdy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdy;->zzly()Lcom/google/android/gms/internal/zzdz;

    move-result-object v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmh;->q:Lcom/google/android/gms/internal/zzdy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdy;->zzly()Lcom/google/android/gms/internal/zzdz;

    move-result-object v0

    const-string v1, "close_type"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzdz;->zzg(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1f
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "closetype"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "version"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzmh;->zzanu:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->zzda:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "onhide"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/zzmh;->zza(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public zzak(Z)V
    .registers 4

    iget-object v1, p0, Lcom/google/android/gms/internal/zzmh;->zzako:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzmh;->d:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzmh;->zzym()V

    monitor-exit v1

    return-void

    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public zzal(Z)V
    .registers 5

    iget-object v1, p0, Lcom/google/android/gms/internal/zzmh;->zzako:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzmh;->a:Lcom/google/android/gms/ads/internal/overlay/zzd;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmh;->a:Lcom/google/android/gms/ads/internal/overlay/zzd;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzmh;->zzczz:Lcom/google/android/gms/internal/zzme;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzme;->zzic()Z

    move-result v2

    invoke-virtual {v0, v2, p1}, Lcom/google/android/gms/ads/internal/overlay/zzd;->zza(ZZ)V

    :goto_12
    monitor-exit v1

    return-void

    :cond_14
    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzmh;->b:Z

    goto :goto_12

    :catchall_17
    move-exception v0

    monitor-exit v1
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw v0
.end method

.method public zzam(Z)V
    .registers 4

    iget-object v1, p0, Lcom/google/android/gms/internal/zzmh;->zzako:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzmh;->g:Z

    monitor-exit v1

    return-void

    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public zzan(Z)V
    .registers 5

    iget-object v1, p0, Lcom/google/android/gms/internal/zzmh;->zzako:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget v2, p0, Lcom/google/android/gms/internal/zzmh;->m:I

    if-eqz p1, :cond_1a

    const/4 v0, 0x1

    :goto_8
    add-int/2addr v0, v2

    iput v0, p0, Lcom/google/android/gms/internal/zzmh;->m:I

    iget v0, p0, Lcom/google/android/gms/internal/zzmh;->m:I

    if-gtz v0, :cond_18

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmh;->a:Lcom/google/android/gms/ads/internal/overlay/zzd;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmh;->a:Lcom/google/android/gms/ads/internal/overlay/zzd;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzpu()V

    :cond_18
    monitor-exit v1

    return-void

    :cond_1a
    const/4 v0, -0x1

    goto :goto_8

    :catchall_1c
    move-exception v0

    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw v0
.end method

.method public zzb(Lcom/google/android/gms/ads/internal/formats/zzg;)V
    .registers 4

    iget-object v1, p0, Lcom/google/android/gms/internal/zzmh;->zzako:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iput-object p1, p0, Lcom/google/android/gms/internal/zzmh;->l:Lcom/google/android/gms/ads/internal/formats/zzg;

    monitor-exit v1

    return-void

    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public zzb(Lcom/google/android/gms/ads/internal/overlay/zzd;)V
    .registers 4

    iget-object v1, p0, Lcom/google/android/gms/internal/zzmh;->zzako:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iput-object p1, p0, Lcom/google/android/gms/internal/zzmh;->a:Lcom/google/android/gms/ads/internal/overlay/zzd;

    monitor-exit v1

    return-void

    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method zzb(Ljava/lang/Boolean;)V
    .registers 4

    iget-object v1, p0, Lcom/google/android/gms/internal/zzmh;->zzako:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iput-object p1, p0, Lcom/google/android/gms/internal/zzmh;->zzcub:Ljava/lang/Boolean;

    monitor-exit v1
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_e

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzgq()Lcom/google/android/gms/internal/zzkr;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzkr;->zzb(Ljava/lang/Boolean;)V

    return-void

    :catchall_e
    move-exception v0

    :try_start_f
    monitor-exit v1
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_e

    throw v0
.end method

.method public zzb(Ljava/lang/String;Lcom/google/android/gms/internal/zzfe;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmh;->zzczz:Lcom/google/android/gms/internal/zzme;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmh;->zzczz:Lcom/google/android/gms/internal/zzme;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/zzme;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/zzfe;)V

    :cond_9
    return-void
.end method

.method public zzb(Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 7

    if-nez p2, :cond_7

    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    :cond_7
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "(window.AFMA_ReceiveMessage || function() {})(\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ");"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Dispatching AFMA event: "

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_49

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_3e
    invoke-static {v0}, Lcom/google/android/gms/internal/zzkx;->zzdg(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzmh;->zzdn(Ljava/lang/String;)V

    return-void

    :cond_49
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_3e
.end method

.method public zzc(Lcom/google/android/gms/ads/internal/overlay/zzd;)V
    .registers 4

    iget-object v1, p0, Lcom/google/android/gms/internal/zzmh;->zzako:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iput-object p1, p0, Lcom/google/android/gms/internal/zzmh;->s:Lcom/google/android/gms/ads/internal/overlay/zzd;

    monitor-exit v1

    return-void

    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public zzdj(Ljava/lang/String;)V
    .registers 6

    iget-object v1, p0, Lcom/google/android/gms/internal/zzmh;->zzako:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    invoke-super {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_6} :catch_8
    .catchall {:try_start_3 .. :try_end_6} :catchall_2e

    :goto_6
    :try_start_6
    monitor-exit v1

    return-void

    :catch_8
    move-exception v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x18

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Could not call loadUrl. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkx;->zzdi(Ljava/lang/String;)V

    goto :goto_6

    :catchall_2e
    move-exception v0

    monitor-exit v1
    :try_end_30
    .catchall {:try_start_6 .. :try_end_30} :catchall_2e

    throw v0
.end method

.method public zzdk(Ljava/lang/String;)V
    .registers 4

    iget-object v1, p0, Lcom/google/android/gms/internal/zzmh;->zzako:Ljava/lang/Object;

    monitor-enter v1

    if-nez p1, :cond_7

    :try_start_5
    const-string p1, ""

    :cond_7
    iput-object p1, p0, Lcom/google/android/gms/internal/zzmh;->zzcec:Ljava/lang/String;

    monitor-exit v1

    return-void

    :catchall_b
    move-exception v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_b

    throw v0
.end method

.method protected zzdm(Ljava/lang/String;)V
    .registers 4

    iget-object v1, p0, Lcom/google/android/gms/internal/zzmh;->zzako:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzmh;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzmh;->loadUrl(Ljava/lang/String;)V

    :goto_c
    monitor-exit v1

    return-void

    :cond_e
    const-string v0, "The webview is destroyed. Ignoring action."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkx;->zzdi(Ljava/lang/String;)V

    goto :goto_c

    :catchall_14
    move-exception v0

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v0
.end method

.method protected zzdn(Ljava/lang/String;)V
    .registers 5

    invoke-static {}, Lcom/google/android/gms/common/util/zzs;->zzayu()Z

    move-result v0

    if-eqz v0, :cond_38

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzmh;->zzva()Ljava/lang/Boolean;

    move-result-object v0

    if-nez v0, :cond_f

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzmh;->zzyi()V

    :cond_f
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzmh;->zzva()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1e

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/zzmh;->zza(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    :goto_1d
    return-void

    :cond_1e
    const-string v1, "javascript:"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_32

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2e
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzmh;->zzdm(Ljava/lang/String;)V

    goto :goto_1d

    :cond_32
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_2e

    :cond_38
    const-string v1, "javascript:"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_4c

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_48
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzmh;->zzdm(Ljava/lang/String;)V

    goto :goto_1d

    :cond_4c
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_48
.end method

.method public zzec()Lcom/google/android/gms/ads/internal/zzd;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmh;->zzamb:Lcom/google/android/gms/ads/internal/zzd;

    return-object v0
.end method

.method public zzeg()Lcom/google/android/gms/ads/internal/client/AdSizeParcel;
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzmh;->zzako:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzmh;->zzapp:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    monitor-exit v1

    return-object v0

    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public zzey()V
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzmh;->zzako:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_4
    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzmh;->h:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmh;->zzczy:Lcom/google/android/gms/ads/internal/zzs;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmh;->zzczy:Lcom/google/android/gms/ads/internal/zzs;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/zzs;->zzey()V

    :cond_f
    monitor-exit v1

    return-void

    :catchall_11
    move-exception v0

    monitor-exit v1
    :try_end_13
    .catchall {:try_start_4 .. :try_end_13} :catchall_11

    throw v0
.end method

.method public zzez()V
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzmh;->zzako:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_4
    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzmh;->h:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmh;->zzczy:Lcom/google/android/gms/ads/internal/zzs;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmh;->zzczy:Lcom/google/android/gms/ads/internal/zzs;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/zzs;->zzez()V

    :cond_f
    monitor-exit v1

    return-void

    :catchall_11
    move-exception v0

    monitor-exit v1
    :try_end_13
    .catchall {:try_start_4 .. :try_end_13} :catchall_11

    throw v0
.end method

.method public zzi(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x3

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzmh;->zzdn(Ljava/lang/String;)V

    return-void
.end method

.method public zzps()V
    .registers 7

    const/4 v5, 0x1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmh;->o:Lcom/google/android/gms/internal/zzdx;

    if-nez v0, :cond_2c

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmh;->q:Lcom/google/android/gms/internal/zzdy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdy;->zzly()Lcom/google/android/gms/internal/zzdz;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzmh;->zzced:Lcom/google/android/gms/internal/zzdx;

    new-array v2, v5, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "aes2"

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/zzdv;->zza(Lcom/google/android/gms/internal/zzdz;Lcom/google/android/gms/internal/zzdx;[Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmh;->q:Lcom/google/android/gms/internal/zzdy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdy;->zzly()Lcom/google/android/gms/internal/zzdz;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzdv;->zzb(Lcom/google/android/gms/internal/zzdz;)Lcom/google/android/gms/internal/zzdx;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzmh;->o:Lcom/google/android/gms/internal/zzdx;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmh;->q:Lcom/google/android/gms/internal/zzdy;

    const-string v1, "native:view_show"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzmh;->o:Lcom/google/android/gms/internal/zzdx;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzdy;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzdx;)V

    :cond_2c
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v5}, Ljava/util/HashMap;-><init>(I)V

    const-string/jumbo v1, "version"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzmh;->zzanu:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->zzda:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "onshow"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/zzmh;->zza(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method zzva()Ljava/lang/Boolean;
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzmh;->zzako:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzmh;->zzcub:Ljava/lang/Boolean;

    monitor-exit v1

    return-object v0

    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public zzww()V
    .registers 4

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzmh;->zzyj()V

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string/jumbo v1, "version"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzmh;->zzanu:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->zzda:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "onhide"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/zzmh;->zza(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public zzwx()V
    .registers 5

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "app_muted"

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzgm()Lcom/google/android/gms/internal/zzlb;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzlb;->zzft()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "app_volume"

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzgm()Lcom/google/android/gms/internal/zzlb;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzlb;->zzfr()F

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "device_volume"

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzgm()Lcom/google/android/gms/internal/zzlb;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzmh;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzlb;->zzah(Landroid/content/Context;)F

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "volume"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/zzmh;->zza(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public zzwy()Landroid/app/Activity;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmh;->zzczx:Lcom/google/android/gms/internal/zzmh$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzmh$zza;->zzwy()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public zzwz()Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmh;->zzczx:Lcom/google/android/gms/internal/zzmh$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzmh$zza;->zzwz()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public zzxa()Lcom/google/android/gms/ads/internal/overlay/zzd;
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzmh;->zzako:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzmh;->a:Lcom/google/android/gms/ads/internal/overlay/zzd;

    monitor-exit v1

    return-object v0

    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public zzxb()Lcom/google/android/gms/ads/internal/overlay/zzd;
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzmh;->zzako:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzmh;->s:Lcom/google/android/gms/ads/internal/overlay/zzd;

    monitor-exit v1

    return-object v0

    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public zzxc()Lcom/google/android/gms/internal/zzme;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmh;->zzczz:Lcom/google/android/gms/internal/zzme;

    return-object v0
.end method

.method public zzxd()Z
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzmh;->zzako:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzmh;->b:Z

    monitor-exit v1

    return v0

    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public zzxe()Lcom/google/android/gms/internal/zzav;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmh;->zzbnx:Lcom/google/android/gms/internal/zzav;

    return-object v0
.end method

.method public zzxf()Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmh;->zzanu:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    return-object v0
.end method

.method public zzxg()Z
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzmh;->zzako:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzmh;->d:Z

    monitor-exit v1

    return v0

    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public zzxh()V
    .registers 4

    iget-object v1, p0, Lcom/google/android/gms/internal/zzmh;->zzako:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    const-string v0, "Destroying WebView!"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkx;->v(Ljava/lang/String;)V

    sget-object v0, Lcom/google/android/gms/internal/zzlb;->zzcvl:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/gms/internal/zzmh$2;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/zzmh$2;-><init>(Lcom/google/android/gms/internal/zzmh;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    monitor-exit v1

    return-void

    :catchall_14
    move-exception v0

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v0
.end method

.method public zzxi()Z
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzmh;->zzako:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzmh;->g:Z

    monitor-exit v1

    return v0

    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public zzxj()Z
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzmh;->zzako:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzmh;->h:Z

    monitor-exit v1

    return v0

    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public zzxk()Lcom/google/android/gms/internal/zzmc;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public zzxl()Lcom/google/android/gms/internal/zzdx;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmh;->zzced:Lcom/google/android/gms/internal/zzdx;

    return-object v0
.end method

.method public zzxm()Lcom/google/android/gms/internal/zzdy;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmh;->q:Lcom/google/android/gms/internal/zzdy;

    return-object v0
.end method

.method public zzxn()Lcom/google/android/gms/internal/zzmi;
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzmh;->zzako:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzmh;->i:Lcom/google/android/gms/internal/zzmi;

    monitor-exit v1

    return-object v0

    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public zzxo()Z
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzmh;->zzako:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget v0, p0, Lcom/google/android/gms/internal/zzmh;->m:I

    if-lez v0, :cond_a

    const/4 v0, 0x1

    :goto_8
    monitor-exit v1

    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_8

    :catchall_c
    move-exception v0

    monitor-exit v1
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v0
.end method

.method public zzxp()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmh;->zzass:Lcom/google/android/gms/internal/zzlp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzlp;->zzwl()V

    return-void
.end method

.method public zzxq()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmh;->p:Lcom/google/android/gms/internal/zzdx;

    if-nez v0, :cond_19

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmh;->q:Lcom/google/android/gms/internal/zzdy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdy;->zzly()Lcom/google/android/gms/internal/zzdz;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzdv;->zzb(Lcom/google/android/gms/internal/zzdz;)Lcom/google/android/gms/internal/zzdx;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzmh;->p:Lcom/google/android/gms/internal/zzdx;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmh;->q:Lcom/google/android/gms/internal/zzdy;

    const-string v1, "native:view_load"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzmh;->p:Lcom/google/android/gms/internal/zzdx;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzdy;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzdx;)V

    :cond_19
    return-void
.end method

.method public zzxr()Landroid/view/View$OnClickListener;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmh;->r:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public zzxs()Lcom/google/android/gms/ads/internal/formats/zzg;
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzmh;->zzako:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzmh;->l:Lcom/google/android/gms/ads/internal/formats/zzg;

    monitor-exit v1

    return-object v0

    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public zzxt()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzmh;->setBackgroundColor(I)V

    return-void
.end method

.method public zzyh()Z
    .registers 9

    const/4 v5, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzmh;->zzxc()Lcom/google/android/gms/internal/zzme;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzme;->zzic()Z

    move-result v1

    if-nez v1, :cond_17

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzmh;->zzxc()Lcom/google/android/gms/internal/zzme;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzme;->zzxv()Z

    move-result v1

    if-nez v1, :cond_17

    :cond_16
    :goto_16
    return v0

    :cond_17
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzgm()Lcom/google/android/gms/internal/zzlb;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzmh;->zzati:Landroid/view/WindowManager;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzlb;->zza(Landroid/view/WindowManager;)Landroid/util/DisplayMetrics;

    move-result-object v6

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzm;->zzkr()Lcom/google/android/gms/ads/internal/util/client/zza;

    move-result-object v1

    iget v2, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v1, v6, v2}, Lcom/google/android/gms/ads/internal/util/client/zza;->zzb(Landroid/util/DisplayMetrics;I)I

    move-result v1

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzm;->zzkr()Lcom/google/android/gms/ads/internal/util/client/zza;

    move-result-object v2

    iget v3, v6, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v2, v6, v3}, Lcom/google/android/gms/ads/internal/util/client/zza;->zzb(Landroid/util/DisplayMetrics;I)I

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzmh;->zzwy()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_41

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    if-nez v4, :cond_7a

    :cond_41
    move v4, v2

    move v3, v1

    :goto_43
    iget v7, p0, Lcom/google/android/gms/internal/zzmh;->zzbzd:I

    if-ne v7, v1, :cond_53

    iget v7, p0, Lcom/google/android/gms/internal/zzmh;->zzbze:I

    if-ne v7, v2, :cond_53

    iget v7, p0, Lcom/google/android/gms/internal/zzmh;->zzbzg:I

    if-ne v7, v3, :cond_53

    iget v7, p0, Lcom/google/android/gms/internal/zzmh;->zzbzh:I

    if-eq v7, v4, :cond_16

    :cond_53
    iget v7, p0, Lcom/google/android/gms/internal/zzmh;->zzbzd:I

    if-ne v7, v1, :cond_5b

    iget v7, p0, Lcom/google/android/gms/internal/zzmh;->zzbze:I

    if-eq v7, v2, :cond_97

    :cond_5b
    move v7, v5

    :goto_5c
    iput v1, p0, Lcom/google/android/gms/internal/zzmh;->zzbzd:I

    iput v2, p0, Lcom/google/android/gms/internal/zzmh;->zzbze:I

    iput v3, p0, Lcom/google/android/gms/internal/zzmh;->zzbzg:I

    iput v4, p0, Lcom/google/android/gms/internal/zzmh;->zzbzh:I

    new-instance v0, Lcom/google/android/gms/internal/zzhv;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzhv;-><init>(Lcom/google/android/gms/internal/zzmd;)V

    iget v5, v6, Landroid/util/DisplayMetrics;->density:F

    iget-object v6, p0, Lcom/google/android/gms/internal/zzmh;->zzati:Landroid/view/WindowManager;

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Display;->getRotation()I

    move-result v6

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/zzhv;->zza(IIIIFI)V

    move v0, v7

    goto :goto_16

    :cond_7a
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzgm()Lcom/google/android/gms/internal/zzlb;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/zzlb;->zzh(Landroid/app/Activity;)[I

    move-result-object v4

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzm;->zzkr()Lcom/google/android/gms/ads/internal/util/client/zza;

    move-result-object v3

    aget v7, v4, v0

    invoke-virtual {v3, v6, v7}, Lcom/google/android/gms/ads/internal/util/client/zza;->zzb(Landroid/util/DisplayMetrics;I)I

    move-result v3

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzm;->zzkr()Lcom/google/android/gms/ads/internal/util/client/zza;

    move-result-object v7

    aget v4, v4, v5

    invoke-virtual {v7, v6, v4}, Lcom/google/android/gms/ads/internal/util/client/zza;->zzb(Landroid/util/DisplayMetrics;I)I

    move-result v4

    goto :goto_43

    :cond_97
    move v7, v0

    goto :goto_5c
.end method

.method zzyl()Lcom/google/android/gms/internal/zzfe;
    .registers 2

    new-instance v0, Lcom/google/android/gms/internal/zzmh$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzmh$1;-><init>(Lcom/google/android/gms/internal/zzmh;)V

    return-object v0
.end method
