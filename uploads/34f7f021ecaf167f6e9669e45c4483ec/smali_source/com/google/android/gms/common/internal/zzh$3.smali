.class final Lcom/google/android/gms/common/internal/zzh$3;
.super Lcom/google/android/gms/common/internal/zzh;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/common/internal/zzh;->zza(Lcom/google/android/gms/internal/zzrp;Landroid/content/Intent;I)Lcom/google/android/gms/common/internal/zzh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic DP:Lcom/google/android/gms/internal/zzrp;

.field final synthetic val$intent:Landroid/content/Intent;

.field final synthetic val$requestCode:I


# direct methods
.method constructor <init>(Landroid/content/Intent;Lcom/google/android/gms/internal/zzrp;I)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/common/internal/zzh$3;->val$intent:Landroid/content/Intent;

    iput-object p2, p0, Lcom/google/android/gms/common/internal/zzh$3;->DP:Lcom/google/android/gms/internal/zzrp;

    iput p3, p0, Lcom/google/android/gms/common/internal/zzh$3;->val$requestCode:I

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/zzh;-><init>()V

    return-void
.end method


# virtual methods
.method public zzavx()V
    .registers 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzh$3;->val$intent:Landroid/content/Intent;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzh$3;->DP:Lcom/google/android/gms/internal/zzrp;

    iget-object v1, p0, Lcom/google/android/gms/common/internal/zzh$3;->val$intent:Landroid/content/Intent;

    iget v2, p0, Lcom/google/android/gms/common/internal/zzh$3;->val$requestCode:I

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/zzrp;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_d
    return-void
.end method
