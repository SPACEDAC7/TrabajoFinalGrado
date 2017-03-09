.class public final Lcom/google/android/gms/internal/zzjn;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzji;
.end annotation


# instance fields
.field private final zzako:Ljava/lang/Object;

.field private zzcec:Ljava/lang/String;

.field private zzcnz:Ljava/lang/String;

.field private zzcoa:Lcom/google/android/gms/internal/zzlq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzlq",
            "<",
            "Lcom/google/android/gms/internal/zzjq;",
            ">;"
        }
    .end annotation
.end field

.field zzcob:Lcom/google/android/gms/internal/zzgh$zzc;

.field public final zzcoc:Lcom/google/android/gms/internal/zzfe;

.field public final zzcod:Lcom/google/android/gms/internal/zzfe;

.field public final zzcoe:Lcom/google/android/gms/internal/zzfe;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzjn;->zzako:Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/zzlq;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzlq;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzjn;->zzcoa:Lcom/google/android/gms/internal/zzlq;

    new-instance v0, Lcom/google/android/gms/internal/zzjn$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzjn$1;-><init>(Lcom/google/android/gms/internal/zzjn;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzjn;->zzcoc:Lcom/google/android/gms/internal/zzfe;

    new-instance v0, Lcom/google/android/gms/internal/zzjn$2;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzjn$2;-><init>(Lcom/google/android/gms/internal/zzjn;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzjn;->zzcod:Lcom/google/android/gms/internal/zzfe;

    new-instance v0, Lcom/google/android/gms/internal/zzjn$3;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzjn$3;-><init>(Lcom/google/android/gms/internal/zzjn;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzjn;->zzcoe:Lcom/google/android/gms/internal/zzfe;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzjn;->zzcnz:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzjn;->zzcec:Ljava/lang/String;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzjn;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjn;->zzako:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzjn;)Lcom/google/android/gms/internal/zzlq;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjn;->zzcoa:Lcom/google/android/gms/internal/zzlq;

    return-object v0
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/zzjn;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjn;->zzcec:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/zzjn;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjn;->zzcnz:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public zzb(Lcom/google/android/gms/internal/zzgh$zzc;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzjn;->zzcob:Lcom/google/android/gms/internal/zzgh$zzc;

    return-void
.end method

.method public zztj()Lcom/google/android/gms/internal/zzgh$zzc;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjn;->zzcob:Lcom/google/android/gms/internal/zzgh$zzc;

    return-object v0
.end method

.method public zztk()Ljava/util/concurrent/Future;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/google/android/gms/internal/zzjq;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjn;->zzcoa:Lcom/google/android/gms/internal/zzlq;

    return-object v0
.end method

.method public zztl()V
    .registers 1

    return-void
.end method
