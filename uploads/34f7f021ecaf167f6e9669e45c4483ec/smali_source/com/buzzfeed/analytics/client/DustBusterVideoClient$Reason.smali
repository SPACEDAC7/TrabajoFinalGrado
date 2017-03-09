.class public final Lcom/buzzfeed/analytics/client/DustBusterVideoClient$Reason;
.super Ljava/lang/Object;
.source "DustBusterVideoClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/buzzfeed/analytics/client/DustBusterVideoClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Reason"
.end annotation


# static fields
.field public static final AUTO:Ljava/lang/String; = "auto"

.field public static final SCRUB_END:Ljava/lang/String; = "scrub_end"

.field public static final SCRUB_START:Ljava/lang/String; = "scrub_start"

.field public static final TAP_PLAYER_CONTROLS:Ljava/lang/String; = "tap_player_controls"

.field public static final TAP_TO_PLAY_AUTO:Ljava/lang/String; = "tap_to_play_auto"

.field public static final VIDEO_COMPLETE:Ljava/lang/String; = "video_complete"

.field public static final VIDEO_LOOP:Ljava/lang/String; = "video_loop"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 262
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
