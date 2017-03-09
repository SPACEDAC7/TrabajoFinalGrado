.class public Lcom/urbanairship/automation/Trigger;
.super Ljava/lang/Object;
.source "Trigger.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/urbanairship/automation/Trigger$TriggerType;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/urbanairship/automation/Trigger;",
            ">;"
        }
    .end annotation
.end field

.field public static final CUSTOM_EVENT_COUNT:I = 0x5

.field public static final CUSTOM_EVENT_VALUE:I = 0x6

.field public static final LIFE_CYCLE_BACKGROUND:I = 0x2

.field public static final LIFE_CYCLE_FOREGROUND:I = 0x1

.field public static final REGION_ENTER:I = 0x3

.field public static final REGION_EXIT:I = 0x4

.field public static final SCREEN_VIEW:I = 0x7


# instance fields
.field private final goal:D

.field private final predicate:Lcom/urbanairship/json/JsonPredicate;

.field private final type:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 72
    new-instance v0, Lcom/urbanairship/automation/Trigger$1;

    invoke-direct {v0}, Lcom/urbanairship/automation/Trigger$1;-><init>()V

    sput-object v0, Lcom/urbanairship/automation/Trigger;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(IDLcom/urbanairship/json/JsonPredicate;)V
    .registers 5
    .param p1, "type"    # I
    .param p2, "goal"    # D
    .param p4, "predicate"    # Lcom/urbanairship/json/JsonPredicate;

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput p1, p0, Lcom/urbanairship/automation/Trigger;->type:I

    .line 90
    iput-wide p2, p0, Lcom/urbanairship/automation/Trigger;->goal:D

    .line 91
    iput-object p4, p0, Lcom/urbanairship/automation/Trigger;->predicate:Lcom/urbanairship/json/JsonPredicate;

    .line 92
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 10
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    const/4 v1, 0x0

    .line 99
    .local v1, "predicate":Lcom/urbanairship/json/JsonPredicate;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    packed-switch v6, :pswitch_data_46

    .line 122
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "Invalid trigger type from parcel."

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 101
    :pswitch_13
    const/4 v5, 0x2

    .line 125
    .local v5, "type":I
    :goto_14
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    .line 127
    .local v2, "goal":D
    const-class v6, Lcom/urbanairship/json/JsonValue;

    invoke-virtual {v6}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/urbanairship/json/JsonValue;

    .line 128
    .local v4, "predicateJson":Lcom/urbanairship/json/JsonValue;
    if-eqz v4, :cond_2a

    .line 130
    :try_start_26
    invoke-static {v4}, Lcom/urbanairship/json/JsonPredicate;->parse(Lcom/urbanairship/json/JsonValue;)Lcom/urbanairship/json/JsonPredicate;
    :try_end_29
    .catch Lcom/urbanairship/json/JsonException; {:try_start_26 .. :try_end_29} :catch_3d

    move-result-object v1

    .line 136
    :cond_2a
    iput v5, p0, Lcom/urbanairship/automation/Trigger;->type:I

    .line 137
    iput-wide v2, p0, Lcom/urbanairship/automation/Trigger;->goal:D

    .line 138
    iput-object v1, p0, Lcom/urbanairship/automation/Trigger;->predicate:Lcom/urbanairship/json/JsonPredicate;

    .line 139
    return-void

    .line 104
    .end local v2    # "goal":D
    .end local v4    # "predicateJson":Lcom/urbanairship/json/JsonValue;
    .end local v5    # "type":I
    :pswitch_31
    const/4 v5, 0x1

    .line 105
    .restart local v5    # "type":I
    goto :goto_14

    .line 107
    .end local v5    # "type":I
    :pswitch_33
    const/4 v5, 0x3

    .line 108
    .restart local v5    # "type":I
    goto :goto_14

    .line 110
    .end local v5    # "type":I
    :pswitch_35
    const/4 v5, 0x4

    .line 111
    .restart local v5    # "type":I
    goto :goto_14

    .line 113
    .end local v5    # "type":I
    :pswitch_37
    const/4 v5, 0x5

    .line 114
    .restart local v5    # "type":I
    goto :goto_14

    .line 116
    .end local v5    # "type":I
    :pswitch_39
    const/4 v5, 0x6

    .line 117
    .restart local v5    # "type":I
    goto :goto_14

    .line 119
    .end local v5    # "type":I
    :pswitch_3b
    const/4 v5, 0x7

    .line 120
    .restart local v5    # "type":I
    goto :goto_14

    .line 131
    .restart local v2    # "goal":D
    .restart local v4    # "predicateJson":Lcom/urbanairship/json/JsonValue;
    :catch_3d
    move-exception v0

    .line 132
    .local v0, "e":Lcom/urbanairship/json/JsonException;
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "Invalid trigger predicate from parcel."

    invoke-direct {v6, v7, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 99
    :pswitch_data_46
    .packed-switch 0x1
        :pswitch_31
        :pswitch_13
        :pswitch_33
        :pswitch_35
        :pswitch_37
        :pswitch_39
        :pswitch_3b
    .end packed-switch
.end method

.method public static parseJson(Lcom/urbanairship/json/JsonValue;)Lcom/urbanairship/automation/Trigger;
    .registers 11
    .param p0, "value"    # Lcom/urbanairship/json/JsonValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/urbanairship/json/JsonException;
        }
    .end annotation

    .prologue
    .line 200
    invoke-virtual {p0}, Lcom/urbanairship/json/JsonValue;->optMap()Lcom/urbanairship/json/JsonMap;

    move-result-object v2

    .line 203
    .local v2, "jsonMap":Lcom/urbanairship/json/JsonMap;
    const-string v6, "predicate"

    invoke-virtual {v2, v6}, Lcom/urbanairship/json/JsonMap;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_30

    const-string v6, "predicate"

    invoke-virtual {v2, v6}, Lcom/urbanairship/json/JsonMap;->opt(Ljava/lang/String;)Lcom/urbanairship/json/JsonValue;

    move-result-object v6

    invoke-static {v6}, Lcom/urbanairship/json/JsonPredicate;->parse(Lcom/urbanairship/json/JsonValue;)Lcom/urbanairship/json/JsonPredicate;

    move-result-object v3

    .line 204
    .local v3, "predicate":Lcom/urbanairship/json/JsonPredicate;
    :goto_16
    const-string v6, "goal"

    invoke-virtual {v2, v6}, Lcom/urbanairship/json/JsonMap;->opt(Ljava/lang/String;)Lcom/urbanairship/json/JsonValue;

    move-result-object v6

    const-wide/high16 v8, -0x4010000000000000L

    invoke-virtual {v6, v8, v9}, Lcom/urbanairship/json/JsonValue;->getDouble(D)D

    move-result-wide v0

    .line 205
    .local v0, "goal":D
    const-wide/16 v6, 0x0

    cmpg-double v6, v0, v6

    if-gez v6, :cond_32

    .line 206
    new-instance v6, Lcom/urbanairship/json/JsonException;

    const-string v7, "Trigger goal must be defined and greater than 0."

    invoke-direct {v6, v7}, Lcom/urbanairship/json/JsonException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 203
    .end local v0    # "goal":D
    .end local v3    # "predicate":Lcom/urbanairship/json/JsonPredicate;
    :cond_30
    const/4 v3, 0x0

    goto :goto_16

    .line 209
    .restart local v0    # "goal":D
    .restart local v3    # "predicate":Lcom/urbanairship/json/JsonPredicate;
    :cond_32
    const-string/jumbo v6, "type"

    invoke-virtual {v2, v6}, Lcom/urbanairship/json/JsonMap;->opt(Ljava/lang/String;)Lcom/urbanairship/json/JsonValue;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Lcom/urbanairship/json/JsonValue;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    .line 210
    .local v5, "typeString":Ljava/lang/String;
    const/4 v6, -0x1

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_c0

    :cond_4b
    :goto_4b
    packed-switch v6, :pswitch_data_de

    .line 240
    new-instance v6, Lcom/urbanairship/json/JsonException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid trigger type: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/urbanairship/json/JsonException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 210
    :sswitch_67
    const-string v7, "custom_event_count"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4b

    const/4 v6, 0x0

    goto :goto_4b

    :sswitch_71
    const-string v7, "custom_event_value"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4b

    const/4 v6, 0x1

    goto :goto_4b

    :sswitch_7b
    const-string v7, "foreground"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4b

    const/4 v6, 0x2

    goto :goto_4b

    :sswitch_85
    const-string v7, "background"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4b

    const/4 v6, 0x3

    goto :goto_4b

    :sswitch_8f
    const-string v7, "screen"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4b

    const/4 v6, 0x4

    goto :goto_4b

    :sswitch_99
    const-string v7, "region_enter"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4b

    const/4 v6, 0x5

    goto :goto_4b

    :sswitch_a3
    const-string v7, "region_exit"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4b

    const/4 v6, 0x6

    goto :goto_4b

    .line 212
    :pswitch_ad
    const/4 v4, 0x5

    .line 243
    .local v4, "type":I
    :goto_ae
    new-instance v6, Lcom/urbanairship/automation/Trigger;

    invoke-direct {v6, v4, v0, v1, v3}, Lcom/urbanairship/automation/Trigger;-><init>(IDLcom/urbanairship/json/JsonPredicate;)V

    return-object v6

    .line 216
    .end local v4    # "type":I
    :pswitch_b4
    const/4 v4, 0x6

    .line 217
    .restart local v4    # "type":I
    goto :goto_ae

    .line 220
    .end local v4    # "type":I
    :pswitch_b6
    const/4 v4, 0x1

    .line 221
    .restart local v4    # "type":I
    goto :goto_ae

    .line 224
    .end local v4    # "type":I
    :pswitch_b8
    const/4 v4, 0x2

    .line 225
    .restart local v4    # "type":I
    goto :goto_ae

    .line 228
    .end local v4    # "type":I
    :pswitch_ba
    const/4 v4, 0x7

    .line 229
    .restart local v4    # "type":I
    goto :goto_ae

    .line 232
    .end local v4    # "type":I
    :pswitch_bc
    const/4 v4, 0x3

    .line 233
    .restart local v4    # "type":I
    goto :goto_ae

    .line 236
    .end local v4    # "type":I
    :pswitch_be
    const/4 v4, 0x4

    .line 237
    .restart local v4    # "type":I
    goto :goto_ae

    .line 210
    :sswitch_data_c0
    .sparse-switch
        -0x5d577c77 -> :sswitch_a3
        -0x4f67aad2 -> :sswitch_85
        -0x4d9c7633 -> :sswitch_99
        -0x361a3f94 -> :sswitch_8f
        0x5fcc935c -> :sswitch_67
        0x60d1d3be -> :sswitch_71
        0x76486943 -> :sswitch_7b
    .end sparse-switch

    :pswitch_data_de
    .packed-switch 0x0
        :pswitch_ad
        :pswitch_b4
        :pswitch_b6
        :pswitch_b8
        :pswitch_ba
        :pswitch_bc
        :pswitch_be
    .end packed-switch
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 150
    const/4 v0, 0x0

    return v0
