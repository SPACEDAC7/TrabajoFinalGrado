.class Lcom/buzzfeed/toolkit/dustbuster/DustbusterResponse;
.super Ljava/lang/Object;
.source "DustbusterResponse.java"


# instance fields
.field private mResponseText:Ljava/lang/String;

.field private mSuccess:Z


# direct methods
.method public constructor <init>(ZLjava/lang/String;)V
    .registers 3
    .param p1, "mIsSuccess"    # Z
    .param p2, "mResponseText"    # Ljava/lang/String;

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-boolean p1, p0, Lcom/buzzfeed/toolkit/dustbuster/DustbusterResponse;->mSuccess:Z

    .line 9
    iput-object p2, p0, Lcom/buzzfeed/toolkit/dustbuster/DustbusterResponse;->mResponseText:Ljava/lang/String;

    .line 10
    return-void
.end method


# virtual methods
.method public getResponseText()Ljava/lang/String;
    .registers 2

    .prologue
    .line 17
    iget-object v0, p0, Lcom/buzzfeed/toolkit/dustbuster/DustbusterResponse;->mResponseText:Ljava/lang/String;

    return-object v0
.end method

.method public isSuccess()Z
    .registers 2

    .prologue
    .line 13
    iget-boolean v0, p0, Lcom/buzzfeed/toolkit/dustbuster/DustbusterResponse;->mSuccess:Z

    return v0
.end method
