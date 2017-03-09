.class public Lcom/urbanairship/location/RegionEvent;
.super Lcom/urbanairship/analytics/Event;
.source "RegionEvent.java"

# interfaces
.implements Lcom/urbanairship/json/JsonSerializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/urbanairship/location/RegionEvent$Boundary;
    }
.end annotation


# static fields
.field private static final BOUNDARY_EVENT:Ljava/lang/String; = "action"

.field public static final BOUNDARY_EVENT_ENTER:I = 0x1

.field public static final BOUNDARY_EVENT_EXIT:I = 0x2

.field private static final CIRCULAR_REGION:Ljava/lang/String; = "circular_region"

.field private static final CIRCULAR_REGION_RADIUS:Ljava/lang/String; = "radius"

.field private static final LATITUDE:Ljava/lang/String; = "latitude"

.field private static final LONGITUDE:Ljava/lang/String; = "longitude"

.field public static final MAX_CHARACTER_LENGTH:I = 0xff

.field public static final MAX_LATITUDE:D = 90.0

.field public static final MAX_LONGITUDE:D = 180.0

.field public static final MIN_LATITUDE:D = -90.0

.field public static final MIN_LONGITUDE:D = -180.0

.field private static final PROXIMITY_REGION:Ljava/lang/String; = "proximity"

.field private static final PROXIMITY_REGION_ID:Ljava/lang/String; = "proximity_id"

.field private static final PROXIMITY_REGION_MAJOR:Ljava/lang/String; = "major"

.field private static final PROXIMITY_REGION_MINOR:Ljava/lang/String; = "minor"

.field private static final PROXIMITY_REGION_RSSI:Ljava/lang/String; = "rssi"

.field public static final REGION_ID:Ljava/lang/String; = "region_id"

.field private static final SOURCE:Ljava/lang/String; = "source"

.field public static final TYPE:Ljava/lang/String; = "region_event"


# instance fields
.field private final boundaryEvent:I

.field private circularRegion:Lcom/urbanairship/location/CircularRegion;

.field private proximityRegion:Lcom/urbanairship/location/ProximityRegion;

.field private final regionId:Ljava/lang/String;

.field private final source:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 4
    .param p1, "regionId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation

        .annotation build Landroid/support/annotation/Size;
            max = 0xffL
        .end annotation
    .end param
    .param p2, "source"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation

        .annotation build Landroid/support/annotation/Size;
            max = 0xffL
        .end annotation
    .end param
    .param p3, "boundaryEvent"    # I

    .prologue
    .line 162
    invoke-direct {p0}, Lcom/urbanairship/analytics/Event;-><init>()V

    .line 164
    iput-object p1, p0, Lcom/urbanairship/location/RegionEvent;->regionId:Ljava/lang/String;

    .line 165
    iput-object p2, p0, Lcom/urbanairship/location/RegionEvent;->source:Ljava/lang/String;

    .line 166
    iput p3, p0, Lcom/urbanairship/location/RegionEvent;->boundaryEvent:I

    .line 167
    return-void
.end method

.method static regionEventCharacterCountIsValid(Ljava/lang/String;)Z
    .registers 3
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    .line 288
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xff

    if-gt v0, v1, :cond_10

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method static regionEventLatitudeIsValid(Ljava/lang/Double;)Z
    .registers 5
    .param p0, "lat"    # Ljava/lang/Double;

    .prologue
    .line 298
    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide v2, 0x4056800000000000L

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_1c

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide v2, -0x3fa9800000000000L

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_1c

    const/4 v0, 0x1

    :goto_1b
    return v0

    :cond_1c
    const/4 v0, 0x0

    goto :goto_1b
.end method

.method static regionEventLongitudeIsValid(Ljava/lang/Double;)Z
    .registers 5
    .param p0, "lon"    # Ljava/lang/Double;

    .prologue
    .line 308
    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide v2, 0x4066800000000000L

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_1c

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide v2, -0x3f99800000000000L

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_1c

    const/4 v0, 0x1

    :goto_1b
    return v0

    :cond_1c
    const/4 v0, 0x0

    goto :goto_1b
.end method


# virtual methods
.method public getBoundaryEvent()I
    .registers 2

    .prologue
    .line 181
    iget v0, p0, Lcom/urbanairship/location/RegionEvent;->boundaryEvent:I

    return v0
.end method

