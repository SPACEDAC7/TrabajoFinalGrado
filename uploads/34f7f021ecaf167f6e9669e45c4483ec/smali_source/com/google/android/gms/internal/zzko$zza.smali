.class public final Lcom/google/android/gms/internal/zzko$zza;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzji;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzko;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zza"
.end annotation


# instance fields
.field public final errorCode:I

.field public final zzarm:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public final zzcmx:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

.field public final zzcsi:Lorg/json/JSONObject;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public final zzcsk:Lcom/google/android/gms/internal/zzgq;

.field public final zzcso:J

.field public final zzcsp:J

.field public final zzcsu:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;Lcom/google/android/gms/ads/internal/request/AdResponseParcel;Lcom/google/android/gms/internal/zzgq;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;IJJLorg/json/JSONObject;)V
    .registers 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzko$zza;->zzcmx:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzko$zza;->zzcsu:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzko$zza;->zzcsk:Lcom/google/android/gms/internal/zzgq;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzko$zza;->zzarm:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    iput p5, p0, Lcom/google/android/gms/internal/zzko$zza;->errorCode:I

    iput-wide p6, p0, Lcom/google/android/gms/internal/zzko$zza;->zzcso:J

    iput-wide p8, p0, Lcom/google/android/gms/internal/zzko$zza;->zzcsp:J

    iput-object p10, p0, Lcom/google/android/gms/internal/zzko$zza;->zzcsi:Lorg/json/JSONObject;

    return-void
.end method
