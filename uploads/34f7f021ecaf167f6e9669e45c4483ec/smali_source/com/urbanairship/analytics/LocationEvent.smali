.class public Lcom/urbanairship/analytics/LocationEvent;
.super Lcom/urbanairship/analytics/Event;
.source "LocationEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/urbanairship/analytics/LocationEvent$UpdateType;
    }
.end annotation


# static fields
.field static final FOREGROUND_KEY:Ljava/lang/String; = "foreground"

.field static final H_ACCURACY_KEY:Ljava/lang/String; = "h_accuracy"

.field static final LATITUDE_KEY:Ljava/lang/String; = "lat"

.field static final LONGITUDE_KEY:Ljava/lang/String; = "long"

.field static final PROVIDER_KEY:Ljava/lang/String; = "provider"

.field static final REQUESTED_ACCURACY_KEY:Ljava/lang/String; = "requested_accuracy"

.field static final TYPE:Ljava/lang/String; = "location"

.field static final UPDATE_DISTANCE_KEY:Ljava/lang/String; = "update_dist"

.field public static final UPDATE_TYPE_CONTINUOUS:I = 0x0

.field static final UPDATE_TYPE_KEY:Ljava/lang/String; = "update_type"

.field public static final UPDATE_TYPE_SINGLE:I = 0x1

.field static final V_ACCURACY_KEY:Ljava/lang/String; = "v_accuracy"


# instance fields
.field private final accuracy:Ljava/lang/String;

.field private final foreground:Ljava/lang/String;

.field private final latitude:Ljava/lang/String;

.field private final longitude:Ljava/lang/String;

.field private final provider:Ljava/lang/String;

.field private final requestedAccuracy:Ljava/lang/String;

.field private final updateDistance:Ljava/lang/String;

.field private final updateType:I


# direct methods
.method public constructor <init>(Landroid/location/Location;IIIZ)V
    .registers 14
    .param p1, "location"    # Landroid/location/Location;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "type"    # I
    .param p3, "userRequestedAccuracy"    # I
    .param p4, "updateDist"    # I
    .param p5, "isForeground"    # Z

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 72
    invoke-direct {p0}, Lcom/urbanairship/analytics/Event;-><init>()V

    .line 79
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%.6f"

    new-array v2, v7, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/urbanairship/analytics/LocationEvent;->latitude:Ljava/lang/String;

    .line 80
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%.6f"

    new-array v2, v7, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/urbanairship/analytics/LocationEvent;->longitude:Ljava/lang/String;

    .line 82
    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/util/UAStringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_63

    const-string v0, "UNKNOWN"

    :goto_3d
    iput-object v0, p0, Lcom/urbanairship/analytics/LocationEvent;->provider:Ljava/lang/String;

    .line 83
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/urbanairship/analytics/LocationEvent;->accuracy:Ljava/lang/String;

    .line 84
    if-ltz p3, :cond_68

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :goto_4f
    iput-object v0, p0, Lcom/urbanairship/analytics/LocationEvent;->requestedAccuracy:Ljava/lang/String;

    .line 85
    if-ltz p4, :cond_6b

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :goto_57
    iput-object v0, p0, Lcom/urbanairship/analytics/LocationEvent;->updateDistance:Ljava/lang/String;

    .line 86
    if-eqz p5, :cond_6e

    const-string/jumbo v0, "true"

    :goto_5e
    iput-object v0, p0, Lcom/urbanairship/analytics/LocationEvent;->foreground:Ljava/lang/String;

    .line 87
    iput p2, p0, Lcom/urbanairship/analytics/LocationEvent;->updateType:I

    .line 88
    return-void

    .line 82
    :cond_63
    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v0

    goto :goto_3d

    .line 84
    :cond_68
    const-string v0, "NONE"

    goto :goto_4f

    .line 85
    :cond_6b
    const-string v0, "NONE"

    goto :goto_57

    .line 86
    :cond_6e
    const-string v0, "false"

    goto :goto_5e
.end method


