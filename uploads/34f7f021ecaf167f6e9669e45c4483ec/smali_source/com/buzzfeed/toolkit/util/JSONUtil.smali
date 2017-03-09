.class public Lcom/buzzfeed/toolkit/util/JSONUtil;
.super Ljava/lang/Object;
.source "JSONUtil.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static optDate(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/Date;
    .registers 8
    .param p0, "json"    # Lorg/json/JSONObject;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 51
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_17

    new-instance v0, Ljava/util/Date;

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    :goto_16
    return-object v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_16
.end method

.method public static optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "json"    # Lorg/json/JSONObject;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 22
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    :goto_7
    return-object v0

    :cond_8
    invoke-virtual {p0, p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_7
.end method

.method public static optStringConvertIsoToUtf(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p0, "json"    # Lorg/json/JSONObject;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 32
    invoke-static {p0, p1}, Lcom/buzzfeed/toolkit/util/JSONUtil;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 33
    .local v1, "str":Ljava/lang/String;
    if-eqz v1, :cond_14

    .line 35
    :try_start_6
    new-instance v2, Ljava/lang/String;

    const-string v3, "ISO-8859-1"

    invoke-virtual {v1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-direct {v2, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_13
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_6 .. :try_end_13} :catch_15

    move-object v1, v2

    .line 40
    .end local v1    # "str":Ljava/lang/String;
    :cond_14
    :goto_14
    return-object v1

    .line 36
    .restart local v1    # "str":Ljava/lang/String;
    :catch_15
    move-exception v0

    .line 37
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    goto :goto_14
.end method

.method public static parseIntArray(Lorg/json/JSONArray;)[I
    .registers 4
    .param p0, "jsonArray"    # Lorg/json/JSONArray;

    .prologue
    .line 78
    if-nez p0, :cond_4

    .line 79
    const/4 v0, 0x0

    .line 87
    :cond_3
    return-object v0

    .line 82
    :cond_4
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    new-array v0, v2, [I

    .line 83
    .local v0, "arr":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    array-length v2, v0

    if-ge v1, v2, :cond_3

    .line 84
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->optInt(I)I

    move-result v2

    aput v2, v0, v1

    .line 83
    add-int/lit8 v1, v1, 0x1

    goto :goto_b
.end method

.method public static parseStringArray(Lorg/json/JSONArray;)[Ljava/lang/String;
    .registers 4
    .param p0, "jsonArray"    # Lorg/json/JSONArray;

    .prologue
    .line 60
    if-nez p0, :cond_4

    .line 61
    const/4 v0, 0x0

    .line 69
    :cond_3
    return-object v0

    .line 64
    :cond_4
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    new-array v0, v2, [Ljava/lang/String;

    .line 65
    .local v0, "arr":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    array-length v2, v0

    if-ge v1, v2, :cond_3

    .line 66
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 65
    add-int/lit8 v1, v1, 0x1

    goto :goto_b
.end method
