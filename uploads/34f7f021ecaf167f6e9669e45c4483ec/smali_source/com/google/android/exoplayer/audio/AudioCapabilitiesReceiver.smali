.class public final Lcom/google/android/exoplayer/audio/AudioCapabilitiesReceiver;
.super Ljava/lang/Object;
.source "AudioCapabilitiesReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer/audio/AudioCapabilitiesReceiver$HdmiAudioPlugBroadcastReceiver;,
        Lcom/google/android/exoplayer/audio/AudioCapabilitiesReceiver$Listener;
    }
.end annotation


# instance fields
.field audioCapabilities:Lcom/google/android/exoplayer/audio/AudioCapabilities;

.field private final context:Landroid/content/Context;

.field private final listener:Lcom/google/android/exoplayer/audio/AudioCapabilitiesReceiver$Listener;

.field private final receiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/exoplayer/audio/AudioCapabilitiesReceiver$Listener;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/google/android/exoplayer/audio/AudioCapabilitiesReceiver$Listener;

    .prologue
    const/4 v1, 0x0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    invoke-static {p1}, Lcom/google/android/exoplayer/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/google/android/exoplayer/audio/AudioCapabilitiesReceiver;->context:Landroid/content/Context;

    .line 60
    invoke-static {p2}, Lcom/google/android/exoplayer/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/audio/AudioCapabilitiesReceiver$Listener;

    iput-object v0, p0, Lcom/google/android/exoplayer/audio/AudioCapabilitiesReceiver;->listener:Lcom/google/android/exoplayer/audio/AudioCapabilitiesReceiver$Listener;

    .line 61
    sget v0, Lcom/google/android/exoplayer/util/Util;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v0, v2, :cond_22

    new-instance v0, Lcom/google/android/exoplayer/audio/AudioCapabilitiesReceiver$HdmiAudioPlugBroadcastReceiver;

    invoke-direct {v0, p0, v1}, Lcom/google/android/exoplayer/audio/AudioCapabilitiesReceiver$HdmiAudioPlugBroadcastReceiver;-><init>(Lcom/google/android/exoplayer/audio/AudioCapabilitiesReceiver;Lcom/google/android/exoplayer/audio/AudioCapabilitiesReceiver$1;)V

    :goto_1f
    iput-object v0, p0, Lcom/google/android/exoplayer/audio/AudioCapabilitiesReceiver;->receiver:Landroid/content/BroadcastReceiver;

    .line 62
    return-void

    :cond_22
    move-object v0, v1

    .line 61
    goto :goto_1f
.end method

.method static synthetic access$100(Lcom/google/android/exoplayer/audio/AudioCapabilitiesReceiver;)Lcom/google/android/exoplayer/audio/AudioCapabilitiesReceiver$Listener;
    .registers 2
    .param p0, "x0"    # Lcom/google/android/exoplayer/audio/AudioCapabilitiesReceiver;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/google/android/exoplayer/audio/AudioCapabilitiesReceiver;->listener:Lcom/google/android/exoplayer/audio/AudioCapabilitiesReceiver$Listener;

    return-object v0
.end method


# virtual methods
.method public register()Lcom/google/android/exoplayer/audio/AudioCapabilities;
    .registers 6

    .prologue
    .line 73
    iget-object v1, p0, Lcom/google/android/exoplayer/audio/AudioCapabilitiesReceiver;->receiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_e

    const/4 v0, 0x0

    .line 75
    .local v0, "stickyIntent":Landroid/content/Intent;
    :goto_5
    invoke-static {v0}, Lcom/google/android/exoplayer/audio/AudioCapabilities;->getCapabilities(Landroid/content/Intent;)Lcom/google/android/exoplayer/audio/AudioCapabilities;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/exoplayer/audio/AudioCapabilitiesReceiver;->audioCapabilities:Lcom/google/android/exoplayer/audio/AudioCapabilities;

    .line 76
    iget-object v1, p0, Lcom/google/android/exoplayer/audio/AudioCapabilitiesReceiver;->audioCapabilities:Lcom/google/android/exoplayer/audio/AudioCapabilities;

    return-object v1

    .line 73
    .end local v0    # "stickyIntent":Landroid/content/Intent;
    :cond_e
    iget-object v1, p0, Lcom/google/android/exoplayer/audio/AudioCapabilitiesReceiver;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/exoplayer/audio/AudioCapabilitiesReceiver;->receiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.media.action.HDMI_AUDIO_PLUG"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 74
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_5
.end method

.method public unregister()V
    .registers 3

    .prologue
    .line 83
    iget-object v0, p0, Lcom/google/android/exoplayer/audio/AudioCapabilitiesReceiver;->receiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_b

    .line 84
    iget-object v0, p0, Lcom/google/android/exoplayer/audio/AudioCapabilitiesReceiver;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/exoplayer/audio/AudioCapabilitiesReceiver;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 86
    :cond_b
    return-void
.end method
