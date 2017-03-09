.class public Ljackpal/androidterm/util/SessionList;
.super Ljava/util/ArrayList;
.source "SessionList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Ljackpal/androidterm/emulatorview/TermSession;",
        ">;"
    }
.end annotation


# instance fields
.field callbacks:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljackpal/androidterm/emulatorview/UpdateCallback;",
            ">;"
        }
    .end annotation
.end field

.field mTitleChangedListener:Ljackpal/androidterm/emulatorview/UpdateCallback;

.field titleChangedListeners:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljackpal/androidterm/emulatorview/UpdateCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 33
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Ljackpal/androidterm/util/SessionList;->callbacks:Ljava/util/LinkedList;

    .line 34
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Ljackpal/androidterm/util/SessionList;->titleChangedListeners:Ljava/util/LinkedList;

    .line 35
    new-instance v0, Ljackpal/androidterm/util/SessionList$1;

    invoke-direct {v0, p0}, Ljackpal/androidterm/util/SessionList$1;-><init>(Ljackpal/androidterm/util/SessionList;)V

    iput-object v0, p0, Ljackpal/androidterm/util/SessionList;->mTitleChangedListener:Ljackpal/androidterm/emulatorview/UpdateCallback;

    .line 43
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .param p1, "capacity"    # I

    .prologue
    .line 46
    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(I)V

    .line 33
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Ljackpal/androidterm/util/SessionList;->callbacks:Ljava/util/LinkedList;

    .line 34
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Ljackpal/androidterm/util/SessionList;->titleChangedListeners:Ljava/util/LinkedList;

    .line 35
    new-instance v0, Ljackpal/androidterm/util/SessionList$1;

    invoke-direct {v0, p0}, Ljackpal/androidterm/util/SessionList$1;-><init>(Ljackpal/androidterm/util/SessionList;)V

    iput-object v0, p0, Ljackpal/androidterm/util/SessionList;->mTitleChangedListener:Ljackpal/androidterm/emulatorview/UpdateCallback;

    .line 47
    return-void
.end method

.method static synthetic access$000(Ljackpal/androidterm/util/SessionList;)V
    .registers 1
    .param p0, "x0"    # Ljackpal/androidterm/util/SessionList;

    .prologue
    .line 31
    invoke-direct {p0}, Ljackpal/androidterm/util/SessionList;->notifyTitleChanged()V

    return-void
.end method

.method private notifyChange()V
    .registers 4

    .prologue
    .line 59
    iget-object v2, p0, Ljackpal/androidterm/util/SessionList;->callbacks:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljackpal/androidterm/emulatorview/UpdateCallback;

    .line 60
    .local v0, "callback":Ljackpal/androidterm/emulatorview/UpdateCallback;
    invoke-interface {v0}, Ljackpal/androidterm/emulatorview/UpdateCallback;->onUpdate()V

    goto :goto_6

    .line 62
    .end local v0    # "callback":Ljackpal/androidterm/emulatorview/UpdateCallback;
    :cond_16
    return-void
.end method

.method private notifyTitleChanged()V
    .registers 4

    .prologue
    .line 74
    iget-object v2, p0, Ljackpal/androidterm/util/SessionList;->titleChangedListeners:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljackpal/androidterm/emulatorview/UpdateCallback;

    .line 75
    .local v1, "listener":Ljackpal/androidterm/emulatorview/UpdateCallback;
    invoke-interface {v1}, Ljackpal/androidterm/emulatorview/UpdateCallback;->onUpdate()V

    goto :goto_6

    .line 77
    .end local v1    # "listener":Ljackpal/androidterm/emulatorview/UpdateCallback;
    :cond_16
    return-void
.end method


