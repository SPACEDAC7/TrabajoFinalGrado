.class public Lcom/buzzfeed/androidabframework/util/Util;
.super Ljava/lang/Object;
.source "Util.java"


# static fields
.field private static final NETWORK_CONNECT_TIMEOUT:I = 0x3a98

.field private static final NETWORK_READ_TIMEOUT:I = 0x2710

.field private static final UTF_8:Ljava/lang/String; = "UTF-8"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static downloadUrl(Ljava/lang/String;)Ljava/lang/String;
    .registers 12
    .param p0, "url"    # Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 63
    const/4 v7, 0x0

    .line 64
    .local v7, "response":Ljava/lang/String;
    const/4 v3, 0x0

    .line 65
    .local v3, "inputStream":Ljava/io/InputStream;
    const/4 v4, 0x0

    .line 66
    .local v4, "inputStreamReader":Ljava/io/InputStreamReader;
    const/4 v0, 0x0

    .line 68
    .local v0, "bufferedReader":Ljava/io/BufferedReader;
    :try_start_4
    new-instance v9, Ljava/net/URL;

    invoke-direct {v9, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 69
    .local v9, "u":Ljava/net/URL;
    invoke-virtual {v9}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;

    .line 70
    .local v2, "conn":Ljava/net/HttpURLConnection;
    const/16 v10, 0x2710

    invoke-virtual {v2, v10}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 71
    const/16 v10, 0x3a98

    invoke-virtual {v2, v10}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 72
    const-string v10, "GET"

    invoke-virtual {v2, v10}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 73
    const/4 v10, 0x1

    invoke-virtual {v2, v10}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 74
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->connect()V

    .line 76
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 77
    new-instance v5, Ljava/io/InputStreamReader;

    const-string v10, "UTF-8"

    invoke-direct {v5, v3, v10}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_30
    .catchall {:try_start_4 .. :try_end_30} :catchall_6b

    .line 78
    .end local v4    # "inputStreamReader":Ljava/io/InputStreamReader;
    .local v5, "inputStreamReader":Ljava/io/InputStreamReader;
    :try_start_30
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_35
    .catchall {:try_start_30 .. :try_end_35} :catchall_6d

    .line 79
    .end local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .local v1, "bufferedReader":Ljava/io/BufferedReader;
    :try_start_35
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 81
    .local v8, "stringBuilder":Ljava/lang/StringBuilder;
    :goto_3a
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    .local v6, "read":Ljava/lang/String;
    if-eqz v6, :cond_57

    .line 82
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_43
    .catchall {:try_start_35 .. :try_end_43} :catchall_44

    goto :goto_3a

    .line 86
    .end local v6    # "read":Ljava/lang/String;
    .end local v8    # "stringBuilder":Ljava/lang/StringBuilder;
    :catchall_44
    move-exception v10

    move-object v0, v1

    .end local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v0    # "bufferedReader":Ljava/io/BufferedReader;
    move-object v4, v5

    .end local v2    # "conn":Ljava/net/HttpURLConnection;
    .end local v5    # "inputStreamReader":Ljava/io/InputStreamReader;
    .end local v9    # "u":Ljava/net/URL;
    .restart local v4    # "inputStreamReader":Ljava/io/InputStreamReader;
    :goto_47
    if-eqz v0, :cond_4c

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 87
    :cond_4c
    if-eqz v4, :cond_51

    invoke-virtual {v4}, Ljava/io/InputStreamReader;->close()V

    .line 88
    :cond_51
    if-eqz v3, :cond_56

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    :cond_56
    throw v10

    .line 84
    .end local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v4    # "inputStreamReader":Ljava/io/InputStreamReader;
    .restart local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v2    # "conn":Ljava/net/HttpURLConnection;
    .restart local v5    # "inputStreamReader":Ljava/io/InputStreamReader;
    .restart local v6    # "read":Ljava/lang/String;
    .restart local v8    # "stringBuilder":Ljava/lang/StringBuilder;
    .restart local v9    # "u":Ljava/net/URL;
    :cond_57
    :try_start_57
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_5a
    .catchall {:try_start_57 .. :try_end_5a} :catchall_44

    move-result-object v7

    .line 86
    if-eqz v1, :cond_60

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 87
    :cond_60
    if-eqz v5, :cond_65

    invoke-virtual {v5}, Ljava/io/InputStreamReader;->close()V

    .line 88
    :cond_65
    if-eqz v3, :cond_6a

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 90
    :cond_6a
    return-object v7

    .line 86
    .end local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v2    # "conn":Ljava/net/HttpURLConnection;
    .end local v5    # "inputStreamReader":Ljava/io/InputStreamReader;
    .end local v6    # "read":Ljava/lang/String;
    .end local v8    # "stringBuilder":Ljava/lang/StringBuilder;
    .end local v9    # "u":Ljava/net/URL;
    .restart local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v4    # "inputStreamReader":Ljava/io/InputStreamReader;
    :catchall_6b
    move-exception v10

    goto :goto_47

    .end local v4    # "inputStreamReader":Ljava/io/InputStreamReader;
    .restart local v2    # "conn":Ljava/net/HttpURLConnection;
    .restart local v5    # "inputStreamReader":Ljava/io/InputStreamReader;
    .restart local v9    # "u":Ljava/net/URL;
    :catchall_6d
    move-exception v10

    move-object v4, v5

    .end local v5    # "inputStreamReader":Ljava/io/InputStreamReader;
    .restart local v4    # "inputStreamReader":Ljava/io/InputStreamReader;
    goto :goto_47
.end method

.method public static getJsonFromAsset(Landroid/content/Context;Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "asset"    # Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 101
    const/4 v2, 0x0

    .line 102
    .local v2, "jsonObject":Lorg/json/JSONObject;
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v7

    invoke-virtual {v7, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 103
    .local v1, "inputStream":Ljava/io/InputStream;
    if-eqz v1, :cond_31

    .line 104
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 105
    .local v6, "stringBuilder":Ljava/lang/StringBuilder;
    const/16 v7, 0x400

    new-array v0, v7, [C

    .line 107
    .local v0, "buffer":[C
    new-instance v5, Ljava/io/InputStreamReader;

    const-string v7, "UTF-8"

    invoke-direct {v5, v1, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 108
    .local v5, "reader":Ljava/io/Reader;
    :goto_1c
    array-length v7, v0

    invoke-virtual {v5, v0, v8, v7}, Ljava/io/Reader;->read([CII)I

    move-result v4

    .local v4, "length":I
    const/4 v7, -0x1

    if-eq v4, v7, :cond_28

    .line 109
    invoke-virtual {v6, v0, v8, v4}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    goto :goto_1c

    .line 111
    :cond_28
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 112
    .local v3, "jsonStr":Ljava/lang/String;
    new-instance v2, Lorg/json/JSONObject;

    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 114
    .end local v0    # "buffer":[C
    .end local v3    # "jsonStr":Ljava/lang/String;
    .end local v4    # "length":I
    .end local v5    # "reader":Ljava/io/Reader;
    .end local v6    # "stringBuilder":Ljava/lang/StringBuilder;
    .restart local v2    # "jsonObject":Lorg/json/JSONObject;
    :cond_31
    return-object v2
.end method

.method public static isNetworkConnectionUp(Landroid/content/Context;)Z
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 47
    if-nez p0, :cond_a

    .line 48
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "context parameter cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 50
    :cond_a
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 51
    .local v0, "connectivityManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 52
    .local v1, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_24

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_24

    const/4 v2, 0x1

    :goto_23
    return v2

    :cond_24
    const/4 v2, 0x0

    goto :goto_23
.end method