.method protected final getEventData()Lcom/urbanairship/json/JsonMap;
    .registers 13

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 187
    invoke-virtual {p0}, Lcom/urbanairship/location/RegionEvent;->isValid()Z

    move-result v3

    if-nez v3, :cond_a

    .line 188
    const/4 v3, 0x0

    .line 224
    :goto_9
    return-object v3

    .line 191
    :cond_a
    invoke-static {}, Lcom/urbanairship/json/JsonMap;->newBuilder()Lcom/urbanairship/json/JsonMap$Builder;

    move-result-object v3

    const-string v4, "region_id"

    iget-object v5, p0, Lcom/urbanairship/location/RegionEvent;->regionId:Ljava/lang/String;

    .line 192
    invoke-virtual {v3, v4, v5}, Lcom/urbanairship/json/JsonMap$Builder;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/urbanairship/json/JsonMap$Builder;

    move-result-object v3

    const-string v4, "source"

    iget-object v5, p0, Lcom/urbanairship/location/RegionEvent;->source:Ljava/lang/String;

    .line 193
    invoke-virtual {v3, v4, v5}, Lcom/urbanairship/json/JsonMap$Builder;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/urbanairship/json/JsonMap$Builder;

    move-result-object v4

    const-string v5, "action"

    iget v3, p0, Lcom/urbanairship/location/RegionEvent;->boundaryEvent:I

    if-ne v3, v10, :cond_11c

    const-string v3, "enter"

    .line 194
    :goto_26
    invoke-virtual {v4, v5, v3}, Lcom/urbanairship/json/JsonMap$Builder;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/urbanairship/json/JsonMap$Builder;

    move-result-object v1

    .line 196
    .local v1, "data":Lcom/urbanairship/json/JsonMap$Builder;
    iget-object v3, p0, Lcom/urbanairship/location/RegionEvent;->proximityRegion:Lcom/urbanairship/location/ProximityRegion;

    if-eqz v3, :cond_a9

    iget-object v3, p0, Lcom/urbanairship/location/RegionEvent;->proximityRegion:Lcom/urbanairship/location/ProximityRegion;

    invoke-virtual {v3}, Lcom/urbanairship/location/ProximityRegion;->isValid()Z

    move-result v3

    if-eqz v3, :cond_a9

    .line 197
    invoke-static {}, Lcom/urbanairship/json/JsonMap;->newBuilder()Lcom/urbanairship/json/JsonMap$Builder;

    move-result-object v3

    const-string v4, "proximity_id"

    iget-object v5, p0, Lcom/urbanairship/location/RegionEvent;->proximityRegion:Lcom/urbanairship/location/ProximityRegion;

    .line 198
    invoke-virtual {v5}, Lcom/urbanairship/location/ProximityRegion;->getProximityId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/urbanairship/json/JsonMap$Builder;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/urbanairship/json/JsonMap$Builder;

    move-result-object v3

    const-string v4, "major"

    iget-object v5, p0, Lcom/urbanairship/location/RegionEvent;->proximityRegion:Lcom/urbanairship/location/ProximityRegion;

    .line 199
    invoke-virtual {v5}, Lcom/urbanairship/location/ProximityRegion;->getMajor()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/urbanairship/json/JsonMap$Builder;->put(Ljava/lang/String;I)Lcom/urbanairship/json/JsonMap$Builder;

    move-result-object v3

    const-string v4, "minor"

    iget-object v5, p0, Lcom/urbanairship/location/RegionEvent;->proximityRegion:Lcom/urbanairship/location/ProximityRegion;

    .line 200
    invoke-virtual {v5}, Lcom/urbanairship/location/ProximityRegion;->getMinor()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/urbanairship/json/JsonMap$Builder;->put(Ljava/lang/String;I)Lcom/urbanairship/json/JsonMap$Builder;

    move-result-object v3

    const-string v4, "rssi"

    iget-object v5, p0, Lcom/urbanairship/location/RegionEvent;->proximityRegion:Lcom/urbanairship/location/ProximityRegion;

    .line 201
    invoke-virtual {v5}, Lcom/urbanairship/location/ProximityRegion;->getRssi()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/urbanairship/json/JsonMap$Builder;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lcom/urbanairship/json/JsonMap$Builder;

    move-result-object v2

    .line 203
    .local v2, "proximityRegionData":Lcom/urbanairship/json/JsonMap$Builder;
    iget-object v3, p0, Lcom/urbanairship/location/RegionEvent;->proximityRegion:Lcom/urbanairship/location/ProximityRegion;

    invoke-virtual {v3}, Lcom/urbanairship/location/ProximityRegion;->getLatitude()Ljava/lang/Double;

    move-result-object v3

    if-eqz v3, :cond_85

    .line 204
    const-string v3, "latitude"

    iget-object v4, p0, Lcom/urbanairship/location/RegionEvent;->proximityRegion:Lcom/urbanairship/location/ProximityRegion;

    invoke-virtual {v4}, Lcom/urbanairship/location/ProximityRegion;->getLatitude()Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/urbanairship/json/JsonMap$Builder;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/urbanairship/json/JsonMap$Builder;

    .line 207
    :cond_85
    iget-object v3, p0, Lcom/urbanairship/location/RegionEvent;->proximityRegion:Lcom/urbanairship/location/ProximityRegion;

    invoke-virtual {v3}, Lcom/urbanairship/location/ProximityRegion;->getLongitude()Ljava/lang/Double;

    move-result-object v3

    if-eqz v3, :cond_a0

    .line 208
    const-string v3, "longitude"

    iget-object v4, p0, Lcom/urbanairship/location/RegionEvent;->proximityRegion:Lcom/urbanairship/location/ProximityRegion;

    invoke-virtual {v4}, Lcom/urbanairship/location/ProximityRegion;->getLongitude()Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/urbanairship/json/JsonMap$Builder;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/urbanairship/json/JsonMap$Builder;

    .line 211
    :cond_a0
    const-string v3, "proximity"

    invoke-virtual {v2}, Lcom/urbanairship/json/JsonMap$Builder;->build()Lcom/urbanairship/json/JsonMap;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/urbanairship/json/JsonMap$Builder;->put(Ljava/lang/String;Lcom/urbanairship/json/JsonSerializable;)Lcom/urbanairship/json/JsonMap$Builder;

    .line 214
    .end local v2    # "proximityRegionData":Lcom/urbanairship/json/JsonMap$Builder;
    :cond_a9
    iget-object v3, p0, Lcom/urbanairship/location/RegionEvent;->circularRegion:Lcom/urbanairship/location/CircularRegion;

    if-eqz v3, :cond_116

    iget-object v3, p0, Lcom/urbanairship/location/RegionEvent;->circularRegion:Lcom/urbanairship/location/CircularRegion;

    invoke-virtual {v3}, Lcom/urbanairship/location/CircularRegion;->isValid()Z

    move-result v3

    if-eqz v3, :cond_116

    .line 215
    invoke-static {}, Lcom/urbanairship/json/JsonMap;->newBuilder()Lcom/urbanairship/json/JsonMap$Builder;

    move-result-object v3

    const-string v4, "radius"

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "%.1f"

    new-array v7, v10, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/urbanairship/location/RegionEvent;->circularRegion:Lcom/urbanairship/location/CircularRegion;

    .line 216
    invoke-virtual {v8}, Lcom/urbanairship/location/CircularRegion;->getRadius()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    aput-object v8, v7, v11

    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/urbanairship/json/JsonMap$Builder;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/urbanairship/json/JsonMap$Builder;

    move-result-object v3

    const-string v4, "latitude"

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "%.7f"

    new-array v7, v10, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/urbanairship/location/RegionEvent;->circularRegion:Lcom/urbanairship/location/CircularRegion;

    .line 217
    invoke-virtual {v8}, Lcom/urbanairship/location/CircularRegion;->getLatitude()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    aput-object v8, v7, v11

    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/urbanairship/json/JsonMap$Builder;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/urbanairship/json/JsonMap$Builder;

    move-result-object v3

    const-string v4, "longitude"

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "%.7f"

    new-array v7, v10, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/urbanairship/location/RegionEvent;->circularRegion:Lcom/urbanairship/location/CircularRegion;

    .line 218
    invoke-virtual {v8}, Lcom/urbanairship/location/CircularRegion;->getLongitude()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    aput-object v8, v7, v11

    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/urbanairship/json/JsonMap$Builder;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/urbanairship/json/JsonMap$Builder;

    move-result-object v3

    .line 219
    invoke-virtual {v3}, Lcom/urbanairship/json/JsonMap$Builder;->build()Lcom/urbanairship/json/JsonMap;

    move-result-object v0

    .line 221
    .local v0, "circularRegionData":Lcom/urbanairship/json/JsonMap;
    const-string v3, "circular_region"

    invoke-virtual {v1, v3, v0}, Lcom/urbanairship/json/JsonMap$Builder;->put(Ljava/lang/String;Lcom/urbanairship/json/JsonSerializable;)Lcom/urbanairship/json/JsonMap$Builder;

    .line 224
    .end local v0    # "circularRegionData":Lcom/urbanairship/json/JsonMap;
    :cond_116
    invoke-virtual {v1}, Lcom/urbanairship/json/JsonMap$Builder;->build()Lcom/urbanairship/json/JsonMap;

    move-result-object v3

    goto/16 :goto_9

    .line 193
    .end local v1    # "data":Lcom/urbanairship/json/JsonMap$Builder;
    :cond_11c
    const-string v3, "exit"

    goto/16 :goto_26
