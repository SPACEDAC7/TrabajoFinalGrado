.class final Lcom/facebook/appevents/AppEventsLogger$PersistedAppSessionInfo$1;
.super Ljava/lang/Object;
.source "AppEventsLogger.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/appevents/AppEventsLogger$PersistedAppSessionInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 1467
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 1470
    # getter for: Lcom/facebook/appevents/AppEventsLogger;->applicationContext:Landroid/content/Context;
    invoke-static {}, Lcom/facebook/appevents/AppEventsLogger;->access$1000()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/appevents/AppEventsLogger$PersistedAppSessionInfo;->saveAppSessionInformation(Landroid/content/Context;)V

    .line 1471
    return-void
.end method
