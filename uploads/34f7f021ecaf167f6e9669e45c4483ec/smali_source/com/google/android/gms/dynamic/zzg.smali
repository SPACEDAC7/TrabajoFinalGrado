.class public abstract Lcom/google/android/gms/dynamic/zzg;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/dynamic/zzg$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final Qe:Ljava/lang/String;

.field private Qf:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/dynamic/zzg;->Qe:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected abstract zzc(Landroid/os/IBinder;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            ")TT;"
        }
    .end annotation
.end method

.method protected final zzcr(Landroid/content/Context;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/dynamic/zzg$zza;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/dynamic/zzg;->Qf:Ljava/lang/Object;

    if-nez v0, :cond_2b

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzaa;->zzy(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lcom/google/android/gms/common/zze;->getRemoteContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_15

    new-instance v0, Lcom/google/android/gms/dynamic/zzg$zza;

    const-string v1, "Could not get remote context."

    invoke-direct {v0, v1}, Lcom/google/android/gms/dynamic/zzg$zza;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_15
    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    :try_start_19
    iget-object v1, p0, Lcom/google/android/gms/dynamic/zzg;->Qe:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/dynamic/zzg;->zzc(Landroid/os/IBinder;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/dynamic/zzg;->Qf:Ljava/lang/Object;
    :try_end_2b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_19 .. :try_end_2b} :catch_2e
    .catch Ljava/lang/InstantiationException; {:try_start_19 .. :try_end_2b} :catch_37
    .catch Ljava/lang/IllegalAccessException; {:try_start_19 .. :try_end_2b} :catch_40

    :cond_2b
    iget-object v0, p0, Lcom/google/android/gms/dynamic/zzg;->Qf:Ljava/lang/Object;

    return-object v0

    :catch_2e
    move-exception v0

    new-instance v1, Lcom/google/android/gms/dynamic/zzg$zza;

    const-string v2, "Could not load creator class."

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/dynamic/zzg$zza;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_37
    move-exception v0

    new-instance v1, Lcom/google/android/gms/dynamic/zzg$zza;

    const-string v2, "Could not instantiate creator."

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/dynamic/zzg$zza;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_40
    move-exception v0

    new-instance v1, Lcom/google/android/gms/dynamic/zzg$zza;

    const-string v2, "Could not access creator."

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/dynamic/zzg$zza;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
