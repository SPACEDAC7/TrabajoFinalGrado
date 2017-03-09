.class public Lcom/urbanairship/location/LocationRequestOptions;
.super Ljava/lang/Object;
.source "LocationRequestOptions.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/urbanairship/json/JsonSerializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/urbanairship/location/LocationRequestOptions$Builder;,
        Lcom/urbanairship/location/LocationRequestOptions$Priority;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/urbanairship/location/LocationRequestOptions;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_REQUEST_PRIORITY:I = 0x2

.field public static final DEFAULT_UPDATE_INTERVAL_METERS:F = 800.0f

.field public static final DEFAULT_UPDATE_INTERVAL_MILLISECONDS:J = 0x493e0L

.field public static final MIN_DISTANCE_KEY:Ljava/lang/String; = "minDistance"

.field public static final MIN_TIME_KEY:Ljava/lang/String; = "minTime"

.field public static final PRIORITY_BALANCED_POWER_ACCURACY:I = 0x2

.field public static final PRIORITY_HIGH_ACCURACY:I = 0x1

.field public static final PRIORITY_KEY:Ljava/lang/String; = "priority"

.field public static final PRIORITY_LOW_POWER:I = 0x3

.field public static final PRIORITY_NO_POWER:I = 0x4


# instance fields
.field private final minDistance:F

.field private final minTime:J

.field private final priority:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 302
    new-instance v0, Lcom/urbanairship/location/LocationRequestOptions$1;

    invoke-direct {v0}, Lcom/urbanairship/location/LocationRequestOptions$1;-><init>()V

    sput-object v0, Lcom/urbanairship/location/LocationRequestOptions;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(IJF)V
    .registers 5
    .param p1, "priority"    # I
    .param p2, "minTime"    # J
    .param p4, "minDistance"    # F

    .prologue
    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    iput p1, p0, Lcom/urbanairship/location/LocationRequestOptions;->priority:I

    .line 143
    iput-wide p2, p0, Lcom/urbanairship/location/LocationRequestOptions;->minTime:J

    .line 144
    iput p4, p0, Lcom/urbanairship/location/LocationRequestOptions;->minDistance:F

    .line 145
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 6
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 132
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    invoke-direct {p0, v0, v2, v3, v1}, Lcom/urbanairship/location/LocationRequestOptions;-><init>(IJF)V

    .line 133
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/urbanairship/location/LocationRequestOptions$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/urbanairship/location/LocationRequestOptions$1;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/urbanairship/location/LocationRequestOptions;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Lcom/urbanairship/location/LocationRequestOptions$Builder;)V
    .registers 6
    .param p1, "builder"    # Lcom/urbanairship/location/LocationRequestOptions$Builder;

    .prologue
    .line 122
    # getter for: Lcom/urbanairship/location/LocationRequestOptions$Builder;->priority:I
    invoke-static {p1}, Lcom/urbanairship/location/LocationRequestOptions$Builder;->access$000(Lcom/urbanairship/location/LocationRequestOptions$Builder;)I

    move-result v0

    # getter for: Lcom/urbanairship/location/LocationRequestOptions$Builder;->minTime:J
    invoke-static {p1}, Lcom/urbanairship/location/LocationRequestOptions$Builder;->access$100(Lcom/urbanairship/location/LocationRequestOptions$Builder;)J

    move-result-wide v2

    # getter for: Lcom/urbanairship/location/LocationRequestOptions$Builder;->minDistance:F
    invoke-static {p1}, Lcom/urbanairship/location/LocationRequestOptions$Builder;->access$200(Lcom/urbanairship/location/LocationRequestOptions$Builder;)F

    move-result v1

    invoke-direct {p0, v0, v2, v3, v1}, Lcom/urbanairship/location/LocationRequestOptions;-><init>(IJF)V

    .line 123
    return-void
.end method

