.class public Lcom/buzzfeed/toolkit/util/HttpErrorParser;
.super Ljava/lang/Object;
.source "HttpErrorParser.java"


# static fields
.field public static final GATEWAY_TIMEOUT:I = 0x1f8

.field public static final RES_NOT_FOUND:I = 0x194

.field public static final TIMEOUT:I = 0x198

.field public static final UNAUTHORIZED:I = 0x191


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createExceptionOnHttpError(I)Lcom/buzzfeed/toolkit/util/HttpException;
    .registers 3
    .param p0, "status"    # I

    .prologue
    .line 11
    const/4 v0, 0x0

    .line 12
    .local v0, "exception":Lcom/buzzfeed/toolkit/util/HttpException;
    const/16 v1, 0x198

    if-ne p0, v1, :cond_e

    .line 13
    new-instance v0, Lcom/buzzfeed/toolkit/util/HttpException;

    .end local v0    # "exception":Lcom/buzzfeed/toolkit/util/HttpException;
    const-string/jumbo v1, "timeout_error"

    invoke-direct {v0, v1}, Lcom/buzzfeed/toolkit/util/HttpException;-><init>(Ljava/lang/String;)V

    .line 28
    .restart local v0    # "exception":Lcom/buzzfeed/toolkit/util/HttpException;
    :goto_d
    return-object v0

    .line 14
    :cond_e
    const/16 v1, 0x194

    if-ne p0, v1, :cond_1a

    .line 15
    new-instance v0, Lcom/buzzfeed/toolkit/util/HttpException;

    .end local v0    # "exception":Lcom/buzzfeed/toolkit/util/HttpException;
    const-string v1, "not_found_error"

    invoke-direct {v0, v1}, Lcom/buzzfeed/toolkit/util/HttpException;-><init>(Ljava/lang/String;)V

    .restart local v0    # "exception":Lcom/buzzfeed/toolkit/util/HttpException;
    goto :goto_d

    .line 16
    :cond_1a
    const/16 v1, 0x191

    if-ne p0, v1, :cond_27

    .line 17
    new-instance v0, Lcom/buzzfeed/toolkit/util/HttpException;

    .end local v0    # "exception":Lcom/buzzfeed/toolkit/util/HttpException;
    const-string/jumbo v1, "unauthorized_error"

    invoke-direct {v0, v1}, Lcom/buzzfeed/toolkit/util/HttpException;-><init>(Ljava/lang/String;)V

    .restart local v0    # "exception":Lcom/buzzfeed/toolkit/util/HttpException;
    goto :goto_d

    .line 18
    :cond_27
    const/16 v1, 0x1f8

    if-ne p0, v1, :cond_33

    .line 24
    new-instance v0, Lcom/buzzfeed/toolkit/util/HttpException;

    .end local v0    # "exception":Lcom/buzzfeed/toolkit/util/HttpException;
    const-string v1, "gateway_timeout_error"

    invoke-direct {v0, v1}, Lcom/buzzfeed/toolkit/util/HttpException;-><init>(Ljava/lang/String;)V

    .restart local v0    # "exception":Lcom/buzzfeed/toolkit/util/HttpException;
    goto :goto_d

    .line 26
    :cond_33
    new-instance v0, Lcom/buzzfeed/toolkit/util/HttpException;

    .end local v0    # "exception":Lcom/buzzfeed/toolkit/util/HttpException;
    const-string/jumbo v1, "unknown_error"

    invoke-direct {v0, v1}, Lcom/buzzfeed/toolkit/util/HttpException;-><init>(Ljava/lang/String;)V

    .restart local v0    # "exception":Lcom/buzzfeed/toolkit/util/HttpException;
    goto :goto_d
.end method
