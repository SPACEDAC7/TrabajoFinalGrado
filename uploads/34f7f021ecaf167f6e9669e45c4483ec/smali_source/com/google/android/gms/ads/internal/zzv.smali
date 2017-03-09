.class public final Lcom/google/android/gms/ads/internal/zzv;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzji;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/ads/internal/zzv$zza;
    }
.end annotation


# instance fields
.field public final zzahs:Landroid/content/Context;

.field zzaok:Z

.field final zzarf:Ljava/lang/String;

.field public zzarg:Ljava/lang/String;

.field final zzarh:Lcom/google/android/gms/internal/zzav;

.field public final zzari:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

.field zzarj:Lcom/google/android/gms/ads/internal/zzv$zza;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public zzark:Lcom/google/android/gms/internal/zzkw;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public zzarl:Lcom/google/android/gms/internal/zzld;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public zzarm:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

.field public zzarn:Lcom/google/android/gms/internal/zzko;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public zzaro:Lcom/google/android/gms/internal/zzko$zza;

.field public zzarp:Lcom/google/android/gms/internal/zzkp;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field zzarq:Lcom/google/android/gms/ads/internal/client/zzp;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field zzarr:Lcom/google/android/gms/ads/internal/client/zzq;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field zzars:Lcom/google/android/gms/ads/internal/client/zzw;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field zzart:Lcom/google/android/gms/ads/internal/client/zzy;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field zzaru:Lcom/google/android/gms/internal/zzig;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field zzarv:Lcom/google/android/gms/internal/zzik;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field zzarw:Lcom/google/android/gms/internal/zzeq;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field zzarx:Lcom/google/android/gms/internal/zzer;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field zzary:Landroid/support/v4/util/SimpleArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/SimpleArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzes;",
            ">;"
        }
    .end annotation
.end field

.field zzarz:Landroid/support/v4/util/SimpleArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/SimpleArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzet;",
            ">;"
        }
    .end annotation
.end field

.field zzasa:Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;

.field zzasb:Lcom/google/android/gms/ads/internal/client/VideoOptionsParcel;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field zzasc:Lcom/google/android/gms/internal/zzed;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field zzasd:Lcom/google/android/gms/ads/internal/reward/client/zzd;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field zzase:Ljava/util/List;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field zzasf:Lcom/google/android/gms/ads/internal/purchase/zzk;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public zzasg:Lcom/google/android/gms/internal/zzku;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field zzash:Landroid/view/View;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public zzasi:I

.field zzasj:Z

.field private zzask:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/google/android/gms/internal/zzkp;",
            ">;"
        }
    .end annotation
.end field

.field private zzasl:I

.field private zzasm:I

.field private zzasn:Lcom/google/android/gms/internal/zzlm;

.field private zzaso:Z

.field private zzasp:Z

