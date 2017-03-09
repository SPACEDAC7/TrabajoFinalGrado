.class public Ljackpal/androidterm/emulatorview/compat/AndroidCompat;
.super Ljava/lang/Object;
.source "AndroidCompat.java"


# static fields
.field public static final SDK:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 17
    invoke-static {}, Ljackpal/androidterm/emulatorview/compat/AndroidCompat;->getSDK()I

    move-result v0

    sput v0, Ljackpal/androidterm/emulatorview/compat/AndroidCompat;->SDK:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final getSDK()I
    .registers 4

    .prologue
    .line 22
    :try_start_0
    invoke-static {}, Ljackpal/androidterm/emulatorview/compat/AndroidLevel4PlusCompat;->getSDKInt()I
    :try_end_3
    .catch Ljava/lang/VerifyError; {:try_start_0 .. :try_end_3} :catch_5

    move-result v2

    .line 32
    .local v2, "result":I
    :goto_4
    return v2

    .line 23
    .end local v2    # "result":I
    :catch_5
    move-exception v0

    .line 26
    .local v0, "e":Ljava/lang/VerifyError;
    :try_start_6
    sget-object v3, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_f
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_f} :catch_11

    move-result v2

    .restart local v2    # "result":I
    goto :goto_4

    .line 27
    .end local v2    # "result":I
    :catch_11
    move-exception v1

    .line 29
    .local v1, "e2":Ljava/lang/NumberFormatException;
    const/4 v2, 0x1

    .restart local v2    # "result":I
    goto :goto_4
.end method