.method synthetic constructor <init>(Lcom/urbanairship/location/LocationRequestOptions$Builder;Lcom/urbanairship/location/LocationRequestOptions$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/urbanairship/location/LocationRequestOptions$Builder;
    .param p2, "x1"    # Lcom/urbanairship/location/LocationRequestOptions$1;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/urbanairship/location/LocationRequestOptions;-><init>(Lcom/urbanairship/location/LocationRequestOptions$Builder;)V

    return-void
.end method

.method static synthetic access$400(J)V
    .registers 2
    .param p0, "x0"    # J

    .prologue
    .line 28
    invoke-static {p0, p1}, Lcom/urbanairship/location/LocationRequestOptions;->verifyMinTime(J)V

    return-void
.end method

.method static synthetic access$500(F)V
    .registers 1
    .param p0, "x0"    # F

    .prologue
    .line 28
    invoke-static {p0}, Lcom/urbanairship/location/LocationRequestOptions;->verifyMinDistance(F)V

    return-void
.end method

.method static synthetic access$600(I)V
    .registers 1
    .param p0, "x0"    # I

    .prologue
    .line 28
    invoke-static {p0}, Lcom/urbanairship/location/LocationRequestOptions;->verifyPriority(I)V

    return-void
.end method

.method public static createDefaultOptions()Lcom/urbanairship/location/LocationRequestOptions;
    .registers 5

    .prologue
    .line 167
    new-instance v0, Lcom/urbanairship/location/LocationRequestOptions;

    const/4 v1, 0x2

    const-wide/32 v2, 0x493e0

    const/high16 v4, 0x44480000

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/urbanairship/location/LocationRequestOptions;-><init>(IJF)V

    return-object v0
.end method

.method public static parseJson(Ljava/lang/String;)Lcom/urbanairship/location/LocationRequestOptions;
    .registers 11
    .param p0, "json"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/urbanairship/json/JsonException;
        }
    .end annotation

    .prologue
    .line 283
    invoke-static {p0}, Lcom/urbanairship/json/JsonValue;->parseString(Ljava/lang/String;)Lcom/urbanairship/json/JsonValue;

    move-result-object v6

    invoke-virtual {v6}, Lcom/urbanairship/json/JsonValue;->getMap()Lcom/urbanairship/json/JsonMap;

    move-result-object v0

    .line 285
    .local v0, "jsonMap":Lcom/urbanairship/json/JsonMap;
    if-nez v0, :cond_c

    .line 286
    const/4 v6, 0x0

    .line 299
    :goto_b
    return-object v6

    .line 289
    :cond_c
    const-string v6, "minDistance"

    invoke-virtual {v0, v6}, Lcom/urbanairship/json/JsonMap;->opt(Ljava/lang/String;)Lcom/urbanairship/json/JsonValue;

    move-result-object v6

    invoke-virtual {v6}, Lcom/urbanairship/json/JsonValue;->getNumber()Ljava/lang/Number;

    move-result-object v2

    .line 291
    .local v2, "minDistanceNumber":Ljava/lang/Number;
    if-nez v2, :cond_41

    const/high16 v1, 0x44480000

    .line 292
    .local v1, "minDistance":F
    :goto_1a
    const-string v6, "minTime"

    invoke-virtual {v0, v6}, Lcom/urbanairship/json/JsonMap;->opt(Ljava/lang/String;)Lcom/urbanairship/json/JsonValue;

    move-result-object v6

    const-wide/32 v8, 0x493e0

    invoke-virtual {v6, v8, v9}, Lcom/urbanairship/json/JsonValue;->getLong(J)J

    move-result-wide v4

    .line 293
    .local v4, "minTime":J
    const-string v6, "priority"

    invoke-virtual {v0, v6}, Lcom/urbanairship/json/JsonMap;->opt(Ljava/lang/String;)Lcom/urbanairship/json/JsonValue;

    move-result-object v6

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Lcom/urbanairship/json/JsonValue;->getInt(I)I

    move-result v3

    .line 295
    .local v3, "priority":I
    invoke-static {v3}, Lcom/urbanairship/location/LocationRequestOptions;->verifyPriority(I)V

    .line 296
    invoke-static {v1}, Lcom/urbanairship/location/LocationRequestOptions;->verifyMinDistance(F)V

    .line 297
    invoke-static {v4, v5}, Lcom/urbanairship/location/LocationRequestOptions;->verifyMinTime(J)V

    .line 299
    new-instance v6, Lcom/urbanairship/location/LocationRequestOptions;

    invoke-direct {v6, v3, v4, v5, v1}, Lcom/urbanairship/location/LocationRequestOptions;-><init>(IJF)V

    goto :goto_b

    .line 291
    .end local v1    # "minDistance":F
    .end local v3    # "priority":I
    .end local v4    # "minTime":J
    :cond_41
    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v1

    goto :goto_1a
.end method

.method private static verifyMinDistance(F)V
    .registers 3
    .param p0, "minDistance"    # F

    .prologue
    .line 236
    const/4 v0, 0x0

    cmpg-float v0, p0, v0

    if-gez v0, :cond_d

    .line 237
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "minDistance must be greater or equal to 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 239
    :cond_d
    return-void
.end method

