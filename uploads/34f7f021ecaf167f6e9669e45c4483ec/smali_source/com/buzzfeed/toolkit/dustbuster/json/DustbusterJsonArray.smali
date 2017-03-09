.class public Lcom/buzzfeed/toolkit/dustbuster/json/DustbusterJsonArray;
.super Lorg/json/JSONArray;
.source "DustbusterJsonArray.java"

# interfaces
.implements Lcom/buzzfeed/toolkit/dustbuster/json/DustbusterJson;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 6
    invoke-direct {p0}, Lorg/json/JSONArray;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 14
    invoke-virtual {p0, p1}, Lcom/buzzfeed/toolkit/dustbuster/json/DustbusterJsonArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 15
    return-void
.end method

.method public add(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 9
    invoke-virtual {p0, p2}, Lcom/buzzfeed/toolkit/dustbuster/json/DustbusterJsonArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 10
    return-void
.end method
