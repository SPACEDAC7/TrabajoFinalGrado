.class public Lcom/google/android/gms/internal/zzcu;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;
.implements Landroid/view/View$OnAttachStateChangeListener;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation

.annotation runtime Lcom/google/android/gms/internal/zzji;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzcu$zzb;,
        Lcom/google/android/gms/internal/zzcu$zza;
    }
.end annotation


# static fields
.field private static final zzauk:J


# instance fields
.field private zzasn:Lcom/google/android/gms/internal/zzlm;

.field private final zzatc:Landroid/content/Context;

.field private final zzati:Landroid/view/WindowManager;

.field private final zzatj:Landroid/os/PowerManager;

.field private final zzatk:Landroid/app/KeyguardManager;

.field private zzatq:Z

.field zzatr:Landroid/content/BroadcastReceiver;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private zzaul:Landroid/app/Application;

.field private zzaum:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/ViewTreeObserver;",
            ">;"
        }
    .end annotation
.end field

.field zzaun:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private zzauo:Lcom/google/android/gms/internal/zzcv;

.field private zzaup:I

.field private zzauq:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/google/android/gms/internal/zzcu$zzb;",
            ">;"
        }
    .end annotation
.end field

.field private zzaur:Landroid/util/DisplayMetrics;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    sget-object v0, Lcom/google/android/gms/internal/zzdr;->zzbgu:Lcom/google/android/gms/internal/zzdn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdn;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sput-wide v0, Lcom/google/android/gms/internal/zzcu;->zzauk:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/zzlm;

    sget-wide v2, Lcom/google/android/gms/internal/zzcu;->zzauk:J

    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/internal/zzlm;-><init>(J)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcu;->zzasn:Lcom/google/android/gms/internal/zzlm;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzcu;->zzatq:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzcu;->zzaup:I

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcu;->zzauq:Ljava/util/HashSet;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcu;->zzatc:Landroid/content/Context;

    const-string/jumbo v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcu;->zzati:Landroid/view/WindowManager;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcu;->zzatc:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcu;->zzatj:Landroid/os/PowerManager;

    const-string v0, "keyguard"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcu;->zzatk:Landroid/app/KeyguardManager;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcu;->zzatc:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Application;

    if-eqz v0, :cond_57

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcu;->zzatc:Landroid/content/Context;

    check-cast v0, Landroid/app/Application;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcu;->zzaul:Landroid/app/Application;

    new-instance v1, Lcom/google/android/gms/internal/zzcv;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcu;->zzatc:Landroid/content/Context;

    check-cast v0, Landroid/app/Application;

    invoke-direct {v1, v0, p0}, Lcom/google/android/gms/internal/zzcv;-><init>(Landroid/app/Application;Landroid/app/Application$ActivityLifecycleCallbacks;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/zzcu;->zzauo:Lcom/google/android/gms/internal/zzcv;

    :cond_57
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcu;->zzaur:Landroid/util/DisplayMetrics;

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/zzcu;->zze(Landroid/view/View;)V

    return-void
.end method

.method private zza(Landroid/app/Activity;I)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcu;->zzaun:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcu;->zzaun:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    if-ne v0, v1, :cond_4

    iput p2, p0, Lcom/google/android/gms/internal/zzcu;->zzaup:I

    goto :goto_4
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzcu;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzcu;->zzl(I)V

    return-void
.end method

.method private zzf(Landroid/view/View;)V
    .registers 4

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_17

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/zzcu;->zzaum:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_17
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcu;->zzie()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcu;->zzaul:Landroid/app/Application;

    if-eqz v0, :cond_25

    :try_start_1e
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcu;->zzaul:Landroid/app/Application;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcu;->zzauo:Lcom/google/android/gms/internal/zzcv;

    invoke-virtual {v0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_25} :catch_26

    :cond_25
    :goto_25
    return-void

    :catch_26
    move-exception v0

    const-string v1, "Error registering activity lifecycle callbacks."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzkx;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_25
.end method

.method private zzg(Landroid/view/View;)V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcu;->zzaum:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcu;->zzaum:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewTreeObserver;

    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_1a
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcu;->zzaum:Ljava/lang/ref/WeakReference;
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1d} :catch_3c

    :cond_1d
    :goto_1d
    :try_start_1d
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_2d

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_2d} :catch_43

    :cond_2d
    :goto_2d
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcu;->zzif()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcu;->zzaul:Landroid/app/Application;

    if-eqz v0, :cond_3b

    :try_start_34
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcu;->zzaul:Landroid/app/Application;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcu;->zzauo:Lcom/google/android/gms/internal/zzcv;

    invoke-virtual {v0, v1}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_3b} :catch_4a

    :cond_3b
    :goto_3b
    return-void

    :catch_3c
    move-exception v0

    const-string v1, "Error while unregistering listeners from the last ViewTreeObserver."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzkx;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1d

    :catch_43
    move-exception v0

    const-string v1, "Error while unregistering listeners from the ViewTreeObserver."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzkx;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2d

    :catch_4a
    move-exception v0

    const-string v1, "Error registering activity lifecycle callbacks."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzkx;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3b
