.class Lcom/buzzfeed/android/data/comment/CommentListMapCache$CommentListMap;
.super Ljava/util/LinkedHashMap;
.source "CommentListMapCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/buzzfeed/android/data/comment/CommentListMapCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CommentListMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/util/List",
        "<",
        "Lcom/buzzfeed/android/data/comment/Comment;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/buzzfeed/android/data/comment/CommentListMapCache;


# direct methods
.method private constructor <init>(Lcom/buzzfeed/android/data/comment/CommentListMapCache;)V
    .registers 2

    .prologue
    .line 157
    iput-object p1, p0, Lcom/buzzfeed/android/data/comment/CommentListMapCache$CommentListMap;->this$0:Lcom/buzzfeed/android/data/comment/CommentListMapCache;

    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/buzzfeed/android/data/comment/CommentListMapCache;Lcom/buzzfeed/android/data/comment/CommentListMapCache$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/buzzfeed/android/data/comment/CommentListMapCache;
    .param p2, "x1"    # Lcom/buzzfeed/android/data/comment/CommentListMapCache$1;

    .prologue
    .line 157
    invoke-direct {p0, p1}, Lcom/buzzfeed/android/data/comment/CommentListMapCache$CommentListMap;-><init>(Lcom/buzzfeed/android/data/comment/CommentListMapCache;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 157
    invoke-virtual {p0, p1}, Lcom/buzzfeed/android/data/comment/CommentListMapCache$CommentListMap;->remove(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Ljava/util/List;
    .registers 6
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/buzzfeed/android/data/comment/Comment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 165
    invoke-super {p0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 166
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/buzzfeed/android/data/comment/Comment;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/buzzfeed/android/data/comment/Comment;

    .line 167
    .local v0, "c":Lcom/buzzfeed/android/data/comment/Comment;
    iget-object v3, p0, Lcom/buzzfeed/android/data/comment/CommentListMapCache$CommentListMap;->this$0:Lcom/buzzfeed/android/data/comment/CommentListMapCache;

    # invokes: Lcom/buzzfeed/android/data/comment/CommentListMapCache;->removeCommentsFromMap(Lcom/buzzfeed/android/data/comment/Comment;)V
    invoke-static {v3, v0}, Lcom/buzzfeed/android/data/comment/CommentListMapCache;->access$100(Lcom/buzzfeed/android/data/comment/CommentListMapCache;Lcom/buzzfeed/android/data/comment/Comment;)V

    goto :goto_a

    .line 169
    .end local v0    # "c":Lcom/buzzfeed/android/data/comment/Comment;
    :cond_1c
    return-object v1
.end method

.method protected removeEldestEntry(Ljava/util/Map$Entry;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/buzzfeed/android/data/comment/Comment;",
            ">;>;)Z"
        }
    .end annotation

    .prologue
    .line 160
    .local p1, "eldest":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Lcom/buzzfeed/android/data/comment/Comment;>;>;"
    invoke-virtual {p0}, Lcom/buzzfeed/android/data/comment/CommentListMapCache$CommentListMap;->size()I

    move-result v0

    const/4 v1, 0x3

    if-le v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method
