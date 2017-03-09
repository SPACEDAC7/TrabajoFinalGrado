.class public Lcom/buzzfeed/toolkit/dustbuster/DustbusterEventCollection;
.super Ljava/lang/Object;
.source "DustbusterEventCollection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/buzzfeed/toolkit/dustbuster/DustbusterEventCollection$DustbusterCollectionEvent;
    }
.end annotation


# instance fields
.field private mEvents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/buzzfeed/toolkit/dustbuster/DustbusterEventCollection$DustbusterCollectionEvent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/buzzfeed/toolkit/dustbuster/DustbusterEventCollection;->mEvents:Ljava/util/List;

    .line 13
    return-void
.end method


# virtual methods
.method public addEvent(Lcom/buzzfeed/toolkit/dustbuster/DustbusterEventCollection$DustbusterCollectionEvent;)V
    .registers 3
    .param p1, "event"    # Lcom/buzzfeed/toolkit/dustbuster/DustbusterEventCollection$DustbusterCollectionEvent;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/buzzfeed/toolkit/dustbuster/DustbusterEventCollection;->mEvents:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    return-void
.end method

.method public addEvent(Ljava/lang/String;Ljava/util/Map;)V
    .registers 5
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
    .line 16
    .local p2, "metadata":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v0, p0, Lcom/buzzfeed/toolkit/dustbuster/DustbusterEventCollection;->mEvents:Ljava/util/List;

    new-instance v1, Lcom/buzzfeed/toolkit/dustbuster/DustbusterEventCollection$DustbusterCollectionEvent;

    invoke-direct {v1, p1, p2}, Lcom/buzzfeed/toolkit/dustbuster/DustbusterEventCollection$DustbusterCollectionEvent;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    return-void
.end method

.method public getEvents()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/buzzfeed/toolkit/dustbuster/DustbusterEventCollection$DustbusterCollectionEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 24
    iget-object v0, p0, Lcom/buzzfeed/toolkit/dustbuster/DustbusterEventCollection;->mEvents:Ljava/util/List;

    return-object v0
.end method
