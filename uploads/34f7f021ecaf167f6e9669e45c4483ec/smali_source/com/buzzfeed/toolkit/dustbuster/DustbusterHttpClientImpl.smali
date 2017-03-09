.class Lcom/buzzfeed/toolkit/dustbuster/DustbusterHttpClientImpl;
.super Ljava/lang/Object;
.source "DustbusterHttpClientImpl.java"

# interfaces
.implements Lcom/buzzfeed/toolkit/dustbuster/DustbusterHttpClient;


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 17
    const-class v0, Lcom/buzzfeed/toolkit/dustbuster/DustbusterHttpClientImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/buzzfeed/toolkit/dustbuster/DustbusterHttpClientImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public post(Ljava/lang/String;Lorg/json/JSONArray;)Lcom/buzzfeed/toolkit/dustbuster/DustbusterResponse;
    .registers 15
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "parms"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 20
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Lcom/buzzfeed/toolkit/dustbuster/DustbusterHttpClientImpl;->TAG:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ".post"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 21
    .local v0, "TAG":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "about to post the following events/keys: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Lcom/buzzfeed/toolkit/util/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    new-instance v5, Ljava/net/URL;

    invoke-direct {v5, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 23
    .local v5, "obj":Ljava/net/URL;
    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljavax/net/ssl/HttpsURLConnection;

    .line 25
    .local v1, "connection":Ljavax/net/ssl/HttpsURLConnection;
    const-string v10, "POST"

    invoke-virtual {v1, v10}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 26
    const-string v10, "Content-Type"

    const-string v11, "application/json; charset=UTF-8"

    invoke-virtual {v1, v10, v11}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    invoke-virtual {v1}, Ljavax/net/ssl/HttpsURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v8

    .line 28
    .local v8, "stream":Ljava/io/OutputStream;
    invoke-virtual {p2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v4

    .line 29
    .local v4, "json":Ljava/lang/String;
    const-string v10, "UTF-8"

    invoke-virtual {v4, v10}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/io/OutputStream;->write([B)V

    .line 30
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V

    .line 32
    invoke-virtual {v1}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result v7

    .line 34
    .local v7, "responseCode":I
    const/4 v9, 0x0

    .line 35
    .local v9, "success":Z
    const/16 v10, 0xc8

    if-eq v7, v10, :cond_67

    const/16 v10, 0xca

    if-ne v7, v10, :cond_85

    .line 37
    :cond_67
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v10, Ljava/io/InputStreamReader;

    .line 38
    invoke-virtual {v1}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 39
    .local v2, "in":Ljava/io/BufferedReader;
    const/4 v9, 0x1

    .line 46
    :goto_76
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    .local v6, "response":Ljava/lang/StringBuilder;
    :goto_7b
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .local v3, "inputLine":Ljava/lang/String;
    if-eqz v3, :cond_94

    .line 49
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7b

    .line 41
    .end local v2    # "in":Ljava/io/BufferedReader;
    .end local v3    # "inputLine":Ljava/lang/String;
    .end local v6    # "response":Ljava/lang/StringBuilder;
    :cond_85
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v10, Ljava/io/InputStreamReader;

    .line 42
    invoke-virtual {v1}, Ljavax/net/ssl/HttpsURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .restart local v2    # "in":Ljava/io/BufferedReader;
    goto :goto_76

    .line 51
    .restart local v3    # "inputLine":Ljava/lang/String;
    .restart local v6    # "response":Ljava/lang/StringBuilder;
    :cond_94
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 53
    new-instance v10, Lcom/buzzfeed/toolkit/dustbuster/DustbusterResponse;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v9, v11}, Lcom/buzzfeed/toolkit/dustbuster/DustbusterResponse;-><init>(ZLjava/lang/String;)V

    return-object v10
.end method
