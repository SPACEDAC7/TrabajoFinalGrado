.class public Lcom/google/android/gms/internal/zzlr;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzlt;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzji;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/zzlt",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final zzcyd:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final zzcyg:Lcom/google/android/gms/internal/zzlu;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzlr;->zzcyd:Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/zzlu;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzlu;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzlr;->zzcyg:Lcom/google/android/gms/internal/zzlu;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlr;->zzcyg:Lcom/google/android/gms/internal/zzlu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzlu;->zzwt()V

    return-void
.end method


# virtual methods
.method public cancel(Z)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public get()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlr;->zzcyd:Ljava/lang/Object;

    return-object v0
.end method

.method public get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlr;->zzcyd:Ljava/lang/Object;

    return-object v0
.end method

.method public isCancelled()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public isDone()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public zzc(Ljava/lang/Runnable;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlr;->zzcyg:Lcom/google/android/gms/internal/zzlu;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzlu;->zzc(Ljava/lang/Runnable;)V

    return-void
.end method
