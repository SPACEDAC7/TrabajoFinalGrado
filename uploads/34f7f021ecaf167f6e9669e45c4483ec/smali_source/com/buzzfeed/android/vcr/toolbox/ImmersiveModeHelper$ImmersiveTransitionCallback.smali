.class public interface abstract Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper$ImmersiveTransitionCallback;
.super Ljava/lang/Object;
.source "ImmersiveModeHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/buzzfeed/android/vcr/toolbox/ImmersiveModeHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ImmersiveTransitionCallback"
.end annotation


# virtual methods
.method public abstract onCreateAnimators(Landroid/support/v7/widget/RecyclerView$ViewHolder;ZLjava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            "Z",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onGetImmersiveTranslationY(Landroid/support/v7/widget/RecyclerView$ViewHolder;F)F
.end method
