.class public Lcom/google/android/gms/internal/zzle;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzji;
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mState:I

.field private zzant:Ljava/lang/String;

.field private final zzbzc:F

.field private zzcvu:Ljava/lang/String;

.field private zzcvv:F

.field private zzcvw:F

.field private zzcvx:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/zzle;->mState:I

    iput-object p1, p0, Lcom/google/android/gms/internal/zzle;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/google/android/gms/internal/zzle;->zzbzc:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzle;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/zzle;->zzcvu:Ljava/lang/String;

    return-void
.end method

.method private zza(Ljava/util/List;Ljava/lang/String;Z)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Z)I"
        }
    .end annotation

    if-nez p3, :cond_4

    const/4 v0, -0x1

    :goto_3
    return v0

    :cond_4
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_3
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzle;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzle;->zzwc()V

    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzle;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzle;->zzwd()V

    return-void
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/zzle;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzle;->zzwe()V

    return-void
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/zzle;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzle;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static zzdd(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "No debug information"

    :cond_8
    :goto_8
    return-object v0

    :cond_9
    const-string v0, "\\+"

    const-string v1, "%20"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/net/Uri$Builder;

    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    invoke-virtual {v1, v0}, Landroid/net/Uri$Builder;->encodedQuery(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzgm()Lcom/google/android/gms/internal/zzlb;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/zzlb;->zzg(Landroid/net/Uri;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_33
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_59

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\n\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_33

    :cond_59
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v0, "No debug information"

    goto :goto_8
.end method

.method static synthetic zze(Lcom/google/android/gms/internal/zzle;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzle;->zzant:Ljava/lang/String;

    return-object v0
.end method

.method private zzwb()V
    .registers 8

    iget-object v0, p0, Lcom/google/android/gms/internal/zzle;->mContext:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-nez v0, :cond_c

    const-string v0, "Can not create dialog without Activity Context"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkx;->zzdh(Ljava/lang/String;)V

    :goto_b
    return-void

    :cond_c
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzgq()Lcom/google/android/gms/internal/zzkr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzkr;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-eqz v1, :cond_87

    sget v0, Lcom/google/android/gms/R$string;->debug_menu_title:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    :goto_1d
    if-eqz v1, :cond_8b

    sget v0, Lcom/google/android/gms/R$string;->debug_menu_ad_information:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    :goto_26
    if-eqz v1, :cond_8f

    sget v0, Lcom/google/android/gms/R$string;->debug_menu_creative_preview:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    :goto_2f
    if-eqz v1, :cond_93

    sget v0, Lcom/google/android/gms/R$string;->debug_menu_troubleshooting:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :goto_38
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x1

    invoke-direct {p0, v5, v3, v0}, Lcom/google/android/gms/internal/zzle;->zza(Ljava/util/List;Ljava/lang/String;Z)I

    move-result v3

    sget-object v0, Lcom/google/android/gms/internal/zzdr;->zzbkw:Lcom/google/android/gms/internal/zzdn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdn;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v5, v2, v0}, Lcom/google/android/gms/internal/zzle;->zza(Ljava/util/List;Ljava/lang/String;Z)I

    move-result v2

    sget-object v0, Lcom/google/android/gms/internal/zzdr;->zzbkx:Lcom/google/android/gms/internal/zzdn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdn;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v5, v1, v0}, Lcom/google/android/gms/internal/zzle;->zza(Ljava/util/List;Ljava/lang/String;Z)I

    move-result v1

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/google/android/gms/internal/zzle;->mContext:Landroid/content/Context;

    invoke-direct {v0, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v5, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    new-instance v5, Lcom/google/android/gms/internal/zzle$1;

    invoke-direct {v5, p0, v3, v2, v1}, Lcom/google/android/gms/internal/zzle$1;-><init>(Lcom/google/android/gms/internal/zzle;III)V

    invoke-virtual {v4, v0, v5}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_b

    :cond_87
    const-string v0, "Select a Debug Mode"

    move-object v4, v0

    goto :goto_1d

    :cond_8b
    const-string v0, "Ad Information"

    move-object v3, v0

    goto :goto_26

    :cond_8f
    const-string v0, "Creative Preview"

    move-object v2, v0

    goto :goto_2f

    :cond_93
    const-string v0, "Troubleshooting"

    move-object v1, v0

    goto :goto_38
.end method

.method private zzwc()V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzle;->mContext:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-nez v0, :cond_c

    const-string v0, "Can not create dialog without Activity Context"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkx;->zzdh(Ljava/lang/String;)V

    :goto_b
    return-void

    :cond_c
    iget-object v0, p0, Lcom/google/android/gms/internal/zzle;->zzcvu:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzle;->zzdd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzle;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string v2, "Ad Information"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string v2, "Share"

    new-instance v3, Lcom/google/android/gms/internal/zzle$2;

    invoke-direct {v3, p0, v0}, Lcom/google/android/gms/internal/zzle$2;-><init>(Lcom/google/android/gms/internal/zzle;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const-string v0, "Close"

    new-instance v2, Lcom/google/android/gms/internal/zzle$3;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/zzle$3;-><init>(Lcom/google/android/gms/internal/zzle;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_b
.end method

.method private zzwd()V
    .registers 2

    const-string v0, "Debug mode [Creative Preview] selected."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkx;->zzdg(Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/zzle$4;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzle$4;-><init>(Lcom/google/android/gms/internal/zzle;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/zzla;->zza(Ljava/lang/Runnable;)Lcom/google/android/gms/internal/zzlt;

    return-void
.end method

.method private zzwe()V
    .registers 2

    const-string v0, "Debug mode [Troubleshooting] selected."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkx;->zzdg(Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/zzle$5;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzle$5;-><init>(Lcom/google/android/gms/internal/zzle;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/zzla;->zza(Ljava/lang/Runnable;)Lcom/google/android/gms/internal/zzlt;

    return-void
.end method


# virtual methods
.method public setAdUnitId(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzle;->zzant:Ljava/lang/String;

    return-void
.end method

.method public showDialog()V
    .registers 2

    sget-object v0, Lcom/google/android/gms/internal/zzdr;->zzbkx:Lcom/google/android/gms/internal/zzdn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdn;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1c

    sget-object v0, Lcom/google/android/gms/internal/zzdr;->zzbkw:Lcom/google/android/gms/internal/zzdn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdn;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_20

    :cond_1c
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzle;->zzwb()V

    :goto_1f
    return-void

    :cond_20
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzle;->zzwc()V

    goto :goto_1f
.end method

.method zza(IFF)V
    .registers 11

    const/4 v6, 0x3

    const/4 v5, -0x1

    const/4 v4, 0x2

    const/4 v3, 0x1

    if-nez p1, :cond_10

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/zzle;->mState:I

    iput p2, p0, Lcom/google/android/gms/internal/zzle;->zzcvv:F

    iput p3, p0, Lcom/google/android/gms/internal/zzle;->zzcvw:F

    iput p3, p0, Lcom/google/android/gms/internal/zzle;->zzcvx:F

    :cond_f
    :goto_f
    return-void

    :cond_10
    iget v0, p0, Lcom/google/android/gms/internal/zzle;->mState:I

    if-eq v0, v5, :cond_f

    if-ne p1, v4, :cond_92

    iget v0, p0, Lcom/google/android/gms/internal/zzle;->zzcvw:F

    cmpl-float v0, p3, v0

    if-lez v0, :cond_2f

    iput p3, p0, Lcom/google/android/gms/internal/zzle;->zzcvw:F

    :cond_1e
    :goto_1e
    iget v0, p0, Lcom/google/android/gms/internal/zzle;->zzcvw:F

    iget v1, p0, Lcom/google/android/gms/internal/zzle;->zzcvx:F

    sub-float/2addr v0, v1

    const/high16 v1, 0x41f00000

    iget v2, p0, Lcom/google/android/gms/internal/zzle;->zzbzc:F

    mul-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_38

    iput v5, p0, Lcom/google/android/gms/internal/zzle;->mState:I

    goto :goto_f

    :cond_2f
    iget v0, p0, Lcom/google/android/gms/internal/zzle;->zzcvx:F

    cmpg-float v0, p3, v0

    if-gez v0, :cond_1e

    iput p3, p0, Lcom/google/android/gms/internal/zzle;->zzcvx:F

    goto :goto_1e

    :cond_38
    iget v0, p0, Lcom/google/android/gms/internal/zzle;->mState:I

    if-eqz v0, :cond_40

    iget v0, p0, Lcom/google/android/gms/internal/zzle;->mState:I

    if-ne v0, v4, :cond_66

    :cond_40
    iget v0, p0, Lcom/google/android/gms/internal/zzle;->zzcvv:F

    sub-float v0, p2, v0

    const/high16 v1, 0x42480000

    iget v2, p0, Lcom/google/android/gms/internal/zzle;->zzbzc:F

    mul-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_55

    iput p2, p0, Lcom/google/android/gms/internal/zzle;->zzcvv:F

    iget v0, p0, Lcom/google/android/gms/internal/zzle;->mState:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzle;->mState:I

    :cond_55
    :goto_55
    iget v0, p0, Lcom/google/android/gms/internal/zzle;->mState:I

    if-eq v0, v3, :cond_5d

    iget v0, p0, Lcom/google/android/gms/internal/zzle;->mState:I

    if-ne v0, v6, :cond_84

    :cond_5d
    iget v0, p0, Lcom/google/android/gms/internal/zzle;->zzcvv:F

    cmpl-float v0, p2, v0

    if-lez v0, :cond_f

    iput p2, p0, Lcom/google/android/gms/internal/zzle;->zzcvv:F

    goto :goto_f

    :cond_66
    iget v0, p0, Lcom/google/android/gms/internal/zzle;->mState:I

    if-eq v0, v3, :cond_6e

    iget v0, p0, Lcom/google/android/gms/internal/zzle;->mState:I

    if-ne v0, v6, :cond_55

    :cond_6e
    iget v0, p0, Lcom/google/android/gms/internal/zzle;->zzcvv:F

    sub-float v0, p2, v0

    const/high16 v1, -0x3db80000

    iget v2, p0, Lcom/google/android/gms/internal/zzle;->zzbzc:F

    mul-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_55

    iput p2, p0, Lcom/google/android/gms/internal/zzle;->zzcvv:F

    iget v0, p0, Lcom/google/android/gms/internal/zzle;->mState:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzle;->mState:I

    goto :goto_55

    :cond_84
    iget v0, p0, Lcom/google/android/gms/internal/zzle;->mState:I

    if-ne v0, v4, :cond_f

    iget v0, p0, Lcom/google/android/gms/internal/zzle;->zzcvv:F

    cmpg-float v0, p2, v0

    if-gez v0, :cond_f

    iput p2, p0, Lcom/google/android/gms/internal/zzle;->zzcvv:F

    goto/16 :goto_f

    :cond_92
    if-ne p1, v3, :cond_f

    iget v0, p0, Lcom/google/android/gms/internal/zzle;->mState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_f

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzle;->showDialog()V

    goto/16 :goto_f
.end method

.method public zzdc(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzle;->zzcvu:Ljava/lang/String;

    return-void
.end method

.method public zzg(Landroid/view/MotionEvent;)V
    .registers 8

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v2

    move v0, v1

    :goto_6
    if-ge v0, v2, :cond_1a

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    invoke-virtual {p1, v1, v0}, Landroid/view/MotionEvent;->getHistoricalX(II)F

    move-result v4

    invoke-virtual {p1, v1, v0}, Landroid/view/MotionEvent;->getHistoricalY(II)F

    move-result v5

    invoke-virtual {p0, v3, v4, v5}, Lcom/google/android/gms/internal/zzle;->zza(IFF)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_1a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/gms/internal/zzle;->zza(IFF)V

    return-void
.end method
