.class public Lcom/urbanairship/push/iam/InAppMessage;
.super Ljava/lang/Object;
.source "InAppMessage.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/urbanairship/json/JsonSerializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/urbanairship/push/iam/InAppMessage$Builder;,
        Lcom/urbanairship/push/iam/InAppMessage$Position;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/urbanairship/push/iam/InAppMessage;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEFAULT_EXPIRY_MS:J = 0x9a7ec800L

.field public static final POSITION_BOTTOM:I = 0x0

.field public static final POSITION_TOP:I = 0x1


# instance fields
.field private final alert:Ljava/lang/String;

.field private final buttonActionValues:Ljava/util/Map;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/urbanairship/actions/ActionValue;",
            ">;>;"
        }
    .end annotation
.end field

.field private final buttonGroupId:Ljava/lang/String;

.field private final clickActionValues:Ljava/util/Map;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/urbanairship/actions/ActionValue;",
            ">;"
        }
    .end annotation
.end field

.field private final durationMilliseconds:Ljava/lang/Long;

.field private final expiryMS:J

.field private final extras:Lcom/urbanairship/json/JsonMap;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final id:Ljava/lang/String;

.field private final position:I

.field private final primaryColor:Ljava/lang/Integer;

.field private final secondaryColor:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 486
    new-instance v0, Lcom/urbanairship/push/iam/InAppMessage$1;

    invoke-direct {v0}, Lcom/urbanairship/push/iam/InAppMessage$1;-><init>()V

    sput-object v0, Lcom/urbanairship/push/iam/InAppMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 9
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/urbanairship/push/iam/InAppMessage;->id:Ljava/lang/String;

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/urbanairship/push/iam/InAppMessage;->alert:Ljava/lang/String;

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/urbanairship/push/iam/InAppMessage;->expiryMS:J

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/urbanairship/push/iam/InAppMessage;->position:I

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-ne v2, v6, :cond_8e

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    :goto_2b
    iput-object v2, p0, Lcom/urbanairship/push/iam/InAppMessage;->durationMilliseconds:Ljava/lang/Long;

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-ne v2, v6, :cond_90

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_3b
    iput-object v2, p0, Lcom/urbanairship/push/iam/InAppMessage;->primaryColor:Ljava/lang/Integer;

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-ne v2, v6, :cond_92

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_4b
    iput-object v2, p0, Lcom/urbanairship/push/iam/InAppMessage;->secondaryColor:Ljava/lang/Integer;

    .line 101
    const/4 v1, 0x0

    .line 103
    .local v1, "extras":Lcom/urbanairship/json/JsonMap;
    :try_start_4e
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/urbanairship/json/JsonValue;->parseString(Ljava/lang/String;)Lcom/urbanairship/json/JsonValue;

    move-result-object v2

    invoke-virtual {v2}, Lcom/urbanairship/json/JsonValue;->getMap()Lcom/urbanairship/json/JsonMap;
    :try_end_59
    .catch Lcom/urbanairship/json/JsonException; {:try_start_4e .. :try_end_59} :catch_94

    move-result-object v1

    .line 108
    :goto_5a
    if-nez v1, :cond_61

    new-instance v1, Lcom/urbanairship/json/JsonMap;

    .end local v1    # "extras":Lcom/urbanairship/json/JsonMap;
    invoke-direct {v1, v3}, Lcom/urbanairship/json/JsonMap;-><init>(Ljava/util/Map;)V

    :cond_61
    iput-object v1, p0, Lcom/urbanairship/push/iam/InAppMessage;->extras:Lcom/urbanairship/json/JsonMap;

    .line 109
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/urbanairship/push/iam/InAppMessage;->buttonGroupId:Ljava/lang/String;

    .line 110
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/urbanairship/push/iam/InAppMessage;->buttonActionValues:Ljava/util/Map;

    .line 111
    iget-object v2, p0, Lcom/urbanairship/push/iam/InAppMessage;->buttonActionValues:Ljava/util/Map;

    const-class v3, Lcom/urbanairship/actions/ActionValue;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->readMap(Ljava/util/Map;Ljava/lang/ClassLoader;)V

    .line 113
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/urbanairship/push/iam/InAppMessage;->clickActionValues:Ljava/util/Map;

    .line 114
    iget-object v2, p0, Lcom/urbanairship/push/iam/InAppMessage;->clickActionValues:Ljava/util/Map;

    const-class v3, Lcom/urbanairship/actions/ActionValue;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->readMap(Ljava/util/Map;Ljava/lang/ClassLoader;)V

    .line 115
    return-void

    :cond_8e
    move-object v2, v3

    .line 97
    goto :goto_2b

    :cond_90
    move-object v2, v3

    .line 98
    goto :goto_3b

    :cond_92
    move-object v2, v3

    .line 99
    goto :goto_4b

    .line 104
    .restart local v1    # "extras":Lcom/urbanairship/json/JsonMap;
    :catch_94
    move-exception v0

    .line 105
    .local v0, "e":Lcom/urbanairship/json/JsonException;
    const-string v2, "InAppMessage - unable to parse extras from parcel."

    invoke-static {v2}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    goto :goto_5a
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/urbanairship/push/iam/InAppMessage$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/urbanairship/push/iam/InAppMessage$1;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/urbanairship/push/iam/InAppMessage;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Lcom/urbanairship/push/iam/InAppMessage$Builder;)V
    .registers 6
    .param p1, "builder"    # Lcom/urbanairship/push/iam/InAppMessage$Builder;

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    # getter for: Lcom/urbanairship/push/iam/InAppMessage$Builder;->expiryMS:Ljava/lang/Long;
    invoke-static {p1}, Lcom/urbanairship/push/iam/InAppMessage$Builder;->access$000(Lcom/urbanairship/push/iam/InAppMessage$Builder;)Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_61

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide v2, 0x9a7ec800L

    add-long/2addr v0, v2

    :goto_13
    iput-wide v0, p0, Lcom/urbanairship/push/iam/InAppMessage;->expiryMS:J

    .line 75
    # getter for: Lcom/urbanairship/push/iam/InAppMessage$Builder;->id:Ljava/lang/String;
    invoke-static {p1}, Lcom/urbanairship/push/iam/InAppMessage$Builder;->access$100(Lcom/urbanairship/push/iam/InAppMessage$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage;->id:Ljava/lang/String;

    .line 76
    # getter for: Lcom/urbanairship/push/iam/InAppMessage$Builder;->extras:Lcom/urbanairship/json/JsonMap;
    invoke-static {p1}, Lcom/urbanairship/push/iam/InAppMessage$Builder;->access$200(Lcom/urbanairship/push/iam/InAppMessage$Builder;)Lcom/urbanairship/json/JsonMap;

    move-result-object v0

    if-nez v0, :cond_6a

    new-instance v0, Lcom/urbanairship/json/JsonMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/urbanairship/json/JsonMap;-><init>(Ljava/util/Map;)V

    :goto_27
    iput-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage;->extras:Lcom/urbanairship/json/JsonMap;

    .line 77
    # getter for: Lcom/urbanairship/push/iam/InAppMessage$Builder;->alert:Ljava/lang/String;
    invoke-static {p1}, Lcom/urbanairship/push/iam/InAppMessage$Builder;->access$300(Lcom/urbanairship/push/iam/InAppMessage$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage;->alert:Ljava/lang/String;

    .line 78
    # getter for: Lcom/urbanairship/push/iam/InAppMessage$Builder;->durationMilliseconds:Ljava/lang/Long;
    invoke-static {p1}, Lcom/urbanairship/push/iam/InAppMessage$Builder;->access$400(Lcom/urbanairship/push/iam/InAppMessage$Builder;)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage;->durationMilliseconds:Ljava/lang/Long;

    .line 79
    # getter for: Lcom/urbanairship/push/iam/InAppMessage$Builder;->buttonGroupId:Ljava/lang/String;
    invoke-static {p1}, Lcom/urbanairship/push/iam/InAppMessage$Builder;->access$500(Lcom/urbanairship/push/iam/InAppMessage$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage;->buttonGroupId:Ljava/lang/String;

    .line 80
    # getter for: Lcom/urbanairship/push/iam/InAppMessage$Builder;->buttonActionValues:Ljava/util/Map;
    invoke-static {p1}, Lcom/urbanairship/push/iam/InAppMessage$Builder;->access$600(Lcom/urbanairship/push/iam/InAppMessage$Builder;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage;->buttonActionValues:Ljava/util/Map;

    .line 81
    # getter for: Lcom/urbanairship/push/iam/InAppMessage$Builder;->clickActionValues:Ljava/util/Map;
    invoke-static {p1}, Lcom/urbanairship/push/iam/InAppMessage$Builder;->access$700(Lcom/urbanairship/push/iam/InAppMessage$Builder;)Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_6f

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :goto_4c
    iput-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage;->clickActionValues:Ljava/util/Map;

    .line 82
    # getter for: Lcom/urbanairship/push/iam/InAppMessage$Builder;->position:I
    invoke-static {p1}, Lcom/urbanairship/push/iam/InAppMessage$Builder;->access$800(Lcom/urbanairship/push/iam/InAppMessage$Builder;)I

    move-result v0

    iput v0, p0, Lcom/urbanairship/push/iam/InAppMessage;->position:I

    .line 83
    # getter for: Lcom/urbanairship/push/iam/InAppMessage$Builder;->primaryColor:Ljava/lang/Integer;
    invoke-static {p1}, Lcom/urbanairship/push/iam/InAppMessage$Builder;->access$900(Lcom/urbanairship/push/iam/InAppMessage$Builder;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage;->primaryColor:Ljava/lang/Integer;

    .line 84
    # getter for: Lcom/urbanairship/push/iam/InAppMessage$Builder;->secondaryColor:Ljava/lang/Integer;
    invoke-static {p1}, Lcom/urbanairship/push/iam/InAppMessage$Builder;->access$1000(Lcom/urbanairship/push/iam/InAppMessage$Builder;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage;->secondaryColor:Ljava/lang/Integer;

    .line 85
    return-void

    .line 74
    :cond_61
    # getter for: Lcom/urbanairship/push/iam/InAppMessage$Builder;->expiryMS:Ljava/lang/Long;
    invoke-static {p1}, Lcom/urbanairship/push/iam/InAppMessage$Builder;->access$000(Lcom/urbanairship/push/iam/InAppMessage$Builder;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_13

    .line 76
    :cond_6a
    # getter for: Lcom/urbanairship/push/iam/InAppMessage$Builder;->extras:Lcom/urbanairship/json/JsonMap;
    invoke-static {p1}, Lcom/urbanairship/push/iam/InAppMessage$Builder;->access$200(Lcom/urbanairship/push/iam/InAppMessage$Builder;)Lcom/urbanairship/json/JsonMap;

    move-result-object v0

    goto :goto_27

    .line 81
    :cond_6f
    # getter for: Lcom/urbanairship/push/iam/InAppMessage$Builder;->clickActionValues:Ljava/util/Map;
    invoke-static {p1}, Lcom/urbanairship/push/iam/InAppMessage$Builder;->access$700(Lcom/urbanairship/push/iam/InAppMessage$Builder;)Ljava/util/Map;

    move-result-object v0

    goto :goto_4c
.end method

.method synthetic constructor <init>(Lcom/urbanairship/push/iam/InAppMessage$Builder;Lcom/urbanairship/push/iam/InAppMessage$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/urbanairship/push/iam/InAppMessage$Builder;
    .param p2, "x1"    # Lcom/urbanairship/push/iam/InAppMessage$1;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/urbanairship/push/iam/InAppMessage;-><init>(Lcom/urbanairship/push/iam/InAppMessage$Builder;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/urbanairship/push/iam/InAppMessage;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/urbanairship/push/iam/InAppMessage;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage;->id:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/urbanairship/push/iam/InAppMessage;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/urbanairship/push/iam/InAppMessage;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage;->buttonGroupId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/urbanairship/push/iam/InAppMessage;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/urbanairship/push/iam/InAppMessage;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage;->alert:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/urbanairship/push/iam/InAppMessage;)J
    .registers 3
    .param p0, "x0"    # Lcom/urbanairship/push/iam/InAppMessage;

    .prologue
    .line 32
    iget-wide v0, p0, Lcom/urbanairship/push/iam/InAppMessage;->expiryMS:J

    return-wide v0
.end method

.method static synthetic access$1600(Lcom/urbanairship/push/iam/InAppMessage;)Ljava/lang/Long;
    .registers 2
    .param p0, "x0"    # Lcom/urbanairship/push/iam/InAppMessage;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage;->durationMilliseconds:Ljava/lang/Long;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/urbanairship/push/iam/InAppMessage;)I
    .registers 2
    .param p0, "x0"    # Lcom/urbanairship/push/iam/InAppMessage;

    .prologue
    .line 32
    iget v0, p0, Lcom/urbanairship/push/iam/InAppMessage;->position:I

    return v0
.end method

.method static synthetic access$1800(Lcom/urbanairship/push/iam/InAppMessage;)Ljava/util/Map;
    .registers 2
    .param p0, "x0"    # Lcom/urbanairship/push/iam/InAppMessage;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage;->clickActionValues:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/urbanairship/push/iam/InAppMessage;)Ljava/util/Map;
    .registers 2
    .param p0, "x0"    # Lcom/urbanairship/push/iam/InAppMessage;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage;->buttonActionValues:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/urbanairship/push/iam/InAppMessage;)Lcom/urbanairship/json/JsonMap;
    .registers 2
    .param p0, "x0"    # Lcom/urbanairship/push/iam/InAppMessage;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage;->extras:Lcom/urbanairship/json/JsonMap;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/urbanairship/push/iam/InAppMessage;)Ljava/lang/Integer;
    .registers 2
    .param p0, "x0"    # Lcom/urbanairship/push/iam/InAppMessage;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage;->primaryColor:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/urbanairship/push/iam/InAppMessage;)Ljava/lang/Integer;
    .registers 2
    .param p0, "x0"    # Lcom/urbanairship/push/iam/InAppMessage;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage;->secondaryColor:Ljava/lang/Integer;

    return-object v0
.end method

.method private static parseColor(Ljava/lang/String;)Ljava/lang/Integer;
    .registers 5
    .param p0, "colorString"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 371
    invoke-static {p0}, Lcom/urbanairship/util/UAStringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 379
    :goto_7
    return-object v1

    .line 376
    :cond_8
    :try_start_8
    invoke-static {p0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_f} :catch_11

    move-result-object v1

    goto :goto_7

    .line 377
    :catch_11
    move-exception v0

    .line 378
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "InAppMessage - Unable to parse color: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/urbanairship/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_7
.end method

.method public static parseJson(Ljava/lang/String;)Lcom/urbanairship/push/iam/InAppMessage;
    .registers 25
    .param p0, "json"    # Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/urbanairship/json/JsonException;
        }
    .end annotation

    .prologue
    .line 283
    invoke-static/range {p0 .. p0}, Lcom/urbanairship/json/JsonValue;->parseString(Ljava/lang/String;)Lcom/urbanairship/json/JsonValue;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/urbanairship/json/JsonValue;->getMap()Lcom/urbanairship/json/JsonMap;

    move-result-object v17

    .line 285
    .local v17, "inAppJson":Lcom/urbanairship/json/JsonMap;
    if-nez v17, :cond_d

    .line 286
    const/16 v18, 0x0

    .line 362
    :goto_c
    return-object v18

    .line 289
    :cond_d
    const-string v18, "display"

    invoke-virtual/range {v17 .. v18}, Lcom/urbanairship/json/JsonMap;->opt(Ljava/lang/String;)Lcom/urbanairship/json/JsonValue;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/urbanairship/json/JsonValue;->getMap()Lcom/urbanairship/json/JsonMap;

    move-result-object v13

    .line 290
    .local v13, "displayJson":Lcom/urbanairship/json/JsonMap;
    const-string v18, "actions"

    invoke-virtual/range {v17 .. v18}, Lcom/urbanairship/json/JsonMap;->opt(Ljava/lang/String;)Lcom/urbanairship/json/JsonValue;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/urbanairship/json/JsonValue;->getMap()Lcom/urbanairship/json/JsonMap;

    move-result-object v6

    .line 292
    .local v6, "actionsJson":Lcom/urbanairship/json/JsonMap;
    if-eqz v13, :cond_38

    const-string v18, "banner"

    const-string/jumbo v19, "type"

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Lcom/urbanairship/json/JsonMap;->opt(Ljava/lang/String;)Lcom/urbanairship/json/JsonValue;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/urbanairship/json/JsonValue;->getString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_55

    .line 293
    :cond_38
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "InAppMessage - Unable to parse json: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    .line 294
    const/16 v18, 0x0

    goto :goto_c

    .line 297
    :cond_55
    new-instance v7, Lcom/urbanairship/push/iam/InAppMessage$Builder;

    invoke-direct {v7}, Lcom/urbanairship/push/iam/InAppMessage$Builder;-><init>()V

    .line 299
    .local v7, "builder":Lcom/urbanairship/push/iam/InAppMessage$Builder;
    const-string v18, "id"

    invoke-virtual/range {v17 .. v18}, Lcom/urbanairship/json/JsonMap;->opt(Ljava/lang/String;)Lcom/urbanairship/json/JsonValue;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/urbanairship/json/JsonValue;->getString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Lcom/urbanairship/push/iam/InAppMessage$Builder;->setId(Ljava/lang/String;)Lcom/urbanairship/push/iam/InAppMessage$Builder;

    move-result-object v18

    const-string v19, "extra"

    .line 300
    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/urbanairship/json/JsonMap;->opt(Ljava/lang/String;)Lcom/urbanairship/json/JsonValue;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/urbanairship/json/JsonValue;->getMap()Lcom/urbanairship/json/JsonMap;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/urbanairship/push/iam/InAppMessage$Builder;->setExtras(Lcom/urbanairship/json/JsonMap;)Lcom/urbanairship/push/iam/InAppMessage$Builder;

    move-result-object v18

    const-string v19, "alert"

    .line 301
    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Lcom/urbanairship/json/JsonMap;->opt(Ljava/lang/String;)Lcom/urbanairship/json/JsonValue;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/urbanairship/json/JsonValue;->getString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/urbanairship/push/iam/InAppMessage$Builder;->setAlert(Ljava/lang/String;)Lcom/urbanairship/push/iam/InAppMessage$Builder;

    move-result-object v18

    const-string v19, "primary_color"

    .line 302
    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Lcom/urbanairship/json/JsonMap;->opt(Ljava/lang/String;)Lcom/urbanairship/json/JsonValue;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/urbanairship/json/JsonValue;->getString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/urbanairship/push/iam/InAppMessage;->parseColor(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/urbanairship/push/iam/InAppMessage$Builder;->setPrimaryColor(Ljava/lang/Integer;)Lcom/urbanairship/push/iam/InAppMessage$Builder;

    move-result-object v18

    const-string v19, "secondary_color"

    .line 303
    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Lcom/urbanairship/json/JsonMap;->opt(Ljava/lang/String;)Lcom/urbanairship/json/JsonValue;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/urbanairship/json/JsonValue;->getString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/urbanairship/push/iam/InAppMessage;->parseColor(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/urbanairship/push/iam/InAppMessage$Builder;->setSecondaryColor(Ljava/lang/Integer;)Lcom/urbanairship/push/iam/InAppMessage$Builder;

    .line 306
    const-string v18, "duration_ms"

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Lcom/urbanairship/json/JsonMap;->containsKey(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_164

    .line 307
    const-string v18, "duration_ms"

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Lcom/urbanairship/json/JsonMap;->get(Ljava/lang/String;)Lcom/urbanairship/json/JsonValue;

    move-result-object v18

    const-wide/16 v20, 0x0

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Lcom/urbanairship/json/JsonValue;->getLong(J)J

    move-result-wide v14

    .line 308
    .local v14, "duration":J
    const-wide/16 v18, 0x0

    cmp-long v18, v14, v18

    if-lez v18, :cond_de

    .line 309
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Lcom/urbanairship/push/iam/InAppMessage$Builder;->setDuration(Ljava/lang/Long;)Lcom/urbanairship/push/iam/InAppMessage$Builder;

    .line 318
    :cond_de
    :goto_de
    const-string v18, "expiry_ms"

    invoke-virtual/range {v17 .. v18}, Lcom/urbanairship/json/JsonMap;->containsKey(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_18f

    .line 319
    const-string v18, "expiry_ms"

    invoke-virtual/range {v17 .. v18}, Lcom/urbanairship/json/JsonMap;->get(Ljava/lang/String;)Lcom/urbanairship/json/JsonValue;

    move-result-object v18

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    const-wide v22, 0x9a7ec800L

    add-long v20, v20, v22

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Lcom/urbanairship/json/JsonValue;->getLong(J)J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Lcom/urbanairship/push/iam/InAppMessage$Builder;->setExpiry(Ljava/lang/Long;)Lcom/urbanairship/push/iam/InAppMessage$Builder;

    .line 324
    :cond_108
    :goto_108
    const-string/jumbo v18, "top"

    const-string v19, "position"

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Lcom/urbanairship/json/JsonMap;->opt(Ljava/lang/String;)Lcom/urbanairship/json/JsonValue;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/urbanairship/json/JsonValue;->getString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_1bf

    .line 325
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v7, v0}, Lcom/urbanairship/push/iam/InAppMessage$Builder;->setPosition(I)Lcom/urbanairship/push/iam/InAppMessage$Builder;

    .line 330
    :goto_124
    if-eqz v6, :cond_244

    .line 332
    const-string v18, "on_click"

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Lcom/urbanairship/json/JsonMap;->opt(Ljava/lang/String;)Lcom/urbanairship/json/JsonValue;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/urbanairship/json/JsonValue;->getMap()Lcom/urbanairship/json/JsonMap;

    move-result-object v12

    .line 333
    .local v12, "clickActionsJson":Lcom/urbanairship/json/JsonMap;
    if-eqz v12, :cond_1cb

    .line 334
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 335
    .local v11, "clickActions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/urbanairship/actions/ActionValue;>;"
    invoke-virtual {v12}, Lcom/urbanairship/json/JsonMap;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :goto_13d
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_1c8

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/Map$Entry;

    .line 336
    .local v16, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/urbanairship/json/JsonValue;>;"
    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v20

    new-instance v21, Lcom/urbanairship/actions/ActionValue;

    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/urbanairship/json/JsonValue;

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/urbanairship/actions/ActionValue;-><init>(Lcom/urbanairship/json/JsonValue;)V

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v11, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_13d

    .line 312
    .end local v11    # "clickActions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/urbanairship/actions/ActionValue;>;"
    .end local v12    # "clickActionsJson":Lcom/urbanairship/json/JsonMap;
    .end local v14    # "duration":J
    .end local v16    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/urbanairship/json/JsonValue;>;"
    :cond_164
    const-string v18, "duration"

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Lcom/urbanairship/json/JsonMap;->opt(Ljava/lang/String;)Lcom/urbanairship/json/JsonValue;

    move-result-object v18

    const-wide/16 v20, 0x0

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Lcom/urbanairship/json/JsonValue;->getLong(J)J

    move-result-wide v14

    .line 313
    .restart local v14    # "duration":J
    const-wide/16 v18, 0x0

    cmp-long v18, v14, v18

    if-lez v18, :cond_de

    .line 314
    sget-object v18, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    move-object/from16 v0, v18

    invoke-virtual {v0, v14, v15}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Lcom/urbanairship/push/iam/InAppMessage$Builder;->setDuration(Ljava/lang/Long;)Lcom/urbanairship/push/iam/InAppMessage$Builder;

    goto/16 :goto_de

    .line 320
    :cond_18f
    const-string v18, "expiry"

    invoke-virtual/range {v17 .. v18}, Lcom/urbanairship/json/JsonMap;->containsKey(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_108

    .line 321
    const-string v18, "expiry"

    invoke-virtual/range {v17 .. v18}, Lcom/urbanairship/json/JsonMap;->opt(Ljava/lang/String;)Lcom/urbanairship/json/JsonValue;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/urbanairship/json/JsonValue;->getString()Ljava/lang/String;

    move-result-object v18

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    const-wide v22, 0x9a7ec800L

    add-long v20, v20, v22

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-static {v0, v1, v2}, Lcom/urbanairship/util/DateUtils;->parseIso8601(Ljava/lang/String;J)J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Lcom/urbanairship/push/iam/InAppMessage$Builder;->setExpiry(Ljava/lang/Long;)Lcom/urbanairship/push/iam/InAppMessage$Builder;

    goto/16 :goto_108

    .line 327
    :cond_1bf
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v7, v0}, Lcom/urbanairship/push/iam/InAppMessage$Builder;->setPosition(I)Lcom/urbanairship/push/iam/InAppMessage$Builder;

    goto/16 :goto_124

    .line 338
    .restart local v11    # "clickActions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/urbanairship/actions/ActionValue;>;"
    .restart local v12    # "clickActionsJson":Lcom/urbanairship/json/JsonMap;
    :cond_1c8
    invoke-virtual {v7, v11}, Lcom/urbanairship/push/iam/InAppMessage$Builder;->setClickActionValues(Ljava/util/Map;)Lcom/urbanairship/push/iam/InAppMessage$Builder;

    .line 342
    .end local v11    # "clickActions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/urbanairship/actions/ActionValue;>;"
    :cond_1cb
    const-string v18, "button_group"

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Lcom/urbanairship/json/JsonMap;->opt(Ljava/lang/String;)Lcom/urbanairship/json/JsonValue;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/urbanairship/json/JsonValue;->getString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Lcom/urbanairship/push/iam/InAppMessage$Builder;->setButtonGroupId(Ljava/lang/String;)Lcom/urbanairship/push/iam/InAppMessage$Builder;

    .line 345
    const-string v18, "button_actions"

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Lcom/urbanairship/json/JsonMap;->opt(Ljava/lang/String;)Lcom/urbanairship/json/JsonValue;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/urbanairship/json/JsonValue;->getMap()Lcom/urbanairship/json/JsonMap;

    move-result-object v8

    .line 346
    .local v8, "buttonActionsJson":Lcom/urbanairship/json/JsonMap;
    if-eqz v8, :cond_244

    .line 348
    invoke-virtual {v8}, Lcom/urbanairship/json/JsonMap;->entrySet()Ljava/util/Set;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :goto_1f2
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_244

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/Map$Entry;

    .line 349
    .restart local v16    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/urbanairship/json/JsonValue;>;"
    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 350
    .local v10, "buttonId":Ljava/lang/String;
    invoke-virtual {v8, v10}, Lcom/urbanairship/json/JsonMap;->opt(Ljava/lang/String;)Lcom/urbanairship/json/JsonValue;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/urbanairship/json/JsonValue;->getMap()Lcom/urbanairship/json/JsonMap;

    move-result-object v4

    .line 352
    .local v4, "actionJson":Lcom/urbanairship/json/JsonMap;
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 353
    .local v5, "actions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/urbanairship/actions/ActionValue;>;"
    invoke-virtual {v4}, Lcom/urbanairship/json/JsonMap;->entrySet()Ljava/util/Set;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :goto_219
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_240

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 354
    .local v9, "buttonEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/urbanairship/json/JsonValue;>;"
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v21

    new-instance v22, Lcom/urbanairship/actions/ActionValue;

    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/urbanairship/json/JsonValue;

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/urbanairship/actions/ActionValue;-><init>(Lcom/urbanairship/json/JsonValue;)V

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_219

    .line 357
    .end local v9    # "buttonEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/urbanairship/json/JsonValue;>;"
    :cond_240
    invoke-virtual {v7, v10, v5}, Lcom/urbanairship/push/iam/InAppMessage$Builder;->setButtonActionValues(Ljava/lang/String;Ljava/util/Map;)Lcom/urbanairship/push/iam/InAppMessage$Builder;

    goto :goto_1f2

    .line 362
    .end local v4    # "actionJson":Lcom/urbanairship/json/JsonMap;
    .end local v5    # "actions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/urbanairship/actions/ActionValue;>;"
    .end local v8    # "buttonActionsJson":Lcom/urbanairship/json/JsonMap;
    .end local v10    # "buttonId":Ljava/lang/String;
    .end local v12    # "clickActionsJson":Lcom/urbanairship/json/JsonMap;
    .end local v16    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/urbanairship/json/JsonValue;>;"
    :cond_244
    invoke-virtual {v7}, Lcom/urbanairship/push/iam/InAppMessage$Builder;->create()Lcom/urbanairship/push/iam/InAppMessage;

    move-result-object v18

    goto/16 :goto_c
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 155
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 424
    if-ne p0, p1, :cond_5

    .line 425
    const/4 v1, 0x1

    .line 463
    :cond_4
    :goto_4
    return v1

    .line 427
    :cond_5
    if-eqz p1, :cond_4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v2, v3, :cond_4

    move-object v0, p1

    .line 431
    check-cast v0, Lcom/urbanairship/push/iam/InAppMessage;

    .line 433
    .local v0, "that":Lcom/urbanairship/push/iam/InAppMessage;
    iget-wide v2, p0, Lcom/urbanairship/push/iam/InAppMessage;->expiryMS:J

    iget-wide v4, v0, Lcom/urbanairship/push/iam/InAppMessage;->expiryMS:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_4

    .line 436
    iget v2, p0, Lcom/urbanairship/push/iam/InAppMessage;->position:I

    iget v3, v0, Lcom/urbanairship/push/iam/InAppMessage;->position:I

    if-ne v2, v3, :cond_4

    .line 439
    iget-object v2, p0, Lcom/urbanairship/push/iam/InAppMessage;->id:Ljava/lang/String;

    if-eqz v2, :cond_94

    iget-object v2, p0, Lcom/urbanairship/push/iam/InAppMessage;->id:Ljava/lang/String;

    iget-object v3, v0, Lcom/urbanairship/push/iam/InAppMessage;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 442
    :cond_30
    iget-object v2, p0, Lcom/urbanairship/push/iam/InAppMessage;->alert:Ljava/lang/String;

    if-eqz v2, :cond_9a

    iget-object v2, p0, Lcom/urbanairship/push/iam/InAppMessage;->alert:Ljava/lang/String;

    iget-object v3, v0, Lcom/urbanairship/push/iam/InAppMessage;->alert:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 445
    :cond_3e
    iget-object v2, p0, Lcom/urbanairship/push/iam/InAppMessage;->durationMilliseconds:Ljava/lang/Long;

    if-eqz v2, :cond_a0

    iget-object v2, p0, Lcom/urbanairship/push/iam/InAppMessage;->durationMilliseconds:Ljava/lang/Long;

    iget-object v3, v0, Lcom/urbanairship/push/iam/InAppMessage;->durationMilliseconds:Ljava/lang/Long;

    invoke-virtual {v2, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 448
    :cond_4c
    iget-object v2, p0, Lcom/urbanairship/push/iam/InAppMessage;->primaryColor:Ljava/lang/Integer;

    if-eqz v2, :cond_a6

    iget-object v2, p0, Lcom/urbanairship/push/iam/InAppMessage;->primaryColor:Ljava/lang/Integer;

    iget-object v3, v0, Lcom/urbanairship/push/iam/InAppMessage;->primaryColor:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 451
    :cond_5a
    iget-object v2, p0, Lcom/urbanairship/push/iam/InAppMessage;->secondaryColor:Ljava/lang/Integer;

    if-eqz v2, :cond_ac

    iget-object v2, p0, Lcom/urbanairship/push/iam/InAppMessage;->secondaryColor:Ljava/lang/Integer;

    iget-object v3, v0, Lcom/urbanairship/push/iam/InAppMessage;->secondaryColor:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 454
    :cond_68
    iget-object v2, p0, Lcom/urbanairship/push/iam/InAppMessage;->buttonGroupId:Ljava/lang/String;

    if-eqz v2, :cond_b2

    iget-object v2, p0, Lcom/urbanairship/push/iam/InAppMessage;->buttonGroupId:Ljava/lang/String;

    iget-object v3, v0, Lcom/urbanairship/push/iam/InAppMessage;->buttonGroupId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 457
    :cond_76
    iget-object v2, p0, Lcom/urbanairship/push/iam/InAppMessage;->clickActionValues:Ljava/util/Map;

    iget-object v3, v0, Lcom/urbanairship/push/iam/InAppMessage;->clickActionValues:Ljava/util/Map;

    invoke-interface {v2, v3}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 460
    iget-object v2, p0, Lcom/urbanairship/push/iam/InAppMessage;->extras:Lcom/urbanairship/json/JsonMap;

    iget-object v3, v0, Lcom/urbanairship/push/iam/InAppMessage;->extras:Lcom/urbanairship/json/JsonMap;

    invoke-virtual {v2, v3}, Lcom/urbanairship/json/JsonMap;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 463
    iget-object v1, p0, Lcom/urbanairship/push/iam/InAppMessage;->buttonActionValues:Ljava/util/Map;

    iget-object v2, v0, Lcom/urbanairship/push/iam/InAppMessage;->buttonActionValues:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto/16 :goto_4

    .line 439
    :cond_94
    iget-object v2, v0, Lcom/urbanairship/push/iam/InAppMessage;->id:Ljava/lang/String;

    if-eqz v2, :cond_30

    goto/16 :goto_4

    .line 442
    :cond_9a
    iget-object v2, v0, Lcom/urbanairship/push/iam/InAppMessage;->alert:Ljava/lang/String;

    if-eqz v2, :cond_3e

    goto/16 :goto_4

    .line 445
    :cond_a0
    iget-object v2, v0, Lcom/urbanairship/push/iam/InAppMessage;->durationMilliseconds:Ljava/lang/Long;

    if-eqz v2, :cond_4c

    goto/16 :goto_4

    .line 448
    :cond_a6
    iget-object v2, v0, Lcom/urbanairship/push/iam/InAppMessage;->primaryColor:Ljava/lang/Integer;

    if-eqz v2, :cond_5a

    goto/16 :goto_4

    .line 451
    :cond_ac
    iget-object v2, v0, Lcom/urbanairship/push/iam/InAppMessage;->secondaryColor:Ljava/lang/Integer;

    if-eqz v2, :cond_68

    goto/16 :goto_4

    .line 454
    :cond_b2
    iget-object v2, v0, Lcom/urbanairship/push/iam/InAppMessage;->buttonGroupId:Ljava/lang/String;

    if-eqz v2, :cond_76

    goto/16 :goto_4
.end method

.method public getAlert()Ljava/lang/String;
    .registers 2

    .prologue
    .line 201
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage;->alert:Ljava/lang/String;

    return-object v0
.end method

.method public getButtonActionValues(Ljava/lang/String;)Ljava/util/Map;
    .registers 3
    .param p1, "buttonId"    # Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/urbanairship/actions/ActionValue;",
            ">;"
        }
    .end annotation

    .prologue
    .line 221
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage;->buttonActionValues:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 222
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage;->buttonActionValues:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 224
    :goto_14
    return-object v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method

.method public getButtonGroupId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 234
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage;->buttonGroupId:Ljava/lang/String;

    return-object v0
.end method

.method public getClickActionValues()Ljava/util/Map;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/urbanairship/actions/ActionValue;",
            ">;"
        }
    .end annotation

    .prologue
    .line 211
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage;->clickActionValues:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getDuration()Ljava/lang/Long;
    .registers 2

    .prologue
    .line 243
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage;->durationMilliseconds:Ljava/lang/Long;

    return-object v0
.end method

.method public getExpiry()J
    .registers 3

    .prologue
    .line 164
    iget-wide v0, p0, Lcom/urbanairship/push/iam/InAppMessage;->expiryMS:J

    return-wide v0
.end method

.method public getExtras()Lcom/urbanairship/json/JsonMap;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 192
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage;->extras:Lcom/urbanairship/json/JsonMap;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 182
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getPosition()I
    .registers 2

    .prologue
    .line 253
    iget v0, p0, Lcom/urbanairship/push/iam/InAppMessage;->position:I

    return v0
.end method

.method public getPrimaryColor()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 262
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage;->primaryColor:Ljava/lang/Integer;

    return-object v0
.end method

.method public getSecondaryColor()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 271
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage;->secondaryColor:Ljava/lang/Integer;

    return-object v0
.end method

.method public hashCode()I
    .registers 9

    .prologue
    const/4 v2, 0x0

    .line 469
    iget-wide v4, p0, Lcom/urbanairship/push/iam/InAppMessage;->expiryMS:J

    iget-wide v6, p0, Lcom/urbanairship/push/iam/InAppMessage;->expiryMS:J

    const/16 v1, 0x20

    ushr-long/2addr v6, v1

    xor-long/2addr v4, v6

    long-to-int v0, v4

    .line 470
    .local v0, "result":I
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/urbanairship/push/iam/InAppMessage;->id:Ljava/lang/String;

    if-eqz v1, :cond_83

    iget-object v1, p0, Lcom/urbanairship/push/iam/InAppMessage;->id:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_16
    add-int v0, v3, v1

    .line 471
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/urbanairship/push/iam/InAppMessage;->alert:Ljava/lang/String;

    if-eqz v1, :cond_85

    iget-object v1, p0, Lcom/urbanairship/push/iam/InAppMessage;->alert:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_24
    add-int v0, v3, v1

    .line 472
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/urbanairship/push/iam/InAppMessage;->durationMilliseconds:Ljava/lang/Long;

    if-eqz v1, :cond_87

    iget-object v1, p0, Lcom/urbanairship/push/iam/InAppMessage;->durationMilliseconds:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->hashCode()I

    move-result v1

    :goto_32
    add-int v0, v3, v1

    .line 473
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/urbanairship/push/iam/InAppMessage;->primaryColor:Ljava/lang/Integer;

    if-eqz v1, :cond_89

    iget-object v1, p0, Lcom/urbanairship/push/iam/InAppMessage;->primaryColor:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    :goto_40
    add-int v0, v3, v1

    .line 474
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/urbanairship/push/iam/InAppMessage;->secondaryColor:Ljava/lang/Integer;

    if-eqz v1, :cond_8b

    iget-object v1, p0, Lcom/urbanairship/push/iam/InAppMessage;->secondaryColor:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    :goto_4e
    add-int v0, v3, v1

    .line 475
    mul-int/lit8 v1, v0, 0x1f

    iget v3, p0, Lcom/urbanairship/push/iam/InAppMessage;->position:I

    add-int v0, v1, v3

    .line 476
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Lcom/urbanairship/push/iam/InAppMessage;->buttonGroupId:Ljava/lang/String;

    if-eqz v3, :cond_62

    iget-object v2, p0, Lcom/urbanairship/push/iam/InAppMessage;->buttonGroupId:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :cond_62
    add-int v0, v1, v2

    .line 477
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/urbanairship/push/iam/InAppMessage;->clickActionValues:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 478
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/urbanairship/push/iam/InAppMessage;->extras:Lcom/urbanairship/json/JsonMap;

    invoke-virtual {v2}, Lcom/urbanairship/json/JsonMap;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 479
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/urbanairship/push/iam/InAppMessage;->buttonActionValues:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 480
    return v0

    :cond_83
    move v1, v2

    .line 470
    goto :goto_16

    :cond_85
    move v1, v2

    .line 471
    goto :goto_24

    :cond_87
    move v1, v2

    .line 472
    goto :goto_32

    :cond_89
    move v1, v2

    .line 473
    goto :goto_40

    :cond_8b
    move v1, v2

    .line 474
    goto :goto_4e
.end method

.method public isExpired()Z
    .registers 5

    .prologue
    .line 173
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/urbanairship/push/iam/InAppMessage;->expiryMS:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public toJsonValue()Lcom/urbanairship/json/JsonValue;
    .registers 12

    .prologue
    const v10, 0xffffff

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 386
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 387
    .local v2, "inApp":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v3, "id"

    iget-object v4, p0, Lcom/urbanairship/push/iam/InAppMessage;->id:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 388
    const-string v3, "expiry_ms"

    iget-wide v4, p0, Lcom/urbanairship/push/iam/InAppMessage;->expiryMS:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    const-string v3, "extra"

    iget-object v4, p0, Lcom/urbanairship/push/iam/InAppMessage;->extras:Lcom/urbanairship/json/JsonMap;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 394
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 395
    .local v1, "display":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v3, "display"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 396
    const-string/jumbo v3, "type"

    const-string v4, "banner"

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    const-string v3, "alert"

    iget-object v4, p0, Lcom/urbanairship/push/iam/InAppMessage;->alert:Ljava/lang/String;

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 398
    const-string v4, "position"

    iget v3, p0, Lcom/urbanairship/push/iam/InAppMessage;->position:I

    if-ne v3, v8, :cond_b7

    const-string/jumbo v3, "top"

    :goto_45
    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    iget-object v3, p0, Lcom/urbanairship/push/iam/InAppMessage;->durationMilliseconds:Ljava/lang/Long;

    if-eqz v3, :cond_53

    .line 401
    const-string v3, "duration_ms"

    iget-object v4, p0, Lcom/urbanairship/push/iam/InAppMessage;->durationMilliseconds:Ljava/lang/Long;

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 404
    :cond_53
    iget-object v3, p0, Lcom/urbanairship/push/iam/InAppMessage;->primaryColor:Ljava/lang/Integer;

    if-eqz v3, :cond_73

    .line 405
    const-string v3, "primary_color"

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "#%06X"

    new-array v6, v8, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/urbanairship/push/iam/InAppMessage;->primaryColor:Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    and-int/2addr v7, v10

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 408
    :cond_73
    iget-object v3, p0, Lcom/urbanairship/push/iam/InAppMessage;->secondaryColor:Ljava/lang/Integer;

    if-eqz v3, :cond_93

    .line 409
    const-string v3, "secondary_color"

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "#%06X"

    new-array v6, v8, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/urbanairship/push/iam/InAppMessage;->secondaryColor:Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    and-int/2addr v7, v10

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 413
    :cond_93
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 414
    .local v0, "actions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v3, "actions"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 415
    const-string v3, "on_click"

    iget-object v4, p0, Lcom/urbanairship/push/iam/InAppMessage;->clickActionValues:Ljava/util/Map;

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 416
    const-string v3, "button_group"

    iget-object v4, p0, Lcom/urbanairship/push/iam/InAppMessage;->buttonGroupId:Ljava/lang/String;

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 417
    const-string v3, "button_actions"

    iget-object v4, p0, Lcom/urbanairship/push/iam/InAppMessage;->buttonActionValues:Ljava/util/Map;

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 419
    invoke-static {v2}, Lcom/urbanairship/json/JsonValue;->wrapOpt(Ljava/lang/Object;)Lcom/urbanairship/json/JsonValue;

    move-result-object v3

    return-object v3

    .line 398
    .end local v0    # "actions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_b7
    const-string v3, "bottom"

    goto :goto_45
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 7
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 119
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 120
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage;->alert:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 121
    iget-wide v0, p0, Lcom/urbanairship/push/iam/InAppMessage;->expiryMS:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 122
    iget v0, p0, Lcom/urbanairship/push/iam/InAppMessage;->position:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 124
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage;->durationMilliseconds:Ljava/lang/Long;

    if-nez v0, :cond_44

    .line 125
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 131
    :goto_1d
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage;->primaryColor:Ljava/lang/Integer;

    if-nez v0, :cond_51

    .line 132
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 138
    :goto_24
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage;->secondaryColor:Ljava/lang/Integer;

    if-nez v0, :cond_5e

    .line 139
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 145
    :goto_2b
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage;->extras:Lcom/urbanairship/json/JsonMap;

    invoke-virtual {v0}, Lcom/urbanairship/json/JsonMap;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 147
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage;->buttonGroupId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 148
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage;->buttonActionValues:Ljava/util/Map;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 150
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage;->clickActionValues:Ljava/util/Map;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 151
    return-void

    .line 127
    :cond_44
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeByte(B)V

    .line 128
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage;->durationMilliseconds:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    goto :goto_1d

    .line 134
    :cond_51
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeByte(B)V

    .line 135
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage;->primaryColor:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_24

    .line 141
    :cond_5e
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeByte(B)V

    .line 142
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage;->secondaryColor:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2b
.end method
