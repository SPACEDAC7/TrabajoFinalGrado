.class Lcom/buzzfeed/toolkit/content/WeaverItem$ThumbnailDeserializer;
.super Ljava/lang/Object;
.source "WeaverItem.java"

# interfaces
.implements Lcom/google/gson/JsonDeserializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/buzzfeed/toolkit/content/WeaverItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ThumbnailDeserializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/gson/JsonDeserializer",
        "<",
        "Lcom/buzzfeed/toolkit/content/WeaverItem$Thumbnail;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 610
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/buzzfeed/toolkit/content/WeaverItem$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/buzzfeed/toolkit/content/WeaverItem$1;

    .prologue
    .line 610
    invoke-direct {p0}, Lcom/buzzfeed/toolkit/content/WeaverItem$ThumbnailDeserializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/google/gson/JsonDeserializationContext;)Lcom/buzzfeed/toolkit/content/WeaverItem$Thumbnail;
    .registers 12
    .param p1, "json"    # Lcom/google/gson/JsonElement;
    .param p2, "typeOfT"    # Ljava/lang/reflect/Type;
    .param p3, "context"    # Lcom/google/gson/JsonDeserializationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 613
    new-instance v5, Lcom/buzzfeed/toolkit/content/WeaverItem$Thumbnail;

    invoke-direct {v5}, Lcom/buzzfeed/toolkit/content/WeaverItem$Thumbnail;-><init>()V

    .line 614
    .local v5, "thumbnail":Lcom/buzzfeed/toolkit/content/WeaverItem$Thumbnail;
    check-cast p1, Lcom/google/gson/JsonObject;

    .end local p1    # "json":Lcom/google/gson/JsonElement;
    const-string v7, "sizes"

    invoke-virtual {p1, v7}, Lcom/google/gson/JsonObject;->getAsJsonArray(Ljava/lang/String;)Lcom/google/gson/JsonArray;

    move-result-object v4

    .line 615
    .local v4, "sizesArr":Lcom/google/gson/JsonArray;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_e
    invoke-virtual {v4}, Lcom/google/gson/JsonArray;->size()I

    move-result v7

    if-ge v0, v7, :cond_3b

    .line 616
    invoke-virtual {v4, v0}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v2

    .line 617
    .local v2, "sizeElement":Lcom/google/gson/JsonElement;
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v3

    .line 618
    .local v3, "sizeObj":Lcom/google/gson/JsonObject;
    const-string/jumbo v7, "url"

    invoke-virtual {v3, v7}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v6

    .line 619
    .local v6, "url":Ljava/lang/String;
    const-string v7, "size"

    invoke-virtual {v3, v7}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v1

    .line 620
    .local v1, "size":Ljava/lang/String;
    # getter for: Lcom/buzzfeed/toolkit/content/WeaverItem$Thumbnail;->sizes:Ljava/util/HashMap;
    invoke-static {v5}, Lcom/buzzfeed/toolkit/content/WeaverItem$Thumbnail;->access$100(Lcom/buzzfeed/toolkit/content/WeaverItem$Thumbnail;)Ljava/util/HashMap;

    move-result-object v7

    invoke-virtual {v7, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 615
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 622
    .end local v1    # "size":Ljava/lang/String;
    .end local v2    # "sizeElement":Lcom/google/gson/JsonElement;
    .end local v3    # "sizeObj":Lcom/google/gson/JsonObject;
    .end local v6    # "url":Ljava/lang/String;
    :cond_3b
    return-object v5
.end method

.method public bridge synthetic deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/google/gson/JsonDeserializationContext;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 610
    invoke-virtual {p0, p1, p2, p3}, Lcom/buzzfeed/toolkit/content/WeaverItem$ThumbnailDeserializer;->deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/google/gson/JsonDeserializationContext;)Lcom/buzzfeed/toolkit/content/WeaverItem$Thumbnail;

    move-result-object v0

    return-object v0
.end method
