.class public Lcom/buzzfeed/android/util/ViewUtils;
.super Ljava/lang/Object;
.source "ViewUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static contains(FFLandroid/view/View;)Z
    .registers 8
    .param p0, "screenX"    # F
    .param p1, "screenY"    # F
    .param p2, "view"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 55
    const/4 v3, 0x2

    new-array v0, v3, [I

    .line 56
    .local v0, "locations":[I
    invoke-virtual {p2, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 59
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v4

    if-ge v3, v4, :cond_43

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v4

    if-ge v3, v4, :cond_43

    aget v3, v0, v2

    int-to-float v3, v3

    cmpl-float v3, p0, v3

    if-ltz v3, :cond_43

    aget v3, v0, v2

    .line 61
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    cmpg-float v3, p0, v3

    if-gez v3, :cond_43

    aget v3, v0, v1

    int-to-float v3, v3

    cmpl-float v3, p1, v3

    if-ltz v3, :cond_43

    aget v3, v0, v1

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    cmpg-float v3, p1, v3

    if-gez v3, :cond_43

    :goto_42
    return v1

    :cond_43
    move v1, v2

    goto :goto_42
.end method

.method public static dispatchTouchEventRecursive(Landroid/view/MotionEvent;Landroid/view/View;)V
    .registers 5
    .param p0, "event"    # Landroid/view/MotionEvent;
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 33
    invoke-static {p0, p1}, Lcom/buzzfeed/android/util/ViewUtils;->dispatchTouchEventToView(Landroid/view/MotionEvent;Landroid/view/View;)V

    .line 35
    instance-of v2, p1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_21

    move-object v1, p1

    .line 36
    check-cast v1, Landroid/view/ViewGroup;

    .line 37
    .local v1, "viewGroup":Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-lez v2, :cond_21

    .line 38
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_11
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_21

    .line 39
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/buzzfeed/android/util/ViewUtils;->dispatchTouchEventRecursive(Landroid/view/MotionEvent;Landroid/view/View;)V

    .line 38
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 43
    .end local v0    # "i":I
    .end local v1    # "viewGroup":Landroid/view/ViewGroup;
    :cond_21
    return-void
.end method

.method public static dispatchTouchEventToView(Landroid/view/MotionEvent;Landroid/view/View;)V
    .registers 8
    .param p0, "event"    # Landroid/view/MotionEvent;
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 20
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    float-to-int v2, v2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    float-to-int v3, v3

    int-to-float v3, v3

    invoke-static {v2, v3, p1}, Lcom/buzzfeed/android/util/ViewUtils;->contains(FFLandroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_40

    .line 21
    invoke-static {p0}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 23
    .local v0, "eventClone":Landroid/view/MotionEvent;
    const/4 v2, 0x2

    new-array v1, v2, [I

    .line 24
    .local v1, "locations":[I
    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 25
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    aget v3, v1, v4

    int-to-float v3, v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    aput v2, v1, v4

    .line 26
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    aget v3, v1, v5

    int-to-float v3, v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    aput v2, v1, v5

    .line 27
    aget v2, v1, v4

    int-to-float v2, v2

    aget v3, v1, v5

    int-to-float v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 28
    invoke-virtual {p1, v0}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 30
    .end local v0    # "eventClone":Landroid/view/MotionEvent;
    .end local v1    # "locations":[I
    :cond_40
    return-void
.end method

.method public static removeFromParent(Landroid/view/View;)V
    .registers 2
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 76
    if-eqz p0, :cond_8

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_9

    .line 83
    :cond_8
    :goto_8
    return-void

    .line 80
    :cond_9
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_8

    .line 81
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_8
.end method

.method public static varargs setVisibility(I[Landroid/view/View;)V
    .registers 5
    .param p0, "visibility"    # I
    .param p1, "views"    # [Landroid/view/View;

    .prologue
    .line 70
    array-length v2, p1

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v2, :cond_c

    aget-object v0, p1, v1

    .line 71
    .local v0, "view":Landroid/view/View;
    invoke-virtual {v0, p0}, Landroid/view/View;->setVisibility(I)V

    .line 70
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 73
    .end local v0    # "view":Landroid/view/View;
    :cond_c
    return-void
.end method
