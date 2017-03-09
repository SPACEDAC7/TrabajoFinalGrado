.class Lcom/buzzfeed/android/database/BFCacheData$PutCache;
.super Ljava/lang/Object;
.source "BFCacheData.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/buzzfeed/android/database/BFCacheData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PutCache"
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field cacheId:Ljava/lang/String;

.field object:Ljava/lang/Object;

.field type:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4
    .param p1, "cacheId"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 348
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 349
    iput-object p1, p0, Lcom/buzzfeed/android/database/BFCacheData$PutCache;->cacheId:Ljava/lang/String;

    .line 350
    iput-object p2, p0, Lcom/buzzfeed/android/database/BFCacheData$PutCache;->type:Ljava/lang/String;

    .line 351
    iput-object p3, p0, Lcom/buzzfeed/android/database/BFCacheData$PutCache;->object:Ljava/lang/Object;

    .line 352
    return-void
.end method
