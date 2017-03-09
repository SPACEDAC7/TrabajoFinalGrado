.class public final Lcom/google/android/gms/common/images/zza$zzb;
.super Lcom/google/android/gms/common/images/zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/images/zza;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zzb"
.end annotation


# instance fields
.field private CK:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;I)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, v0, p2}, Lcom/google/android/gms/common/images/zza;-><init>(Landroid/net/Uri;I)V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzc;->zzu(Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/common/images/zza$zzb;->CK:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public constructor <init>(Landroid/widget/ImageView;Landroid/net/Uri;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/common/images/zza;-><init>(Landroid/net/Uri;I)V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzc;->zzu(Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/common/images/zza$zzb;->CK:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private zza(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;ZZZ)V
    .registers 11

    const/4 v2, 0x0

    if-nez p4, :cond_1d

    if-nez p5, :cond_1d

    const/4 v0, 0x1

    move v3, v0

    :goto_7
    if-eqz v3, :cond_1f

    instance-of v0, p1, Lcom/google/android/gms/internal/zzsk;

    if-eqz v0, :cond_1f

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/zzsk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzsk;->zzauy()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/common/images/zza$zzb;->CF:I

    if-eqz v1, :cond_1f

    iget v1, p0, Lcom/google/android/gms/common/images/zza$zzb;->CF:I

    if-ne v0, v1, :cond_1f

    :cond_1c
    :goto_1c
    return-void

    :cond_1d
    move v3, v2

    goto :goto_7

    :cond_1f
    invoke-virtual {p0, p3, p4}, Lcom/google/android/gms/common/images/zza$zzb;->zzc(ZZ)Z

    move-result v4

    if-eqz v4, :cond_54

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/common/images/zza$zzb;->zza(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Lcom/google/android/gms/internal/zzsj;

    move-result-object v0

    :goto_2d
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    instance-of v1, p1, Lcom/google/android/gms/internal/zzsk;

    if-eqz v1, :cond_46

    check-cast p1, Lcom/google/android/gms/internal/zzsk;

    if-eqz p5, :cond_50

    iget-object v1, p0, Lcom/google/android/gms/common/images/zza$zzb;->CD:Lcom/google/android/gms/common/images/zza$zza;

    iget-object v1, v1, Lcom/google/android/gms/common/images/zza$zza;->uri:Landroid/net/Uri;

    :goto_3c
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/zzsk;->zzr(Landroid/net/Uri;)V

    if-eqz v3, :cond_52

    iget v1, p0, Lcom/google/android/gms/common/images/zza$zzb;->CF:I

    :goto_43
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/zzsk;->zzgi(I)V

    :cond_46
    if-eqz v4, :cond_1c

    check-cast v0, Lcom/google/android/gms/internal/zzsj;

    const/16 v1, 0xfa

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzsj;->startTransition(I)V

    goto :goto_1c

    :cond_50
    const/4 v1, 0x0

    goto :goto_3c

    :cond_52
    move v1, v2

    goto :goto_43

    :cond_54
    move-object v0, p2

    goto :goto_2d
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    instance-of v0, p1, Lcom/google/android/gms/common/images/zza$zzb;

    if-nez v0, :cond_7

    :goto_6
    return v3

    :cond_7
    if-ne p0, p1, :cond_b

    move v3, v2

    goto :goto_6

    :cond_b
    check-cast p1, Lcom/google/android/gms/common/images/zza$zzb;

    iget-object v0, p0, Lcom/google/android/gms/common/images/zza$zzb;->CK:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p1, Lcom/google/android/gms/common/images/zza$zzb;->CK:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    if-eqz v1, :cond_2a

    if-eqz v0, :cond_2a

    invoke-static {v1, v0}, Lcom/google/android/gms/common/internal/zzz;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    move v0, v2

    :goto_28
    move v3, v0

    goto :goto_6

    :cond_2a
    move v0, v3

    goto :goto_28
.end method

.method public hashCode()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method protected zza(Landroid/graphics/drawable/Drawable;ZZZ)V
    .registers 11

    iget-object v0, p0, Lcom/google/android/gms/common/images/zza$zzb;->CK:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    if-eqz v1, :cond_12

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/common/images/zza$zzb;->zza(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;ZZZ)V

    :cond_12
    return-void
.end method
