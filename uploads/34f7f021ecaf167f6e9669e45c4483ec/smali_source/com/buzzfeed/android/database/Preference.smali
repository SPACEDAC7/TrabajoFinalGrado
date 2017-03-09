.class public Lcom/buzzfeed/android/database/Preference;
.super Ljava/lang/Object;
.source "Preference.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final INDEX_KEY:Ljava/lang/String; = "keyIdx"

.field public static final KEY:Ljava/lang/String; = "key"

.field public static final TABLE_NAME:Ljava/lang/String; = "preference"

.field private static final TAG:Ljava/lang/String;

.field public static final VALUE:Ljava/lang/String; = "value"


# instance fields
.field private key:Ljava/lang/String;

.field private value:Lorg/json/JSONObject;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 10
    const-class v0, Lcom/buzzfeed/android/database/Preference;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/buzzfeed/android/database/Preference;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/buzzfeed/android/database/Preference;->key:Ljava/lang/String;

    .line 31
    invoke-direct {p0, p2}, Lcom/buzzfeed/android/database/Preference;->valueStringToJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/buzzfeed/android/database/Preference;->value:Lorg/json/JSONObject;

    .line 32
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Lorg/json/JSONObject;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/buzzfeed/android/database/Preference;->key:Ljava/lang/String;

    .line 26
    iput-object p2, p0, Lcom/buzzfeed/android/database/Preference;->value:Lorg/json/JSONObject;

    .line 27
    return-void
.end method

.method private valueStringToJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 8
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 62
    const/4 v1, 0x0

    .line 65
    .local v1, "result":Lorg/json/JSONObject;
    :try_start_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_6} :catch_8

    .end local v1    # "result":Lorg/json/JSONObject;
    .local v2, "result":Lorg/json/JSONObject;
    move-object v1, v2

    .line 69
    .end local v2    # "result":Lorg/json/JSONObject;
    .restart local v1    # "result":Lorg/json/JSONObject;
    :goto_7
    return-object v1

    .line 66
    :catch_8
    move-exception v0

    .line 67
    .local v0, "e":Lorg/json/JSONException;
    sget-object v3, Lcom/buzzfeed/android/database/Preference;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error converting preference value into JSONObject: value="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", error="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/buzzfeed/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7
.end method


# virtual methods
.method public clone()Lcom/buzzfeed/android/database/Preference;
    .registers 3

    .prologue
    .line 74
    new-instance v0, Lcom/buzzfeed/android/database/Preference;

    invoke-direct {v0}, Lcom/buzzfeed/android/database/Preference;-><init>()V

    .line 75
    .local v0, "clone":Lcom/buzzfeed/android/database/Preference;
    iget-object v1, p0, Lcom/buzzfeed/android/database/Preference;->key:Ljava/lang/String;

    iput-object v1, v0, Lcom/buzzfeed/android/database/Preference;->key:Ljava/lang/String;

    .line 76
    iget-object v1, p0, Lcom/buzzfeed/android/database/Preference;->value:Lorg/json/JSONObject;

    iput-object v1, v0, Lcom/buzzfeed/android/database/Preference;->value:Lorg/json/JSONObject;

    .line 77
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 8
    invoke-virtual {p0}, Lcom/buzzfeed/android/database/Preference;->clone()Lcom/buzzfeed/android/database/Preference;

    move-result-object v0

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .registers 2

    .prologue
    .line 35
    iget-object v0, p0, Lcom/buzzfeed/android/database/Preference;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Lorg/json/JSONObject;
    .registers 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/buzzfeed/android/database/Preference;->value:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getValueAsString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/buzzfeed/android/database/Preference;->value:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setKey(Ljava/lang/String;)Lcom/buzzfeed/android/database/Preference;
    .registers 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/buzzfeed/android/database/Preference;->key:Ljava/lang/String;

    .line 40
    return-object p0
.end method

.method public setValue(Ljava/lang/String;)Lcom/buzzfeed/android/database/Preference;
    .registers 3
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/buzzfeed/android/database/Preference;->valueStringToJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/buzzfeed/android/database/Preference;->value:Lorg/json/JSONObject;

    .line 58
    return-object p0
.end method

.method public setValue(Lorg/json/JSONObject;)Lcom/buzzfeed/android/database/Preference;
    .registers 2
    .param p1, "value"    # Lorg/json/JSONObject;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/buzzfeed/android/database/Preference;->value:Lorg/json/JSONObject;

    .line 53
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Preference [key="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/buzzfeed/android/database/Preference;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/buzzfeed/android/database/Preference;->value:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
