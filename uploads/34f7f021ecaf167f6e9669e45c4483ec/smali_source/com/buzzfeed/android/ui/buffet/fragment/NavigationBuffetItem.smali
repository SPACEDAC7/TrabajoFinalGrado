.class public interface abstract Lcom/buzzfeed/android/ui/buffet/fragment/NavigationBuffetItem;
.super Ljava/lang/Object;
.source "NavigationBuffetItem.java"

# interfaces
.implements Lcom/buzzfeed/android/ui/buffet/fragment/NavigationItemView;


# virtual methods
.method public abstract reloadFeed()V
.end method

.method public abstract retryFeedLoad()V
.end method

.method public abstract setBuffetRecycledViewPool(Landroid/support/v7/widget/RecyclerView$RecycledViewPool;)V
    .param p1    # Landroid/support/v7/widget/RecyclerView$RecycledViewPool;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
.end method
