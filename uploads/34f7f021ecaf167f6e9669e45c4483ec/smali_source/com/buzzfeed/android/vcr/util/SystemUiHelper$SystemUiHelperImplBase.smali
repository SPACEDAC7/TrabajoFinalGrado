.class Lcom/buzzfeed/android/vcr/util/SystemUiHelper$SystemUiHelperImplBase;
.super Lcom/buzzfeed/android/vcr/util/SystemUiHelper$SystemUiHelperImpl;
.source "SystemUiHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/buzzfeed/android/vcr/util/SystemUiHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SystemUiHelperImplBase"
.end annotation


# direct methods
.method constructor <init>(Landroid/app/Activity;IILcom/buzzfeed/android/vcr/util/SystemUiHelper$OnVisibilityChangeListener;)V
    .registers 7
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "level"    # I
    .param p3, "flags"    # I
    .param p4, "onVisibilityChangeListener"    # Lcom/buzzfeed/android/vcr/util/SystemUiHelper$OnVisibilityChangeListener;

    .prologue
    .line 262
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/buzzfeed/android/vcr/util/SystemUiHelper$SystemUiHelperImpl;-><init>(Landroid/app/Activity;IILcom/buzzfeed/android/vcr/util/SystemUiHelper$OnVisibilityChangeListener;)V

    .line 264
    iget v0, p0, Lcom/buzzfeed/android/vcr/util/SystemUiHelper$SystemUiHelperImplBase;->mFlags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_14

    .line 265
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/util/SystemUiHelper$SystemUiHelperImplBase;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x300

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 269
    :cond_14
    return-void
.end method


# virtual methods
.method hide()V
    .registers 3

    .prologue
    .line 281
    iget-boolean v0, p0, Lcom/buzzfeed/android/vcr/util/SystemUiHelper$SystemUiHelperImplBase;->mIsAttached:Z

    if-eqz v0, :cond_17

    iget v0, p0, Lcom/buzzfeed/android/vcr/util/SystemUiHelper$SystemUiHelperImplBase;->mLevel:I

    if-lez v0, :cond_17

    .line 282
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/util/SystemUiHelper$SystemUiHelperImplBase;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 283
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/buzzfeed/android/vcr/util/SystemUiHelper$SystemUiHelperImplBase;->setIsShowing(Z)V

    .line 285
    :cond_17
    return-void
.end method

.method show()V
    .registers 3

    .prologue
    .line 273
    iget-boolean v0, p0, Lcom/buzzfeed/android/vcr/util/SystemUiHelper$SystemUiHelperImplBase;->mIsAttached:Z

    if-eqz v0, :cond_17

    iget v0, p0, Lcom/buzzfeed/android/vcr/util/SystemUiHelper$SystemUiHelperImplBase;->mLevel:I

    if-lez v0, :cond_17

    .line 274
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/util/SystemUiHelper$SystemUiHelperImplBase;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 275
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/buzzfeed/android/vcr/util/SystemUiHelper$SystemUiHelperImplBase;->setIsShowing(Z)V

    .line 277
    :cond_17
    return-void
.end method
