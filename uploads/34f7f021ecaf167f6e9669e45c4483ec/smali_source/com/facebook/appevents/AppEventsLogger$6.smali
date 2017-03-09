.class final Lcom/facebook/appevents/AppEventsLogger$6;
.super Ljava/lang/Object;
.source "AppEventsLogger.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/appevents/AppEventsLogger;->flush(Lcom/facebook/appevents/AppEventsLogger$FlushReason;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$reason:Lcom/facebook/appevents/AppEventsLogger$FlushReason;


# direct methods
.method constructor <init>(Lcom/facebook/appevents/AppEventsLogger$FlushReason;)V
    .registers 2

    .prologue
    .line 819
    iput-object p1, p0, Lcom/facebook/appevents/AppEventsLogger$6;->val$reason:Lcom/facebook/appevents/AppEventsLogger$FlushReason;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 822
    iget-object v0, p0, Lcom/facebook/appevents/AppEventsLogger$6;->val$reason:Lcom/facebook/appevents/AppEventsLogger$FlushReason;

    # invokes: Lcom/facebook/appevents/AppEventsLogger;->flushAndWait(Lcom/facebook/appevents/AppEventsLogger$FlushReason;)V
    invoke-static {v0}, Lcom/facebook/appevents/AppEventsLogger;->access$300(Lcom/facebook/appevents/AppEventsLogger$FlushReason;)V

    .line 823
    return-void
.end method
