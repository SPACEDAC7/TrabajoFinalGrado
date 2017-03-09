.class public Lcom/buzzfeed/android/vcr/util/DevicePlaybackInfo;
.super Ljava/lang/Object;
.source "DevicePlaybackInfo.java"


# static fields
.field private static final AFFECTED_MANUFACTURER:Ljava/lang/String; = "SAMSUNG"

.field private static final AFFECTED_VBR_CHIPSETS:[Ljava/lang/String;

.field private static final AFFECTED_VERSIONS:[Ljava/lang/String;

.field public static final REQUIRES_ADAPTIVE_WORKAROUND:Z

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 16
    const-class v0, Lcom/buzzfeed/android/vcr/util/DevicePlaybackInfo;

    invoke-static {v0}, Lcom/buzzfeed/toolkit/util/LogUtil;->makeLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/buzzfeed/android/vcr/util/DevicePlaybackInfo;->TAG:Ljava/lang/String;

    .line 24
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "4.4.2"

    aput-object v1, v0, v2

    const-string v1, "4.4.4"

    aput-object v1, v0, v3

    sput-object v0, Lcom/buzzfeed/android/vcr/util/DevicePlaybackInfo;->AFFECTED_VERSIONS:[Ljava/lang/String;

    .line 32
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "APQ8064"

    aput-object v1, v0, v2

    const-string v1, "MSM8960"

    aput-object v1, v0, v3

    const-string v1, "MSM8930"

    aput-object v1, v0, v4

    const/4 v1, 0x3

    const-string v2, "MSM8260A"

    aput-object v2, v0, v1

    sput-object v0, Lcom/buzzfeed/android/vcr/util/DevicePlaybackInfo;->AFFECTED_VBR_CHIPSETS:[Ljava/lang/String;

    .line 44
    invoke-static {}, Lcom/buzzfeed/android/vcr/util/DevicePlaybackInfo;->shouldUseAdaptiveWorkaround()Z

    move-result v0

    sput-boolean v0, Lcom/buzzfeed/android/vcr/util/DevicePlaybackInfo;->REQUIRES_ADAPTIVE_WORKAROUND:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static isAffectedChipset(Ljava/lang/String;)Z
    .registers 7
    .param p0, "chipset"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 63
    sget-object v3, Lcom/buzzfeed/android/vcr/util/DevicePlaybackInfo;->AFFECTED_VBR_CHIPSETS:[Ljava/lang/String;

    array-length v4, v3

    move v2, v1

    :goto_5
    if-ge v2, v4, :cond_32

    aget-object v0, v3, v2

    .line 64
    .local v0, "affectedChipset":Ljava/lang/String;
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2f

    .line 65
    sget-object v1, Lcom/buzzfeed/android/vcr/util/DevicePlaybackInfo;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "This device requires an adaptive playback work-around. (QUALCOMM CHIPSET ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "])"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/buzzfeed/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    const/4 v1, 0x1

    .line 73
    .end local v0    # "affectedChipset":Ljava/lang/String;
    :goto_2e
    return v1

    .line 63
    .restart local v0    # "affectedChipset":Ljava/lang/String;
    :cond_2f
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 71
    .end local v0    # "affectedChipset":Ljava/lang/String;
    :cond_32
    sget-object v2, Lcom/buzzfeed/android/vcr/util/DevicePlaybackInfo;->TAG:Ljava/lang/String;

    const-string v3, "This device does not require an adaptive playback work-around."

    invoke-static {v2, v3}, Lcom/buzzfeed/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2e
.end method

.method static isAffectedManufacturerAndVersion(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 10
    .param p0, "manufacturer"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "version"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 83
    sget-object v4, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_28

    .line 84
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, "SAMSUNG"

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_28

    move v1, v2

    .line 86
    .local v1, "isAffectedManufacturer":Z
    :goto_17
    sget-object v5, Lcom/buzzfeed/android/vcr/util/DevicePlaybackInfo;->AFFECTED_VERSIONS:[Ljava/lang/String;

    array-length v6, v5

    move v4, v3

    :goto_1b
    if-ge v4, v6, :cond_2d

    aget-object v0, v5, v4

    .line 87
    .local v0, "affectedVersion":Ljava/lang/String;
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2a

    if-eqz v1, :cond_2a

    .line 92
    .end local v0    # "affectedVersion":Ljava/lang/String;
    :goto_27
    return v2

    .end local v1    # "isAffectedManufacturer":Z
    :cond_28
    move v1, v3

    .line 84
    goto :goto_17

    .line 86
    .restart local v0    # "affectedVersion":Ljava/lang/String;
    .restart local v1    # "isAffectedManufacturer":Z
    :cond_2a
    add-int/lit8 v4, v4, 0x1

    goto :goto_1b

    .end local v0    # "affectedVersion":Ljava/lang/String;
    :cond_2d
    move v2, v3

    .line 92
    goto :goto_27
.end method

.method static shouldUseAdaptiveWorkaround()Z
    .registers 2
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 52
    sget-object v0, Landroid/os/Build;->BOARD:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_12

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 53
    invoke-static {v0, v1}, Lcom/buzzfeed/android/vcr/util/DevicePlaybackInfo;->isAffectedManufacturerAndVersion(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 54
    :cond_12
    sget-object v0, Lcom/buzzfeed/android/vcr/util/DevicePlaybackInfo;->TAG:Ljava/lang/String;

    const-string v1, "This device has no known adaptive playback issues."

    invoke-static {v0, v1}, Lcom/buzzfeed/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    const/4 v0, 0x0

    .line 58
    :goto_1a
    return v0

    :cond_1b
    sget-object v0, Landroid/os/Build;->BOARD:Ljava/lang/String;

    invoke-static {v0}, Lcom/buzzfeed/android/vcr/util/DevicePlaybackInfo;->isAffectedChipset(Ljava/lang/String;)Z

    move-result v0

    goto :goto_1a
.end method