.method private static verifyMinTime(J)V
    .registers 4
    .param p0, "minTime"    # J

    .prologue
    .line 225
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-gez v0, :cond_e

    .line 226
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "minTime must be greater or equal to 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 228
    :cond_e
    return-void
.end method

.method private static verifyPriority(I)V
    .registers 3
    .param p0, "priority"    # I

    .prologue
    .line 247
    packed-switch p0, :pswitch_data_c

    .line 254
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Priority can only be either PRIORITY_HIGH_ACCURACY, PRIORITY_BALANCED_POWER_ACCURACY, PRIORITY_LOW_POWER, or PRIORITY_NO_POWER"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 258
    :pswitch_b
    return-void

    .line 247
    :pswitch_data_c
    .packed-switch 0x1
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
    .end packed-switch
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 149
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 209
    instance-of v2, p1, Lcom/urbanairship/location/LocationRequestOptions;

    if-nez v2, :cond_6

    .line 214
    :cond_5
    :goto_5
    return v1

    :cond_6
    move-object v0, p1

    .line 213
    check-cast v0, Lcom/urbanairship/location/LocationRequestOptions;

    .line 214
    .local v0, "other":Lcom/urbanairship/location/LocationRequestOptions;
    iget v2, v0, Lcom/urbanairship/location/LocationRequestOptions;->priority:I

    iget v3, p0, Lcom/urbanairship/location/LocationRequestOptions;->priority:I

    if-ne v2, v3, :cond_5

    iget-wide v2, v0, Lcom/urbanairship/location/LocationRequestOptions;->minTime:J

    iget-wide v4, p0, Lcom/urbanairship/location/LocationRequestOptions;->minTime:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_5

    iget v2, v0, Lcom/urbanairship/location/LocationRequestOptions;->minDistance:F

    iget v3, p0, Lcom/urbanairship/location/LocationRequestOptions;->minDistance:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_5

    const/4 v1, 0x1

    goto :goto_5
.end method

.method public getMinDistance()F
    .registers 2

    .prologue
    .line 198
    iget v0, p0, Lcom/urbanairship/location/LocationRequestOptions;->minDistance:F

    return v0
.end method

.method public getMinTime()J
    .registers 3

    .prologue
    .line 189
    iget-wide v0, p0, Lcom/urbanairship/location/LocationRequestOptions;->minTime:J

    return-wide v0
.end method

.method public getPriority()I
    .registers 2

    .prologue
    .line 180
    iget v0, p0, Lcom/urbanairship/location/LocationRequestOptions;->priority:I

    return v0
.end method

.method public toJsonValue()Lcom/urbanairship/json/JsonValue;
    .registers 7

    .prologue
    .line 262
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 263
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "priority"

    invoke-virtual {p0}, Lcom/urbanairship/location/LocationRequestOptions;->getPriority()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    const-string v2, "minDistance"

    invoke-virtual {p0}, Lcom/urbanairship/location/LocationRequestOptions;->getMinDistance()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    const-string v2, "minTime"

    invoke-virtual {p0}, Lcom/urbanairship/location/LocationRequestOptions;->getMinTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    :try_start_2c
    invoke-static {v1}, Lcom/urbanairship/json/JsonValue;->wrap(Ljava/lang/Object;)Lcom/urbanairship/json/JsonValue;
    :try_end_2f
    .catch Lcom/urbanairship/json/JsonException; {:try_start_2c .. :try_end_2f} :catch_31

    move-result-object v2

    .line 272
    :goto_30
    return-object v2

    .line 270
    :catch_31
    move-exception v0

    .line 271
    .local v0, "e":Lcom/urbanairship/json/JsonException;
    const-string v2, "LocationRequestOptions - Unable to serialize to JSON."

    invoke-static {v2, v0}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 272
    sget-object v2, Lcom/urbanairship/json/JsonValue;->NULL:Lcom/urbanairship/json/JsonValue;

    goto :goto_30
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 204
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LocationRequestOptions: Priority "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/urbanairship/location/LocationRequestOptions;->priority:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " minTime "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/urbanairship/location/LocationRequestOptions;->minTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " minDistance "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/urbanairship/location/LocationRequestOptions;->minDistance:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "flags"    # I

    .prologue
    .line 154
    iget v0, p0, Lcom/urbanairship/location/LocationRequestOptions;->priority:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 155
    iget-wide v0, p0, Lcom/urbanairship/location/LocationRequestOptions;->minTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 156
    iget v0, p0, Lcom/urbanairship/location/LocationRequestOptions;->minDistance:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 157
    return-void
.end method
