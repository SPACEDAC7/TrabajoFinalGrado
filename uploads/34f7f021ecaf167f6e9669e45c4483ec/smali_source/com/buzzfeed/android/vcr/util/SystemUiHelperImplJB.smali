.class Lcom/buzzfeed/android/vcr/util/SystemUiHelperImplJB;
.super Lcom/buzzfeed/android/vcr/util/SystemUiHelper$SystemUiHelperImpl;
.source "SystemUiHelperImplJB.java"

# interfaces
.implements Landroid/view/View$OnSystemUiVisibilityChangeListener;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation


# instance fields
.field mDecorView:Landroid/view/View;

.field final mOriginalFlags:I


# direct methods
.method constructor <init>(Landroid/app/Activity;IILcom/buzzfeed/android/vcr/util/SystemUiHelper$OnVisibilityChangeListener;)V
    .registers 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "level"    # I
    .param p3, "flags"    # I
    .param p4, "onVisibilityChangeListener"    # Lcom/buzzfeed/android/vcr/util/SystemUiHelper$OnVisibilityChangeListener;

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/buzzfeed/android/vcr/util/SystemUiHelper$SystemUiHelperImpl;-><init>(Landroid/app/Activity;IILcom/buzzfeed/android/vcr/util/SystemUiHelper$OnVisibilityChangeListener;)V

    .line 36
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/buzzfeed/android/vcr/util/SystemUiHelperImplJB;->mDecorView:Landroid/view/View;

    .line 37
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/util/SystemUiHelperImplJB;->mDecorView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    .line 38
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/util/SystemUiHelperImplJB;->mDecorView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    iput v0, p0, Lcom/buzzfeed/android/vcr/util/SystemUiHelperImplJB;->mOriginalFlags:I

    .line 39
    return-void
.end method


# virtual methods
.method protected createHideFlags()I
    .registers 4

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/buzzfeed/android/vcr/util/SystemUiHelperImplJB;->createLegacyHideFlags()I

    move-result v0

    .line 58
    .local v0, "flag":I
    iget v1, p0, Lcom/buzzfeed/android/vcr/util/SystemUiHelperImplJB;->mLevel:I

    const/4 v2, 0x1

    if-lt v1, v2, :cond_12

    .line 59
    or-int/lit16 v0, v0, 0x504

    .line 63
    iget v1, p0, Lcom/buzzfeed/android/vcr/util/SystemUiHelperImplJB;->mLevel:I

    const/4 v2, 0x2

    if-lt v1, v2, :cond_12

    .line 64
    or-int/lit16 v0, v0, 0x200

    .line 68
    :cond_12
    return v0
.end method

.method protected createLegacyHideFlags()I
    .registers 4

    .prologue
    .line 72
    const/4 v0, 0x1

    .line 74
    .local v0, "flag":I
    iget v1, p0, Lcom/buzzfeed/android/vcr/util/SystemUiHelperImplJB;->mLevel:I

    const/4 v2, 0x2

    if-lt v1, v2, :cond_8

    .line 75
    or-int/lit8 v0, v0, 0x2

    .line 78
    :cond_8
    return v0
.end method

.method protected createShowFlags()I
    .registers 4

    .prologue
    .line 42
    const/4 v0, 0x0

    .line 44
    .local v0, "flag":I
    iget v1, p0, Lcom/buzzfeed/android/vcr/util/SystemUiHelperImplJB;->mLevel:I

    const/4 v2, 0x1

    if-lt v1, v2, :cond_f

    .line 45
    or-int/lit16 v0, v0, 0x500

    .line 47
    iget v1, p0, Lcom/buzzfeed/android/vcr/util/SystemUiHelperImplJB;->mLevel:I

    const/4 v2, 0x2

    if-lt v1, v2, :cond_f

    .line 48
    or-int/lit16 v0, v0, 0x200

    .line 52
    :cond_f
    return v0
.end method

