.class public Lcom/buzzfeed/analytics/client/DustBusterVideoClient$Action;
.super Ljava/lang/Object;
.source "DustBusterVideoClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/buzzfeed/analytics/client/DustBusterVideoClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Action"
.end annotation


# static fields
.field public static final CLOSE_MEDIA_VIEWER:Ljava/lang/String; = "close_media_viewer"

.field public static final ENTER_LANDSCAPE:Ljava/lang/String; = "enter_landscape"

.field public static final ENTER_MEDIA_VIEWER:Ljava/lang/String; = "enter_media_viewer"

.field public static final ENTER_PORTRAIT:Ljava/lang/String; = "enter_portrait"

.field public static final PAUSE:Ljava/lang/String; = "pause"

.field public static final PLAY:Ljava/lang/String; = "play"

.field public static final SCRUB_END:Ljava/lang/String; = "scrub_end"

.field public static final SCRUB_START:Ljava/lang/String; = "scrub_start"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
