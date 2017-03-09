.class public Lcom/urbanairship/location/CircularRegion;
.super Ljava/lang/Object;
.source "CircularRegion.java"


# static fields
.field public static final MAX_RADIUS:I = 0x186a0


# instance fields
.field private final latitude:D

.field private final longitude:D

.field private final radius:D


# direct methods
.method public constructor <init>(DDD)V
    .registers 8
    .param p1, "radius"    # D
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
            to = 100000.0
        .end annotation
    .end param
    .param p3, "latitude"    # D
        .annotation build Landroid/support/annotation/FloatRange;
            from = -90.0
            to = 90.0
        .end annotation
    .end param
    .param p5, "longitude"    # D
        .annotation build Landroid/support/annotation/FloatRange;
            from = -180.0
            to = 180.0
        .end annotation
    .end param

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-wide p1, p0, Lcom/urbanairship/location/CircularRegion;->radius:D

    .line 45
    iput-wide p3, p0, Lcom/urbanairship/location/CircularRegion;->latitude:D

    .line 46
    iput-wide p5, p0, Lcom/urbanairship/location/CircularRegion;->longitude:D

    .line 47
    return-void
.end method


# virtual methods
.method public getLatitude()D
    .registers 3

    .prologue
    .line 64
    iget-wide v0, p0, Lcom/urbanairship/location/CircularRegion;->latitude:D

    return-wide v0
.end method

.method public getLongitude()D
    .registers 3

    .prologue
    .line 73
    iget-wide v0, p0, Lcom/urbanairship/location/CircularRegion;->longitude:D

    return-wide v0
.end method

.method public getRadius()D
    .registers 3

    .prologue
    .line 55
    iget-wide v0, p0, Lcom/urbanairship/location/CircularRegion;->radius:D

    return-wide v0
.end method

.method public isValid()Z
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 82
    iget-wide v2, p0, Lcom/urbanairship/location/CircularRegion;->radius:D

    const-wide v4, 0x40f86a0000000000L

    cmpl-double v1, v2, v4

    if-gtz v1, :cond_14

    iget-wide v2, p0, Lcom/urbanairship/location/CircularRegion;->radius:D

    const-wide/16 v4, 0x0

    cmpg-double v1, v2, v4

    if-gtz v1, :cond_1a

    .line 83
    :cond_14
    const-string v1, "The radius must be greater than 0 and less than or equal to 100000 meters."

    invoke-static {v1}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    .line 100
    :goto_19
    return v0

    .line 88
    :cond_1a
    iget-wide v2, p0, Lcom/urbanairship/location/CircularRegion;->latitude:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static {v1}, Lcom/urbanairship/location/RegionEvent;->regionEventLatitudeIsValid(Ljava/lang/Double;)Z

    move-result v1

    if-nez v1, :cond_2c

    .line 89
    const-string v1, "The latitude must be greater than or equal to -90.0 and less than or equal to 90.0 degrees."

    invoke-static {v1}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    goto :goto_19

    .line 94
    :cond_2c
    iget-wide v2, p0, Lcom/urbanairship/location/CircularRegion;->longitude:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static {v1}, Lcom/urbanairship/location/RegionEvent;->regionEventLongitudeIsValid(Ljava/lang/Double;)Z

    move-result v1

    if-nez v1, :cond_3e

    .line 95
    const-string v1, "The longitude must be greater than or equal to -180.0 and less than or equal to 180.0 degrees."

    invoke-static {v1}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    goto :goto_19

    .line 100
    :cond_3e
    const/4 v0, 0x1

    goto :goto_19
.end method
