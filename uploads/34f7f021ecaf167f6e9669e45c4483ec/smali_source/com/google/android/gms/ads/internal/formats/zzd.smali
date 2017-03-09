.class public Lcom/google/android/gms/ads/internal/formats/zzd;
.super Lcom/google/android/gms/internal/zzek$zza;

# interfaces
.implements Lcom/google/android/gms/ads/internal/formats/zzi$zza;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzji;
.end annotation


# instance fields
.field private mExtras:Landroid/os/Bundle;

.field private zzako:Ljava/lang/Object;

.field private zzbmy:Ljava/lang/String;

.field private zzbmz:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/ads/internal/formats/zzc;",
            ">;"
        }
    .end annotation
.end field

.field private zzbna:Ljava/lang/String;

.field private zzbnb:Lcom/google/android/gms/internal/zzeg;

.field private zzbnc:Ljava/lang/String;

.field private zzbnd:D

.field private zzbne:Ljava/lang/String;

.field private zzbnf:Ljava/lang/String;

.field private zzbng:Lcom/google/android/gms/ads/internal/formats/zza;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private zzbnh:Lcom/google/android/gms/ads/internal/client/zzab;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private zzbni:Landroid/view/View;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private zzbnj:Lcom/google/android/gms/ads/internal/formats/zzi;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/google/android/gms/internal/zzeg;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/ads/internal/formats/zza;Landroid/os/Bundle;Lcom/google/android/gms/ads/internal/client/zzab;Landroid/view/View;)V
    .registers 16
    .param p10    # Lcom/google/android/gms/ads/internal/formats/zza;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzek$zza;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzd;->zzako:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/formats/zzd;->zzbmy:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/formats/zzd;->zzbmz:Ljava/util/List;

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/formats/zzd;->zzbna:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/ads/internal/formats/zzd;->zzbnb:Lcom/google/android/gms/internal/zzeg;

    iput-object p5, p0, Lcom/google/android/gms/ads/internal/formats/zzd;->zzbnc:Ljava/lang/String;

    iput-wide p6, p0, Lcom/google/android/gms/ads/internal/formats/zzd;->zzbnd:D

    iput-object p8, p0, Lcom/google/android/gms/ads/internal/formats/zzd;->zzbne:Ljava/lang/String;

    iput-object p9, p0, Lcom/google/android/gms/ads/internal/formats/zzd;->zzbnf:Ljava/lang/String;

    iput-object p10, p0, Lcom/google/android/gms/ads/internal/formats/zzd;->zzbng:Lcom/google/android/gms/ads/internal/formats/zza;

    iput-object p11, p0, Lcom/google/android/gms/ads/internal/formats/zzd;->mExtras:Landroid/os/Bundle;

    iput-object p12, p0, Lcom/google/android/gms/ads/internal/formats/zzd;->zzbnh:Lcom/google/android/gms/ads/internal/client/zzab;

    iput-object p13, p0, Lcom/google/android/gms/ads/internal/formats/zzd;->zzbni:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public destroy()V
    .registers 4

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/gms/ads/internal/formats/zzd;->zzbmy:Ljava/lang/String;

    iput-object v2, p0, Lcom/google/android/gms/ads/internal/formats/zzd;->zzbmz:Ljava/util/List;

    iput-object v2, p0, Lcom/google/android/gms/ads/internal/formats/zzd;->zzbna:Ljava/lang/String;

    iput-object v2, p0, Lcom/google/android/gms/ads/internal/formats/zzd;->zzbnb:Lcom/google/android/gms/internal/zzeg;

    iput-object v2, p0, Lcom/google/android/gms/ads/internal/formats/zzd;->zzbnc:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/ads/internal/formats/zzd;->zzbnd:D

    iput-object v2, p0, Lcom/google/android/gms/ads/internal/formats/zzd;->zzbne:Ljava/lang/String;

    iput-object v2, p0, Lcom/google/android/gms/ads/internal/formats/zzd;->zzbnf:Ljava/lang/String;

    iput-object v2, p0, Lcom/google/android/gms/ads/internal/formats/zzd;->zzbng:Lcom/google/android/gms/ads/internal/formats/zza;

    iput-object v2, p0, Lcom/google/android/gms/ads/internal/formats/zzd;->mExtras:Landroid/os/Bundle;

    iput-object v2, p0, Lcom/google/android/gms/ads/internal/formats/zzd;->zzako:Ljava/lang/Object;

    iput-object v2, p0, Lcom/google/android/gms/ads/internal/formats/zzd;->zzbnj:Lcom/google/android/gms/ads/internal/formats/zzi;

    iput-object v2, p0, Lcom/google/android/gms/ads/internal/formats/zzd;->zzbnh:Lcom/google/android/gms/ads/internal/client/zzab;

    iput-object v2, p0, Lcom/google/android/gms/ads/internal/formats/zzd;->zzbni:Landroid/view/View;

    return-void
.end method

.method public getBody()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzd;->zzbna:Ljava/lang/String;

    return-object v0
.end method

.method public getCallToAction()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzd;->zzbnc:Ljava/lang/String;

    return-object v0
.end method

.method public getCustomTemplateId()Ljava/lang/String;
    .registers 2

    const-string v0, ""

    return-object v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzd;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public getHeadline()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzd;->zzbmy:Ljava/lang/String;

    return-object v0
.end method

.method public getImages()Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzd;->zzbmz:Ljava/util/List;

    return-object v0
.end method

.method public getPrice()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzd;->zzbnf:Ljava/lang/String;

    return-object v0
.end method

.method public getStarRating()D
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/ads/internal/formats/zzd;->zzbnd:D

    return-wide v0
.end method

.method public getStore()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzd;->zzbne:Ljava/lang/String;

    return-object v0
.end method

.method public zzb(Lcom/google/android/gms/ads/internal/formats/zzi;)V
    .registers 4

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/formats/zzd;->zzako:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iput-object p1, p0, Lcom/google/android/gms/ads/internal/formats/zzd;->zzbnj:Lcom/google/android/gms/ads/internal/formats/zzi;

    monitor-exit v1

    return-void

    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public zzej()Lcom/google/android/gms/ads/internal/client/zzab;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzd;->zzbnh:Lcom/google/android/gms/ads/internal/client/zzab;

    return-object v0
.end method

.method public zzmo()Lcom/google/android/gms/internal/zzeg;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzd;->zzbnb:Lcom/google/android/gms/internal/zzeg;

    return-object v0
.end method

.method public zzmp()Lcom/google/android/gms/dynamic/zzd;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzd;->zzbnj:Lcom/google/android/gms/ads/internal/formats/zzi;

    invoke-static {v0}, Lcom/google/android/gms/dynamic/zze;->zzac(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/zzd;

    move-result-object v0

    return-object v0
.end method

.method public zzmq()Ljava/lang/String;
    .registers 2

    const-string v0, "2"

    return-object v0
.end method

.method public zzmr()Lcom/google/android/gms/ads/internal/formats/zza;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzd;->zzbng:Lcom/google/android/gms/ads/internal/formats/zza;

    return-object v0
.end method

.method public zzms()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzd;->zzbni:Landroid/view/View;

    return-object v0
.end method
