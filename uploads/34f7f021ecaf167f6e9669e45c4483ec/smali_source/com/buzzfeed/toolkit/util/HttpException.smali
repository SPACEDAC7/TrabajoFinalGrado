.class public Lcom/buzzfeed/toolkit/util/HttpException;
.super Ljava/lang/Exception;
.source "HttpException.java"


# static fields
.field public static final GATEWAY_TIMEOUT_ERROR:Ljava/lang/String; = "gateway_timeout_error"

.field public static final NOT_FOUND_ERROR:Ljava/lang/String; = "not_found_error"

.field public static final TIMEOUT_ERROR:Ljava/lang/String; = "timeout_error"

.field public static final UNAUTHORIZED_ERROR:Ljava/lang/String; = "unauthorized_error"

.field public static final UNKNOWN_ERROR:Ljava/lang/String; = "unknown_error"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "detailMessage"    # Ljava/lang/String;

    .prologue
    .line 11
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 12
    return-void
.end method
