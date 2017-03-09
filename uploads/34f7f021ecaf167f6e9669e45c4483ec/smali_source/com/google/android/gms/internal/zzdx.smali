.class public Lcom/google/android/gms/internal/zzdx;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzji;
.end annotation


# instance fields
.field private final zzblt:J

.field private final zzblu:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final zzblv:Lcom/google/android/gms/internal/zzdx;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(JLjava/lang/String;Lcom/google/android/gms/internal/zzdx;)V
    .registers 6
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/google/android/gms/internal/zzdx;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/google/android/gms/internal/zzdx;->zzblt:J

    iput-object p3, p0, Lcom/google/android/gms/internal/zzdx;->zzblu:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzdx;->zzblv:Lcom/google/android/gms/internal/zzdx;

    return-void
.end method


# virtual methods
.method getTime()J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzdx;->zzblt:J

    return-wide v0
.end method

.method zzlw()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdx;->zzblu:Ljava/lang/String;

    return-object v0
.end method

.method zzlx()Lcom/google/android/gms/internal/zzdx;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdx;->zzblv:Lcom/google/android/gms/internal/zzdx;

    return-object v0
.end method
