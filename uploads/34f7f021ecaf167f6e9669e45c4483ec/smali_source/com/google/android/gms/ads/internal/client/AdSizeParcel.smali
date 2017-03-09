.class public Lcom/google/android/gms/ads/internal/client/AdSizeParcel;
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
            "Lcom/google/android/gms/ads/internal/client/AdSizeParcel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final height:I

.field public final heightPixels:I

.field public final versionCode:I

.field public final width:I

.field public final widthPixels:I

.field public final zzazq:Ljava/lang/String;

.field public final zzazr:Z

.field public final zzazs:[Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

.field public final zzazt:Z

.field public final zzazu:Z

.field public zzazv:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/ads/internal/client/zzi;

    invoke-direct {v0}, Lcom/google/android/gms/ads/internal/client/zzi;-><init>()V

    sput-object v0, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 13

    const/4 v3, 0x0

    const/4 v1, 0x5

    const-string v2, "interstitial_mb"

    const/4 v5, 0x1

    const/4 v8, 0x0

    move-object v0, p0

    move v4, v3

    move v6, v3

    move v7, v3

    move v9, v3

    move v10, v3

    move v11, v3

    invoke-direct/range {v0 .. v11}, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;-><init>(ILjava/lang/String;IIZII[Lcom/google/android/gms/ads/internal/client/AdSizeParcel;ZZZ)V

    return-void
.end method

.method constructor <init>(ILjava/lang/String;IIZII[Lcom/google/android/gms/ads/internal/client/AdSizeParcel;ZZZ)V
    .registers 12

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->versionCode:I

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->zzazq:Ljava/lang/String;

    iput p3, p0, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->height:I

    iput p4, p0, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->heightPixels:I

    iput-boolean p5, p0, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->zzazr:Z

    iput p6, p0, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->width:I

    iput p7, p0, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->widthPixels:I

    iput-object p8, p0, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->zzazs:[Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    iput-boolean p9, p0, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->zzazt:Z

    iput-boolean p10, p0, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->zzazu:Z

    iput-boolean p11, p0, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->zzazv:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/AdSize;)V
    .registers 5

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/android/gms/ads/AdSize;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;-><init>(Landroid/content/Context;[Lcom/google/android/gms/ads/AdSize;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;[Lcom/google/android/gms/ads/AdSize;)V
    .registers 15

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    aget-object v6, p2, v2

    const/4 v0, 0x5

    iput v0, p0, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->versionCode:I

    iput-boolean v2, p0, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->zzazr:Z

    invoke-virtual {v6}, Lcom/google/android/gms/ads/AdSize;->isFluid()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->zzazu:Z

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->zzazu:Z

    if-eqz v0, :cond_c6

    sget-object v0, Lcom/google/android/gms/ads/AdSize;->BANNER:Lcom/google/android/gms/ads/AdSize;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdSize;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->width:I

    sget-object v0, Lcom/google/android/gms/ads/AdSize;->BANNER:Lcom/google/android/gms/ads/AdSize;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdSize;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->height:I

    :goto_26
    iget v0, p0, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->width:I

    const/4 v3, -0x1

    if-ne v0, v3, :cond_d4

    move v0, v1

    :goto_2c
    iget v3, p0, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->height:I

    const/4 v4, -0x2

    if-ne v3, v4, :cond_d7

    move v3, v1

    :goto_32
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    if-eqz v0, :cond_e2

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzm;->zzkr()Lcom/google/android/gms/ads/internal/util/client/zza;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/google/android/gms/ads/internal/util/client/zza;->zzaq(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_da

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzm;->zzkr()Lcom/google/android/gms/ads/internal/util/client/zza;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/google/android/gms/ads/internal/util/client/zza;->zzar(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_da

    invoke-static {v7}, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->zza(Landroid/util/DisplayMetrics;)I

    move-result v4

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzm;->zzkr()Lcom/google/android/gms/ads/internal/util/client/zza;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/google/android/gms/ads/internal/util/client/zza;->zzas(Landroid/content/Context;)I

    move-result v5

    sub-int/2addr v4, v5

    iput v4, p0, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->widthPixels:I

    :goto_5f
    iget v4, p0, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->widthPixels:I

    int-to-float v4, v4

    iget v5, v7, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v4, v5

    float-to-double v8, v4

    double-to-int v4, v8

    double-to-int v5, v8

    int-to-double v10, v5

    sub-double/2addr v8, v10

    const-wide v10, 0x3f847ae147ae147bL

    cmpl-double v5, v8, v10

    if-ltz v5, :cond_75

    add-int/lit8 v4, v4, 0x1

    :cond_75
    move v5, v4

    :goto_76
    if-eqz v3, :cond_f2

    invoke-static {v7}, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->zzc(Landroid/util/DisplayMetrics;)I

    move-result v4

    :goto_7c
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzm;->zzkr()Lcom/google/android/gms/ads/internal/util/client/zza;

    move-result-object v8

    invoke-virtual {v8, v7, v4}, Lcom/google/android/gms/ads/internal/util/client/zza;->zza(Landroid/util/DisplayMetrics;I)I

    move-result v7

    iput v7, p0, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->heightPixels:I

    if-nez v0, :cond_8a

    if-eqz v3, :cond_f5

    :cond_8a
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v3, 0x1a

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "x"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "_as"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->zzazq:Ljava/lang/String;

    :goto_ac
    array-length v0, p2

    if-le v0, v1, :cond_105

    array-length v0, p2

    new-array v0, v0, [Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->zzazs:[Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    move v0, v2

    :goto_b5
    array-length v1, p2

    if-ge v0, v1, :cond_108

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->zzazs:[Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    new-instance v3, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    aget-object v4, p2, v0

    invoke-direct {v3, p1, v4}, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/AdSize;)V

    aput-object v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_b5

    :cond_c6
    invoke-virtual {v6}, Lcom/google/android/gms/ads/AdSize;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->width:I

    invoke-virtual {v6}, Lcom/google/android/gms/ads/AdSize;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->height:I

    goto/16 :goto_26

    :cond_d4
    move v0, v2

    goto/16 :goto_2c

    :cond_d7
    move v3, v2

    goto/16 :goto_32

    :cond_da
    invoke-static {v7}, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->zza(Landroid/util/DisplayMetrics;)I

    move-result v4

    iput v4, p0, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->widthPixels:I

    goto/16 :goto_5f

    :cond_e2
    iget v4, p0, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->width:I

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzm;->zzkr()Lcom/google/android/gms/ads/internal/util/client/zza;

    move-result-object v5

    iget v8, p0, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->width:I

    invoke-virtual {v5, v7, v8}, Lcom/google/android/gms/ads/internal/util/client/zza;->zza(Landroid/util/DisplayMetrics;I)I

    move-result v5

    iput v5, p0, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->widthPixels:I

    move v5, v4

    goto :goto_76

    :cond_f2
    iget v4, p0, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->height:I

    goto :goto_7c

    :cond_f5
    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->zzazu:Z

    if-eqz v0, :cond_fe

    const-string v0, "320x50_mb"

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->zzazq:Ljava/lang/String;

    goto :goto_ac

    :cond_fe
    invoke-virtual {v6}, Lcom/google/android/gms/ads/AdSize;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->zzazq:Ljava/lang/String;

    goto :goto_ac

    :cond_105
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->zzazs:[Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    :cond_108
    iput-boolean v2, p0, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->zzazt:Z

    iput-boolean v2, p0, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->zzazv:Z

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/ads/internal/client/AdSizeParcel;[Lcom/google/android/gms/ads/internal/client/AdSizeParcel;)V
    .registers 15

    const/4 v1, 0x5

    iget-object v2, p1, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->zzazq:Ljava/lang/String;

    iget v3, p1, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->height:I

    iget v4, p1, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->heightPixels:I

    iget-boolean v5, p1, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->zzazr:Z

    iget v6, p1, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->width:I

    iget v7, p1, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->widthPixels:I

    iget-boolean v9, p1, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->zzazt:Z

    iget-boolean v10, p1, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->zzazu:Z

    iget-boolean v11, p1, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->zzazv:Z

    move-object v0, p0

    move-object v8, p2

    invoke-direct/range {v0 .. v11}, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;-><init>(ILjava/lang/String;IIZII[Lcom/google/android/gms/ads/internal/client/AdSizeParcel;ZZZ)V

    return-void
.end method

.method public static zza(Landroid/util/DisplayMetrics;)I
    .registers 2

    iget v0, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    return v0
.end method

.method public static zzb(Landroid/util/DisplayMetrics;)I
    .registers 3

    invoke-static {p0}, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->zzc(Landroid/util/DisplayMetrics;)I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private static zzc(Landroid/util/DisplayMetrics;)I
    .registers 3

    iget v0, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v0, v0

    iget v1, p0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    const/16 v1, 0x190

    if-gt v0, v1, :cond_e

    const/16 v0, 0x20

    :goto_d
    return v0

    :cond_e
    const/16 v1, 0x2d0

    if-gt v0, v1, :cond_15

    const/16 v0, 0x32

    goto :goto_d

    :cond_15
    const/16 v0, 0x5a

    goto :goto_d
.end method

.method public static zzj(Landroid/content/Context;)Lcom/google/android/gms/ads/internal/client/AdSizeParcel;
    .registers 13

    const/4 v3, 0x0

    new-instance v0, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    const/4 v1, 0x5

    const-string v2, "320x50_mb"

    const/4 v8, 0x0

    const/4 v9, 0x1

    move v4, v3

    move v5, v3

    move v6, v3

    move v7, v3

    move v10, v3

    move v11, v3

    invoke-direct/range {v0 .. v11}, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;-><init>(ILjava/lang/String;IIZII[Lcom/google/android/gms/ads/internal/client/AdSizeParcel;ZZZ)V

    return-object v0
.end method

.method public static zzkc()Lcom/google/android/gms/ads/internal/client/AdSizeParcel;
    .registers 12

    const/4 v3, 0x0

    new-instance v0, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    const/4 v1, 0x5

    const-string v2, "reward_mb"

    const/4 v5, 0x1

    const/4 v8, 0x0

    move v4, v3

    move v6, v3

    move v7, v3

    move v9, v3

    move v10, v3

    move v11, v3

    invoke-direct/range {v0 .. v11}, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;-><init>(ILjava/lang/String;IIZII[Lcom/google/android/gms/ads/internal/client/AdSizeParcel;ZZZ)V

    return-object v0
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/ads/internal/client/zzi;->zza(Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzkd()Lcom/google/android/gms/ads/AdSize;
    .registers 4

    iget v0, p0, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->width:I

    iget v1, p0, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->height:I

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->zzazq:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/ads/zza;->zza(IILjava/lang/String;)Lcom/google/android/gms/ads/AdSize;

    move-result-object v0

    return-object v0
.end method

.method public zzl(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->zzazv:Z

    return-void
.end method
