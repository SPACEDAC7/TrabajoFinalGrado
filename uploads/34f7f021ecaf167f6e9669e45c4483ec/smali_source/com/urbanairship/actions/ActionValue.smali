.class public Lcom/urbanairship/actions/ActionValue;
.super Ljava/lang/Object;
.source "ActionValue.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/urbanairship/json/JsonSerializable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/urbanairship/actions/ActionValue;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final jsonValue:Lcom/urbanairship/json/JsonValue;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 250
    new-instance v0, Lcom/urbanairship/actions/ActionValue$1;

    invoke-direct {v0}, Lcom/urbanairship/actions/ActionValue$1;-><init>()V

    sput-object v0, Lcom/urbanairship/actions/ActionValue;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    sget-object v0, Lcom/urbanairship/json/JsonValue;->NULL:Lcom/urbanairship/json/JsonValue;

    iput-object v0, p0, Lcom/urbanairship/actions/ActionValue;->jsonValue:Lcom/urbanairship/json/JsonValue;

    .line 119
    return-void
.end method

.method public constructor <init>(Lcom/urbanairship/json/JsonValue;)V
    .registers 2
    .param p1, "jsonValue"    # Lcom/urbanairship/json/JsonValue;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    if-nez p1, :cond_7

    sget-object p1, Lcom/urbanairship/json/JsonValue;->NULL:Lcom/urbanairship/json/JsonValue;

    .end local p1    # "jsonValue":Lcom/urbanairship/json/JsonValue;
    :cond_7
    iput-object p1, p0, Lcom/urbanairship/actions/ActionValue;->jsonValue:Lcom/urbanairship/json/JsonValue;

    .line 29
    return-void
.end method

.method public static wrap(C)Lcom/urbanairship/actions/ActionValue;
    .registers 3
    .param p0, "value"    # C
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 72
    new-instance v0, Lcom/urbanairship/actions/ActionValue;

    invoke-static {p0}, Lcom/urbanairship/json/JsonValue;->wrap(C)Lcom/urbanairship/json/JsonValue;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/urbanairship/actions/ActionValue;-><init>(Lcom/urbanairship/json/JsonValue;)V

    return-object v0
.end method

.method public static wrap(I)Lcom/urbanairship/actions/ActionValue;
    .registers 3
    .param p0, "value"    # I
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 50
    new-instance v0, Lcom/urbanairship/actions/ActionValue;

    invoke-static {p0}, Lcom/urbanairship/json/JsonValue;->wrap(I)Lcom/urbanairship/json/JsonValue;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/urbanairship/actions/ActionValue;-><init>(Lcom/urbanairship/json/JsonValue;)V

    return-object v0
.end method

.method public static wrap(J)Lcom/urbanairship/actions/ActionValue;
    .registers 4
    .param p0, "value"    # J
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 61
    new-instance v0, Lcom/urbanairship/actions/ActionValue;

    invoke-static {p0, p1}, Lcom/urbanairship/json/JsonValue;->wrap(J)Lcom/urbanairship/json/JsonValue;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/urbanairship/actions/ActionValue;-><init>(Lcom/urbanairship/json/JsonValue;)V

    return-object v0
.end method

.method public static wrap(Lcom/urbanairship/json/JsonSerializable;)Lcom/urbanairship/actions/ActionValue;
    .registers 3
    .param p0, "value"    # Lcom/urbanairship/json/JsonSerializable;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 94
    new-instance v0, Lcom/urbanairship/actions/ActionValue;

    invoke-static {p0}, Lcom/urbanairship/json/JsonValue;->wrap(Lcom/urbanairship/json/JsonSerializable;)Lcom/urbanairship/json/JsonValue;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/urbanairship/actions/ActionValue;-><init>(Lcom/urbanairship/json/JsonValue;)V

    return-object v0
.end method

.method public static wrap(Ljava/lang/Object;)Lcom/urbanairship/actions/ActionValue;
    .registers 5
    .param p0, "object"    # Ljava/lang/Object;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/urbanairship/actions/ActionValueException;
        }
    .end annotation

    .prologue
    .line 108
    :try_start_0
    new-instance v1, Lcom/urbanairship/actions/ActionValue;

    invoke-static {p0}, Lcom/urbanairship/json/JsonValue;->wrap(Ljava/lang/Object;)Lcom/urbanairship/json/JsonValue;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/urbanairship/actions/ActionValue;-><init>(Lcom/urbanairship/json/JsonValue;)V
    :try_end_9
    .catch Lcom/urbanairship/json/JsonException; {:try_start_0 .. :try_end_9} :catch_a

    return-object v1

    .line 109
    :catch_a
    move-exception v0

    .line 110
    .local v0, "e":Lcom/urbanairship/json/JsonException;
    new-instance v1, Lcom/urbanairship/actions/ActionValueException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid ActionValue object: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/urbanairship/actions/ActionValueException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method public static wrap(Ljava/lang/String;)Lcom/urbanairship/actions/ActionValue;
    .registers 3
    .param p0, "value"    # Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 39
    new-instance v0, Lcom/urbanairship/actions/ActionValue;

    invoke-static {p0}, Lcom/urbanairship/json/JsonValue;->wrap(Ljava/lang/String;)Lcom/urbanairship/json/JsonValue;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/urbanairship/actions/ActionValue;-><init>(Lcom/urbanairship/json/JsonValue;)V

    return-object v0
.end method

