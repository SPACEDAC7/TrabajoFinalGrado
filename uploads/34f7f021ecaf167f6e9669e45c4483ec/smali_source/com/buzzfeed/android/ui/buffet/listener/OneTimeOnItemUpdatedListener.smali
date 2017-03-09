.class public abstract Lcom/buzzfeed/android/ui/buffet/listener/OneTimeOnItemUpdatedListener;
.super Ljava/lang/Object;
.source "OneTimeOnItemUpdatedListener.java"

# interfaces
.implements Landroid/support/v7/widget/RecyclerView$OnChildAttachStateChangeListener;


# instance fields
.field private mOnAttached:Z

.field private mOnDetached:Z

.field private mRecyclerView:Landroid/support/v7/widget/RecyclerView;

.field private mUpdatePosition:I


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/RecyclerView;I)V
    .registers 3
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "position"    # I

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/buzzfeed/android/ui/buffet/listener/OneTimeOnItemUpdatedListener;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 20
    iput p2, p0, Lcom/buzzfeed/android/ui/buffet/listener/OneTimeOnItemUpdatedListener;->mUpdatePosition:I

    .line 21
    return-void
.end method

.method static synthetic access$000(Lcom/buzzfeed/android/ui/buffet/listener/OneTimeOnItemUpdatedListener;)I
    .registers 2
    .param p0, "x0"    # Lcom/buzzfeed/android/ui/buffet/listener/OneTimeOnItemUpdatedListener;

    .prologue
    .line 11
    iget v0, p0, Lcom/buzzfeed/android/ui/buffet/listener/OneTimeOnItemUpdatedListener;->mUpdatePosition:I

    return v0
.end method

.method private onItemUpdated()V
    .registers 3

    .prologue
    .line 46
    iget-object v0, p0, Lcom/buzzfeed/android/ui/buffet/listener/OneTimeOnItemUpdatedListener;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/RecyclerView;->removeOnChildAttachStateChangeListener(Landroid/support/v7/widget/RecyclerView$OnChildAttachStateChangeListener;)V

    .line 47
    iget-object v0, p0, Lcom/buzzfeed/android/ui/buffet/listener/OneTimeOnItemUpdatedListener;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/buzzfeed/android/ui/buffet/listener/OneTimeOnItemUpdatedListener$1;

    invoke-direct {v1, p0}, Lcom/buzzfeed/android/ui/buffet/listener/OneTimeOnItemUpdatedListener$1;-><init>(Lcom/buzzfeed/android/ui/buffet/listener/OneTimeOnItemUpdatedListener;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->post(Ljava/lang/Runnable;)Z

    .line 53
    return-void
.end method


# virtual methods
.method public onChildViewAttachedToWindow(Landroid/view/View;)V
    .registers 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 25
    iget-object v1, p0, Lcom/buzzfeed/android/ui/buffet/listener/OneTimeOnItemUpdatedListener;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 26
    .local v0, "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v1

    iget v2, p0, Lcom/buzzfeed/android/ui/buffet/listener/OneTimeOnItemUpdatedListener;->mUpdatePosition:I

    if-ne v1, v2, :cond_1a

    .line 27
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/buzzfeed/android/ui/buffet/listener/OneTimeOnItemUpdatedListener;->mOnAttached:Z

    .line 28
    iget-boolean v1, p0, Lcom/buzzfeed/android/ui/buffet/listener/OneTimeOnItemUpdatedListener;->mOnDetached:Z

    if-eqz v1, :cond_1a

    .line 29
    invoke-direct {p0}, Lcom/buzzfeed/android/ui/buffet/listener/OneTimeOnItemUpdatedListener;->onItemUpdated()V

    .line 32
    :cond_1a
    return-void
.end method

.method public onChildViewDetachedFromWindow(Landroid/view/View;)V
    .registers 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 36
    iget-object v1, p0, Lcom/buzzfeed/android/ui/buffet/listener/OneTimeOnItemUpdatedListener;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 37
    .local v0, "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v1

    iget v2, p0, Lcom/buzzfeed/android/ui/buffet/listener/OneTimeOnItemUpdatedListener;->mUpdatePosition:I

    if-ne v1, v2, :cond_1a

    .line 38
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/buzzfeed/android/ui/buffet/listener/OneTimeOnItemUpdatedListener;->mOnDetached:Z

    .line 39
    iget-boolean v1, p0, Lcom/buzzfeed/android/ui/buffet/listener/OneTimeOnItemUpdatedListener;->mOnAttached:Z

    if-eqz v1, :cond_1a

    .line 40
    invoke-direct {p0}, Lcom/buzzfeed/android/ui/buffet/listener/OneTimeOnItemUpdatedListener;->onItemUpdated()V

    .line 43
    :cond_1a
    return-void
.end method

.method public abstract onItemUpdated(I)V
.end method
