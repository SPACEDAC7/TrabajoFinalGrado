.class public final Lcom/google/android/gms/internal/zzez;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzfe;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzji;
.end annotation


# instance fields
.field private final zzbpi:Lcom/google/android/gms/internal/zzfa;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzfa;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzez;->zzbpi:Lcom/google/android/gms/internal/zzfa;

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zzmd;Ljava/util/Map;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzmd;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "name"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_10

    const-string v0, "App event with no name parameter."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkx;->zzdi(Ljava/lang/String;)V

    :goto_f
    return-void

    :cond_10
    iget-object v2, p0, Lcom/google/android/gms/internal/zzez;->zzbpi:Lcom/google/android/gms/internal/zzfa;

    const-string v1, "info"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v2, v0, v1}, Lcom/google/android/gms/internal/zzfa;->onAppEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f
.end method
