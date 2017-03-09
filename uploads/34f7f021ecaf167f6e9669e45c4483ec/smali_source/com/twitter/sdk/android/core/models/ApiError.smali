.class public Lcom/twitter/sdk/android/core/models/ApiError;
.super Ljava/lang/Object;
.source "ApiError.java"


# instance fields
.field private final code:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "code"
    .end annotation
.end field

.field private final message:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "message"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "code"    # I

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/twitter/sdk/android/core/models/ApiError;->message:Ljava/lang/String;

    .line 36
    iput p2, p0, Lcom/twitter/sdk/android/core/models/ApiError;->code:I

    .line 37
    return-void
.end method


# virtual methods
.method public getCode()I
    .registers 2

    .prologue
    .line 44
    iget v0, p0, Lcom/twitter/sdk/android/core/models/ApiError;->code:I

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/twitter/sdk/android/core/models/ApiError;->message:Ljava/lang/String;

    return-object v0
.end method
