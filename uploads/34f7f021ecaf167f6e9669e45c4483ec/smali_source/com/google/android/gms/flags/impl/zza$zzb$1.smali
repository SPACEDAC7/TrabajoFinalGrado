.class final Lcom/google/android/gms/flags/impl/zza$zzb$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/flags/impl/zza$zzb;->zza(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic WG:Landroid/content/SharedPreferences;

.field final synthetic WH:Ljava/lang/String;

.field final synthetic WJ:Ljava/lang/Integer;


# direct methods
.method constructor <init>(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/Integer;)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/flags/impl/zza$zzb$1;->WG:Landroid/content/SharedPreferences;

    iput-object p2, p0, Lcom/google/android/gms/flags/impl/zza$zzb$1;->WH:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/flags/impl/zza$zzb$1;->WJ:Ljava/lang/Integer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic call()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/flags/impl/zza$zzb$1;->zzbhg()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public zzbhg()Ljava/lang/Integer;
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/flags/impl/zza$zzb$1;->WG:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/google/android/gms/flags/impl/zza$zzb$1;->WH:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/flags/impl/zza$zzb$1;->WJ:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
