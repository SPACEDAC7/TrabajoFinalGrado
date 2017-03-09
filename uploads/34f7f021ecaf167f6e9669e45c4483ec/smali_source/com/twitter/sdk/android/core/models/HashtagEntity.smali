.class public Lcom/twitter/sdk/android/core/models/HashtagEntity;
.super Lcom/twitter/sdk/android/core/models/Entity;
.source "HashtagEntity.java"


# instance fields
.field public final text:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "text"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    .line 34
    invoke-direct {p0, p2, p3}, Lcom/twitter/sdk/android/core/models/Entity;-><init>(II)V

    .line 35
    iput-object p1, p0, Lcom/twitter/sdk/android/core/models/HashtagEntity;->text:Ljava/lang/String;

    .line 36
    return-void
.end method


# virtual methods
.method public bridge synthetic getEnd()I
    .registers 2

    .prologue
    .line 25
    invoke-super {p0}, Lcom/twitter/sdk/android/core/models/Entity;->getEnd()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getStart()I
    .registers 2

    .prologue
    .line 25
    invoke-super {p0}, Lcom/twitter/sdk/android/core/models/Entity;->getStart()I

    move-result v0

    return v0
.end method
