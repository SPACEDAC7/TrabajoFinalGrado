.class final Lcom/facebook/appevents/AppEventsLogger$1;
.super Ljava/lang/Object;
.source "AppEventsLogger.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/appevents/AppEventsLogger;->activateApp(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$eventTime:J

.field final synthetic val$logger:Lcom/facebook/appevents/AppEventsLogger;

.field final synthetic val$sourceApplicationInfo:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/facebook/appevents/AppEventsLogger;JLjava/lang/String;)V
    .registers 5

    .prologue
    .line 300
    iput-object p1, p0, Lcom/facebook/appevents/AppEventsLogger$1;->val$logger:Lcom/facebook/appevents/AppEventsLogger;

    iput-wide p2, p0, Lcom/facebook/appevents/AppEventsLogger$1;->val$eventTime:J

    iput-object p4, p0, Lcom/facebook/appevents/AppEventsLogger$1;->val$sourceApplicationInfo:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 303
    iget-object v0, p0, Lcom/facebook/appevents/AppEventsLogger$1;->val$logger:Lcom/facebook/appevents/AppEventsLogger;

    iget-wide v2, p0, Lcom/facebook/appevents/AppEventsLogger$1;->val$eventTime:J

    iget-object v1, p0, Lcom/facebook/appevents/AppEventsLogger$1;->val$sourceApplicationInfo:Ljava/lang/String;

    # invokes: Lcom/facebook/appevents/AppEventsLogger;->logAppSessionResumeEvent(JLjava/lang/String;)V
    invoke-static {v0, v2, v3, v1}, Lcom/facebook/appevents/AppEventsLogger;->access$100(Lcom/facebook/appevents/AppEventsLogger;JLjava/lang/String;)V

    .line 304
    return-void
.end method