# virtual methods
.method public add(ILjackpal/androidterm/emulatorview/TermSession;)V
    .registers 4
    .param p1, "index"    # I
    .param p2, "object"    # Ljackpal/androidterm/emulatorview/TermSession;

    .prologue
    .line 89
    invoke-super {p0, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 90
    iget-object v0, p0, Ljackpal/androidterm/util/SessionList;->mTitleChangedListener:Ljackpal/androidterm/emulatorview/UpdateCallback;

    invoke-virtual {p2, v0}, Ljackpal/androidterm/emulatorview/TermSession;->setTitleChangedListener(Ljackpal/androidterm/emulatorview/UpdateCallback;)V

    .line 91
    invoke-direct {p0}, Ljackpal/androidterm/util/SessionList;->notifyChange()V

    .line 92
    return-void
.end method

.method public bridge synthetic add(ILjava/lang/Object;)V
    .registers 3
    .param p1, "x0"    # I
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 30
    check-cast p2, Ljackpal/androidterm/emulatorview/TermSession;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Ljackpal/androidterm/util/SessionList;->add(ILjackpal/androidterm/emulatorview/TermSession;)V

    return-void
.end method

.method public add(Ljackpal/androidterm/emulatorview/TermSession;)Z
    .registers 4
    .param p1, "object"    # Ljackpal/androidterm/emulatorview/TermSession;

    .prologue
    .line 81
    invoke-super {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 82
    .local v0, "result":Z
    iget-object v1, p0, Ljackpal/androidterm/util/SessionList;->mTitleChangedListener:Ljackpal/androidterm/emulatorview/UpdateCallback;

    invoke-virtual {p1, v1}, Ljackpal/androidterm/emulatorview/TermSession;->setTitleChangedListener(Ljackpal/androidterm/emulatorview/UpdateCallback;)V

    .line 83
    invoke-direct {p0}, Ljackpal/androidterm/util/SessionList;->notifyChange()V

    .line 84
    return v0
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 30
    check-cast p1, Ljackpal/androidterm/emulatorview/TermSession;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Ljackpal/androidterm/util/SessionList;->add(Ljackpal/androidterm/emulatorview/TermSession;)Z

    move-result v0

    return v0
.end method

.method public addAll(ILjava/util/Collection;)Z
    .registers 7
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection",
            "<+",
            "Ljackpal/androidterm/emulatorview/TermSession;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 106
    .local p2, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+Ljackpal/androidterm/emulatorview/TermSession;>;"
    invoke-super {p0, p1, p2}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    move-result v1

    .line 107
    .local v1, "result":Z
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljackpal/androidterm/emulatorview/TermSession;

    .line 108
    .local v2, "session":Ljackpal/androidterm/emulatorview/TermSession;
    iget-object v3, p0, Ljackpal/androidterm/util/SessionList;->mTitleChangedListener:Ljackpal/androidterm/emulatorview/UpdateCallback;

    invoke-virtual {v2, v3}, Ljackpal/androidterm/emulatorview/TermSession;->setTitleChangedListener(Ljackpal/androidterm/emulatorview/UpdateCallback;)V

    goto :goto_8

    .line 110
    .end local v2    # "session":Ljackpal/androidterm/emulatorview/TermSession;
    :cond_1a
    invoke-direct {p0}, Ljackpal/androidterm/util/SessionList;->notifyChange()V

    .line 111
    return v1
.end method

.method public addAll(Ljava/util/Collection;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Ljackpal/androidterm/emulatorview/TermSession;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 96
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+Ljackpal/androidterm/emulatorview/TermSession;>;"
    invoke-super {p0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-result v1

    .line 97
    .local v1, "result":Z
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljackpal/androidterm/emulatorview/TermSession;

    .line 98
    .local v2, "session":Ljackpal/androidterm/emulatorview/TermSession;
    iget-object v3, p0, Ljackpal/androidterm/util/SessionList;->mTitleChangedListener:Ljackpal/androidterm/emulatorview/UpdateCallback;

    invoke-virtual {v2, v3}, Ljackpal/androidterm/emulatorview/TermSession;->setTitleChangedListener(Ljackpal/androidterm/emulatorview/UpdateCallback;)V

    goto :goto_8

    .line 100
    .end local v2    # "session":Ljackpal/androidterm/emulatorview/TermSession;
    :cond_1a
    invoke-direct {p0}, Ljackpal/androidterm/util/SessionList;->notifyChange()V

    .line 101
    return v1
.end method

.method public addCallback(Ljackpal/androidterm/emulatorview/UpdateCallback;)V
    .registers 3
    .param p1, "callback"    # Ljackpal/androidterm/emulatorview/UpdateCallback;

    .prologue
    .line 50
    iget-object v0, p0, Ljackpal/androidterm/util/SessionList;->callbacks:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 51
    invoke-interface {p1}, Ljackpal/androidterm/emulatorview/UpdateCallback;->onUpdate()V

    .line 52
    return-void
.end method

.method public addTitleChangedListener(Ljackpal/androidterm/emulatorview/UpdateCallback;)V
    .registers 3
    .param p1, "listener"    # Ljackpal/androidterm/emulatorview/UpdateCallback;

    .prologue
    .line 65
    iget-object v0, p0, Ljackpal/androidterm/util/SessionList;->titleChangedListeners:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 66
    invoke-interface {p1}, Ljackpal/androidterm/emulatorview/UpdateCallback;->onUpdate()V

    .line 67
    return-void
.end method

.method public clear()V
    .registers 4

    .prologue
    .line 116
    invoke-virtual {p0}, Ljackpal/androidterm/util/SessionList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljackpal/androidterm/emulatorview/TermSession;

    .line 117
    .local v1, "session":Ljackpal/androidterm/emulatorview/TermSession;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljackpal/androidterm/emulatorview/TermSession;->setTitleChangedListener(Ljackpal/androidterm/emulatorview/UpdateCallback;)V

    goto :goto_4

    .line 119
    .end local v1    # "session":Ljackpal/androidterm/emulatorview/TermSession;
    :cond_15
    invoke-super {p0}, Ljava/util/ArrayList;->clear()V

    .line 120
    invoke-direct {p0}, Ljackpal/androidterm/util/SessionList;->notifyChange()V

    .line 121
    return-void
.end method

.method public remove(I)Ljackpal/androidterm/emulatorview/TermSession;
    .registers 4
    .param p1, "index"    # I

    .prologue
    .line 125
    invoke-super {p0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljackpal/androidterm/emulatorview/TermSession;

    .line 126
    .local v0, "object":Ljackpal/androidterm/emulatorview/TermSession;
    if-eqz v0, :cond_f

    .line 127
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljackpal/androidterm/emulatorview/TermSession;->setTitleChangedListener(Ljackpal/androidterm/emulatorview/UpdateCallback;)V

    .line 128
    invoke-direct {p0}, Ljackpal/androidterm/util/SessionList;->notifyChange()V

    .line 130
    :cond_f
    return-object v0
.end method

.method public bridge synthetic remove(I)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # I

    .prologue
    .line 30
    invoke-virtual {p0, p1}, Ljackpal/androidterm/util/SessionList;->remove(I)Ljackpal/androidterm/emulatorview/TermSession;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 135
    invoke-super {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 136
    .local v0, "result":Z
    if-eqz v0, :cond_13

    instance-of v1, p1, Ljackpal/androidterm/emulatorview/TermSession;

    if-eqz v1, :cond_13

    .line 137
    check-cast p1, Ljackpal/androidterm/emulatorview/TermSession;

    .end local p1    # "object":Ljava/lang/Object;
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljackpal/androidterm/emulatorview/TermSession;->setTitleChangedListener(Ljackpal/androidterm/emulatorview/UpdateCallback;)V

    .line 138
    invoke-direct {p0}, Ljackpal/androidterm/util/SessionList;->notifyChange()V

    .line 140
    :cond_13
    return v0
.end method

.method public removeCallback(Ljackpal/androidterm/emulatorview/UpdateCallback;)Z
    .registers 3
    .param p1, "callback"    # Ljackpal/androidterm/emulatorview/UpdateCallback;

    .prologue
    .line 55
    iget-object v0, p0, Ljackpal/androidterm/util/SessionList;->callbacks:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removeTitleChangedListener(Ljackpal/androidterm/emulatorview/UpdateCallback;)Z
    .registers 3
    .param p1, "listener"    # Ljackpal/androidterm/emulatorview/UpdateCallback;

    .prologue
    .line 70
    iget-object v0, p0, Ljackpal/androidterm/util/SessionList;->titleChangedListeners:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public set(ILjackpal/androidterm/emulatorview/TermSession;)Ljackpal/androidterm/emulatorview/TermSession;
    .registers 5
    .param p1, "index"    # I
    .param p2, "object"    # Ljackpal/androidterm/emulatorview/TermSession;

    .prologue
    .line 145
    invoke-super {p0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljackpal/androidterm/emulatorview/TermSession;

    .line 146
    .local v0, "old":Ljackpal/androidterm/emulatorview/TermSession;
    iget-object v1, p0, Ljackpal/androidterm/util/SessionList;->mTitleChangedListener:Ljackpal/androidterm/emulatorview/UpdateCallback;

    invoke-virtual {p2, v1}, Ljackpal/androidterm/emulatorview/TermSession;->setTitleChangedListener(Ljackpal/androidterm/emulatorview/UpdateCallback;)V

    .line 147
    if-eqz v0, :cond_11

    .line 148
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljackpal/androidterm/emulatorview/TermSession;->setTitleChangedListener(Ljackpal/androidterm/emulatorview/UpdateCallback;)V

    .line 150
    :cond_11
    invoke-direct {p0}, Ljackpal/androidterm/util/SessionList;->notifyChange()V

    .line 151
    return-object v0
.end method

.method public bridge synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "x0"    # I
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 30
    check-cast p2, Ljackpal/androidterm/emulatorview/TermSession;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Ljackpal/androidterm/util/SessionList;->set(ILjackpal/androidterm/emulatorview/TermSession;)Ljackpal/androidterm/emulatorview/TermSession;

    move-result-object v0

    return-object v0
.end method
