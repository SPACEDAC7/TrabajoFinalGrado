.class public interface abstract Lcom/buzzfeed/buzzcat/SnakeGameController$SnakeControllerStateParent;
.super Ljava/lang/Object;
.source "SnakeGameController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/buzzfeed/buzzcat/SnakeGameController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SnakeControllerStateParent"
.end annotation


# virtual methods
.method public abstract isStateValid()Z
.end method

.method public abstract onDirectionPadUsed(Lcom/buzzfeed/buzzcat/JoystickDirection;)V
.end method

.method public abstract onNewGame()V
.end method
