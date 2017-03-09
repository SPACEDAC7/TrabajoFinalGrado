.class Lcom/buzzfeed/toolkit/dustbuster/DustbusterLogic$LogicResult;
.super Ljava/lang/Object;
.source "DustbusterLogic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/buzzfeed/toolkit/dustbuster/DustbusterLogic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LogicResult"
.end annotation


# instance fields
.field private mEventsProcessed:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mJsonParams:Lorg/json/JSONArray;

.field private mShouldProcessMore:Z


# direct methods
.method public constructor <init>(ZLjava/util/ArrayList;Lorg/json/JSONArray;)V
    .registers 4
    .param p1, "shouldProcessMore"    # Z
    .param p3, "jsonParams"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lorg/json/JSONArray;",
            ")V"
        }
    .end annotation

    .prologue
    .line 196
    .local p2, "eventsProcessed":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 197
    iput-boolean p1, p0, Lcom/buzzfeed/toolkit/dustbuster/DustbusterLogic$LogicResult;->mShouldProcessMore:Z

    .line 198
    iput-object p2, p0, Lcom/buzzfeed/toolkit/dustbuster/DustbusterLogic$LogicResult;->mEventsProcessed:Ljava/util/ArrayList;

    .line 199
    iput-object p3, p0, Lcom/buzzfeed/toolkit/dustbuster/DustbusterLogic$LogicResult;->mJsonParams:Lorg/json/JSONArray;

    .line 200
    return-void
.end method


# virtual methods
.method public getEventsProcessed()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 207
    iget-object v0, p0, Lcom/buzzfeed/toolkit/dustbuster/DustbusterLogic$LogicResult;->mEventsProcessed:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getJsonParams()Lorg/json/JSONArray;
    .registers 2

    .prologue
    .line 211
    iget-object v0, p0, Lcom/buzzfeed/toolkit/dustbuster/DustbusterLogic$LogicResult;->mJsonParams:Lorg/json/JSONArray;

    return-object v0
.end method

.method public isShouldProcessMore()Z
    .registers 2

    .prologue
    .line 203
    iget-boolean v0, p0, Lcom/buzzfeed/toolkit/dustbuster/DustbusterLogic$LogicResult;->mShouldProcessMore:Z

    return v0
.end method
