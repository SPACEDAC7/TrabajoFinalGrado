.class public Lcom/google/android/gms/internal/zzfk;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzfe;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzji;
.end annotation


# static fields
.field static final zzbqv:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zzbqt:Lcom/google/android/gms/ads/internal/zze;

.field private final zzbqu:Lcom/google/android/gms/internal/zzhq;


# direct methods
.method static constructor <clinit>()V
    .registers 12

    const-string v0, "resize"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "playVideo"

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string/jumbo v4, "storePicture"

    const/4 v5, 0x3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "createCalendarEvent"

    const/4 v7, 0x4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "setOrientationProperties"

    const/4 v9, 0x5

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const-string v10, "closeResizedAd"

    const/4 v11, 0x6

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static/range {v0 .. v11}, Lcom/google/android/gms/common/util/zzf;->zza(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzfk;->zzbqv:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/ads/internal/zze;Lcom/google/android/gms/internal/zzhq;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzfk;->zzbqt:Lcom/google/android/gms/ads/internal/zze;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzfk;->zzbqu:Lcom/google/android/gms/internal/zzhq;

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zzmd;Ljava/util/Map;)V
    .registers 5
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

    const-string v0, "a"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v1, Lcom/google/android/gms/internal/zzfk;->zzbqv:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2a

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfk;->zzbqt:Lcom/google/android/gms/ads/internal/zze;

    if-eqz v1, :cond_2a

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfk;->zzbqt:Lcom/google/android/gms/ads/internal/zze;

    invoke-virtual {v1}, Lcom/google/android/gms/ads/internal/zze;->zzfe()Z

    move-result v1

    if-nez v1, :cond_2a

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfk;->zzbqt:Lcom/google/android/gms/ads/internal/zze;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/zze;->zzy(Ljava/lang/String;)V

    :goto_29
    return-void

    :cond_2a
    packed-switch v0, :pswitch_data_5c

    :pswitch_2d
    const-string v0, "Unknown MRAID command called."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkx;->zzdh(Ljava/lang/String;)V

    goto :goto_29

    :pswitch_33
    iget-object v0, p0, Lcom/google/android/gms/internal/zzfk;->zzbqu:Lcom/google/android/gms/internal/zzhq;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/zzhq;->execute(Ljava/util/Map;)V

    goto :goto_29

    :pswitch_39
    new-instance v0, Lcom/google/android/gms/internal/zzhp;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/zzhp;-><init>(Lcom/google/android/gms/internal/zzmd;Ljava/util/Map;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzhp;->execute()V

    goto :goto_29

    :pswitch_42
    new-instance v0, Lcom/google/android/gms/internal/zzhs;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/zzhs;-><init>(Lcom/google/android/gms/internal/zzmd;Ljava/util/Map;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzhs;->execute()V

    goto :goto_29

    :pswitch_4b
    new-instance v0, Lcom/google/android/gms/internal/zzhr;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/zzhr;-><init>(Lcom/google/android/gms/internal/zzmd;Ljava/util/Map;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzhr;->execute()V

    goto :goto_29

    :pswitch_54
    iget-object v0, p0, Lcom/google/android/gms/internal/zzfk;->zzbqu:Lcom/google/android/gms/internal/zzhq;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzhq;->zzt(Z)V

    goto :goto_29

    nop

    :pswitch_data_5c
    .packed-switch 0x1
        :pswitch_33
        :pswitch_2d
        :pswitch_42
        :pswitch_39
        :pswitch_4b
        :pswitch_54
    .end packed-switch
.end method
