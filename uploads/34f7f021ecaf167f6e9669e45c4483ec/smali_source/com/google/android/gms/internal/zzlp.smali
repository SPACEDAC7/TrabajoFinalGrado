.class public final Lcom/google/android/gms/internal/zzlp;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzji;
.end annotation


# instance fields
.field private final mView:Landroid/view/View;

.field private zzcxl:Landroid/app/Activity;

.field private zzcxm:Z

.field private zzcxn:Z

.field private zzcxo:Z

.field private zzcxp:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private zzcxq:Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzlp;->zzcxl:Landroid/app/Activity;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzlp;->mView:Landroid/view/View;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzlp;->zzcxp:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzlp;->zzcxq:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    return-void
.end method

.method private zzwn()V
    .registers 4

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzlp;->zzcxm:Z

    if-nez v0, :cond_43

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlp;->zzcxp:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlp;->zzcxl:Landroid/app/Activity;

    if-eqz v0, :cond_17

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzgm()Lcom/google/android/gms/internal/zzlb;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzlp;->zzcxl:Landroid/app/Activity;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzlp;->zzcxp:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzlb;->zza(Landroid/app/Activity;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_17
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzhk()Lcom/google/android/gms/internal/zzly;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzlp;->mView:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzlp;->zzcxp:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzly;->zza(Landroid/view/View;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_22
    iget-object v0, p0, Lcom/google/android/gms/internal/zzlp;->zzcxq:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    if-eqz v0, :cond_40

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlp;->zzcxl:Landroid/app/Activity;

    if-eqz v0, :cond_35

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzgm()Lcom/google/android/gms/internal/zzlb;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzlp;->zzcxl:Landroid/app/Activity;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzlp;->zzcxq:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzlb;->zza(Landroid/app/Activity;Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    :cond_35
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzhk()Lcom/google/android/gms/internal/zzly;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzlp;->mView:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzlp;->zzcxq:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzly;->zza(Landroid/view/View;Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    :cond_40
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzlp;->zzcxm:Z

    :cond_43
    return-void
.end method

.method private zzwo()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlp;->zzcxl:Landroid/app/Activity;

    if-nez v0, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzlp;->zzcxm:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlp;->zzcxp:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlp;->zzcxl:Landroid/app/Activity;

    if-eqz v0, :cond_1c

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzgo()Lcom/google/android/gms/internal/zzlc;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzlp;->zzcxl:Landroid/app/Activity;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzlp;->zzcxp:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzlc;->zzb(Landroid/app/Activity;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_1c
    iget-object v0, p0, Lcom/google/android/gms/internal/zzlp;->zzcxq:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlp;->zzcxl:Landroid/app/Activity;

    if-eqz v0, :cond_2f

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzgm()Lcom/google/android/gms/internal/zzlb;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzlp;->zzcxl:Landroid/app/Activity;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzlp;->zzcxq:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzlb;->zzb(Landroid/app/Activity;Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    :cond_2f
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzlp;->zzcxm:Z

    goto :goto_4
.end method


# virtual methods
.method public onAttachedToWindow()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzlp;->zzcxn:Z

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzlp;->zzcxo:Z

    if-eqz v0, :cond_a

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzlp;->zzwn()V

    :cond_a
    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzlp;->zzcxn:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzlp;->zzwo()V

    return-void
.end method

.method public zzl(Landroid/app/Activity;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzlp;->zzcxl:Landroid/app/Activity;

    return-void
.end method

.method public zzwl()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzlp;->zzcxo:Z

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzlp;->zzcxn:Z

    if-eqz v0, :cond_a

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzlp;->zzwn()V

    :cond_a
    return-void
.end method

.method public zzwm()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzlp;->zzcxo:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzlp;->zzwo()V

    return-void
.end method
