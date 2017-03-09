.class public Lcom/buzzfeed/android/ui/buffet/fragment/BuffetTabFragment;
.super Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;
.source "BuffetTabFragment.java"

# interfaces
.implements Lcom/buzzfeed/android/ui/buffet/listener/OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;",
        "Lcom/buzzfeed/android/ui/buffet/listener/OnPageChangeListener",
        "<",
        "Landroid/support/v4/app/Fragment;",
        ">;"
    }
.end annotation


# instance fields
.field private mIsCurrentFragmentSelected:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetFragment;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetTabFragment;->mIsCurrentFragmentSelected:Z

    return-void
.end method

.method private handleFragmentSelectionChange()V
    .registers 2

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetTabFragment;->mIsCurrentFragmentSelected:Z

    if-eqz v0, :cond_e

    .line 50
    invoke-virtual {p0}, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetTabFragment;->startAutoPlay()V

    .line 51
    invoke-virtual {p0}, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetTabFragment;->trackScreenView()V

    .line 52
    invoke-virtual {p0}, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetTabFragment;->recordAttachedViewsForUnitImpression()V

    .line 57
    :goto_d
    return-void

    .line 54
    :cond_e
    invoke-virtual {p0}, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetTabFragment;->stopAutoPlay()V

    .line 55
    invoke-virtual {p0}, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetTabFragment;->trackUnitImpressions()V

    goto :goto_d
.end method


# virtual methods
.method protected isFragmentVisibleToUser()Z
    .registers 2

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetTabFragment;->mIsCurrentFragmentSelected:Z

    return v0
.end method

.method public onPageSelected(Landroid/support/v4/app/Fragment;)V
    .registers 3
    .param p1, "page"    # Landroid/support/v4/app/Fragment;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 39
    if-ne p1, p0, :cond_f

    const/4 v0, 0x1

    :goto_3
    iput-boolean v0, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetTabFragment;->mIsCurrentFragmentSelected:Z

    .line 43
    invoke-virtual {p0}, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetTabFragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 44
    invoke-direct {p0}, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetTabFragment;->handleFragmentSelectionChange()V

    .line 46
    :cond_e
    return-void

    .line 39
    :cond_f
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public bridge synthetic onPageSelected(Ljava/lang/Object;)V
    .registers 2
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 11
    check-cast p1, Landroid/support/v4/app/Fragment;

    invoke-virtual {p0, p1}, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetTabFragment;->onPageSelected(Landroid/support/v4/app/Fragment;)V

    return-void
.end method

.method public onPauseComplete()V
    .registers 2

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetTabFragment;->mIsCurrentFragmentSelected:Z

    if-eqz v0, :cond_7

    .line 28
    invoke-virtual {p0}, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetTabFragment;->trackUnitImpressions()V

    .line 30
    :cond_7
    return-void
.end method

.method protected onResumeComplete()V
    .registers 2

    .prologue
    .line 20
    iget-boolean v0, p0, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetTabFragment;->mIsCurrentFragmentSelected:Z

    if-eqz v0, :cond_7

    .line 21
    invoke-virtual {p0}, Lcom/buzzfeed/android/ui/buffet/fragment/BuffetTabFragment;->trackScreenView()V

    .line 23
    :cond_7
    return-void
.end method
