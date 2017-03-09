.class Lcom/adjust/sdk/PackageBuilder$ActivityStateCopy;
.super Ljava/lang/Object;
.source "PackageBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adjust/sdk/PackageBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActivityStateCopy"
.end annotation


# instance fields
.field eventCount:I

.field lastInterval:J

.field pushToken:Ljava/lang/String;

.field sessionCount:I

.field sessionLength:J

.field subsessionCount:I

.field final synthetic this$0:Lcom/adjust/sdk/PackageBuilder;

.field timeSpent:J

.field uuid:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/adjust/sdk/PackageBuilder;Lcom/adjust/sdk/ActivityState;)V
    .registers 7
    .param p2, "activityState"    # Lcom/adjust/sdk/ActivityState;

    .prologue
    const/4 v1, 0x0

    const-wide/16 v2, -0x1

    const/4 v0, -0x1

    .line 49
    iput-object p1, p0, Lcom/adjust/sdk/PackageBuilder$ActivityStateCopy;->this$0:Lcom/adjust/sdk/PackageBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-wide v2, p0, Lcom/adjust/sdk/PackageBuilder$ActivityStateCopy;->lastInterval:J

    .line 41
    iput v0, p0, Lcom/adjust/sdk/PackageBuilder$ActivityStateCopy;->eventCount:I

    .line 42
    iput-object v1, p0, Lcom/adjust/sdk/PackageBuilder$ActivityStateCopy;->uuid:Ljava/lang/String;

    .line 43
    iput v0, p0, Lcom/adjust/sdk/PackageBuilder$ActivityStateCopy;->sessionCount:I

    .line 44
    iput v0, p0, Lcom/adjust/sdk/PackageBuilder$ActivityStateCopy;->subsessionCount:I

    .line 45
    iput-wide v2, p0, Lcom/adjust/sdk/PackageBuilder$ActivityStateCopy;->sessionLength:J

    .line 46
    iput-wide v2, p0, Lcom/adjust/sdk/PackageBuilder$ActivityStateCopy;->timeSpent:J

    .line 47
    iput-object v1, p0, Lcom/adjust/sdk/PackageBuilder$ActivityStateCopy;->pushToken:Ljava/lang/String;

    .line 50
    if-nez p2, :cond_1c

    .line 61
    :goto_1b
    return-void

    .line 53
    :cond_1c
    iget-wide v0, p2, Lcom/adjust/sdk/ActivityState;->lastInterval:J

    iput-wide v0, p0, Lcom/adjust/sdk/PackageBuilder$ActivityStateCopy;->lastInterval:J

    .line 54
    iget v0, p2, Lcom/adjust/sdk/ActivityState;->eventCount:I

    iput v0, p0, Lcom/adjust/sdk/PackageBuilder$ActivityStateCopy;->eventCount:I

    .line 55
    iget-object v0, p2, Lcom/adjust/sdk/ActivityState;->uuid:Ljava/lang/String;

    iput-object v0, p0, Lcom/adjust/sdk/PackageBuilder$ActivityStateCopy;->uuid:Ljava/lang/String;

    .line 56
    iget v0, p2, Lcom/adjust/sdk/ActivityState;->sessionCount:I

    iput v0, p0, Lcom/adjust/sdk/PackageBuilder$ActivityStateCopy;->sessionCount:I

    .line 57
    iget v0, p2, Lcom/adjust/sdk/ActivityState;->subsessionCount:I

    iput v0, p0, Lcom/adjust/sdk/PackageBuilder$ActivityStateCopy;->subsessionCount:I

    .line 58
    iget-wide v0, p2, Lcom/adjust/sdk/ActivityState;->sessionLength:J

    iput-wide v0, p0, Lcom/adjust/sdk/PackageBuilder$ActivityStateCopy;->sessionLength:J

    .line 59
    iget-wide v0, p2, Lcom/adjust/sdk/ActivityState;->timeSpent:J

    iput-wide v0, p0, Lcom/adjust/sdk/PackageBuilder$ActivityStateCopy;->timeSpent:J

    .line 60
    iget-object v0, p2, Lcom/adjust/sdk/ActivityState;->pushToken:Ljava/lang/String;

    iput-object v0, p0, Lcom/adjust/sdk/PackageBuilder$ActivityStateCopy;->pushToken:Ljava/lang/String;

    goto :goto_1b
.end method
