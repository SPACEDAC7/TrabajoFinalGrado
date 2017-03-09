.class public interface abstract Lcom/buzzfeed/toolkit/dustbuster/DustbusterInterface;
.super Ljava/lang/Object;
.source "DustbusterInterface.java"


# virtual methods
.method public abstract trackEvent(Ljava/lang/String;Ljava/util/Map;)Lcom/buzzfeed/toolkit/dustbuster/DustbusterEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/buzzfeed/toolkit/dustbuster/DustbusterEvent;"
        }
    .end annotation
.end method

.method public abstract trackEvent(Ljava/lang/String;Ljava/util/Map;Z)Lcom/buzzfeed/toolkit/dustbuster/DustbusterEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z)",
            "Lcom/buzzfeed/toolkit/dustbuster/DustbusterEvent;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method
