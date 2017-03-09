.class Lcom/buzzfeed/buzzcat/SwipeGameControllerPad;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SwipeGameControllerPad.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/buzzfeed/buzzcat/SwipeGameControllerPad$OnDirectionCallback;
    }
.end annotation


# instance fields
.field private final mCallback:Lcom/buzzfeed/buzzcat/SwipeGameControllerPad$OnDirectionCallback;

.field private mLastDirection:Lcom/buzzfeed/buzzcat/JoystickDirection;


# direct methods
.method public constructor <init>(Lcom/buzzfeed/buzzcat/SwipeGameControllerPad$OnDirectionCallback;)V
    .registers 3
    .param p1, "callback"    # Lcom/buzzfeed/buzzcat/SwipeGameControllerPad$OnDirectionCallback;

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 9
    sget-object v0, Lcom/buzzfeed/buzzcat/JoystickDirection;->Right:Lcom/buzzfeed/buzzcat/JoystickDirection;

    iput-object v0, p0, Lcom/buzzfeed/buzzcat/SwipeGameControllerPad;->mLastDirection:Lcom/buzzfeed/buzzcat/JoystickDirection;

    .line 12
    iput-object p1, p0, Lcom/buzzfeed/buzzcat/SwipeGameControllerPad;->mCallback:Lcom/buzzfeed/buzzcat/SwipeGameControllerPad$OnDirectionCallback;

    .line 13
    return-void
.end method

.method private getSlope(FFFF)I
    .registers 11
    .param p1, "x1"    # F
    .param p2, "y1"    # F
    .param p3, "x2"    # F
    .param p4, "y2"    # F

    .prologue
    .line 37
    sub-float v1, p2, p4

    float-to-double v2, v1

    sub-float v1, p3, p1

    float-to-double v4, v1

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 38
    .local v0, "angle":Ljava/lang/Double;
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    const-wide v4, 0x4046800000000000L

    cmpl-double v1, v2, v4

    if-lez v1, :cond_2e

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    const-wide v4, 0x4060e00000000000L

    cmpg-double v1, v2, v4

    if-gtz v1, :cond_2e

    .line 40
    const/4 v1, 0x1

    .line 50
    :goto_2d
    return v1

    .line 41
    :cond_2e
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    const-wide v4, 0x4060e00000000000L

    cmpl-double v1, v2, v4

    if-ltz v1, :cond_48

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    const-wide v4, 0x4066800000000000L

    cmpg-double v1, v2, v4

    if-ltz v1, :cond_62

    :cond_48
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    const-wide v4, -0x3f9f200000000000L

    cmpg-double v1, v2, v4

    if-gez v1, :cond_64

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    const-wide v4, -0x3f99800000000000L

    cmpl-double v1, v2, v4

    if-lez v1, :cond_64

    .line 43
    :cond_62
    const/4 v1, 0x2

    goto :goto_2d

    .line 44
    :cond_64
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    const-wide v4, -0x3fb9800000000000L

    cmpg-double v1, v2, v4

    if-gez v1, :cond_80

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    const-wide v4, -0x3f9f200000000000L

    cmpl-double v1, v2, v4

    if-ltz v1, :cond_80

    .line 46
    const/4 v1, 0x3

    goto :goto_2d

    .line 47
    :cond_80
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    const-wide v4, -0x3fb9800000000000L

    cmpl-double v1, v2, v4

    if-lez v1, :cond_9c

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    const-wide v4, 0x4046800000000000L

    cmpg-double v1, v2, v4

    if-gtz v1, :cond_9c

    .line 49
    const/4 v1, 0x4

    goto :goto_2d

    .line 50
    :cond_9c
    const/4 v1, 0x0

    goto :goto_2d
.end method

.method private isValidDirectionChange(Lcom/buzzfeed/buzzcat/JoystickDirection;)Z
    .registers 5
    .param p1, "newDirection"    # Lcom/buzzfeed/buzzcat/JoystickDirection;

    .prologue
    const/4 v1, 0x0

    .line 54
    iget-object v0, p0, Lcom/buzzfeed/buzzcat/SwipeGameControllerPad;->mLastDirection:Lcom/buzzfeed/buzzcat/JoystickDirection;

    .line 55
    .local v0, "mCurrentDirection":Lcom/buzzfeed/buzzcat/JoystickDirection;
    iput-object p1, p0, Lcom/buzzfeed/buzzcat/SwipeGameControllerPad;->mLastDirection:Lcom/buzzfeed/buzzcat/JoystickDirection;

    .line 56
    if-ne p1, v0, :cond_8

    .line 59
    :cond_7
    :goto_7
    return v1

    :cond_8
    sget-object v2, Lcom/buzzfeed/buzzcat/JoystickDirection;->Down:Lcom/buzzfeed/buzzcat/JoystickDirection;

    if-ne p1, v2, :cond_10

    sget-object v2, Lcom/buzzfeed/buzzcat/JoystickDirection;->Up:Lcom/buzzfeed/buzzcat/JoystickDirection;

    if-eq v0, v2, :cond_7

    :cond_10
    sget-object v2, Lcom/buzzfeed/buzzcat/JoystickDirection;->Up:Lcom/buzzfeed/buzzcat/JoystickDirection;

    if-ne p1, v2, :cond_18

    sget-object v2, Lcom/buzzfeed/buzzcat/JoystickDirection;->Down:Lcom/buzzfeed/buzzcat/JoystickDirection;

    if-eq v0, v2, :cond_7

    :cond_18
    sget-object v2, Lcom/buzzfeed/buzzcat/JoystickDirection;->Left:Lcom/buzzfeed/buzzcat/JoystickDirection;

    if-ne p1, v2, :cond_20

    sget-object v2, Lcom/buzzfeed/buzzcat/JoystickDirection;->Right:Lcom/buzzfeed/buzzcat/JoystickDirection;

    if-eq v0, v2, :cond_7

    :cond_20
    sget-object v2, Lcom/buzzfeed/buzzcat/JoystickDirection;->Right:Lcom/buzzfeed/buzzcat/JoystickDirection;

    if-ne p1, v2, :cond_28

    sget-object v2, Lcom/buzzfeed/buzzcat/JoystickDirection;->Left:Lcom/buzzfeed/buzzcat/JoystickDirection;

    if-eq v0, v2, :cond_7

    :cond_28
    const/4 v1, 0x1

    goto :goto_7
