.class Lcom/google/android/gms/analytics/internal/zzak$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/analytics/internal/zzw;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/analytics/internal/zzak;->onStartCommand(Landroid/content/Intent;II)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aA:Lcom/google/android/gms/analytics/internal/zzaf;

.field final synthetic aB:I

.field final synthetic fM:Lcom/google/android/gms/analytics/internal/zzf;

.field final synthetic fN:Lcom/google/android/gms/analytics/internal/zzak;


# direct methods
.method constructor <init>(Lcom/google/android/gms/analytics/internal/zzak;ILcom/google/android/gms/analytics/internal/zzf;Lcom/google/android/gms/analytics/internal/zzaf;)V
    .registers 5

    iput-object p1, p0, Lcom/google/android/gms/analytics/internal/zzak$1;->fN:Lcom/google/android/gms/analytics/internal/zzak;

    iput p2, p0, Lcom/google/android/gms/analytics/internal/zzak$1;->aB:I

    iput-object p3, p0, Lcom/google/android/gms/analytics/internal/zzak$1;->fM:Lcom/google/android/gms/analytics/internal/zzf;

    iput-object p4, p0, Lcom/google/android/gms/analytics/internal/zzak$1;->aA:Lcom/google/android/gms/analytics/internal/zzaf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zzf(Ljava/lang/Throwable;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzak$1;->fN:Lcom/google/android/gms/analytics/internal/zzak;

    invoke-static {v0}, Lcom/google/android/gms/analytics/internal/zzak;->zzb(Lcom/google/android/gms/analytics/internal/zzak;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/analytics/internal/zzak$1$1;

    invoke-direct {v1, p0}, Lcom/google/android/gms/analytics/internal/zzak$1$1;-><init>(Lcom/google/android/gms/analytics/internal/zzak$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
