.class public Lcom/google/android/gms/internal/zzlc;
.super Ljava/lang/Object;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x8
.end annotation

.annotation runtime Lcom/google/android/gms/internal/zzji;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzlc$zzh;,
        Lcom/google/android/gms/internal/zzlc$zzg;,
        Lcom/google/android/gms/internal/zzlc$zze;,
        Lcom/google/android/gms/internal/zzlc$zzd;,
        Lcom/google/android/gms/internal/zzlc$zzf;,
        Lcom/google/android/gms/internal/zzlc$zzc;,
        Lcom/google/android/gms/internal/zzlc$zzb;,
        Lcom/google/android/gms/internal/zzlc$zza;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/zzlc$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzlc;-><init>()V

    return-void
.end method

.method public static zzbh(I)Lcom/google/android/gms/internal/zzlc;
    .registers 2

    const/16 v0, 0x15

    if-lt p0, v0, :cond_a

    new-instance v0, Lcom/google/android/gms/internal/zzlc$zzh;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzlc$zzh;-><init>()V

    :goto_9
    return-object v0

    :cond_a
    const/16 v0, 0x13

    if-lt p0, v0, :cond_14

    new-instance v0, Lcom/google/android/gms/internal/zzlc$zzg;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzlc$zzg;-><init>()V

    goto :goto_9

    :cond_14
    const/16 v0, 0x12

    if-lt p0, v0, :cond_1e

    new-instance v0, Lcom/google/android/gms/internal/zzlc$zze;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzlc$zze;-><init>()V

    goto :goto_9

    :cond_1e
    const/16 v0, 0x11

    if-lt p0, v0, :cond_28

    new-instance v0, Lcom/google/android/gms/internal/zzlc$zzd;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzlc$zzd;-><init>()V

    goto :goto_9

    :cond_28
    const/16 v0, 0x10

    if-lt p0, v0, :cond_32

    new-instance v0, Lcom/google/android/gms/internal/zzlc$zzf;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzlc$zzf;-><init>()V

    goto :goto_9

    :cond_32
    const/16 v0, 0xe

    if-lt p0, v0, :cond_3c

    new-instance v0, Lcom/google/android/gms/internal/zzlc$zzc;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzlc$zzc;-><init>()V

    goto :goto_9

    :cond_3c
    const/16 v0, 0xb

    if-lt p0, v0, :cond_46

    new-instance v0, Lcom/google/android/gms/internal/zzlc$zzb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzlc$zzb;-><init>()V

    goto :goto_9

    :cond_46
    const/16 v0, 0x9

    if-lt p0, v0, :cond_50

    new-instance v0, Lcom/google/android/gms/internal/zzlc$zza;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzlc$zza;-><init>()V

    goto :goto_9

    :cond_50
    new-instance v0, Lcom/google/android/gms/internal/zzlc;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzlc;-><init>()V

    goto :goto_9
.end method


# virtual methods
.method public getDefaultUserAgent(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    const-string v0, ""

    return-object v0
.end method

.method public isAttachedToWindow(Landroid/view/View;)Z
    .registers 4

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_e

    invoke-virtual {p1}, Landroid/view/View;->getWindowVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_10

    :cond_e
    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public zza(Landroid/content/Context;Landroid/graphics/Bitmap;ZF)Landroid/graphics/drawable/Drawable;
    .registers 7

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v0
.end method

.method public zza(Landroid/net/http/SslError;)Ljava/lang/String;
    .registers 3

    const-string v0, ""

    return-object v0
.end method

.method public zza(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
    .registers 3

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public zza(Landroid/view/ViewTreeObserver;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    .registers 3

    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method public zza(Landroid/app/DownloadManager$Request;)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public zza(Landroid/content/Context;Landroid/webkit/WebSettings;)Z
    .registers 4

    const/4 v0, 0x0

    return v0
.end method

.method public zza(Landroid/view/Window;)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public zzal(Landroid/content/Context;)Landroid/webkit/CookieManager;
    .registers 5

    :try_start_0
    invoke-static {p1}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_8

    move-result-object v0

    :goto_7
    return-object v0

    :catch_8
    move-exception v0

    const-string v1, "Failed to obtain CookieManager."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzkx;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzgq()Lcom/google/android/gms/internal/zzkr;

    move-result-object v1

    const-string v2, "ApiLevelUtil.getCookieManager"

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/zzkr;->zza(Ljava/lang/Throwable;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_7
.end method

.method public zzb(Lcom/google/android/gms/internal/zzmd;Z)Lcom/google/android/gms/internal/zzme;
    .registers 4

    new-instance v0, Lcom/google/android/gms/internal/zzme;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/zzme;-><init>(Lcom/google/android/gms/internal/zzmd;Z)V

    return-object v0
.end method

.method public zzb(Landroid/app/Activity;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    .registers 5

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_21

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_21

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    if-eqz v1, :cond_21

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/zzlc;->zza(Landroid/view/ViewTreeObserver;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_21
    return-void
.end method

.method public zzh(Landroid/net/Uri;)Ljava/util/Set;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v5, -0x1

    invoke-virtual {p1}, Landroid/net/Uri;->isOpaque()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    :goto_b
    return-object v0

    :cond_c
    invoke-virtual {p1}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_17

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    goto :goto_b

    :cond_17
    new-instance v4, Ljava/util/LinkedHashSet;

    invoke-direct {v4}, Ljava/util/LinkedHashSet;-><init>()V

    const/4 v0, 0x0

    :cond_1d
    const/16 v1, 0x26

    invoke-virtual {v3, v1, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    if-ne v1, v5, :cond_29

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    :cond_29
    const/16 v2, 0x3d

    invoke-virtual {v3, v2, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    if-gt v2, v1, :cond_33

    if-ne v2, v5, :cond_34

    :cond_33
    move v2, v1

    :cond_34
    invoke-virtual {v3, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v0, v1, :cond_1d

    invoke-static {v4}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    goto :goto_b
.end method

.method public zzl(Lcom/google/android/gms/internal/zzmd;)Z
    .registers 3

    if-nez p1, :cond_4

    const/4 v0, 0x0

    :goto_3
    return v0

    :cond_4
    invoke-interface {p1}, Lcom/google/android/gms/internal/zzmd;->onPause()V

    const/4 v0, 0x1

    goto :goto_3
.end method

.method public zzm(Lcom/google/android/gms/internal/zzmd;)Z
    .registers 3

    if-nez p1, :cond_4

    const/4 v0, 0x0

    :goto_3
    return v0

    :cond_4
    invoke-interface {p1}, Lcom/google/android/gms/internal/zzmd;->onResume()V

    const/4 v0, 0x1

    goto :goto_3
.end method

.method public zzn(Lcom/google/android/gms/internal/zzmd;)Landroid/webkit/WebChromeClient;
    .registers 3

    const/4 v0, 0x0

    return-object v0
.end method

.method public zzu(Landroid/view/View;)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public zzv(Landroid/view/View;)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public zzvw()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public zzvx()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public zzvy()I
    .registers 2

    const/4 v0, 0x5

    return v0
.end method

.method public zzvz()Landroid/view/ViewGroup$LayoutParams;
    .registers 3

    const/4 v1, -0x2

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    return-object v0
.end method
