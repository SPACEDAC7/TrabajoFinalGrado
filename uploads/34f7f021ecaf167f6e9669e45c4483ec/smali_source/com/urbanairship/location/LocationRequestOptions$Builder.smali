.class public Lcom/urbanairship/location/LocationRequestOptions$Builder;
.super Ljava/lang/Object;
.source "LocationRequestOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/urbanairship/location/LocationRequestOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private minDistance:F

.field private minTime:J

.field private priority:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 317
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 318
    const-wide/32 v0, 0x493e0

    iput-wide v0, p0, Lcom/urbanairship/location/LocationRequestOptions$Builder;->minTime:J

    .line 319
    const/high16 v0, 0x44480000

    iput v0, p0, Lcom/urbanairship/location/LocationRequestOptions$Builder;->minDistance:F

    .line 320
    const/4 v0, 0x2

    iput v0, p0, Lcom/urbanairship/location/LocationRequestOptions$Builder;->priority:I

    return-void
.end method

.method static synthetic access$000(Lcom/urbanairship/location/LocationRequestOptions$Builder;)I
    .registers 2
    .param p0, "x0"    # Lcom/urbanairship/location/LocationRequestOptions$Builder;

    .prologue
    .line 317
    iget v0, p0, Lcom/urbanairship/location/LocationRequestOptions$Builder;->priority:I

    return v0
.end method

.method static synthetic access$100(Lcom/urbanairship/location/LocationRequestOptions$Builder;)J
    .registers 3
    .param p0, "x0"    # Lcom/urbanairship/location/LocationRequestOptions$Builder;

    .prologue
    .line 317
    iget-wide v0, p0, Lcom/urbanairship/location/LocationRequestOptions$Builder;->minTime:J

    return-wide v0
.end method

.method static synthetic access$200(Lcom/urbanairship/location/LocationRequestOptions$Builder;)F
    .registers 2
    .param p0, "x0"    # Lcom/urbanairship/location/LocationRequestOptions$Builder;

    .prologue
    .line 317
    iget v0, p0, Lcom/urbanairship/location/LocationRequestOptions$Builder;->minDistance:F

    return v0
.end method


# virtual methods
.method public create()Lcom/urbanairship/location/LocationRequestOptions;
    .registers 3

    .prologue
    .line 376
    new-instance v0, Lcom/urbanairship/location/LocationRequestOptions;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/urbanairship/location/LocationRequestOptions;-><init>(Lcom/urbanairship/location/LocationRequestOptions$Builder;Lcom/urbanairship/location/LocationRequestOptions$1;)V

    return-object v0
.end method

.method public setMinDistance(F)Lcom/urbanairship/location/LocationRequestOptions$Builder;
    .registers 2
    .param p1, "meters"    # F

    .prologue
    .line 349
    # invokes: Lcom/urbanairship/location/LocationRequestOptions;->verifyMinDistance(F)V
    invoke-static {p1}, Lcom/urbanairship/location/LocationRequestOptions;->access$500(F)V

    .line 350
    iput p1, p0, Lcom/urbanairship/location/LocationRequestOptions$Builder;->minDistance:F

    .line 351
    return-object p0
.end method

.method public setMinTime(JLjava/util/concurrent/TimeUnit;)Lcom/urbanairship/location/LocationRequestOptions$Builder;
    .registers 7
    .param p1, "time"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    .line 334
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    # invokes: Lcom/urbanairship/location/LocationRequestOptions;->verifyMinTime(J)V
    invoke-static {v0, v1}, Lcom/urbanairship/location/LocationRequestOptions;->access$400(J)V

    .line 335
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/urbanairship/location/LocationRequestOptions$Builder;->minTime:J

    .line 336
    return-object p0
.end method

.method public setPriority(I)Lcom/urbanairship/location/LocationRequestOptions$Builder;
    .registers 2
    .param p1, "priority"    # I

    .prologue
    .line 365
    # invokes: Lcom/urbanairship/location/LocationRequestOptions;->verifyPriority(I)V
    invoke-static {p1}, Lcom/urbanairship/location/LocationRequestOptions;->access$600(I)V

    .line 366
    iput p1, p0, Lcom/urbanairship/location/LocationRequestOptions$Builder;->priority:I

    .line 367
    return-object p0
.end method
