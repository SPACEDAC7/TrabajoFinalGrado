.class final Lcom/google/android/gms/iid/MessengerCompat$zza;
.super Lcom/google/android/gms/iid/zzb$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/iid/MessengerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "zza"
.end annotation


# instance fields
.field final synthetic ais:Lcom/google/android/gms/iid/MessengerCompat;

.field handler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/google/android/gms/iid/MessengerCompat;Landroid/os/Handler;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/iid/MessengerCompat$zza;->ais:Lcom/google/android/gms/iid/MessengerCompat;

    invoke-direct {p0}, Lcom/google/android/gms/iid/zzb$zza;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/iid/MessengerCompat$zza;->handler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public send(Landroid/os/Message;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    iput v0, p1, Landroid/os/Message;->arg2:I

    iget-object v0, p0, Lcom/google/android/gms/iid/MessengerCompat$zza;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    return-void
.end method
