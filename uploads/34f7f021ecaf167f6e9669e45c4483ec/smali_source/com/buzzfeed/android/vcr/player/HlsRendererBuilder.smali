.class public Lcom/buzzfeed/android/vcr/player/HlsRendererBuilder;
.super Ljava/lang/Object;
.source "HlsRendererBuilder.java"

# interfaces
.implements Lcom/buzzfeed/android/vcr/player/RendererBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/buzzfeed/android/vcr/player/HlsRendererBuilder$AsyncRendererBuilder;
    }
.end annotation


# static fields
.field private static final AUDIO_BUFFER_SEGMENTS:I = 0x36

.field private static final BUFFER_SEGMENT_SIZE:I = 0x10000

.field private static final MAIN_BUFFER_SEGMENTS:I = 0xfe


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mCurrentAsyncBuilder:Lcom/buzzfeed/android/vcr/player/HlsRendererBuilder$AsyncRendererBuilder;

.field private final mPeakBitrate:J

.field private final mUrl:Ljava/lang/String;

.field private final mUserAgent:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userAgent"    # Ljava/lang/String;
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "peakBitrate"    # J

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/buzzfeed/android/vcr/player/HlsRendererBuilder;->mContext:Landroid/content/Context;

    .line 55
    iput-object p2, p0, Lcom/buzzfeed/android/vcr/player/HlsRendererBuilder;->mUserAgent:Ljava/lang/String;

    .line 56
    iput-object p3, p0, Lcom/buzzfeed/android/vcr/player/HlsRendererBuilder;->mUrl:Ljava/lang/String;

    .line 57
    iput-wide p4, p0, Lcom/buzzfeed/android/vcr/player/HlsRendererBuilder;->mPeakBitrate:J

    .line 58
    return-void
.end method


# virtual methods
.method public buildRenderers(Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;)V
    .registers 10
    .param p1, "player"    # Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;

    .prologue
    .line 62
    new-instance v1, Lcom/buzzfeed/android/vcr/player/HlsRendererBuilder$AsyncRendererBuilder;

    iget-object v2, p0, Lcom/buzzfeed/android/vcr/player/HlsRendererBuilder;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/buzzfeed/android/vcr/player/HlsRendererBuilder;->mUserAgent:Ljava/lang/String;

    iget-object v4, p0, Lcom/buzzfeed/android/vcr/player/HlsRendererBuilder;->mUrl:Ljava/lang/String;

    iget-wide v6, p0, Lcom/buzzfeed/android/vcr/player/HlsRendererBuilder;->mPeakBitrate:J

    move-object v5, p1

    invoke-direct/range {v1 .. v7}, Lcom/buzzfeed/android/vcr/player/HlsRendererBuilder$AsyncRendererBuilder;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/buzzfeed/android/vcr/player/VCRExoPlayer;J)V

    iput-object v1, p0, Lcom/buzzfeed/android/vcr/player/HlsRendererBuilder;->mCurrentAsyncBuilder:Lcom/buzzfeed/android/vcr/player/HlsRendererBuilder$AsyncRendererBuilder;

    .line 64
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/player/HlsRendererBuilder;->mCurrentAsyncBuilder:Lcom/buzzfeed/android/vcr/player/HlsRendererBuilder$AsyncRendererBuilder;

    invoke-virtual {v0}, Lcom/buzzfeed/android/vcr/player/HlsRendererBuilder$AsyncRendererBuilder;->init()V

    .line 65
    return-void
.end method

.method public cancel()V
    .registers 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/player/HlsRendererBuilder;->mCurrentAsyncBuilder:Lcom/buzzfeed/android/vcr/player/HlsRendererBuilder$AsyncRendererBuilder;

    if-eqz v0, :cond_c

    .line 70
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/player/HlsRendererBuilder;->mCurrentAsyncBuilder:Lcom/buzzfeed/android/vcr/player/HlsRendererBuilder$AsyncRendererBuilder;

    invoke-virtual {v0}, Lcom/buzzfeed/android/vcr/player/HlsRendererBuilder$AsyncRendererBuilder;->cancel()V

    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/buzzfeed/android/vcr/player/HlsRendererBuilder;->mCurrentAsyncBuilder:Lcom/buzzfeed/android/vcr/player/HlsRendererBuilder$AsyncRendererBuilder;

    .line 73
    :cond_c
    return-void
.end method
