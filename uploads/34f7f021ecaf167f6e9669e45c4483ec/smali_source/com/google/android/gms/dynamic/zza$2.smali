.class Lcom/google/android/gms/dynamic/zza$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/dynamic/zza$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/dynamic/zza;->onInflate(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic PX:Lcom/google/android/gms/dynamic/zza;

.field final synthetic PY:Landroid/os/Bundle;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic zzavg:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/google/android/gms/dynamic/zza;Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/Bundle;)V
    .registers 5

    iput-object p1, p0, Lcom/google/android/gms/dynamic/zza$2;->PX:Lcom/google/android/gms/dynamic/zza;

    iput-object p2, p0, Lcom/google/android/gms/dynamic/zza$2;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/google/android/gms/dynamic/zza$2;->PY:Landroid/os/Bundle;

    iput-object p4, p0, Lcom/google/android/gms/dynamic/zza$2;->zzavg:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getState()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public zzb(Lcom/google/android/gms/dynamic/LifecycleDelegate;)V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/dynamic/zza$2;->PX:Lcom/google/android/gms/dynamic/zza;

    invoke-static {v0}, Lcom/google/android/gms/dynamic/zza;->zzb(Lcom/google/android/gms/dynamic/zza;)Lcom/google/android/gms/dynamic/LifecycleDelegate;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/dynamic/zza$2;->val$activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/google/android/gms/dynamic/zza$2;->PY:Landroid/os/Bundle;

    iget-object v3, p0, Lcom/google/android/gms/dynamic/zza$2;->zzavg:Landroid/os/Bundle;

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/dynamic/LifecycleDelegate;->onInflate(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/Bundle;)V

    return-void
.end method
