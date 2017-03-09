.class public final Lcom/google/android/gms/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final AdsAttrs:[I

.field public static final AdsAttrs_adSize:I = 0x0

.field public static final AdsAttrs_adSizes:I = 0x1

.field public static final AdsAttrs_adUnitId:I = 0x2

.field public static final LoadingImageView:[I

.field public static final LoadingImageView_circleCrop:I = 0x2

.field public static final LoadingImageView_imageAspectRatio:I = 0x1

.field public static final LoadingImageView_imageAspectRatioAdjust:I = 0x0

.field public static final SignInButton:[I

.field public static final SignInButton_buttonSize:I = 0x0

.field public static final SignInButton_colorScheme:I = 0x1

.field public static final SignInButton_scopeUris:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x3

    .line 125
    new-array v0, v1, [I

    fill-array-data v0, :array_18

    sput-object v0, Lcom/google/android/gms/R$styleable;->AdsAttrs:[I

    .line 129
    new-array v0, v1, [I

    fill-array-data v0, :array_22

    sput-object v0, Lcom/google/android/gms/R$styleable;->LoadingImageView:[I

    .line 133
    new-array v0, v1, [I

    fill-array-data v0, :array_2c

    sput-object v0, Lcom/google/android/gms/R$styleable;->SignInButton:[I

    return-void

    .line 125
    nop

    :array_18
    .array-data 4
        0x7f01003a
        0x7f01003b
        0x7f01003c
    .end array-data

    .line 129
    :array_22
    .array-data 4
        0x7f010105
        0x7f010106
        0x7f010107
    .end array-data

    .line 133
    :array_2c
    .array-data 4
        0x7f010129
        0x7f01012a
        0x7f01012b
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
