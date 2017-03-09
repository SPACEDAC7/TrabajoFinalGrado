.class public Lcom/google/android/gms/common/server/converter/ConverterWrapper;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/common/server/converter/ConverterWrapper;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final Fa:Lcom/google/android/gms/common/server/converter/StringToIntConverter;

.field final mVersionCode:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/common/server/converter/zza;

    invoke-direct {v0}, Lcom/google/android/gms/common/server/converter/zza;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/server/converter/ConverterWrapper;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/common/server/converter/StringToIntConverter;)V
    .registers 3

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/common/server/converter/ConverterWrapper;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/common/server/converter/ConverterWrapper;->Fa:Lcom/google/android/gms/common/server/converter/StringToIntConverter;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/common/server/converter/StringToIntConverter;)V
    .registers 3

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/common/server/converter/ConverterWrapper;->mVersionCode:I

    iput-object p1, p0, Lcom/google/android/gms/common/server/converter/ConverterWrapper;->Fa:Lcom/google/android/gms/common/server/converter/StringToIntConverter;

    return-void
.end method

.method public static zza(Lcom/google/android/gms/common/server/response/FastJsonResponse$zza;)Lcom/google/android/gms/common/server/converter/ConverterWrapper;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/server/response/FastJsonResponse$zza",
            "<**>;)",
            "Lcom/google/android/gms/common/server/converter/ConverterWrapper;"
        }
    .end annotation

    instance-of v0, p0, Lcom/google/android/gms/common/server/converter/StringToIntConverter;

    if-eqz v0, :cond_c

    new-instance v0, Lcom/google/android/gms/common/server/converter/ConverterWrapper;

    check-cast p0, Lcom/google/android/gms/common/server/converter/StringToIntConverter;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/server/converter/ConverterWrapper;-><init>(Lcom/google/android/gms/common/server/converter/StringToIntConverter;)V

    return-object v0

    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported safe parcelable field converter class."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/common/server/converter/zza;->zza(Lcom/google/android/gms/common/server/converter/ConverterWrapper;Landroid/os/Parcel;I)V

    return-void
.end method

.method zzaww()Lcom/google/android/gms/common/server/converter/StringToIntConverter;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/server/converter/ConverterWrapper;->Fa:Lcom/google/android/gms/common/server/converter/StringToIntConverter;

    return-object v0
.end method

.method public zzawx()Lcom/google/android/gms/common/server/response/FastJsonResponse$zza;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/common/server/response/FastJsonResponse$zza",
            "<**>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/server/converter/ConverterWrapper;->Fa:Lcom/google/android/gms/common/server/converter/StringToIntConverter;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/google/android/gms/common/server/converter/ConverterWrapper;->Fa:Lcom/google/android/gms/common/server/converter/StringToIntConverter;

    return-object v0

    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "There was no converter wrapped in this ConverterWrapper."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