.method protected createTestFlags()I
    .registers 3

    .prologue
    const/4 v0, 0x2

    .line 82
    iget v1, p0, Lcom/buzzfeed/android/vcr/util/SystemUiHelperImplJB;->mLevel:I

    if-lt v1, v0, :cond_6

    .line 87
    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x1

    goto :goto_5
.end method

.method public detachView()V
    .registers 3

    .prologue
    .line 130
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/util/SystemUiHelperImplJB;->mDecorView:Landroid/view/View;

    iget v1, p0, Lcom/buzzfeed/android/vcr/util/SystemUiHelperImplJB;->mOriginalFlags:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 131
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/buzzfeed/android/vcr/util/SystemUiHelperImplJB;->mDecorView:Landroid/view/View;

    .line 132
    return-void
.end method

.method hide()V
    .registers 3

    .prologue
    .line 123
    iget-boolean v0, p0, Lcom/buzzfeed/android/vcr/util/SystemUiHelperImplJB;->mIsAttached:Z

    if-eqz v0, :cond_d

    .line 124
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/util/SystemUiHelperImplJB;->mDecorView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/buzzfeed/android/vcr/util/SystemUiHelperImplJB;->createHideFlags()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 126
    :cond_d
    return-void
.end method

.method protected onSystemUiHidden()V
    .registers 3

    .prologue
    .line 103
    iget v1, p0, Lcom/buzzfeed/android/vcr/util/SystemUiHelperImplJB;->mLevel:I

    if-nez v1, :cond_f

    .line 105
    iget-object v1, p0, Lcom/buzzfeed/android/vcr/util/SystemUiHelperImplJB;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 106
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_f

    .line 107
    invoke-virtual {v0}, Landroid/app/ActionBar;->hide()V

    .line 111
    .end local v0    # "actionBar":Landroid/app/ActionBar;
    :cond_f
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/buzzfeed/android/vcr/util/SystemUiHelperImplJB;->setIsShowing(Z)V

    .line 112
    return-void
.end method

.method protected onSystemUiShown()V
    .registers 3

    .prologue
    .line 91
    iget v1, p0, Lcom/buzzfeed/android/vcr/util/SystemUiHelperImplJB;->mLevel:I

    if-nez v1, :cond_f

    .line 93
    iget-object v1, p0, Lcom/buzzfeed/android/vcr/util/SystemUiHelperImplJB;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 94
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_f

    .line 95
    invoke-virtual {v0}, Landroid/app/ActionBar;->show()V

    .line 99
    .end local v0    # "actionBar":Landroid/app/ActionBar;
    :cond_f
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/buzzfeed/android/vcr/util/SystemUiHelperImplJB;->setIsShowing(Z)V

    .line 100
    return-void
.end method

.method public final onSystemUiVisibilityChange(I)V
    .registers 3
    .param p1, "visibility"    # I

    .prologue
    .line 136
    invoke-virtual {p0}, Lcom/buzzfeed/android/vcr/util/SystemUiHelperImplJB;->createTestFlags()I

    move-result v0

    and-int/2addr v0, p1

    if-eqz v0, :cond_b

    .line 137
    invoke-virtual {p0}, Lcom/buzzfeed/android/vcr/util/SystemUiHelperImplJB;->onSystemUiHidden()V

    .line 141
    :goto_a
    return-void

    .line 139
    :cond_b
    invoke-virtual {p0}, Lcom/buzzfeed/android/vcr/util/SystemUiHelperImplJB;->onSystemUiShown()V

    goto :goto_a
.end method

.method show()V
    .registers 3

    .prologue
    .line 116
    iget-boolean v0, p0, Lcom/buzzfeed/android/vcr/util/SystemUiHelperImplJB;->mIsAttached:Z

    if-eqz v0, :cond_d

    .line 117
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/util/SystemUiHelperImplJB;->mDecorView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/buzzfeed/android/vcr/util/SystemUiHelperImplJB;->createShowFlags()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 119
    :cond_d
    return-void
.end method
