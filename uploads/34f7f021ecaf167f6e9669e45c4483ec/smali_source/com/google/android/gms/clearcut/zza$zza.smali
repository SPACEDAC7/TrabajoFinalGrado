.class public Lcom/google/android/gms/clearcut/zza$zza;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/clearcut/zza;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "zza"
.end annotation


# instance fields
.field private wd:Ljava/lang/String;

.field private we:I

.field private wf:Ljava/lang/String;

.field private wg:Ljava/lang/String;

.field private wi:I

.field private final wm:Lcom/google/android/gms/clearcut/zza$zzc;

.field private wn:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private wo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private wp:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private wq:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[B>;"
        }
    .end annotation
.end field

.field private wr:Z

.field private final ws:Lcom/google/android/gms/internal/zzasf$zzc;

.field private wt:Z

.field final synthetic wu:Lcom/google/android/gms/clearcut/zza;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/clearcut/zza;[B)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/clearcut/zza$zza;-><init>(Lcom/google/android/gms/clearcut/zza;[BLcom/google/android/gms/clearcut/zza$zzc;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/clearcut/zza;[BLcom/google/android/gms/clearcut/zza$1;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/clearcut/zza$zza;-><init>(Lcom/google/android/gms/clearcut/zza;[B)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/clearcut/zza;[BLcom/google/android/gms/clearcut/zza$zzc;)V
    .registers 8

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/clearcut/zza$zza;->wu:Lcom/google/android/gms/clearcut/zza;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/clearcut/zza$zza;->wu:Lcom/google/android/gms/clearcut/zza;

    invoke-static {v0}, Lcom/google/android/gms/clearcut/zza;->zza(Lcom/google/android/gms/clearcut/zza;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/clearcut/zza$zza;->we:I

    iget-object v0, p0, Lcom/google/android/gms/clearcut/zza$zza;->wu:Lcom/google/android/gms/clearcut/zza;

    invoke-static {v0}, Lcom/google/android/gms/clearcut/zza;->zzb(Lcom/google/android/gms/clearcut/zza;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/clearcut/zza$zza;->wd:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/clearcut/zza$zza;->wu:Lcom/google/android/gms/clearcut/zza;

    invoke-static {v0}, Lcom/google/android/gms/clearcut/zza;->zzc(Lcom/google/android/gms/clearcut/zza;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/clearcut/zza$zza;->wf:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/clearcut/zza$zza;->wu:Lcom/google/android/gms/clearcut/zza;

    invoke-static {v0}, Lcom/google/android/gms/clearcut/zza;->zzd(Lcom/google/android/gms/clearcut/zza;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/clearcut/zza$zza;->wg:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/clearcut/zza$zza;->wu:Lcom/google/android/gms/clearcut/zza;

    invoke-static {v0}, Lcom/google/android/gms/clearcut/zza;->zze(Lcom/google/android/gms/clearcut/zza;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/clearcut/zza$zza;->wi:I

    iput-object v1, p0, Lcom/google/android/gms/clearcut/zza$zza;->wn:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/google/android/gms/clearcut/zza$zza;->wo:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/google/android/gms/clearcut/zza$zza;->wp:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/google/android/gms/clearcut/zza$zza;->wq:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/clearcut/zza$zza;->wr:Z

    new-instance v0, Lcom/google/android/gms/internal/zzasf$zzc;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzasf$zzc;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/clearcut/zza$zza;->ws:Lcom/google/android/gms/internal/zzasf$zzc;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/clearcut/zza$zza;->wt:Z

    invoke-static {p1}, Lcom/google/android/gms/clearcut/zza;->zzc(Lcom/google/android/gms/clearcut/zza;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/clearcut/zza$zza;->wf:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/clearcut/zza;->zzd(Lcom/google/android/gms/clearcut/zza;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/clearcut/zza$zza;->wg:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/clearcut/zza$zza;->ws:Lcom/google/android/gms/internal/zzasf$zzc;

    invoke-static {p1}, Lcom/google/android/gms/clearcut/zza;->zzf(Lcom/google/android/gms/clearcut/zza;)Lcom/google/android/gms/common/util/zze;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/zze;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/google/android/gms/internal/zzasf$zzc;->buh:J

    iget-object v0, p0, Lcom/google/android/gms/clearcut/zza$zza;->ws:Lcom/google/android/gms/internal/zzasf$zzc;

    invoke-static {p1}, Lcom/google/android/gms/clearcut/zza;->zzf(Lcom/google/android/gms/clearcut/zza;)Lcom/google/android/gms/common/util/zze;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/zze;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/google/android/gms/internal/zzasf$zzc;->bui:J

    iget-object v0, p0, Lcom/google/android/gms/clearcut/zza$zza;->ws:Lcom/google/android/gms/internal/zzasf$zzc;

    invoke-static {p1}, Lcom/google/android/gms/clearcut/zza;->zzg(Lcom/google/android/gms/clearcut/zza;)Lcom/google/android/gms/clearcut/zza$zzd;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/clearcut/zza$zza;->ws:Lcom/google/android/gms/internal/zzasf$zzc;

    iget-wide v2, v2, Lcom/google/android/gms/internal/zzasf$zzc;->buh:J

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/clearcut/zza$zzd;->zzag(J)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/google/android/gms/internal/zzasf$zzc;->bus:J

    if-eqz p2, :cond_7d

    iget-object v0, p0, Lcom/google/android/gms/clearcut/zza$zza;->ws:Lcom/google/android/gms/internal/zzasf$zzc;

    iput-object p2, v0, Lcom/google/android/gms/internal/zzasf$zzc;->buo:[B

    :cond_7d
    iput-object p3, p0, Lcom/google/android/gms/clearcut/zza$zza;->wm:Lcom/google/android/gms/clearcut/zza$zzc;

    return-void
.end method


# virtual methods
.method public zzaqg()Lcom/google/android/gms/clearcut/LogEventParcelable;
    .registers 14

    const/4 v12, 0x0

    new-instance v11, Lcom/google/android/gms/clearcut/LogEventParcelable;

    new-instance v0, Lcom/google/android/gms/playlog/internal/PlayLoggerContext;

    iget-object v1, p0, Lcom/google/android/gms/clearcut/zza$zza;->wu:Lcom/google/android/gms/clearcut/zza;

    invoke-static {v1}, Lcom/google/android/gms/clearcut/zza;->zzi(Lcom/google/android/gms/clearcut/zza;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/clearcut/zza$zza;->wu:Lcom/google/android/gms/clearcut/zza;

    invoke-static {v2}, Lcom/google/android/gms/clearcut/zza;->zzj(Lcom/google/android/gms/clearcut/zza;)I

    move-result v2

    iget v3, p0, Lcom/google/android/gms/clearcut/zza$zza;->we:I

    iget-object v4, p0, Lcom/google/android/gms/clearcut/zza$zza;->wd:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/clearcut/zza$zza;->wf:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/gms/clearcut/zza$zza;->wg:Ljava/lang/String;

    iget-object v7, p0, Lcom/google/android/gms/clearcut/zza$zza;->wu:Lcom/google/android/gms/clearcut/zza;

    invoke-static {v7}, Lcom/google/android/gms/clearcut/zza;->zzh(Lcom/google/android/gms/clearcut/zza;)Z

    move-result v7

    iget v8, p0, Lcom/google/android/gms/clearcut/zza$zza;->wi:I

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/playlog/internal/PlayLoggerContext;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    iget-object v3, p0, Lcom/google/android/gms/clearcut/zza$zza;->ws:Lcom/google/android/gms/internal/zzasf$zzc;

    iget-object v4, p0, Lcom/google/android/gms/clearcut/zza$zza;->wm:Lcom/google/android/gms/clearcut/zza$zzc;

    invoke-static {v12}, Lcom/google/android/gms/clearcut/zza;->zze(Ljava/util/ArrayList;)[I

    move-result-object v6

    invoke-static {v12}, Lcom/google/android/gms/clearcut/zza;->zzf(Ljava/util/ArrayList;)[Ljava/lang/String;

    move-result-object v7

    invoke-static {v12}, Lcom/google/android/gms/clearcut/zza;->zze(Ljava/util/ArrayList;)[I

    move-result-object v8

    invoke-static {v12}, Lcom/google/android/gms/clearcut/zza;->zzg(Ljava/util/ArrayList;)[[B

    move-result-object v9

    iget-boolean v10, p0, Lcom/google/android/gms/clearcut/zza$zza;->wr:Z

    move-object v1, v11

    move-object v2, v0

    move-object v5, v12

    invoke-direct/range {v1 .. v10}, Lcom/google/android/gms/clearcut/LogEventParcelable;-><init>(Lcom/google/android/gms/playlog/internal/PlayLoggerContext;Lcom/google/android/gms/internal/zzasf$zzc;Lcom/google/android/gms/clearcut/zza$zzc;Lcom/google/android/gms/clearcut/zza$zzc;[I[Ljava/lang/String;[I[[BZ)V

    return-object v11
.end method

.method public zzaqh()Lcom/google/android/gms/common/api/PendingResult;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/clearcut/zza$zza;->wt:Z

    if-eqz v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "do not reuse LogEventBuilder"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/clearcut/zza$zza;->wt:Z

    invoke-virtual {p0}, Lcom/google/android/gms/clearcut/zza$zza;->zzaqg()Lcom/google/android/gms/clearcut/LogEventParcelable;

    move-result-object v0

    iget-object v1, v0, Lcom/google/android/gms/clearcut/LogEventParcelable;->wv:Lcom/google/android/gms/playlog/internal/PlayLoggerContext;

    iget-object v2, p0, Lcom/google/android/gms/clearcut/zza$zza;->wu:Lcom/google/android/gms/clearcut/zza;

    invoke-static {v2}, Lcom/google/android/gms/clearcut/zza;->zzk(Lcom/google/android/gms/clearcut/zza;)Lcom/google/android/gms/clearcut/zza$zzb;

    move-result-object v2

    iget-object v3, v1, Lcom/google/android/gms/playlog/internal/PlayLoggerContext;->aAG:Ljava/lang/String;

    iget v1, v1, Lcom/google/android/gms/playlog/internal/PlayLoggerContext;->aAC:I

    invoke-interface {v2, v3, v1}, Lcom/google/android/gms/clearcut/zza$zzb;->zzh(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_30

    iget-object v1, p0, Lcom/google/android/gms/clearcut/zza$zza;->wu:Lcom/google/android/gms/clearcut/zza;

    invoke-static {v1}, Lcom/google/android/gms/clearcut/zza;->zzl(Lcom/google/android/gms/clearcut/zza;)Lcom/google/android/gms/clearcut/zzb;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/google/android/gms/clearcut/zzb;->zza(Lcom/google/android/gms/clearcut/LogEventParcelable;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    :goto_2f
    return-object v0

    :cond_30
    sget-object v0, Lcom/google/android/gms/common/api/Status;->xZ:Lcom/google/android/gms/common/api/Status;

    invoke-static {v0}, Lcom/google/android/gms/common/api/PendingResults;->immediatePendingResult(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    goto :goto_2f
.end method

.method public zze(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/clearcut/zza$zza;->zzaqh()Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    return-object v0
.end method

.method public zzfl(I)Lcom/google/android/gms/clearcut/zza$zza;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/clearcut/zza$zza;->ws:Lcom/google/android/gms/internal/zzasf$zzc;

    iput p1, v0, Lcom/google/android/gms/internal/zzasf$zzc;->buk:I

    return-object p0
.end method

.method public zzfm(I)Lcom/google/android/gms/clearcut/zza$zza;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/clearcut/zza$zza;->ws:Lcom/google/android/gms/internal/zzasf$zzc;

    iput p1, v0, Lcom/google/android/gms/internal/zzasf$zzc;->zzajo:I

    return-object p0
.end method
