.class Lcom/google/android/gms/gcm/GcmListenerService$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/gcm/GcmListenerService;->zzl(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic agM:Lcom/google/android/gms/gcm/GcmListenerService;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/google/android/gms/gcm/GcmListenerService;Landroid/content/Intent;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/gcm/GcmListenerService$1;->agM:Lcom/google/android/gms/gcm/GcmListenerService;

    iput-object p2, p0, Lcom/google/android/gms/gcm/GcmListenerService$1;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/gcm/GcmListenerService$1;->agM:Lcom/google/android/gms/gcm/GcmListenerService;

    iget-object v1, p0, Lcom/google/android/gms/gcm/GcmListenerService$1;->val$intent:Landroid/content/Intent;

    invoke-static {v0, v1}, Lcom/google/android/gms/gcm/GcmListenerService;->zza(Lcom/google/android/gms/gcm/GcmListenerService;Landroid/content/Intent;)V

    return-void
.end method