.end method


# virtual methods
.method public directionPadUsed(Lcom/buzzfeed/buzzcat/JoystickDirection;)V
    .registers 2
    .param p1, "direction"    # Lcom/buzzfeed/buzzcat/JoystickDirection;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/buzzfeed/buzzcat/SwipeGameControllerPad;->mLastDirection:Lcom/buzzfeed/buzzcat/JoystickDirection;

    .line 71
    return-void
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 10
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    const/4 v0, 0x1

    .line 19
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/buzzfeed/buzzcat/SwipeGameControllerPad;->getSlope(FFFF)I

    move-result v1

    packed-switch v1, :pswitch_data_52

    .line 33
    const/4 v0, 0x0

    :cond_19
    :goto_19
    return v0

    .line 21
    :pswitch_1a
    sget-object v1, Lcom/buzzfeed/buzzcat/JoystickDirection;->Up:Lcom/buzzfeed/buzzcat/JoystickDirection;

    invoke-direct {p0, v1}, Lcom/buzzfeed/buzzcat/SwipeGameControllerPad;->isValidDirectionChange(Lcom/buzzfeed/buzzcat/JoystickDirection;)Z

    move-result v1

    if-eqz v1, :cond_19

    iget-object v1, p0, Lcom/buzzfeed/buzzcat/SwipeGameControllerPad;->mCallback:Lcom/buzzfeed/buzzcat/SwipeGameControllerPad$OnDirectionCallback;

    invoke-interface {v1}, Lcom/buzzfeed/buzzcat/SwipeGameControllerPad$OnDirectionCallback;->onUp()V

    goto :goto_19

    .line 24
    :pswitch_28
    sget-object v1, Lcom/buzzfeed/buzzcat/JoystickDirection;->Left:Lcom/buzzfeed/buzzcat/JoystickDirection;

    invoke-direct {p0, v1}, Lcom/buzzfeed/buzzcat/SwipeGameControllerPad;->isValidDirectionChange(Lcom/buzzfeed/buzzcat/JoystickDirection;)Z

    move-result v1

    if-eqz v1, :cond_19

    iget-object v1, p0, Lcom/buzzfeed/buzzcat/SwipeGameControllerPad;->mCallback:Lcom/buzzfeed/buzzcat/SwipeGameControllerPad$OnDirectionCallback;

    invoke-interface {v1}, Lcom/buzzfeed/buzzcat/SwipeGameControllerPad$OnDirectionCallback;->onLeft()V

    goto :goto_19

    .line 27
    :pswitch_36
    sget-object v1, Lcom/buzzfeed/buzzcat/JoystickDirection;->Down:Lcom/buzzfeed/buzzcat/JoystickDirection;

    invoke-direct {p0, v1}, Lcom/buzzfeed/buzzcat/SwipeGameControllerPad;->isValidDirectionChange(Lcom/buzzfeed/buzzcat/JoystickDirection;)Z

    move-result v1

    if-eqz v1, :cond_19

    iget-object v1, p0, Lcom/buzzfeed/buzzcat/SwipeGameControllerPad;->mCallback:Lcom/buzzfeed/buzzcat/SwipeGameControllerPad$OnDirectionCallback;

    invoke-interface {v1}, Lcom/buzzfeed/buzzcat/SwipeGameControllerPad$OnDirectionCallback;->onDown()V

    goto :goto_19

    .line 30
    :pswitch_44
    sget-object v1, Lcom/buzzfeed/buzzcat/JoystickDirection;->Right:Lcom/buzzfeed/buzzcat/JoystickDirection;

    invoke-direct {p0, v1}, Lcom/buzzfeed/buzzcat/SwipeGameControllerPad;->isValidDirectionChange(Lcom/buzzfeed/buzzcat/JoystickDirection;)Z

    move-result v1

    if-eqz v1, :cond_19

    iget-object v1, p0, Lcom/buzzfeed/buzzcat/SwipeGameControllerPad;->mCallback:Lcom/buzzfeed/buzzcat/SwipeGameControllerPad$OnDirectionCallback;

    invoke-interface {v1}, Lcom/buzzfeed/buzzcat/SwipeGameControllerPad$OnDirectionCallback;->onRight()V

    goto :goto_19

    .line 19
    :pswitch_data_52
    .packed-switch 0x1
        :pswitch_1a
        :pswitch_28
        :pswitch_36
        :pswitch_44
    .end packed-switch
.end method

.method public resetJoystick()V
    .registers 2

    .prologue
    .line 66
    sget-object v0, Lcom/buzzfeed/buzzcat/JoystickDirection;->Right:Lcom/buzzfeed/buzzcat/JoystickDirection;

    iput-object v0, p0, Lcom/buzzfeed/buzzcat/SwipeGameControllerPad;->mLastDirection:Lcom/buzzfeed/buzzcat/JoystickDirection;

    .line 67
    return-void
.end method
