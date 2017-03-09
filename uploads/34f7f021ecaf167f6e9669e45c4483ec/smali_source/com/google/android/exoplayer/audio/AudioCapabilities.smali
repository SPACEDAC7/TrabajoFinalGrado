.class public final Lcom/google/android/exoplayer/audio/AudioCapabilities;
.super Ljava/lang/Object;
.source "AudioCapabilities.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# static fields
.field public static final DEFAULT_AUDIO_CAPABILITIES:Lcom/google/android/exoplayer/audio/AudioCapabilities;


# instance fields
.field private final maxChannelCount:I

.field private final supportedEncodings:[I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x2

    .line 36
    new-instance v0, Lcom/google/android/exoplayer/audio/AudioCapabilities;

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput v3, v1, v2

    invoke-direct {v0, v1, v3}, Lcom/google/android/exoplayer/audio/AudioCapabilities;-><init>([II)V

    sput-object v0, Lcom/google/android/exoplayer/audio/AudioCapabilities;->DEFAULT_AUDIO_CAPABILITIES:Lcom/google/android/exoplayer/audio/AudioCapabilities;

    return-void
.end method

.method constructor <init>([II)V
    .registers 4
    .param p1, "supportedEncodings"    # [I
    .param p2, "maxChannelCount"    # I

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    if-eqz p1, :cond_14

    .line 74
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer/audio/AudioCapabilities;->supportedEncodings:[I

    .line 75
    iget-object v0, p0, Lcom/google/android/exoplayer/audio/AudioCapabilities;->supportedEncodings:[I

    invoke-static {v0}, Ljava/util/Arrays;->sort([I)V

    .line 79
    :goto_11
    iput p2, p0, Lcom/google/android/exoplayer/audio/AudioCapabilities;->maxChannelCount:I

    .line 80
    return-void

    .line 77
    :cond_14
    const/4 v0, 0x0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/android/exoplayer/audio/AudioCapabilities;->supportedEncodings:[I

    goto :goto_11
.end method

.method public static getCapabilities(Landroid/content/Context;)Lcom/google/android/exoplayer/audio/AudioCapabilities;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 48
    const/4 v0, 0x0

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.media.action.HDMI_AUDIO_PLUG"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    .line 48
    invoke-static {v0}, Lcom/google/android/exoplayer/audio/AudioCapabilities;->getCapabilities(Landroid/content/Intent;)Lcom/google/android/exoplayer/audio/AudioCapabilities;

    move-result-object v0

    return-object v0
.end method

.method static getCapabilities(Landroid/content/Intent;)Lcom/google/android/exoplayer/audio/AudioCapabilities;
    .registers 5
    .param p0, "intent"    # Landroid/content/Intent;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 54
    if-eqz p0, :cond_b

    const-string v0, "android.media.extra.AUDIO_PLUG_STATE"

    invoke-virtual {p0, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_e

    .line 55
    :cond_b
    sget-object v0, Lcom/google/android/exoplayer/audio/AudioCapabilities;->DEFAULT_AUDIO_CAPABILITIES:Lcom/google/android/exoplayer/audio/AudioCapabilities;

    .line 57
    :goto_d
    return-object v0

    :cond_e
    new-instance v0, Lcom/google/android/exoplayer/audio/AudioCapabilities;

    const-string v1, "android.media.extra.ENCODINGS"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v1

    const-string v2, "android.media.extra.MAX_CHANNEL_COUNT"

    .line 58
    invoke-virtual {p0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer/audio/AudioCapabilities;-><init>([II)V

    goto :goto_d
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 99
    if-ne p0, p1, :cond_5

    .line 106
    :cond_4
    :goto_4
    return v1

    .line 102
    :cond_5
    instance-of v3, p1, Lcom/google/android/exoplayer/audio/AudioCapabilities;

    if-nez v3, :cond_b

    move v1, v2

    .line 103
    goto :goto_4

    :cond_b
    move-object v0, p1

    .line 105
    check-cast v0, Lcom/google/android/exoplayer/audio/AudioCapabilities;

    .line 106
    .local v0, "audioCapabilities":Lcom/google/android/exoplayer/audio/AudioCapabilities;
    iget-object v3, p0, Lcom/google/android/exoplayer/audio/AudioCapabilities;->supportedEncodings:[I

    iget-object v4, v0, Lcom/google/android/exoplayer/audio/AudioCapabilities;->supportedEncodings:[I

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    if-eqz v3, :cond_1e

    iget v3, p0, Lcom/google/android/exoplayer/audio/AudioCapabilities;->maxChannelCount:I

    iget v4, v0, Lcom/google/android/exoplayer/audio/AudioCapabilities;->maxChannelCount:I

    if-eq v3, v4, :cond_4

    :cond_1e
    move v1, v2

    goto :goto_4
.end method

.method public getMaxChannelCount()I
    .registers 2

    .prologue
    .line 94
    iget v0, p0, Lcom/google/android/exoplayer/audio/AudioCapabilities;->maxChannelCount:I

    return v0
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 112
    iget v0, p0, Lcom/google/android/exoplayer/audio/AudioCapabilities;->maxChannelCount:I

    iget-object v1, p0, Lcom/google/android/exoplayer/audio/AudioCapabilities;->supportedEncodings:[I

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    return v0
.end method

.method public supportsEncoding(I)Z
    .registers 3
    .param p1, "encoding"    # I

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/android/exoplayer/audio/AudioCapabilities;->supportedEncodings:[I

    invoke-static {v0, p1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v0

    if-ltz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AudioCapabilities[maxChannelCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/exoplayer/audio/AudioCapabilities;->maxChannelCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", supportedEncodings="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer/audio/AudioCapabilities;->supportedEncodings:[I

    .line 118
    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 117
    return-object v0
.end method
