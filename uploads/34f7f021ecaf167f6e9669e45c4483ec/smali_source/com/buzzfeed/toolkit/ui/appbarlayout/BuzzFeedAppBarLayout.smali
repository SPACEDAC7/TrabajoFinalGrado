.class public Lcom/buzzfeed/toolkit/ui/appbarlayout/BuzzFeedAppBarLayout;
.super Landroid/support/design/widget/AppBarLayout;
.source "BuzzFeedAppBarLayout.java"


# instance fields
.field final mOffsetChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 18
    invoke-direct {p0, p1}, Landroid/support/design/widget/AppBarLayout;-><init>(Landroid/content/Context;)V

    .line 15
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/buzzfeed/toolkit/ui/appbarlayout/BuzzFeedAppBarLayout;->mOffsetChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Landroid/support/design/widget/AppBarLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 15
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/buzzfeed/toolkit/ui/appbarlayout/BuzzFeedAppBarLayout;->mOffsetChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 23
    return-void
.end method


# virtual methods
.method public addOnOffsetChangedListener(Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;

    .prologue
    .line 27
    invoke-super {p0, p1}, Landroid/support/design/widget/AppBarLayout;->addOnOffsetChangedListener(Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;)V

    .line 28
    iget-object v0, p0, Lcom/buzzfeed/toolkit/ui/appbarlayout/BuzzFeedAppBarLayout;->mOffsetChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 29
    return-void
.end method

.method notifyOnOffsetChanged(I)V
    .registers 5
    .param p1, "offset"    # I

    .prologue
    .line 38
    iget-object v1, p0, Lcom/buzzfeed/toolkit/ui/appbarlayout/BuzzFeedAppBarLayout;->mOffsetChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;

    .line 39
    .local v0, "listener":Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;
    invoke-interface {v0, p0, p1}, Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;->onOffsetChanged(Landroid/support/design/widget/AppBarLayout;I)V

    goto :goto_6

    .line 41
    .end local v0    # "listener":Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;
    :cond_16
    return-void
.end method

.method public removeOnOffsetChangedListener(Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;

    .prologue
    .line 33
    invoke-super {p0, p1}, Landroid/support/design/widget/AppBarLayout;->removeOnOffsetChangedListener(Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;)V

    .line 34
    iget-object v0, p0, Lcom/buzzfeed/toolkit/ui/appbarlayout/BuzzFeedAppBarLayout;->mOffsetChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 35
    return-void
.end method