.end method

.method protected getPriority()I
    .registers 2

    .prologue
    .line 343
    const/4 v0, 0x2

    return v0
.end method

.method public final getType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 171
    const-string v0, "region_event"

    return-object v0
.end method

.method public isValid()Z
    .registers 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 314
    iget-object v2, p0, Lcom/urbanairship/location/RegionEvent;->regionId:Ljava/lang/String;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/urbanairship/location/RegionEvent;->source:Ljava/lang/String;

    if-nez v2, :cond_10

    .line 315
    :cond_a
    const-string v1, "The region ID and source must not be null."

    invoke-static {v1}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    .line 337
    :goto_f
    return v0

    .line 319
    :cond_10
    iget-object v2, p0, Lcom/urbanairship/location/RegionEvent;->regionId:Ljava/lang/String;

    invoke-static {v2}, Lcom/urbanairship/location/RegionEvent;->regionEventCharacterCountIsValid(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1e

    .line 320
    const-string v1, "The region ID must not be greater than 255 or less than 1 characters in length."

    invoke-static {v1}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    goto :goto_f

    .line 325
    :cond_1e
    iget-object v2, p0, Lcom/urbanairship/location/RegionEvent;->source:Ljava/lang/String;

    invoke-static {v2}, Lcom/urbanairship/location/RegionEvent;->regionEventCharacterCountIsValid(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2c

    .line 326
    const-string v1, "The source must not be greater than 255 or less than 1 characters in length."

    invoke-static {v1}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    goto :goto_f

    .line 331
    :cond_2c
    iget v2, p0, Lcom/urbanairship/location/RegionEvent;->boundaryEvent:I

    if-lt v2, v1, :cond_35

    iget v2, p0, Lcom/urbanairship/location/RegionEvent;->boundaryEvent:I

    const/4 v3, 0x2

    if-le v2, v3, :cond_3b

    .line 332
    :cond_35
    const-string v1, "The boundary event must either be an entrance (1) or an exit (2)."

    invoke-static {v1}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    goto :goto_f

    :cond_3b
    move v0, v1

    .line 337
    goto :goto_f
.end method

.method public setCircularRegion(Lcom/urbanairship/location/CircularRegion;)V
    .registers 2
    .param p1, "circularRegion"    # Lcom/urbanairship/location/CircularRegion;

    .prologue
    .line 279
    iput-object p1, p0, Lcom/urbanairship/location/RegionEvent;->circularRegion:Lcom/urbanairship/location/CircularRegion;

    .line 280
    return-void
.end method

.method public setProximityRegion(Lcom/urbanairship/location/ProximityRegion;)V
    .registers 2
    .param p1, "proximityRegion"    # Lcom/urbanairship/location/ProximityRegion;

    .prologue
    .line 270
    iput-object p1, p0, Lcom/urbanairship/location/RegionEvent;->proximityRegion:Lcom/urbanairship/location/ProximityRegion;

    .line 271
    return-void
.end method

.method public toJsonValue()Lcom/urbanairship/json/JsonValue;
    .registers 9

    .prologue
    .line 230
    invoke-virtual {p0}, Lcom/urbanairship/location/RegionEvent;->isValid()Z

    move-result v3

    if-nez v3, :cond_8

    .line 231
    const/4 v3, 0x0

    .line 261
    :goto_7
    return-object v3

    .line 234
    :cond_8
    invoke-static {}, Lcom/urbanairship/json/JsonMap;->newBuilder()Lcom/urbanairship/json/JsonMap$Builder;

    move-result-object v3

    const-string v4, "region_id"

    iget-object v5, p0, Lcom/urbanairship/location/RegionEvent;->regionId:Ljava/lang/String;

    .line 235
    invoke-virtual {v3, v4, v5}, Lcom/urbanairship/json/JsonMap$Builder;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/urbanairship/json/JsonMap$Builder;

    move-result-object v3

    const-string v4, "source"

    iget-object v5, p0, Lcom/urbanairship/location/RegionEvent;->source:Ljava/lang/String;

    .line 236
    invoke-virtual {v3, v4, v5}, Lcom/urbanairship/json/JsonMap$Builder;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/urbanairship/json/JsonMap$Builder;

    move-result-object v4

    const-string v5, "action"

    iget v3, p0, Lcom/urbanairship/location/RegionEvent;->boundaryEvent:I

    const/4 v6, 0x1

    if-ne v3, v6, :cond_d1

    const-string v3, "enter"

    .line 237
    :goto_25
    invoke-virtual {v4, v5, v3}, Lcom/urbanairship/json/JsonMap$Builder;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/urbanairship/json/JsonMap$Builder;

    move-result-object v1

    .line 239
    .local v1, "data":Lcom/urbanairship/json/JsonMap$Builder;
    iget-object v3, p0, Lcom/urbanairship/location/RegionEvent;->proximityRegion:Lcom/urbanairship/location/ProximityRegion;

    if-eqz v3, :cond_8a

    iget-object v3, p0, Lcom/urbanairship/location/RegionEvent;->proximityRegion:Lcom/urbanairship/location/ProximityRegion;

    invoke-virtual {v3}, Lcom/urbanairship/location/ProximityRegion;->isValid()Z

    move-result v3

    if-eqz v3, :cond_8a

    .line 240
    invoke-static {}, Lcom/urbanairship/json/JsonMap;->newBuilder()Lcom/urbanairship/json/JsonMap$Builder;

    move-result-object v3

    const-string v4, "proximity_id"

    iget-object v5, p0, Lcom/urbanairship/location/RegionEvent;->proximityRegion:Lcom/urbanairship/location/ProximityRegion;

    .line 241
    invoke-virtual {v5}, Lcom/urbanairship/location/ProximityRegion;->getProximityId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/urbanairship/json/JsonMap$Builder;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/urbanairship/json/JsonMap$Builder;

    move-result-object v3

    const-string v4, "major"

    iget-object v5, p0, Lcom/urbanairship/location/RegionEvent;->proximityRegion:Lcom/urbanairship/location/ProximityRegion;

    .line 242
    invoke-virtual {v5}, Lcom/urbanairship/location/ProximityRegion;->getMajor()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/urbanairship/json/JsonMap$Builder;->put(Ljava/lang/String;I)Lcom/urbanairship/json/JsonMap$Builder;

    move-result-object v3

    const-string v4, "minor"

    iget-object v5, p0, Lcom/urbanairship/location/RegionEvent;->proximityRegion:Lcom/urbanairship/location/ProximityRegion;

    .line 243
    invoke-virtual {v5}, Lcom/urbanairship/location/ProximityRegion;->getMinor()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/urbanairship/json/JsonMap$Builder;->put(Ljava/lang/String;I)Lcom/urbanairship/json/JsonMap$Builder;

    move-result-object v3

    const-string v4, "rssi"

    iget-object v5, p0, Lcom/urbanairship/location/RegionEvent;->proximityRegion:Lcom/urbanairship/location/ProximityRegion;

    .line 244
    invoke-virtual {v5}, Lcom/urbanairship/location/ProximityRegion;->getRssi()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/urbanairship/json/JsonMap$Builder;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lcom/urbanairship/json/JsonMap$Builder;

    move-result-object v3

    const-string v4, "latitude"

    iget-object v5, p0, Lcom/urbanairship/location/RegionEvent;->proximityRegion:Lcom/urbanairship/location/ProximityRegion;

    .line 245
    invoke-virtual {v5}, Lcom/urbanairship/location/ProximityRegion;->getLatitude()Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/urbanairship/json/JsonMap$Builder;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lcom/urbanairship/json/JsonMap$Builder;

    move-result-object v3

    const-string v4, "latitude"

    iget-object v5, p0, Lcom/urbanairship/location/RegionEvent;->proximityRegion:Lcom/urbanairship/location/ProximityRegion;

    .line 246
    invoke-virtual {v5}, Lcom/urbanairship/location/ProximityRegion;->getLatitude()Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/urbanairship/json/JsonMap$Builder;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lcom/urbanairship/json/JsonMap$Builder;

    move-result-object v2

    .line 248
    .local v2, "proximityRegionData":Lcom/urbanairship/json/JsonMap$Builder;
    const-string v3, "proximity"

    invoke-virtual {v2}, Lcom/urbanairship/json/JsonMap$Builder;->build()Lcom/urbanairship/json/JsonMap;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/urbanairship/json/JsonMap$Builder;->put(Ljava/lang/String;Lcom/urbanairship/json/JsonSerializable;)Lcom/urbanairship/json/JsonMap$Builder;

    .line 251
    .end local v2    # "proximityRegionData":Lcom/urbanairship/json/JsonMap$Builder;
    :cond_8a
    iget-object v3, p0, Lcom/urbanairship/location/RegionEvent;->circularRegion:Lcom/urbanairship/location/CircularRegion;

    if-eqz v3, :cond_c7

    iget-object v3, p0, Lcom/urbanairship/location/RegionEvent;->circularRegion:Lcom/urbanairship/location/CircularRegion;

    invoke-virtual {v3}, Lcom/urbanairship/location/CircularRegion;->isValid()Z

    move-result v3

    if-eqz v3, :cond_c7

    .line 252
    invoke-static {}, Lcom/urbanairship/json/JsonMap;->newBuilder()Lcom/urbanairship/json/JsonMap$Builder;

    move-result-object v3

    const-string v4, "radius"

    iget-object v5, p0, Lcom/urbanairship/location/RegionEvent;->circularRegion:Lcom/urbanairship/location/CircularRegion;

    .line 253
    invoke-virtual {v5}, Lcom/urbanairship/location/CircularRegion;->getRadius()D

    move-result-wide v6

    invoke-virtual {v3, v4, v6, v7}, Lcom/urbanairship/json/JsonMap$Builder;->put(Ljava/lang/String;D)Lcom/urbanairship/json/JsonMap$Builder;

    move-result-object v3

    const-string v4, "latitude"

    iget-object v5, p0, Lcom/urbanairship/location/RegionEvent;->circularRegion:Lcom/urbanairship/location/CircularRegion;

    .line 254
    invoke-virtual {v5}, Lcom/urbanairship/location/CircularRegion;->getLatitude()D

    move-result-wide v6

    invoke-virtual {v3, v4, v6, v7}, Lcom/urbanairship/json/JsonMap$Builder;->put(Ljava/lang/String;D)Lcom/urbanairship/json/JsonMap$Builder;

    move-result-object v3

    const-string v4, "longitude"

    iget-object v5, p0, Lcom/urbanairship/location/RegionEvent;->circularRegion:Lcom/urbanairship/location/CircularRegion;

    .line 255
    invoke-virtual {v5}, Lcom/urbanairship/location/CircularRegion;->getLongitude()D

    move-result-wide v6

    invoke-virtual {v3, v4, v6, v7}, Lcom/urbanairship/json/JsonMap$Builder;->put(Ljava/lang/String;D)Lcom/urbanairship/json/JsonMap$Builder;

    move-result-object v3

    .line 256
    invoke-virtual {v3}, Lcom/urbanairship/json/JsonMap$Builder;->build()Lcom/urbanairship/json/JsonMap;

    move-result-object v0

    .line 258
    .local v0, "circularRegionData":Lcom/urbanairship/json/JsonMap;
    const-string v3, "circular_region"

    invoke-virtual {v1, v3, v0}, Lcom/urbanairship/json/JsonMap$Builder;->put(Ljava/lang/String;Lcom/urbanairship/json/JsonSerializable;)Lcom/urbanairship/json/JsonMap$Builder;

    .line 261
    .end local v0    # "circularRegionData":Lcom/urbanairship/json/JsonMap;
    :cond_c7
    invoke-virtual {v1}, Lcom/urbanairship/json/JsonMap$Builder;->build()Lcom/urbanairship/json/JsonMap;

    move-result-object v3

    invoke-virtual {v3}, Lcom/urbanairship/json/JsonMap;->toJsonValue()Lcom/urbanairship/json/JsonValue;

    move-result-object v3

    goto/16 :goto_7

    .line 236
    .end local v1    # "data":Lcom/urbanairship/json/JsonMap$Builder;
    :cond_d1
    const-string v3, "exit"

    goto/16 :goto_25
.end method
