.class public abstract Lcom/google/android/gms/internal/zzdw;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzji;
.end annotation


# static fields
.field public static final zzblq:Lcom/google/android/gms/internal/zzdw;
    .annotation runtime Lcom/google/android/gms/internal/zzji;
    .end annotation
.end field

.field public static final zzblr:Lcom/google/android/gms/internal/zzdw;
    .annotation runtime Lcom/google/android/gms/internal/zzji;
    .end annotation
.end field

.field public static final zzbls:Lcom/google/android/gms/internal/zzdw;
    .annotation runtime Lcom/google/android/gms/internal/zzji;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/zzdw$1;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzdw$1;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzdw;->zzblq:Lcom/google/android/gms/internal/zzdw;

    new-instance v0, Lcom/google/android/gms/internal/zzdw$2;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzdw$2;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzdw;->zzblr:Lcom/google/android/gms/internal/zzdw;

    new-instance v0, Lcom/google/android/gms/internal/zzdw$3;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzdw$3;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzdw;->zzbls:Lcom/google/android/gms/internal/zzdw;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0, p3}, Lcom/google/android/gms/internal/zzdw;->zzf(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public abstract zzf(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
.end method
