.class public Lcom/google/android/gms/ads/internal/zzv$zza;
.super Landroid/widget/ViewSwitcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/ads/internal/zzv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "zza"
.end annotation


# instance fields
.field private final zzasr:Lcom/google/android/gms/internal/zzle;

.field private final zzass:Lcom/google/android/gms/internal/zzlp;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private zzast:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V
    .registers 7

    invoke-direct {p0, p1}, Landroid/widget/ViewSwitcher;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/google/android/gms/internal/zzle;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzle;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/zzv$zza;->zzasr:Lcom/google/android/gms/internal/zzle;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzv$zza;->zzasr:Lcom/google/android/gms/internal/zzle;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/zzle;->setAdUnitId(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/zzv$zza;->zzast:Z

    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_25

    new-instance v0, Lcom/google/android/gms/internal/zzlp;

    check-cast p1, Landroid/app/Activity;

    invoke-direct {v0, p1, p0, p3, p4}, Lcom/google/android/gms/internal/zzlp;-><init>(Landroid/app/Activity;Landroid/view/View;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/zzv$zza;->zzass:Lcom/google/android/gms/internal/zzlp;

    :goto_1f
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzv$zza;->zzass:Lcom/google/android/gms/internal/zzlp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzlp;->zzwl()V

    return-void

    :cond_25
    new-instance v0, Lcom/google/android/gms/internal/zzlp;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0, p3, p4}, Lcom/google/android/gms/internal/zzlp;-><init>(Landroid/app/Activity;Landroid/view/View;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/zzv$zza;->zzass:Lcom/google/android/gms/internal/zzlp;

    goto :goto_1f
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .registers 2

    invoke-super {p0}, Landroid/widget/ViewSwitcher;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzv$zza;->zzass:Lcom/google/android/gms/internal/zzlp;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzv$zza;->zzass:Lcom/google/android/gms/internal/zzlp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzlp;->onAttachedToWindow()V

    :cond_c
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    invoke-super {p0}, Landroid/widget/ViewSwitcher;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzv$zza;->zzass:Lcom/google/android/gms/internal/zzlp;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzv$zza;->zzass:Lcom/google/android/gms/internal/zzlp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzlp;->onDetachedFromWindow()V

    :cond_c
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/zzv$zza;->zzast:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzv$zza;->zzasr:Lcom/google/android/gms/internal/zzle;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzle;->zzg(Landroid/view/MotionEvent;)V

    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public removeAllViews()V
    .registers 5

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    :goto_7
    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/zzv$zza;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_20

    invoke-virtual {p0, v1}, Lcom/google/android/gms/ads/internal/zzv$zza;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1c

    instance-of v3, v0, Lcom/google/android/gms/internal/zzmd;

    if-eqz v3, :cond_1c

    check-cast v0, Lcom/google/android/gms/internal/zzmd;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1c
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_7

    :cond_20
    invoke-super {p0}, Landroid/widget/ViewSwitcher;->removeAllViews()V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_27
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_37

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzmd;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzmd;->destroy()V

    goto :goto_27

    :cond_37
    return-void
.end method

.method public zzhr()V
    .registers 2

    const-string v0, "Disable position monitoring on adFrame."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkx;->v(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzv$zza;->zzass:Lcom/google/android/gms/internal/zzlp;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzv$zza;->zzass:Lcom/google/android/gms/internal/zzlp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzlp;->zzwm()V

    :cond_e
    return-void
.end method

.method public zzhv()Lcom/google/android/gms/internal/zzle;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzv$zza;->zzasr:Lcom/google/android/gms/internal/zzle;

    return-object v0
.end method

.method public zzhw()V
    .registers 2

    const-string v0, "Enable debug gesture detector on adFrame."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkx;->v(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/zzv$zza;->zzast:Z

    return-void
.end method

.method public zzhx()V
    .registers 2

    const-string v0, "Disable debug gesture detector on adFrame."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkx;->v(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/zzv$zza;->zzast:Z

    return-void
.end method