.end method

.method private zzie()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcu;->zzatr:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_5

    :goto_4
    return-void

    :cond_5
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v1, Lcom/google/android/gms/internal/zzcu$2;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzcu$2;-><init>(Lcom/google/android/gms/internal/zzcu;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/zzcu;->zzatr:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcu;->zzatc:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcu;->zzatr:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_4
.end method

.method private zzif()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcu;->zzatr:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_e

    :try_start_4
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcu;->zzatc:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcu;->zzatr:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_b
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_b} :catch_f
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_b} :catch_16

    :goto_b
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcu;->zzatr:Landroid/content/BroadcastReceiver;

    :cond_e
    return-void

    :catch_f
    move-exception v0

    const-string v1, "Failed trying to unregister the receiver"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzkx;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_b

    :catch_16
    move-exception v0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzgq()Lcom/google/android/gms/internal/zzkr;

    move-result-object v1

    const-string v2, "ActiveViewUnit.stopScreenStatusMonitoring"

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/zzkr;->zza(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_b
.end method

.method private zziw()V
    .registers 3

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzgm()Lcom/google/android/gms/internal/zzlb;

    sget-object v0, Lcom/google/android/gms/internal/zzlb;->zzcvl:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/zzcu$1;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzcu$1;-><init>(Lcom/google/android/gms/internal/zzcu;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private zzl(I)V
    .registers 20

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/zzcu;->zzauq:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v2

    if-nez v2, :cond_b

    :cond_a
    :goto_a
    return-void

    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/zzcu;->zzaun:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/zzcu;->zzaun:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    const/4 v3, 0x1

    move/from16 v0, p1

    if-ne v0, v3, :cond_142

    const/4 v3, 0x1

    move v5, v3

    :goto_22
    if-nez v2, :cond_146

    const/4 v3, 0x1

    :goto_25
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    new-instance v11, Landroid/graphics/Rect;

    invoke-direct {v11}, Landroid/graphics/Rect;-><init>()V

    const/4 v12, 0x0

    new-instance v13, Landroid/graphics/Rect;

    invoke-direct {v13}, Landroid/graphics/Rect;-><init>()V

    const/4 v14, 0x0

    new-instance v15, Landroid/graphics/Rect;

    invoke-direct {v15}, Landroid/graphics/Rect;-><init>()V

    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/zzcu;->zzati:Landroid/view/WindowManager;

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Display;->getWidth()I

    move-result v4

    iput v4, v9, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/zzcu;->zzati:Landroid/view/WindowManager;

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Display;->getHeight()I

    move-result v4

    iput v4, v9, Landroid/graphics/Rect;->bottom:I

    const/4 v4, 0x2

    new-array v6, v4, [I

    const/4 v4, 0x2

    new-array v4, v4, [I

    if-eqz v2, :cond_91

    invoke-virtual {v2, v11}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v12

    invoke-virtual {v2, v13}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v14

    invoke-virtual {v2, v15}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    :try_start_6f
    invoke-virtual {v2, v6}, Landroid/view/View;->getLocationOnScreen([I)V

    invoke-virtual {v2, v4}, Landroid/view/View;->getLocationInWindow([I)V
    :try_end_75
    .catch Ljava/lang/Exception; {:try_start_6f .. :try_end_75} :catch_149

    :goto_75
    const/4 v4, 0x0

    aget v4, v6, v4

    iput v4, v10, Landroid/graphics/Rect;->left:I

    const/4 v4, 0x1

    aget v4, v6, v4

    iput v4, v10, Landroid/graphics/Rect;->top:I

    iget v4, v10, Landroid/graphics/Rect;->left:I

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v6

    add-int/2addr v4, v6

    iput v4, v10, Landroid/graphics/Rect;->right:I

    iget v4, v10, Landroid/graphics/Rect;->top:I

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v4, v6

    iput v4, v10, Landroid/graphics/Rect;->bottom:I

    :cond_91
    if-eqz v2, :cond_151

    invoke-virtual {v2}, Landroid/view/View;->getWindowVisibility()I

    move-result v4

    :goto_97
    move-object/from16 v0, p0

    iget v6, v0, Lcom/google/android/gms/internal/zzcu;->zzaup:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_a2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/gms/internal/zzcu;->zzaup:I

    :cond_a2
    if-nez v3, :cond_155

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzgm()Lcom/google/android/gms/internal/zzlb;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzcu;->zzatj:Landroid/os/PowerManager;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/gms/internal/zzcu;->zzatk:Landroid/app/KeyguardManager;

    invoke-virtual {v3, v2, v6, v7}, Lcom/google/android/gms/internal/zzlb;->zza(Landroid/view/View;Landroid/os/PowerManager;Landroid/app/KeyguardManager;)Z

    move-result v3

    if-eqz v3, :cond_155

    if-eqz v12, :cond_155

    if-eqz v14, :cond_155

    if-nez v4, :cond_155

    const/16 v17, 0x1

    :goto_be
    if-eqz v5, :cond_d2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/internal/zzcu;->zzasn:Lcom/google/android/gms/internal/zzlm;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzlm;->tryAcquire()Z

    move-result v3

    if-nez v3, :cond_d2

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/google/android/gms/internal/zzcu;->zzatq:Z

    move/from16 v0, v17

    if-eq v0, v3, :cond_a

    :cond_d2
    if-nez v17, :cond_df

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/google/android/gms/internal/zzcu;->zzatq:Z

    if-nez v3, :cond_df

    const/4 v3, 0x1

    move/from16 v0, p1

    if-eq v0, v3, :cond_a

    :cond_df
    new-instance v3, Lcom/google/android/gms/internal/zzcu$zza;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzgs()Lcom/google/android/gms/common/util/zze;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/android/gms/common/util/zze;->elapsedRealtime()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzcu;->zzatj:Landroid/os/PowerManager;

    invoke-virtual {v6}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v6

    if-eqz v2, :cond_159

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzgo()Lcom/google/android/gms/internal/zzlc;

    move-result-object v7

    invoke-virtual {v7, v2}, Lcom/google/android/gms/internal/zzlc;->isAttachedToWindow(Landroid/view/View;)Z

    move-result v7

    :goto_fb
    if-eqz v2, :cond_15b

    invoke-virtual {v2}, Landroid/view/View;->getWindowVisibility()I

    move-result v8

    :goto_101
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/google/android/gms/internal/zzcu;->zza(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v9

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/google/android/gms/internal/zzcu;->zza(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v10

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/google/android/gms/internal/zzcu;->zza(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v11

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/google/android/gms/internal/zzcu;->zza(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/google/android/gms/internal/zzcu;->zza(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/zzcu;->zzaur:Landroid/util/DisplayMetrics;

    iget v0, v2, Landroid/util/DisplayMetrics;->density:F

    move/from16 v16, v0

    invoke-direct/range {v3 .. v17}, Lcom/google/android/gms/internal/zzcu$zza;-><init>(JZZILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZLandroid/graphics/Rect;ZLandroid/graphics/Rect;FZ)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/zzcu;->zzauq:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_132
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_15e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/zzcu$zzb;

    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/zzcu$zzb;->zza(Lcom/google/android/gms/internal/zzcu$zza;)V

    goto :goto_132

    :cond_142
    const/4 v3, 0x0

    move v5, v3

    goto/16 :goto_22

    :cond_146
    const/4 v3, 0x0

    goto/16 :goto_25

    :catch_149
    move-exception v4

    const-string v7, "Failure getting view location."

    invoke-static {v7, v4}, Lcom/google/android/gms/internal/zzkx;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_75

    :cond_151
    const/16 v4, 0x8

    goto/16 :goto_97

    :cond_155
    const/16 v17, 0x0

    goto/16 :goto_be

    :cond_159
    const/4 v7, 0x0

    goto :goto_fb

    :cond_15b
    const/16 v8, 0x8

    goto :goto_101

    :cond_15e
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/gms/internal/zzcu;->zzatq:Z

    goto/16 :goto_a
.end method

.method private zzm(I)I
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcu;->zzaur:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    int-to-float v1, p1

    div-float v0, v1, v0

    float-to-int v0, v0

    return v0
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/zzcu;->zza(Landroid/app/Activity;I)V

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzcu;->zzl(I)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcu;->zziw()V

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .registers 3

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzcu;->zzl(I)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcu;->zziw()V

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .registers 3

    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/zzcu;->zza(Landroid/app/Activity;I)V

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzcu;->zzl(I)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcu;->zziw()V

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/zzcu;->zza(Landroid/app/Activity;I)V

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzcu;->zzl(I)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcu;->zziw()V

    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 4

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzcu;->zzl(I)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcu;->zziw()V

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/zzcu;->zza(Landroid/app/Activity;I)V

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzcu;->zzl(I)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcu;->zziw()V

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .registers 3

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzcu;->zzl(I)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcu;->zziw()V

    return-void
.end method

.method public onGlobalLayout()V
    .registers 2

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzcu;->zzl(I)V

    return-void
.end method

.method public onScrollChanged()V
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzcu;->zzl(I)V

    return-void
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
    .registers 3

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzcu;->zzaup:I

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzcu;->zzf(Landroid/view/View;)V

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzcu;->zzl(I)V

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .registers 3

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzcu;->zzaup:I

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzcu;->zzl(I)V

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzcu;->zzg(Landroid/view/View;)V

    return-void
.end method

.method zza(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .registers 7

    new-instance v0, Landroid/graphics/Rect;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/zzcu;->zzm(I)I

    move-result v1

    iget v2, p1, Landroid/graphics/Rect;->top:I

    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/zzcu;->zzm(I)I

    move-result v2

    iget v3, p1, Landroid/graphics/Rect;->right:I

    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/zzcu;->zzm(I)I

    move-result v3

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, v4}, Lcom/google/android/gms/internal/zzcu;->zzm(I)I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method public zza(Lcom/google/android/gms/internal/zzcu$zzb;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcu;->zzauq:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzcu;->zzl(I)V

    return-void
.end method

.method public zze(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcu;->zzaun:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcu;->zzaun:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    :goto_c
    if-eqz v0, :cond_14

    invoke-virtual {v0, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzcu;->zzg(Landroid/view/View;)V

    :cond_14
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcu;->zzaun:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_2d

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzgo()Lcom/google/android/gms/internal/zzlc;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzlc;->isAttachedToWindow(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzcu;->zzf(Landroid/view/View;)V

    :cond_2a
    invoke-virtual {p1, p0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    :cond_2d
    return-void

    :cond_2e
    const/4 v0, 0x0

    goto :goto_c
.end method