.end method

.method public getGoal()D
    .registers 3

    .prologue
    .line 170
    iget-wide v0, p0, Lcom/urbanairship/automation/Trigger;->goal:D

    return-wide v0
.end method

.method public getPredicate()Lcom/urbanairship/json/JsonPredicate;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 181
    iget-object v0, p0, Lcom/urbanairship/automation/Trigger;->predicate:Lcom/urbanairship/json/JsonPredicate;

    return-object v0
.end method

.method public getType()I
    .registers 2

    .prologue
    .line 160
    iget v0, p0, Lcom/urbanairship/automation/Trigger;->type:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 143
    iget v0, p0, Lcom/urbanairship/automation/Trigger;->type:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 144
    iget-wide v0, p0, Lcom/urbanairship/automation/Trigger;->goal:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 145
    iget-object v0, p0, Lcom/urbanairship/automation/Trigger;->predicate:Lcom/urbanairship/json/JsonPredicate;

    if-nez v0, :cond_13

    const/4 v0, 0x0

    :goto_f
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 146
    return-void

    .line 145
    :cond_13
    iget-object v0, p0, Lcom/urbanairship/automation/Trigger;->predicate:Lcom/urbanairship/json/JsonPredicate;

    invoke-virtual {v0}, Lcom/urbanairship/json/JsonPredicate;->toJsonValue()Lcom/urbanairship/json/JsonValue;

    move-result-object v0

    goto :goto_f
.end method
