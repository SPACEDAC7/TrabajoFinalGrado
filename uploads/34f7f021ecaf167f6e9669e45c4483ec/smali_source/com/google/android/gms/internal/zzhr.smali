.class public Lcom/google/android/gms/internal/zzhr;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzji;
.end annotation


# instance fields
.field private final zzbnz:Lcom/google/android/gms/internal/zzmd;

.field private final zzbyr:Z

.field private final zzbys:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzmd;Ljava/util/Map;)V
    .registers 4
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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzhr;->zzbnz:Lcom/google/android/gms/internal/zzmd;

    const-string v0, "forceOrientation"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzhr;->zzbys:Ljava/lang/String;

    const-string v0, "allowOrientationChange"

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    const-string v0, "allowOrientationChange"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzhr;->zzbyr:Z

    :goto_25
    return-void

    :cond_26
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzhr;->zzbyr:Z

    goto :goto_25
.end method


# virtual methods
.method public execute()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhr;->zzbnz:Lcom/google/android/gms/internal/zzmd;

    if-nez v0, :cond_a

    const-string v0, "AdWebView is null"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkx;->zzdi(Ljava/lang/String;)V

    :goto_9
    return-void

    :cond_a
    const-string v0, "portrait"

    iget-object v1, p0, Lcom/google/android/gms/internal/zzhr;->zzbys:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzgo()Lcom/google/android/gms/internal/zzlc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzlc;->zzvx()I

    move-result v0

    :goto_1c
    iget-object v1, p0, Lcom/google/android/gms/internal/zzhr;->zzbnz:Lcom/google/android/gms/internal/zzmd;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/zzmd;->setRequestedOrientation(I)V

    goto :goto_9

    :cond_22
    const-string v0, "landscape"

    iget-object v1, p0, Lcom/google/android/gms/internal/zzhr;->zzbys:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_35

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzgo()Lcom/google/android/gms/internal/zzlc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzlc;->zzvw()I

    move-result v0

    goto :goto_1c

    :cond_35
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzhr;->zzbyr:Z

    if-eqz v0, :cond_3b

    const/4 v0, -0x1

    goto :goto_1c

    :cond_3b
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzgo()Lcom/google/android/gms/internal/zzlc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzlc;->zzvy()I

    move-result v0

    goto :goto_1c
.end method
