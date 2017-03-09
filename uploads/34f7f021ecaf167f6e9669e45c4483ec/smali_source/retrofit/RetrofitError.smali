.class public Lretrofit/RetrofitError;
.super Ljava/lang/RuntimeException;
.source "RetrofitError.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lretrofit/RetrofitError$Kind;
    }
.end annotation


# instance fields
.field private final converter:Lretrofit/converter/Converter;

.field private final kind:Lretrofit/RetrofitError$Kind;

.field private final response:Lretrofit/client/Response;

.field private final successType:Ljava/lang/reflect/Type;

.field private final url:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lretrofit/client/Response;Lretrofit/converter/Converter;Ljava/lang/reflect/Type;Lretrofit/RetrofitError$Kind;Ljava/lang/Throwable;)V
    .registers 8
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "response"    # Lretrofit/client/Response;
    .param p4, "converter"    # Lretrofit/converter/Converter;
    .param p5, "successType"    # Ljava/lang/reflect/Type;
    .param p6, "kind"    # Lretrofit/RetrofitError$Kind;
    .param p7, "exception"    # Ljava/lang/Throwable;

    .prologue
    .line 71
    invoke-direct {p0, p1, p7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 72
    iput-object p2, p0, Lretrofit/RetrofitError;->url:Ljava/lang/String;

    .line 73
    iput-object p3, p0, Lretrofit/RetrofitError;->response:Lretrofit/client/Response;

    .line 74
    iput-object p4, p0, Lretrofit/RetrofitError;->converter:Lretrofit/converter/Converter;

    .line 75
    iput-object p5, p0, Lretrofit/RetrofitError;->successType:Ljava/lang/reflect/Type;

    .line 76
    iput-object p6, p0, Lretrofit/RetrofitError;->kind:Lretrofit/RetrofitError$Kind;

    .line 77
    return-void
.end method

.method public static conversionError(Ljava/lang/String;Lretrofit/client/Response;Lretrofit/converter/Converter;Ljava/lang/reflect/Type;Lretrofit/converter/ConversionException;)Lretrofit/RetrofitError;
    .registers 13
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "response"    # Lretrofit/client/Response;
    .param p2, "converter"    # Lretrofit/converter/Converter;
    .param p3, "successType"    # Ljava/lang/reflect/Type;
    .param p4, "exception"    # Lretrofit/converter/ConversionException;

    .prologue
    .line 33
    new-instance v0, Lretrofit/RetrofitError;

    invoke-virtual {p4}, Lretrofit/converter/ConversionException;->getMessage()Ljava/lang/String;

    move-result-object v1

    sget-object v6, Lretrofit/RetrofitError$Kind;->CONVERSION:Lretrofit/RetrofitError$Kind;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lretrofit/RetrofitError;-><init>(Ljava/lang/String;Ljava/lang/String;Lretrofit/client/Response;Lretrofit/converter/Converter;Ljava/lang/reflect/Type;Lretrofit/RetrofitError$Kind;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static httpError(Ljava/lang/String;Lretrofit/client/Response;Lretrofit/converter/Converter;Ljava/lang/reflect/Type;)Lretrofit/RetrofitError;
    .registers 12
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "response"    # Lretrofit/client/Response;
    .param p2, "converter"    # Lretrofit/converter/Converter;
    .param p3, "successType"    # Ljava/lang/reflect/Type;

    .prologue
    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lretrofit/client/Response;->getStatus()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lretrofit/client/Response;->getReason()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 40
    .local v1, "message":Ljava/lang/String;
    new-instance v0, Lretrofit/RetrofitError;

    sget-object v6, Lretrofit/RetrofitError$Kind;->HTTP:Lretrofit/RetrofitError$Kind;

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v7}, Lretrofit/RetrofitError;-><init>(Ljava/lang/String;Ljava/lang/String;Lretrofit/client/Response;Lretrofit/converter/Converter;Ljava/lang/reflect/Type;Lretrofit/RetrofitError$Kind;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static networkError(Ljava/lang/String;Ljava/io/IOException;)Lretrofit/RetrofitError;
    .registers 10
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "exception"    # Ljava/io/IOException;

    .prologue
    const/4 v3, 0x0

    .line 27
    new-instance v0, Lretrofit/RetrofitError;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    sget-object v6, Lretrofit/RetrofitError$Kind;->NETWORK:Lretrofit/RetrofitError$Kind;

    move-object v2, p0

    move-object v4, v3

    move-object v5, v3

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Lretrofit/RetrofitError;-><init>(Ljava/lang/String;Ljava/lang/String;Lretrofit/client/Response;Lretrofit/converter/Converter;Ljava/lang/reflect/Type;Lretrofit/RetrofitError$Kind;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static unexpectedError(Ljava/lang/String;Ljava/lang/Throwable;)Lretrofit/RetrofitError;
    .registers 10
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "exception"    # Ljava/lang/Throwable;

    .prologue
    const/4 v3, 0x0

    .line 44
    new-instance v0, Lretrofit/RetrofitError;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    sget-object v6, Lretrofit/RetrofitError$Kind;->UNEXPECTED:Lretrofit/RetrofitError$Kind;

    move-object v2, p0

    move-object v4, v3

    move-object v5, v3

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Lretrofit/RetrofitError;-><init>(Ljava/lang/String;Ljava/lang/String;Lretrofit/client/Response;Lretrofit/converter/Converter;Ljava/lang/reflect/Type;Lretrofit/RetrofitError$Kind;Ljava/lang/Throwable;)V

    return-object v0
.end method


# virtual methods
.method public getBody()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 112
    iget-object v0, p0, Lretrofit/RetrofitError;->successType:Ljava/lang/reflect/Type;

    invoke-virtual {p0, v0}, Lretrofit/RetrofitError;->getBodyAs(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getBodyAs(Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .registers 6
    .param p1, "type"    # Ljava/lang/reflect/Type;

    .prologue
    const/4 v2, 0x0

    .line 129
    iget-object v3, p0, Lretrofit/RetrofitError;->response:Lretrofit/client/Response;

    if-nez v3, :cond_6

    .line 137
    :cond_5
    :goto_5
    return-object v2

    .line 132
    :cond_6
    iget-object v3, p0, Lretrofit/RetrofitError;->response:Lretrofit/client/Response;

    invoke-virtual {v3}, Lretrofit/client/Response;->getBody()Lretrofit/mime/TypedInput;

    move-result-object v0

    .line 133
    .local v0, "body":Lretrofit/mime/TypedInput;
    if-eqz v0, :cond_5

    .line 137
    :try_start_e
    iget-object v2, p0, Lretrofit/RetrofitError;->converter:Lretrofit/converter/Converter;

    invoke-interface {v2, v0, p1}, Lretrofit/converter/Converter;->fromBody(Lretrofit/mime/TypedInput;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    :try_end_13
    .catch Lretrofit/converter/ConversionException; {:try_start_e .. :try_end_13} :catch_15

    move-result-object v2

    goto :goto_5

    .line 138
    :catch_15
    move-exception v1

    .line 139
    .local v1, "e":Lretrofit/converter/ConversionException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public getKind()Lretrofit/RetrofitError$Kind;
    .registers 2

    .prologue
    .line 100
    iget-object v0, p0, Lretrofit/RetrofitError;->kind:Lretrofit/RetrofitError$Kind;

    return-object v0
.end method

.method public getResponse()Lretrofit/client/Response;
    .registers 2

    .prologue
    .line 86
    iget-object v0, p0, Lretrofit/RetrofitError;->response:Lretrofit/client/Response;

    return-object v0
.end method

.method public getSuccessType()Ljava/lang/reflect/Type;
    .registers 2

    .prologue
    .line 120
    iget-object v0, p0, Lretrofit/RetrofitError;->successType:Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 81
    iget-object v0, p0, Lretrofit/RetrofitError;->url:Ljava/lang/String;

    return-object v0
.end method

.method public isNetworkError()Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 95
    iget-object v0, p0, Lretrofit/RetrofitError;->kind:Lretrofit/RetrofitError$Kind;

    sget-object v1, Lretrofit/RetrofitError$Kind;->NETWORK:Lretrofit/RetrofitError$Kind;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method
