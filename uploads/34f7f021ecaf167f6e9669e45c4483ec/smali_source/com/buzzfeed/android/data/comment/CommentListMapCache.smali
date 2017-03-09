.class public Lcom/buzzfeed/android/data/comment/CommentListMapCache;
.super Ljava/lang/Object;
.source "CommentListMapCache.java"

# interfaces
.implements Lcom/buzzfeed/android/data/comment/CommentListCache;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/buzzfeed/android/data/comment/CommentListMapCache$CommentsCacheObservable;,
        Lcom/buzzfeed/android/data/comment/CommentListMapCache$CommentListMap;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;

.field private static sInstance:Lcom/buzzfeed/android/data/comment/CommentListMapCache;


# instance fields
.field private final MAX_SIZE:I

.field private mCommentHashMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/buzzfeed/android/data/comment/Comment;",
            ">;"
        }
    .end annotation
.end field

.field private mCommentListMap:Lcom/buzzfeed/android/data/comment/CommentListMapCache$CommentListMap;

.field private mObservable:Lcom/buzzfeed/android/data/comment/CommentListMapCache$CommentsCacheObservable;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 18
    const-class v0, Lcom/buzzfeed/android/data/comment/CommentListMapCache;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/buzzfeed/android/data/comment/CommentListMapCache;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Lcom/buzzfeed/android/data/comment/CommentListMapCache$CommentListMap;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/buzzfeed/android/data/comment/CommentListMapCache$CommentListMap;-><init>(Lcom/buzzfeed/android/data/comment/CommentListMapCache;Lcom/buzzfeed/android/data/comment/CommentListMapCache$1;)V

    iput-object v0, p0, Lcom/buzzfeed/android/data/comment/CommentListMapCache;->mCommentListMap:Lcom/buzzfeed/android/data/comment/CommentListMapCache$CommentListMap;

    .line 21
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/buzzfeed/android/data/comment/CommentListMapCache;->mCommentHashMap:Ljava/util/Map;

    .line 22
    new-instance v0, Lcom/buzzfeed/android/data/comment/CommentListMapCache$CommentsCacheObservable;

    invoke-direct {v0}, Lcom/buzzfeed/android/data/comment/CommentListMapCache$CommentsCacheObservable;-><init>()V

    iput-object v0, p0, Lcom/buzzfeed/android/data/comment/CommentListMapCache;->mObservable:Lcom/buzzfeed/android/data/comment/CommentListMapCache$CommentsCacheObservable;

    .line 23
    const/4 v0, 0x3

    iput v0, p0, Lcom/buzzfeed/android/data/comment/CommentListMapCache;->MAX_SIZE:I

    .line 29
    return-void
.end method

.method static synthetic access$100(Lcom/buzzfeed/android/data/comment/CommentListMapCache;Lcom/buzzfeed/android/data/comment/Comment;)V
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/android/data/comment/CommentListMapCache;
    .param p1, "x1"    # Lcom/buzzfeed/android/data/comment/Comment;

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/buzzfeed/android/data/comment/CommentListMapCache;->removeCommentsFromMap(Lcom/buzzfeed/android/data/comment/Comment;)V

    return-void
.end method