.field private zzasq:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Ljava/lang/String;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;)V
    .registers 11

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/ads/internal/zzv;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Ljava/lang/String;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/zzav;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Ljava/lang/String;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/zzav;)V
    .registers 10

    const/4 v3, 0x1

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/google/android/gms/ads/internal/zzv;->zzasg:Lcom/google/android/gms/internal/zzku;

    iput-object v2, p0, Lcom/google/android/gms/ads/internal/zzv;->zzash:Landroid/view/View;

    iput v0, p0, Lcom/google/android/gms/ads/internal/zzv;->zzasi:I

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/zzv;->zzasj:Z

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/zzv;->zzaok:Z

    iput-object v2, p0, Lcom/google/android/gms/ads/internal/zzv;->zzask:Ljava/util/HashSet;

    iput v1, p0, Lcom/google/android/gms/ads/internal/zzv;->zzasl:I

    iput v1, p0, Lcom/google/android/gms/ads/internal/zzv;->zzasm:I

    iput-boolean v3, p0, Lcom/google/android/gms/ads/internal/zzv;->zzaso:Z

    iput-boolean v3, p0, Lcom/google/android/gms/ads/internal/zzv;->zzasp:Z

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/zzv;->zzasq:Z

    invoke-static {p1}, Lcom/google/android/gms/internal/zzdr;->initialize(Landroid/content/Context;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzgq()Lcom/google/android/gms/internal/zzkr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzkr;->zzuu()Lcom/google/android/gms/internal/zzdt;

    move-result-object v0

    if-eqz v0, :cond_46

    invoke-static {}, Lcom/google/android/gms/internal/zzdr;->zzlr()Ljava/util/List;

    move-result-object v0

    iget v1, p4, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->zzcya:I

    if-eqz v1, :cond_3b

    iget v1, p4, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->zzcya:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3b
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzgq()Lcom/google/android/gms/internal/zzkr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzkr;->zzuu()Lcom/google/android/gms/internal/zzdt;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzdt;->zzc(Ljava/util/List;)V

    :cond_46
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/zzv;->zzarf:Ljava/lang/String;

    iget-boolean v0, p2, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->zzazr:Z

    if-nez v0, :cond_58

    iget-boolean v0, p2, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->zzazt:Z

    if-eqz v0, :cond_77

    :cond_58
    iput-object v2, p0, Lcom/google/android/gms/ads/internal/zzv;->zzarj:Lcom/google/android/gms/ads/internal/zzv$zza;

    :goto_5a
    iput-object p2, p0, Lcom/google/android/gms/ads/internal/zzv;->zzarm:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/zzv;->zzarg:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzv;->zzahs:Landroid/content/Context;

    iput-object p4, p0, Lcom/google/android/gms/ads/internal/zzv;->zzari:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    if-eqz p5, :cond_93

    :goto_64
    iput-object p5, p0, Lcom/google/android/gms/ads/internal/zzv;->zzarh:Lcom/google/android/gms/internal/zzav;

    new-instance v0, Lcom/google/android/gms/internal/zzlm;

    const-wide/16 v2, 0xc8

    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/internal/zzlm;-><init>(J)V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/zzv;->zzasn:Lcom/google/android/gms/internal/zzlm;

    new-instance v0, Landroid/support/v4/util/SimpleArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/SimpleArrayMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/zzv;->zzarz:Landroid/support/v4/util/SimpleArrayMap;

    return-void

    :cond_77
    new-instance v0, Lcom/google/android/gms/ads/internal/zzv$zza;

    invoke-direct {v0, p1, p3, p0, p0}, Lcom/google/android/gms/ads/internal/zzv$zza;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/zzv;->zzarj:Lcom/google/android/gms/ads/internal/zzv$zza;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzv;->zzarj:Lcom/google/android/gms/ads/internal/zzv$zza;

    iget v1, p2, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->widthPixels:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/zzv$zza;->setMinimumWidth(I)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzv;->zzarj:Lcom/google/android/gms/ads/internal/zzv$zza;

    iget v1, p2, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->heightPixels:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/zzv$zza;->setMinimumHeight(I)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzv;->zzarj:Lcom/google/android/gms/ads/internal/zzv$zza;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/zzv$zza;->setVisibility(I)V

    goto :goto_5a

    :cond_93
    new-instance p5, Lcom/google/android/gms/internal/zzav;

    new-instance v0, Lcom/google/android/gms/ads/internal/zzi;

    invoke-direct {v0, p0}, Lcom/google/android/gms/ads/internal/zzi;-><init>(Lcom/google/android/gms/ads/internal/zzv;)V

    invoke-direct {p5, v0}, Lcom/google/android/gms/internal/zzav;-><init>(Lcom/google/android/gms/internal/zzaq;)V

    goto :goto_64
.end method

.method private zzh(Z)V
    .registers 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzv;->zzarj:Lcom/google/android/gms/ads/internal/zzv$zza;

    if-eqz v2, :cond_1a

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzv;->zzarn:Lcom/google/android/gms/internal/zzko;

    if-eqz v2, :cond_1a

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzv;->zzarn:Lcom/google/android/gms/internal/zzko;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzko;->zzcbm:Lcom/google/android/gms/internal/zzmd;

    if-eqz v2, :cond_1a

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzv;->zzarn:Lcom/google/android/gms/internal/zzko;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzko;->zzcbm:Lcom/google/android/gms/internal/zzmd;

    invoke-interface {v2}, Lcom/google/android/gms/internal/zzmd;->zzxc()Lcom/google/android/gms/internal/zzme;

    move-result-object v2

    if-nez v2, :cond_1b

    :cond_1a
    :goto_1a
    return-void

    :cond_1b
    if-eqz p1, :cond_25

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzv;->zzasn:Lcom/google/android/gms/internal/zzlm;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzlm;->tryAcquire()Z

    move-result v2

    if-eqz v2, :cond_1a

    :cond_25
    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzv;->zzarn:Lcom/google/android/gms/internal/zzko;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzko;->zzcbm:Lcom/google/android/gms/internal/zzmd;

    invoke-interface {v2}, Lcom/google/android/gms/internal/zzmd;->zzxc()Lcom/google/android/gms/internal/zzme;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzme;->zzic()Z

    move-result v2

    if-eqz v2, :cond_70

    const/4 v2, 0x2

    new-array v2, v2, [I

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/zzv;->zzarj:Lcom/google/android/gms/ads/internal/zzv$zza;

    invoke-virtual {v3, v2}, Lcom/google/android/gms/ads/internal/zzv$zza;->getLocationOnScreen([I)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzm;->zzkr()Lcom/google/android/gms/ads/internal/util/client/zza;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/zzv;->zzahs:Landroid/content/Context;

    aget v5, v2, v1

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/ads/internal/util/client/zza;->zzc(Landroid/content/Context;I)I

    move-result v3

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzm;->zzkr()Lcom/google/android/gms/ads/internal/util/client/zza;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gms/ads/internal/zzv;->zzahs:Landroid/content/Context;

    aget v2, v2, v0

    invoke-virtual {v4, v5, v2}, Lcom/google/android/gms/ads/internal/util/client/zza;->zzc(Landroid/content/Context;I)I

    move-result v2

    iget v4, p0, Lcom/google/android/gms/ads/internal/zzv;->zzasl:I

    if-ne v3, v4, :cond_5b

    iget v4, p0, Lcom/google/android/gms/ads/internal/zzv;->zzasm:I

    if-eq v2, v4, :cond_70

    :cond_5b
    iput v3, p0, Lcom/google/android/gms/ads/internal/zzv;->zzasl:I

    iput v2, p0, Lcom/google/android/gms/ads/internal/zzv;->zzasm:I

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzv;->zzarn:Lcom/google/android/gms/internal/zzko;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzko;->zzcbm:Lcom/google/android/gms/internal/zzmd;

    invoke-interface {v2}, Lcom/google/android/gms/internal/zzmd;->zzxc()Lcom/google/android/gms/internal/zzme;

    move-result-object v2

    iget v3, p0, Lcom/google/android/gms/ads/internal/zzv;->zzasl:I

    iget v4, p0, Lcom/google/android/gms/ads/internal/zzv;->zzasm:I

    if-nez p1, :cond_74

    :goto_6d
    invoke-virtual {v2, v3, v4, v0}, Lcom/google/android/gms/internal/zzme;->zza(IIZ)V

    :cond_70
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/zzv;->zzhs()V

    goto :goto_1a

    :cond_74
    move v0, v1

    goto :goto_6d
.end method

.method private zzhs()V
    .registers 6

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzv;->zzarj:Lcom/google/android/gms/ads/internal/zzv$zza;

    if-nez v0, :cond_6

    :cond_5
    :goto_5
    return-void

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzv;->zzarj:Lcom/google/android/gms/ads/internal/zzv$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzv$zza;->getRootView()Landroid/view/View;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_5

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/zzv;->zzarj:Lcom/google/android/gms/ads/internal/zzv$zza;

    invoke-virtual {v3, v1}, Lcom/google/android/gms/ads/internal/zzv$zza;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    invoke-virtual {v0, v2}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    iget v0, v1, Landroid/graphics/Rect;->top:I

    iget v3, v2, Landroid/graphics/Rect;->top:I

    if-eq v0, v3, :cond_2f

    iput-boolean v4, p0, Lcom/google/android/gms/ads/internal/zzv;->zzaso:Z

    :cond_2f
    iget v0, v1, Landroid/graphics/Rect;->bottom:I

    iget v1, v2, Landroid/graphics/Rect;->bottom:I

    if-eq v0, v1, :cond_5

    iput-boolean v4, p0, Lcom/google/android/gms/ads/internal/zzv;->zzasp:Z

    goto :goto_5
.end method


# virtual methods
.method public destroy()V
    .registers 3

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/zzv;->zzhr()V

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/zzv;->zzarr:Lcom/google/android/gms/ads/internal/client/zzq;

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/zzv;->zzars:Lcom/google/android/gms/ads/internal/client/zzw;

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/zzv;->zzarv:Lcom/google/android/gms/internal/zzik;

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/zzv;->zzaru:Lcom/google/android/gms/internal/zzig;

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/zzv;->zzasc:Lcom/google/android/gms/internal/zzed;

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/zzv;->zzart:Lcom/google/android/gms/ads/internal/client/zzy;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/internal/zzv;->zzi(Z)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzv;->zzarj:Lcom/google/android/gms/ads/internal/zzv$zza;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzv;->zzarj:Lcom/google/android/gms/ads/internal/zzv$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzv$zza;->removeAllViews()V

    :cond_1d
    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/zzv;->zzhm()V

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/zzv;->zzho()V

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/zzv;->zzarn:Lcom/google/android/gms/internal/zzko;

    return-void
.end method

.method public onGlobalLayout()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/ads/internal/zzv;->zzh(Z)V

    return-void
.end method

.method public onScrollChanged()V
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/ads/internal/zzv;->zzh(Z)V

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/zzv;->zzasq:Z

    return-void
.end method

.method public zza(Ljava/util/HashSet;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Lcom/google/android/gms/internal/zzkp;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzv;->zzask:Ljava/util/HashSet;

    return-void
.end method

.method public zzhl()Ljava/util/HashSet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet",
            "<",
            "Lcom/google/android/gms/internal/zzkp;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzv;->zzask:Ljava/util/HashSet;

    return-object v0
.end method

.method public zzhm()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzv;->zzarn:Lcom/google/android/gms/internal/zzko;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzv;->zzarn:Lcom/google/android/gms/internal/zzko;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzko;->zzcbm:Lcom/google/android/gms/internal/zzmd;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzv;->zzarn:Lcom/google/android/gms/internal/zzko;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzko;->zzcbm:Lcom/google/android/gms/internal/zzmd;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzmd;->destroy()V

    :cond_11
    return-void
.end method

.method public zzhn()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzv;->zzarn:Lcom/google/android/gms/internal/zzko;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzv;->zzarn:Lcom/google/android/gms/internal/zzko;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzko;->zzcbm:Lcom/google/android/gms/internal/zzmd;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzv;->zzarn:Lcom/google/android/gms/internal/zzko;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzko;->zzcbm:Lcom/google/android/gms/internal/zzmd;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzmd;->stopLoading()V

    :cond_11
    return-void
.end method

.method public zzho()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzv;->zzarn:Lcom/google/android/gms/internal/zzko;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzv;->zzarn:Lcom/google/android/gms/internal/zzko;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzko;->zzbwn:Lcom/google/android/gms/internal/zzha;

    if-eqz v0, :cond_11

    :try_start_a
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzv;->zzarn:Lcom/google/android/gms/internal/zzko;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzko;->zzbwn:Lcom/google/android/gms/internal/zzha;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzha;->destroy()V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_11} :catch_12

    :cond_11
    :goto_11
    return-void

    :catch_12
    move-exception v0

    const-string v0, "Could not destroy mediation adapter."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkx;->zzdi(Ljava/lang/String;)V

    goto :goto_11
.end method

.method public zzhp()Z
    .registers 2

    iget v0, p0, Lcom/google/android/gms/ads/internal/zzv;->zzasi:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public zzhq()Z
    .registers 3

    const/4 v0, 0x1

    iget v1, p0, Lcom/google/android/gms/ads/internal/zzv;->zzasi:I

    if-ne v1, v0, :cond_6

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public zzhr()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzv;->zzarj:Lcom/google/android/gms/ads/internal/zzv$zza;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzv;->zzarj:Lcom/google/android/gms/ads/internal/zzv$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzv$zza;->zzhr()V

    :cond_9
    return-void
.end method

.method public zzht()Ljava/lang/String;
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/zzv;->zzaso:Z

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/zzv;->zzasp:Z

    if-eqz v0, :cond_b

    const-string v0, ""

    :goto_a
    return-object v0

    :cond_b
    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/zzv;->zzaso:Z

    if-eqz v0, :cond_1b

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/zzv;->zzasq:Z

    if-eqz v0, :cond_17

    const-string/jumbo v0, "top-scrollable"

    goto :goto_a

    :cond_17
    const-string/jumbo v0, "top-locked"

    goto :goto_a

    :cond_1b
    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/zzv;->zzasp:Z

    if-eqz v0, :cond_29

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/zzv;->zzasq:Z

    if-eqz v0, :cond_26

    const-string v0, "bottom-scrollable"

    goto :goto_a

    :cond_26
    const-string v0, "bottom-locked"

    goto :goto_a

    :cond_29
    const-string v0, ""

    goto :goto_a
.end method

.method public zzhu()V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzv;->zzarp:Lcom/google/android/gms/internal/zzkp;

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzv;->zzarn:Lcom/google/android/gms/internal/zzko;

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzv;->zzarp:Lcom/google/android/gms/internal/zzkp;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzv;->zzarn:Lcom/google/android/gms/internal/zzko;

    iget-wide v2, v1, Lcom/google/android/gms/internal/zzko;->zzcso:J

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/zzkp;->zzm(J)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzv;->zzarp:Lcom/google/android/gms/internal/zzkp;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzv;->zzarn:Lcom/google/android/gms/internal/zzko;

    iget-wide v2, v1, Lcom/google/android/gms/internal/zzko;->zzcsp:J

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/zzkp;->zzn(J)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzv;->zzarp:Lcom/google/android/gms/internal/zzkp;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzv;->zzarn:Lcom/google/android/gms/internal/zzko;

    iget-boolean v1, v1, Lcom/google/android/gms/internal/zzko;->zzclb:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzkp;->zzae(Z)V

    :cond_24
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzv;->zzarp:Lcom/google/android/gms/internal/zzkp;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzv;->zzarm:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    iget-boolean v1, v1, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->zzazr:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzkp;->zzad(Z)V

    goto :goto_4
.end method

.method public zzi(Z)V
    .registers 3

    iget v0, p0, Lcom/google/android/gms/ads/internal/zzv;->zzasi:I

    if-nez v0, :cond_7

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/zzv;->zzhn()V

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzv;->zzark:Lcom/google/android/gms/internal/zzkw;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzv;->zzark:Lcom/google/android/gms/internal/zzkw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzkw;->cancel()V

    :cond_10
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzv;->zzarl:Lcom/google/android/gms/internal/zzld;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzv;->zzarl:Lcom/google/android/gms/internal/zzld;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzld;->cancel()V

    :cond_19
    if-eqz p1, :cond_1e

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/zzv;->zzarn:Lcom/google/android/gms/internal/zzko;

    :cond_1e
    return-void
.end method
