.class public interface abstract Lcom/buzzfeed/toolkit/content/PackageContent;
.super Ljava/lang/Object;
.source "PackageContent.java"

# interfaces
.implements Lcom/buzzfeed/toolkit/content/Content;


# virtual methods
.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getPackageItems()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/buzzfeed/toolkit/content/WeaverItem;",
            ">;"
        }
    .end annotation
.end method
