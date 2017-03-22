.class public Lhecticman/jsterm/util/SessionList;
.super Ljava/util/ArrayList;
.source "SessionList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Lhecticman/jsterm/emulatorview/TermSession;",
        ">;"
    }
.end annotation


# instance fields
.field callbacks:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lhecticman/jsterm/emulatorview/UpdateCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 33
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lhecticman/jsterm/util/SessionList;->callbacks:Ljava/util/LinkedList;

    .line 37
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .param p1, "capacity"    # I

    .prologue
    .line 40
    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(I)V

    .line 33
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lhecticman/jsterm/util/SessionList;->callbacks:Ljava/util/LinkedList;

    .line 41
    return-void
.end method

.method private notifyChange()V
    .registers 4

    .prologue
    .line 52
    iget-object v1, p0, Lhecticman/jsterm/util/SessionList;->callbacks:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_d

    .line 55
    return-void

    .line 52
    :cond_d
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhecticman/jsterm/emulatorview/UpdateCallback;

    .line 53
    .local v0, "callback":Lhecticman/jsterm/emulatorview/UpdateCallback;
    invoke-interface {v0}, Lhecticman/jsterm/emulatorview/UpdateCallback;->onUpdate()V

    goto :goto_6
.end method


# virtual methods
.method public add(ILhecticman/jsterm/emulatorview/TermSession;)V
    .registers 3
    .param p1, "index"    # I
    .param p2, "object"    # Lhecticman/jsterm/emulatorview/TermSession;

    .prologue
    .line 66
    invoke-super {p0, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 67
    invoke-direct {p0}, Lhecticman/jsterm/util/SessionList;->notifyChange()V

    .line 68
    return-void
.end method

.method public bridge synthetic add(ILjava/lang/Object;)V
    .registers 3

    .prologue
    .line 1
    check-cast p2, Lhecticman/jsterm/emulatorview/TermSession;

    invoke-virtual {p0, p1, p2}, Lhecticman/jsterm/util/SessionList;->add(ILhecticman/jsterm/emulatorview/TermSession;)V

    return-void
.end method

.method public add(Lhecticman/jsterm/emulatorview/TermSession;)Z
    .registers 3
    .param p1, "object"    # Lhecticman/jsterm/emulatorview/TermSession;

    .prologue
    .line 59
    invoke-super {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 60
    .local v0, "result":Z
    invoke-direct {p0}, Lhecticman/jsterm/util/SessionList;->notifyChange()V

    .line 61
    return v0
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Z
    .registers 3

    .prologue
    .line 1
    check-cast p1, Lhecticman/jsterm/emulatorview/TermSession;

    invoke-virtual {p0, p1}, Lhecticman/jsterm/util/SessionList;->add(Lhecticman/jsterm/emulatorview/TermSession;)Z

    move-result v0

    return v0
.end method

.method public addAll(ILjava/util/Collection;)Z
    .registers 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection",
            "<+",
            "Lhecticman/jsterm/emulatorview/TermSession;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 79
    .local p2, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+Lhecticman/jsterm/emulatorview/TermSession;>;"
    invoke-super {p0, p1, p2}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    move-result v0

    .line 80
    .local v0, "result":Z
    invoke-direct {p0}, Lhecticman/jsterm/util/SessionList;->notifyChange()V

    .line 81
    return v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Lhecticman/jsterm/emulatorview/TermSession;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 72
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+Lhecticman/jsterm/emulatorview/TermSession;>;"
    invoke-super {p0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-result v0

    .line 73
    .local v0, "result":Z
    invoke-direct {p0}, Lhecticman/jsterm/util/SessionList;->notifyChange()V

    .line 74
    return v0
.end method

.method public addCallback(Lhecticman/jsterm/emulatorview/UpdateCallback;)V
    .registers 3
    .param p1, "callback"    # Lhecticman/jsterm/emulatorview/UpdateCallback;

    .prologue
    .line 44
    iget-object v0, p0, Lhecticman/jsterm/util/SessionList;->callbacks:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 45
    return-void
.end method

.method public clear()V
    .registers 1

    .prologue
    .line 86
    invoke-super {p0}, Ljava/util/ArrayList;->clear()V

    .line 87
    invoke-direct {p0}, Lhecticman/jsterm/util/SessionList;->notifyChange()V

    .line 88
    return-void
.end method

.method public remove(I)Lhecticman/jsterm/emulatorview/TermSession;
    .registers 3
    .param p1, "index"    # I

    .prologue
    .line 92
    invoke-super {p0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhecticman/jsterm/emulatorview/TermSession;

    .line 93
    .local v0, "object":Lhecticman/jsterm/emulatorview/TermSession;
    if-eqz v0, :cond_b

    .line 94
    invoke-direct {p0}, Lhecticman/jsterm/util/SessionList;->notifyChange()V

    .line 96
    :cond_b
    return-object v0
.end method

.method public bridge synthetic remove(I)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lhecticman/jsterm/util/SessionList;->remove(I)Lhecticman/jsterm/emulatorview/TermSession;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 101
    invoke-super {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 102
    .local v0, "result":Z
    if-eqz v0, :cond_9

    .line 103
    invoke-direct {p0}, Lhecticman/jsterm/util/SessionList;->notifyChange()V

    .line 105
    :cond_9
    return v0
.end method

.method public removeCallback(Lhecticman/jsterm/emulatorview/UpdateCallback;)Z
    .registers 3
    .param p1, "callback"    # Lhecticman/jsterm/emulatorview/UpdateCallback;

    .prologue
    .line 48
    iget-object v0, p0, Lhecticman/jsterm/util/SessionList;->callbacks:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public set(ILhecticman/jsterm/emulatorview/TermSession;)Lhecticman/jsterm/emulatorview/TermSession;
    .registers 4
    .param p1, "index"    # I
    .param p2, "object"    # Lhecticman/jsterm/emulatorview/TermSession;

    .prologue
    .line 110
    invoke-super {p0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhecticman/jsterm/emulatorview/TermSession;

    .line 111
    .local v0, "old":Lhecticman/jsterm/emulatorview/TermSession;
    invoke-direct {p0}, Lhecticman/jsterm/util/SessionList;->notifyChange()V

    .line 112
    return-object v0
.end method

.method public bridge synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .prologue
    .line 1
    check-cast p2, Lhecticman/jsterm/emulatorview/TermSession;

    invoke-virtual {p0, p1, p2}, Lhecticman/jsterm/util/SessionList;->set(ILhecticman/jsterm/emulatorview/TermSession;)Lhecticman/jsterm/emulatorview/TermSession;

    move-result-object v0

    return-object v0
.end method
