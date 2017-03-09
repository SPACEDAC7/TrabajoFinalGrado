.class public Lcom/buzzfeed/android/ui/buffet/view/BuffetViewPager;
.super Landroid/support/v4/view/ViewPager;
.source "BuffetViewPager.java"


# instance fields
.field private mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/view/ViewPager$OnPageChangeListener;",
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
    invoke-direct {p0, p1}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;)V

    .line 15
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/buzzfeed/android/ui/buffet/view/BuffetViewPager;->mListeners:Ljava/util/List;

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 15
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/buzzfeed/android/ui/buffet/view/BuffetViewPager;->mListeners:Ljava/util/List;

    .line 23
    return-void
.end method

.method static synthetic access$000(Lcom/buzzfeed/android/ui/buffet/view/BuffetViewPager;I)V
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/android/ui/buffet/view/BuffetViewPager;
    .param p1, "x1"    # I

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/buzzfeed/android/ui/buffet/view/BuffetViewPager;->dispatchOnPageSelected(I)V

    return-void
.end method

.method private dispatchOnPageSelected(I)V
    .registers 5
    .param p1, "position"    # I

    .prologue
    .line 60
    iget-object v1, p0, Lcom/buzzfeed/android/ui/buffet/view/BuffetViewPager;->mListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .line 61
    .local v0, "listener":Landroid/support/v4/view/ViewPager$OnPageChangeListener;
    if-eqz v0, :cond_6

    .line 62
    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    goto :goto_6

    .line 65
    .end local v0    # "listener":Landroid/support/v4/view/ViewPager$OnPageChangeListener;
    :cond_18
    return-void
.end method


# virtual methods
.method public addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .prologue
    .line 27
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 28
    iget-object v0, p0, Lcom/buzzfeed/android/ui/buffet/view/BuffetViewPager;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29
    return-void
.end method

.method public clearOnPageChangeListeners()V
    .registers 2

    .prologue
    .line 39
    invoke-super {p0}, Landroid/support/v4/view/ViewPager;->clearOnPageChangeListeners()V

    .line 40
    iget-object v0, p0, Lcom/buzzfeed/android/ui/buffet/view/BuffetViewPager;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 41
    return-void
.end method

.method public removeOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .prologue
    .line 33
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->removeOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 34
    iget-object v0, p0, Lcom/buzzfeed/android/ui/buffet/view/BuffetViewPager;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 35
    return-void
.end method

.method public setInitialPosition(I)V
    .registers 3
    .param p1, "item"    # I

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/buzzfeed/android/ui/buffet/view/BuffetViewPager;->getCurrentItem()I

    move-result v0

    if-eq p1, v0, :cond_a

    .line 48
    invoke-virtual {p0, p1}, Lcom/buzzfeed/android/ui/buffet/view/BuffetViewPager;->setCurrentItem(I)V

    .line 57
    :goto_9
    return-void

    .line 50
    :cond_a
    new-instance v0, Lcom/buzzfeed/android/ui/buffet/view/BuffetViewPager$1;

    invoke-direct {v0, p0, p1}, Lcom/buzzfeed/android/ui/buffet/view/BuffetViewPager$1;-><init>(Lcom/buzzfeed/android/ui/buffet/view/BuffetViewPager;I)V

    invoke-virtual {p0, v0}, Lcom/buzzfeed/android/ui/buffet/view/BuffetViewPager;->post(Ljava/lang/Runnable;)Z

    goto :goto_9
.end method
