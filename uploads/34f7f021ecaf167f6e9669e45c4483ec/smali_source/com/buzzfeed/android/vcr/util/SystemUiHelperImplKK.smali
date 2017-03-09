.class Lcom/buzzfeed/android/vcr/util/SystemUiHelperImplKK;
.super Lcom/buzzfeed/android/vcr/util/SystemUiHelperImplJB;
.source "SystemUiHelperImplKK.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x13
.end annotation


# direct methods
.method constructor <init>(Landroid/app/Activity;IILcom/buzzfeed/android/vcr/util/SystemUiHelper$OnVisibilityChangeListener;)V
    .registers 5
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "level"    # I
    .param p3, "flags"    # I
    .param p4, "onVisibilityChangeListener"    # Lcom/buzzfeed/android/vcr/util/SystemUiHelper$OnVisibilityChangeListener;

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/buzzfeed/android/vcr/util/SystemUiHelperImplJB;-><init>(Landroid/app/Activity;IILcom/buzzfeed/android/vcr/util/SystemUiHelper$OnVisibilityChangeListener;)V

    .line 30
    return-void
.end method


# virtual methods
.method protected createHideFlags()I
    .registers 4

    .prologue
    .line 34
    invoke-super {p0}, Lcom/buzzfeed/android/vcr/util/SystemUiHelperImplJB;->createHideFlags()I

    move-result v0

    .line 36
    .local v0, "flag":I
    iget v1, p0, Lcom/buzzfeed/android/vcr/util/SystemUiHelperImplKK;->mLevel:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_12

    .line 42
    iget v1, p0, Lcom/buzzfeed/android/vcr/util/SystemUiHelperImplKK;->mFlags:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_13

    const/16 v1, 0x1000

    :goto_11
    or-int/2addr v0, v1

    .line 47
    :cond_12
    return v0

    .line 42
    :cond_13
    const/16 v1, 0x800

    goto :goto_11
.end method
