.class abstract Lcom/buzzfeed/android/vcr/util/SystemUiHelper$SystemUiHelperImpl;
.super Ljava/lang/Object;
.source "SystemUiHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/buzzfeed/android/vcr/util/SystemUiHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "SystemUiHelperImpl"
.end annotation


# instance fields
.field mActivity:Landroid/app/Activity;

.field final mFlags:I

.field mIsAttached:Z

.field mIsShowing:Z

.field final mLevel:I

.field final mOnVisibilityChangeListener:Lcom/buzzfeed/android/vcr/util/SystemUiHelper$OnVisibilityChangeListener;


# direct methods
.method constructor <init>(Landroid/app/Activity;IILcom/buzzfeed/android/vcr/util/SystemUiHelper$OnVisibilityChangeListener;)V
    .registers 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "level"    # I
    .param p3, "flags"    # I
    .param p4, "onVisibilityChangeListener"    # Lcom/buzzfeed/android/vcr/util/SystemUiHelper$OnVisibilityChangeListener;

    .prologue
    const/4 v0, 0x1

    .line 225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 221
    iput-boolean v0, p0, Lcom/buzzfeed/android/vcr/util/SystemUiHelper$SystemUiHelperImpl;->mIsShowing:Z

    .line 226
    iput-object p1, p0, Lcom/buzzfeed/android/vcr/util/SystemUiHelper$SystemUiHelperImpl;->mActivity:Landroid/app/Activity;

    .line 227
    iput p2, p0, Lcom/buzzfeed/android/vcr/util/SystemUiHelper$SystemUiHelperImpl;->mLevel:I

    .line 228
    iput p3, p0, Lcom/buzzfeed/android/vcr/util/SystemUiHelper$SystemUiHelperImpl;->mFlags:I

    .line 229
    iput-object p4, p0, Lcom/buzzfeed/android/vcr/util/SystemUiHelper$SystemUiHelperImpl;->mOnVisibilityChangeListener:Lcom/buzzfeed/android/vcr/util/SystemUiHelper$OnVisibilityChangeListener;

    .line 230
    iput-boolean v0, p0, Lcom/buzzfeed/android/vcr/util/SystemUiHelper$SystemUiHelperImpl;->mIsAttached:Z

    .line 231
    return-void
.end method


# virtual methods
.method public detachView()V
    .registers 2

    .prologue
    .line 238
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/buzzfeed/android/vcr/util/SystemUiHelper$SystemUiHelperImpl;->mActivity:Landroid/app/Activity;

    .line 239
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/buzzfeed/android/vcr/util/SystemUiHelper$SystemUiHelperImpl;->mIsAttached:Z

    .line 240
    return-void
.end method

.method abstract hide()V
.end method

.method isShowing()Z
    .registers 2

    .prologue
    .line 243
    iget-boolean v0, p0, Lcom/buzzfeed/android/vcr/util/SystemUiHelper$SystemUiHelperImpl;->mIsShowing:Z

    return v0
.end method

.method setIsShowing(Z)V
    .registers 4
    .param p1, "isShowing"    # Z

    .prologue
    .line 247
    iput-boolean p1, p0, Lcom/buzzfeed/android/vcr/util/SystemUiHelper$SystemUiHelperImpl;->mIsShowing:Z

    .line 249
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/util/SystemUiHelper$SystemUiHelperImpl;->mOnVisibilityChangeListener:Lcom/buzzfeed/android/vcr/util/SystemUiHelper$OnVisibilityChangeListener;

    if-eqz v0, :cond_d

    .line 250
    iget-object v0, p0, Lcom/buzzfeed/android/vcr/util/SystemUiHelper$SystemUiHelperImpl;->mOnVisibilityChangeListener:Lcom/buzzfeed/android/vcr/util/SystemUiHelper$OnVisibilityChangeListener;

    iget-boolean v1, p0, Lcom/buzzfeed/android/vcr/util/SystemUiHelper$SystemUiHelperImpl;->mIsShowing:Z

    invoke-interface {v0, v1}, Lcom/buzzfeed/android/vcr/util/SystemUiHelper$OnVisibilityChangeListener;->onSystemUiVisibilityChange(Z)V

    .line 252
    :cond_d
    return-void
.end method

.method abstract show()V
.end method
