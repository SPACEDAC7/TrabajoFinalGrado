.class public Lcom/buzzfeed/toolkit/dustbuster/DustbusterEventCollection$DustbusterCollectionEvent;
.super Ljava/lang/Object;
.source "DustbusterEventCollection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/buzzfeed/toolkit/dustbuster/DustbusterEventCollection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DustbusterCollectionEvent"
.end annotation


# instance fields
.field private mMetadata:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;)V
    .registers 3
    .param p1, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 32
    .local p2, "metadata":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/buzzfeed/toolkit/dustbuster/DustbusterEventCollection$DustbusterCollectionEvent;->mType:Ljava/lang/String;

    .line 34
    iput-object p2, p0, Lcom/buzzfeed/toolkit/dustbuster/DustbusterEventCollection$DustbusterCollectionEvent;->mMetadata:Ljava/util/Map;

    .line 35
    return-void
.end method


# virtual methods
.method public getMetadata()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 46
    iget-object v0, p0, Lcom/buzzfeed/toolkit/dustbuster/DustbusterEventCollection$DustbusterCollectionEvent;->mMetadata:Ljava/util/Map;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/buzzfeed/toolkit/dustbuster/DustbusterEventCollection$DustbusterCollectionEvent;->mType:Ljava/lang/String;

    return-object v0
.end method

.method public setMetadata(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 50
    .local p1, "metadata":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iput-object p1, p0, Lcom/buzzfeed/toolkit/dustbuster/DustbusterEventCollection$DustbusterCollectionEvent;->mMetadata:Ljava/util/Map;

    .line 51
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .registers 2
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/buzzfeed/toolkit/dustbuster/DustbusterEventCollection$DustbusterCollectionEvent;->mType:Ljava/lang/String;

    .line 43
    return-void
.end method
