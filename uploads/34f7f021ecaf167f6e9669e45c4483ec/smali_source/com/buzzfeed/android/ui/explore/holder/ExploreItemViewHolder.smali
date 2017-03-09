.class public abstract Lcom/buzzfeed/android/ui/explore/holder/ExploreItemViewHolder;
.super Lcom/buzzfeed/toolkit/ui/holder/BaseViewHolder;
.source "ExploreItemViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/buzzfeed/toolkit/ui/holder/BaseViewHolder",
        "<TM;>;"
    }
.end annotation


# instance fields
.field private mUserActionListener:Lcom/buzzfeed/android/ui/explore/listener/ExploreUserActionListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .registers 2
    .param p1, "itemView"    # Landroid/view/View;

    .prologue
    .line 18
    .local p0, "this":Lcom/buzzfeed/android/ui/explore/holder/ExploreItemViewHolder;, "Lcom/buzzfeed/android/ui/explore/holder/ExploreItemViewHolder<TM;>;"
    invoke-direct {p0, p1}, Lcom/buzzfeed/toolkit/ui/holder/BaseViewHolder;-><init>(Landroid/view/View;)V

    .line 19
    return-void
.end method


# virtual methods
.method getUserActionListener()Lcom/buzzfeed/android/ui/explore/listener/ExploreUserActionListener;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 23
    .local p0, "this":Lcom/buzzfeed/android/ui/explore/holder/ExploreItemViewHolder;, "Lcom/buzzfeed/android/ui/explore/holder/ExploreItemViewHolder<TM;>;"
    iget-object v0, p0, Lcom/buzzfeed/android/ui/explore/holder/ExploreItemViewHolder;->mUserActionListener:Lcom/buzzfeed/android/ui/explore/listener/ExploreUserActionListener;

    return-object v0
.end method

.method public setUserActionListener(Lcom/buzzfeed/android/ui/explore/listener/ExploreUserActionListener;)V
    .registers 2
    .param p1, "userActionListener"    # Lcom/buzzfeed/android/ui/explore/listener/ExploreUserActionListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 27
    .local p0, "this":Lcom/buzzfeed/android/ui/explore/holder/ExploreItemViewHolder;, "Lcom/buzzfeed/android/ui/explore/holder/ExploreItemViewHolder<TM;>;"
    iput-object p1, p0, Lcom/buzzfeed/android/ui/explore/holder/ExploreItemViewHolder;->mUserActionListener:Lcom/buzzfeed/android/ui/explore/listener/ExploreUserActionListener;

    .line 28
    return-void
.end method