.method private addCommentToList(Lcom/buzzfeed/android/data/comment/Comment;Ljava/util/List;)Z
    .registers 8
    .param p1, "comment"    # Lcom/buzzfeed/android/data/comment/Comment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/buzzfeed/android/data/comment/Comment;",
            "Ljava/util/List",
            "<",
            "Lcom/buzzfeed/android/data/comment/Comment;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p2, "comments":Ljava/util/List;, "Ljava/util/List<Lcom/buzzfeed/android/data/comment/Comment;>;"
    const/4 v3, 0x0

    .line 55
    invoke-virtual {p1}, Lcom/buzzfeed/android/data/comment/Comment;->getParent()Lcom/buzzfeed/android/data/comment/Comment;

    move-result-object v4

    if-eqz v4, :cond_30

    .line 56
    invoke-virtual {p1}, Lcom/buzzfeed/android/data/comment/Comment;->getParent()Lcom/buzzfeed/android/data/comment/Comment;

    move-result-object v4

    invoke-virtual {v4}, Lcom/buzzfeed/android/data/comment/Comment;->getCommentId()Ljava/lang/String;

    move-result-object v2

    .line 57
    .local v2, "parentId":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_10
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_34

    .line 58
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/buzzfeed/android/data/comment/Comment;

    .line 59
    .local v0, "c":Lcom/buzzfeed/android/data/comment/Comment;
    invoke-virtual {v0}, Lcom/buzzfeed/android/data/comment/Comment;->getCommentId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2d

    .line 60
    invoke-virtual {v0}, Lcom/buzzfeed/android/data/comment/Comment;->getReplies()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    :cond_2d
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 64
    .end local v0    # "c":Lcom/buzzfeed/android/data/comment/Comment;
    .end local v1    # "i":I
    .end local v2    # "parentId":Ljava/lang/String;
    :cond_30
    invoke-interface {p2, v3, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 65
    const/4 v3, 0x1

    .line 68
    :cond_34
    return v3
.end method

.method private addCommentsToMap(Lcom/buzzfeed/android/data/comment/Comment;)V
    .registers 6
    .param p1, "comment"    # Lcom/buzzfeed/android/data/comment/Comment;

    .prologue
    .line 105
    iget-object v1, p0, Lcom/buzzfeed/android/data/comment/CommentListMapCache;->mCommentHashMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/buzzfeed/android/data/comment/Comment;->getCommentId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    invoke-virtual {p1}, Lcom/buzzfeed/android/data/comment/Comment;->getReplies()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_11
    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_34

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/buzzfeed/android/data/comment/Comment;

    .line 107
    .local v0, "c":Lcom/buzzfeed/android/data/comment/Comment;
    iget-object v2, p0, Lcom/buzzfeed/android/data/comment/CommentListMapCache;->mCommentHashMap:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/buzzfeed/android/data/comment/Comment;->getCommentId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    invoke-virtual {v0}, Lcom/buzzfeed/android/data/comment/Comment;->getReplies()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_11

    .line 109
    invoke-direct {p0, v0}, Lcom/buzzfeed/android/data/comment/CommentListMapCache;->addCommentsToMap(Lcom/buzzfeed/android/data/comment/Comment;)V

    goto :goto_11

    .line 112
    .end local v0    # "c":Lcom/buzzfeed/android/data/comment/Comment;
    :cond_34
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/buzzfeed/android/data/comment/CommentListMapCache;
    .registers 2

    .prologue
    .line 32
    const-class v1, Lcom/buzzfeed/android/data/comment/CommentListMapCache;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/buzzfeed/android/data/comment/CommentListMapCache;->sInstance:Lcom/buzzfeed/android/data/comment/CommentListMapCache;

    if-nez v0, :cond_e

    .line 33
    new-instance v0, Lcom/buzzfeed/android/data/comment/CommentListMapCache;

    invoke-direct {v0}, Lcom/buzzfeed/android/data/comment/CommentListMapCache;-><init>()V

    sput-object v0, Lcom/buzzfeed/android/data/comment/CommentListMapCache;->sInstance:Lcom/buzzfeed/android/data/comment/CommentListMapCache;

    .line 35
    :cond_e
    sget-object v0, Lcom/buzzfeed/android/data/comment/CommentListMapCache;->sInstance:Lcom/buzzfeed/android/data/comment/CommentListMapCache;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 32
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private removeCommentsFromMap(Lcom/buzzfeed/android/data/comment/Comment;)V
    .registers 6
    .param p1, "comment"    # Lcom/buzzfeed/android/data/comment/Comment;

    .prologue
    .line 115
    iget-object v1, p0, Lcom/buzzfeed/android/data/comment/CommentListMapCache;->mCommentHashMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/buzzfeed/android/data/comment/Comment;->getCommentId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    invoke-virtual {p1}, Lcom/buzzfeed/android/data/comment/Comment;->getReplies()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_11
    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_34

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/buzzfeed/android/data/comment/Comment;

    .line 117
    .local v0, "c":Lcom/buzzfeed/android/data/comment/Comment;
    iget-object v2, p0, Lcom/buzzfeed/android/data/comment/CommentListMapCache;->mCommentHashMap:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/buzzfeed/android/data/comment/Comment;->getCommentId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    invoke-virtual {v0}, Lcom/buzzfeed/android/data/comment/Comment;->getReplies()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_11

    .line 119
    invoke-direct {p0, v0}, Lcom/buzzfeed/android/data/comment/CommentListMapCache;->removeCommentsFromMap(Lcom/buzzfeed/android/data/comment/Comment;)V

    goto :goto_11

    .line 122
    .end local v0    # "c":Lcom/buzzfeed/android/data/comment/Comment;
    :cond_34
    return-void
.end method


# virtual methods
.method public addComment(Lcom/buzzfeed/android/data/comment/Comment;Ljava/lang/String;)V
    .registers 8
    .param p1, "comment"    # Lcom/buzzfeed/android/data/comment/Comment;
    .param p2, "listId"    # Ljava/lang/String;

    .prologue
    .line 40
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/buzzfeed/android/data/comment/CommentListMapCache;->TAG:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".addComment"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 41
    .local v0, "TAG":Ljava/lang/String;
    iget-object v3, p0, Lcom/buzzfeed/android/data/comment/CommentListMapCache;->mCommentListMap:Lcom/buzzfeed/android/data/comment/CommentListMapCache$CommentListMap;

    invoke-virtual {v3, p2}, Lcom/buzzfeed/android/data/comment/CommentListMapCache$CommentListMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 42
    .local v2, "comments":Ljava/util/List;, "Ljava/util/List<Lcom/buzzfeed/android/data/comment/Comment;>;"
    if-eqz v2, :cond_37

    .line 43
    invoke-direct {p0, p1, v2}, Lcom/buzzfeed/android/data/comment/CommentListMapCache;->addCommentToList(Lcom/buzzfeed/android/data/comment/Comment;Ljava/util/List;)Z

    move-result v1

    .line 44
    .local v1, "added":Z
    iget-object v3, p0, Lcom/buzzfeed/android/data/comment/CommentListMapCache;->mCommentHashMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/buzzfeed/android/data/comment/Comment;->getCommentId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    iget-object v3, p0, Lcom/buzzfeed/android/data/comment/CommentListMapCache;->mObservable:Lcom/buzzfeed/android/data/comment/CommentListMapCache$CommentsCacheObservable;

    invoke-virtual {v3}, Lcom/buzzfeed/android/data/comment/CommentListMapCache$CommentsCacheObservable;->setChangeFlag()V

    .line 47
    iget-object v3, p0, Lcom/buzzfeed/android/data/comment/CommentListMapCache;->mObservable:Lcom/buzzfeed/android/data/comment/CommentListMapCache$CommentsCacheObservable;

    invoke-virtual {v3, p2}, Lcom/buzzfeed/android/data/comment/CommentListMapCache$CommentsCacheObservable;->notifyObservers(Ljava/lang/Object;)V

    .line 52
    .end local v1    # "added":Z
    :goto_36
    return-void

    .line 50
    :cond_37
    const-string v3, " failed to add new comment"

    invoke-static {v0, v3}, Lcom/buzzfeed/toolkit/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_36
.end method

.method public addObserver(Ljava/util/Observer;)V
    .registers 3
    .param p1, "observer"    # Ljava/util/Observer;

    .prologue
    .line 144
    iget-object v0, p0, Lcom/buzzfeed/android/data/comment/CommentListMapCache;->mObservable:Lcom/buzzfeed/android/data/comment/CommentListMapCache$CommentsCacheObservable;

    invoke-virtual {v0, p1}, Lcom/buzzfeed/android/data/comment/CommentListMapCache$CommentsCacheObservable;->addObserver(Ljava/util/Observer;)V

    .line 145
    return-void
.end method

.method public deleteAllObservers()V
    .registers 2

    .prologue
    .line 154
    iget-object v0, p0, Lcom/buzzfeed/android/data/comment/CommentListMapCache;->mObservable:Lcom/buzzfeed/android/data/comment/CommentListMapCache$CommentsCacheObservable;

    invoke-virtual {v0}, Lcom/buzzfeed/android/data/comment/CommentListMapCache$CommentsCacheObservable;->deleteObservers()V

    .line 155
    return-void
.end method

.method public deleteObserver(Ljava/util/Observer;)V
    .registers 3
    .param p1, "observer"    # Ljava/util/Observer;

    .prologue
    .line 149
    iget-object v0, p0, Lcom/buzzfeed/android/data/comment/CommentListMapCache;->mObservable:Lcom/buzzfeed/android/data/comment/CommentListMapCache$CommentsCacheObservable;

    invoke-virtual {v0, p1}, Lcom/buzzfeed/android/data/comment/CommentListMapCache$CommentsCacheObservable;->deleteObserver(Ljava/util/Observer;)V

    .line 150
    return-void
.end method

.method public getComment(Ljava/lang/String;Ljava/lang/String;)Lcom/buzzfeed/android/data/comment/Comment;
    .registers 4
    .param p1, "listId"    # Ljava/lang/String;
    .param p2, "commentId"    # Ljava/lang/String;

    .prologue
    .line 134
    iget-object v0, p0, Lcom/buzzfeed/android/data/comment/CommentListMapCache;->mCommentHashMap:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/buzzfeed/android/data/comment/Comment;

    return-object v0
.end method

.method public getCommentList(Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .param p1, "buzzId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/buzzfeed/android/data/comment/Comment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 88
    iget-object v0, p0, Lcom/buzzfeed/android/data/comment/CommentListMapCache;->mCommentListMap:Lcom/buzzfeed/android/data/comment/CommentListMapCache$CommentListMap;

    invoke-virtual {v0, p1}, Lcom/buzzfeed/android/data/comment/CommentListMapCache$CommentListMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public putCommentList(Ljava/lang/String;Ljava/util/List;)V
    .registers 6
    .param p1, "listId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/buzzfeed/android/data/comment/Comment;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 94
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/buzzfeed/android/data/comment/Comment;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_e

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "listId cant be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 96
    :cond_e
    iget-object v1, p0, Lcom/buzzfeed/android/data/comment/CommentListMapCache;->mCommentListMap:Lcom/buzzfeed/android/data/comment/CommentListMapCache$CommentListMap;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, p1, v2}, Lcom/buzzfeed/android/data/comment/CommentListMapCache$CommentListMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/buzzfeed/android/data/comment/Comment;

    .line 98
    .local v0, "c":Lcom/buzzfeed/android/data/comment/Comment;
    invoke-direct {p0, v0}, Lcom/buzzfeed/android/data/comment/CommentListMapCache;->addCommentsToMap(Lcom/buzzfeed/android/data/comment/Comment;)V

    goto :goto_1c

    .line 100
    .end local v0    # "c":Lcom/buzzfeed/android/data/comment/Comment;
    :cond_2c
    iget-object v1, p0, Lcom/buzzfeed/android/data/comment/CommentListMapCache;->mObservable:Lcom/buzzfeed/android/data/comment/CommentListMapCache$CommentsCacheObservable;

    invoke-virtual {v1}, Lcom/buzzfeed/android/data/comment/CommentListMapCache$CommentsCacheObservable;->setChangeFlag()V

    .line 101
    iget-object v1, p0, Lcom/buzzfeed/android/data/comment/CommentListMapCache;->mObservable:Lcom/buzzfeed/android/data/comment/CommentListMapCache$CommentsCacheObservable;

    invoke-virtual {v1, p1}, Lcom/buzzfeed/android/data/comment/CommentListMapCache$CommentsCacheObservable;->notifyObservers(Ljava/lang/Object;)V

    .line 102
    return-void
.end method

.method public removeCommentList(Ljava/lang/String;)V
    .registers 3
    .param p1, "listId"    # Ljava/lang/String;

    .prologue
    .line 127
    iget-object v0, p0, Lcom/buzzfeed/android/data/comment/CommentListMapCache;->mCommentListMap:Lcom/buzzfeed/android/data/comment/CommentListMapCache$CommentListMap;

    invoke-virtual {v0, p1}, Lcom/buzzfeed/android/data/comment/CommentListMapCache$CommentListMap;->remove(Ljava/lang/Object;)Ljava/util/List;

    .line 128
    iget-object v0, p0, Lcom/buzzfeed/android/data/comment/CommentListMapCache;->mObservable:Lcom/buzzfeed/android/data/comment/CommentListMapCache$CommentsCacheObservable;

    invoke-virtual {v0}, Lcom/buzzfeed/android/data/comment/CommentListMapCache$CommentsCacheObservable;->setChangeFlag()V

    .line 129
    iget-object v0, p0, Lcom/buzzfeed/android/data/comment/CommentListMapCache;->mObservable:Lcom/buzzfeed/android/data/comment/CommentListMapCache$CommentsCacheObservable;

    invoke-virtual {v0, p1}, Lcom/buzzfeed/android/data/comment/CommentListMapCache$CommentsCacheObservable;->notifyObservers(Ljava/lang/Object;)V

    .line 130
    return-void
.end method

.method public replaceComment(Lcom/buzzfeed/android/data/comment/Comment;Ljava/lang/String;)V
    .registers 7
    .param p1, "comment"    # Lcom/buzzfeed/android/data/comment/Comment;
    .param p2, "listId"    # Ljava/lang/String;

    .prologue
    .line 72
    iget-object v2, p0, Lcom/buzzfeed/android/data/comment/CommentListMapCache;->mCommentListMap:Lcom/buzzfeed/android/data/comment/CommentListMapCache$CommentListMap;

    invoke-virtual {v2, p2}, Lcom/buzzfeed/android/data/comment/CommentListMapCache$CommentListMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 73
    .local v0, "comments":Ljava/util/List;, "Ljava/util/List<Lcom/buzzfeed/android/data/comment/Comment;>;"
    if-eqz v0, :cond_32

    .line 74
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_28

    .line 75
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/buzzfeed/android/data/comment/Comment;

    invoke-virtual {v2}, Lcom/buzzfeed/android/data/comment/Comment;->getCommentId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/buzzfeed/android/data/comment/Comment;->getCommentId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_33

    .line 76
    invoke-interface {v0, v1, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 81
    :cond_28
    iget-object v2, p0, Lcom/buzzfeed/android/data/comment/CommentListMapCache;->mObservable:Lcom/buzzfeed/android/data/comment/CommentListMapCache$CommentsCacheObservable;

    invoke-virtual {v2}, Lcom/buzzfeed/android/data/comment/CommentListMapCache$CommentsCacheObservable;->setChangeFlag()V

    .line 82
    iget-object v2, p0, Lcom/buzzfeed/android/data/comment/CommentListMapCache;->mObservable:Lcom/buzzfeed/android/data/comment/CommentListMapCache$CommentsCacheObservable;

    invoke-virtual {v2, p2}, Lcom/buzzfeed/android/data/comment/CommentListMapCache$CommentsCacheObservable;->notifyObservers(Ljava/lang/Object;)V

    .line 84
    .end local v1    # "i":I
    :cond_32
    return-void

    .line 74
    .restart local v1    # "i":I
    :cond_33
    add-int/lit8 v1, v1, 0x1

    goto :goto_b
.end method