.method public static wrap(Z)Lcom/urbanairship/actions/ActionValue;
    .registers 3
    .param p0, "value"    # Z
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 83
    new-instance v0, Lcom/urbanairship/actions/ActionValue;

    invoke-static {p0}, Lcom/urbanairship/json/JsonValue;->wrap(Z)Lcom/urbanairship/json/JsonValue;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/urbanairship/actions/ActionValue;-><init>(Lcom/urbanairship/json/JsonValue;)V

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 239
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 209
    instance-of v1, p1, Lcom/urbanairship/actions/ActionValue;

    if-eqz v1, :cond_10

    move-object v0, p1

    .line 210
    check-cast v0, Lcom/urbanairship/actions/ActionValue;

    .line 211
    .local v0, "o":Lcom/urbanairship/actions/ActionValue;
    iget-object v1, p0, Lcom/urbanairship/actions/ActionValue;->jsonValue:Lcom/urbanairship/json/JsonValue;

    iget-object v2, v0, Lcom/urbanairship/actions/ActionValue;->jsonValue:Lcom/urbanairship/json/JsonValue;

    invoke-virtual {v1, v2}, Lcom/urbanairship/json/JsonValue;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 214
    .end local v0    # "o":Lcom/urbanairship/actions/ActionValue;
    :goto_f
    return v1

    :cond_10
    const/4 v1, 0x0

    goto :goto_f
.end method

.method public getBoolean(Z)Z
    .registers 3
    .param p1, "defaultValue"    # Z

    .prologue
    .line 177
    iget-object v0, p0, Lcom/urbanairship/actions/ActionValue;->jsonValue:Lcom/urbanairship/json/JsonValue;

    invoke-virtual {v0, p1}, Lcom/urbanairship/json/JsonValue;->getBoolean(Z)Z

    move-result v0

    return v0
.end method

.method public getDouble(D)D
    .registers 6
    .param p1, "defaultValue"    # D

    .prologue
    .line 157
    iget-object v0, p0, Lcom/urbanairship/actions/ActionValue;->jsonValue:Lcom/urbanairship/json/JsonValue;

    invoke-virtual {v0, p1, p2}, Lcom/urbanairship/json/JsonValue;->getDouble(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public getInt(I)I
    .registers 3
    .param p1, "defaultValue"    # I

    .prologue
    .line 147
    iget-object v0, p0, Lcom/urbanairship/actions/ActionValue;->jsonValue:Lcom/urbanairship/json/JsonValue;

    invoke-virtual {v0, p1}, Lcom/urbanairship/json/JsonValue;->getInt(I)I

    move-result v0

    return v0
.end method

.method public getList()Lcom/urbanairship/json/JsonList;
    .registers 2

    .prologue
    .line 186
    iget-object v0, p0, Lcom/urbanairship/actions/ActionValue;->jsonValue:Lcom/urbanairship/json/JsonValue;

    invoke-virtual {v0}, Lcom/urbanairship/json/JsonValue;->getList()Lcom/urbanairship/json/JsonList;

    move-result-object v0

    return-object v0
.end method

.method public getLong(J)J
    .registers 6
    .param p1, "defaultValue"    # J

    .prologue
    .line 167
    iget-object v0, p0, Lcom/urbanairship/actions/ActionValue;->jsonValue:Lcom/urbanairship/json/JsonValue;

    invoke-virtual {v0, p1, p2}, Lcom/urbanairship/json/JsonValue;->getLong(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMap()Lcom/urbanairship/json/JsonMap;
    .registers 2

    .prologue
    .line 195
    iget-object v0, p0, Lcom/urbanairship/actions/ActionValue;->jsonValue:Lcom/urbanairship/json/JsonValue;

    invoke-virtual {v0}, Lcom/urbanairship/json/JsonValue;->getMap()Lcom/urbanairship/json/JsonMap;

    move-result-object v0

    return-object v0
.end method

.method public getString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 127
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/urbanairship/actions/ActionValue;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/urbanairship/actions/ActionValue;->jsonValue:Lcom/urbanairship/json/JsonValue;

    invoke-virtual {v0, p1}, Lcom/urbanairship/json/JsonValue;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 219
    iget-object v0, p0, Lcom/urbanairship/actions/ActionValue;->jsonValue:Lcom/urbanairship/json/JsonValue;

    invoke-virtual {v0}, Lcom/urbanairship/json/JsonValue;->hashCode()I

    move-result v0

    return v0
.end method

.method public isNull()Z
    .registers 2

    .prologue
    .line 204
    iget-object v0, p0, Lcom/urbanairship/actions/ActionValue;->jsonValue:Lcom/urbanairship/json/JsonValue;

    invoke-virtual {v0}, Lcom/urbanairship/json/JsonValue;->isNull()Z

    move-result v0

    return v0
.end method

.method public toJsonValue()Lcom/urbanairship/json/JsonValue;
    .registers 2

    .prologue
    .line 234
    iget-object v0, p0, Lcom/urbanairship/actions/ActionValue;->jsonValue:Lcom/urbanairship/json/JsonValue;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 229
    iget-object v0, p0, Lcom/urbanairship/actions/ActionValue;->jsonValue:Lcom/urbanairship/json/JsonValue;

    invoke-virtual {v0}, Lcom/urbanairship/json/JsonValue;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 244
    iget-object v0, p0, Lcom/urbanairship/actions/ActionValue;->jsonValue:Lcom/urbanairship/json/JsonValue;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 245
    return-void
.end method