# virtual methods
.method protected final getEventData()Lcom/urbanairship/json/JsonMap;
    .registers 4

    .prologue
    .line 97
    invoke-static {}, Lcom/urbanairship/json/JsonMap;->newBuilder()Lcom/urbanairship/json/JsonMap$Builder;

    move-result-object v0

    const-string v1, "lat"

    iget-object v2, p0, Lcom/urbanairship/analytics/LocationEvent;->latitude:Ljava/lang/String;

    .line 98
    invoke-virtual {v0, v1, v2}, Lcom/urbanairship/json/JsonMap$Builder;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/urbanairship/json/JsonMap$Builder;

    move-result-object v0

    const-string v1, "long"

    iget-object v2, p0, Lcom/urbanairship/analytics/LocationEvent;->longitude:Ljava/lang/String;

    .line 99
    invoke-virtual {v0, v1, v2}, Lcom/urbanairship/json/JsonMap$Builder;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/urbanairship/json/JsonMap$Builder;

    move-result-object v0

    const-string v1, "requested_accuracy"

    iget-object v2, p0, Lcom/urbanairship/analytics/LocationEvent;->requestedAccuracy:Ljava/lang/String;

    .line 100
    invoke-virtual {v0, v1, v2}, Lcom/urbanairship/json/JsonMap$Builder;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/urbanairship/json/JsonMap$Builder;

    move-result-object v1

    const-string/jumbo v2, "update_type"

    iget v0, p0, Lcom/urbanairship/analytics/LocationEvent;->updateType:I

    if-nez v0, :cond_58

    const-string v0, "CONTINUOUS"

    .line 101
    :goto_25
    invoke-virtual {v1, v2, v0}, Lcom/urbanairship/json/JsonMap$Builder;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/urbanairship/json/JsonMap$Builder;

    move-result-object v0

    const-string v1, "provider"

    iget-object v2, p0, Lcom/urbanairship/analytics/LocationEvent;->provider:Ljava/lang/String;

    .line 102
    invoke-virtual {v0, v1, v2}, Lcom/urbanairship/json/JsonMap$Builder;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/urbanairship/json/JsonMap$Builder;

    move-result-object v0

    const-string v1, "h_accuracy"

    iget-object v2, p0, Lcom/urbanairship/analytics/LocationEvent;->accuracy:Ljava/lang/String;

    .line 103
    invoke-virtual {v0, v1, v2}, Lcom/urbanairship/json/JsonMap$Builder;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/urbanairship/json/JsonMap$Builder;

    move-result-object v0

    const-string/jumbo v1, "v_accuracy"

    const-string v2, "NONE"

    .line 104
    invoke-virtual {v0, v1, v2}, Lcom/urbanairship/json/JsonMap$Builder;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/urbanairship/json/JsonMap$Builder;

    move-result-object v0

    const-string v1, "foreground"

    iget-object v2, p0, Lcom/urbanairship/analytics/LocationEvent;->foreground:Ljava/lang/String;

    .line 105
    invoke-virtual {v0, v1, v2}, Lcom/urbanairship/json/JsonMap$Builder;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/urbanairship/json/JsonMap$Builder;

    move-result-object v0

    const-string/jumbo v1, "update_dist"

    iget-object v2, p0, Lcom/urbanairship/analytics/LocationEvent;->updateDistance:Ljava/lang/String;

    .line 106
    invoke-virtual {v0, v1, v2}, Lcom/urbanairship/json/JsonMap$Builder;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/urbanairship/json/JsonMap$Builder;

    move-result-object v0

    .line 107
    invoke-virtual {v0}, Lcom/urbanairship/json/JsonMap$Builder;->build()Lcom/urbanairship/json/JsonMap;

    move-result-object v0

    .line 97
    return-object v0

    .line 100
    :cond_58
    const-string v0, "SINGLE"

    goto :goto_25
.end method

.method protected getPriority()I
    .registers 2

    .prologue
    .line 113
    const/4 v0, 0x0

    return v0
.end method

.method public getType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 92
    const-string v0, "location"

    return-object v0
.end method
