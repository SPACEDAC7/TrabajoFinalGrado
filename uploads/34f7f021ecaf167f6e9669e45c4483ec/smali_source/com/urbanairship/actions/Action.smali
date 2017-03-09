.class public abstract Lcom/urbanairship/actions/Action;
.super Ljava/lang/Object;
.source "Action.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/urbanairship/actions/Action$Situation;
    }
.end annotation


# static fields
.field public static final SITUATION_AUTOMATION:I = 0x6

.field public static final SITUATION_BACKGROUND_NOTIFICATION_ACTION_BUTTON:I = 0x5

.field public static final SITUATION_FOREGROUND_NOTIFICATION_ACTION_BUTTON:I = 0x4

.field public static final SITUATION_MANUAL_INVOCATION:I = 0x0

.field public static final SITUATION_PUSH_OPENED:I = 0x2

.field public static final SITUATION_PUSH_RECEIVED:I = 0x1

.field public static final SITUATION_WEB_VIEW_INVOCATION:I = 0x3


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public acceptsArguments(Lcom/urbanairship/actions/ActionArguments;)Z
    .registers 3
    .param p1, "arguments"    # Lcom/urbanairship/actions/ActionArguments;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 133
    const/4 v0, 0x1

    return v0
.end method

.method public onFinish(Lcom/urbanairship/actions/ActionArguments;Lcom/urbanairship/actions/ActionResult;)V
    .registers 3
    .param p1, "arguments"    # Lcom/urbanairship/actions/ActionArguments;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "result"    # Lcom/urbanairship/actions/ActionResult;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 162
    return-void
.end method

.method public onStart(Lcom/urbanairship/actions/ActionArguments;)V
    .registers 2
    .param p1, "arguments"    # Lcom/urbanairship/actions/ActionArguments;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 143
    return-void
.end method

.method public abstract perform(Lcom/urbanairship/actions/ActionArguments;)Lcom/urbanairship/actions/ActionResult;
    .param p1    # Lcom/urbanairship/actions/ActionArguments;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end method

.method final run(Lcom/urbanairship/actions/ActionArguments;)Lcom/urbanairship/actions/ActionResult;
    .registers 6
    .param p1, "arguments"    # Lcom/urbanairship/actions/ActionArguments;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 102
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/urbanairship/actions/Action;->acceptsArguments(Lcom/urbanairship/actions/ActionArguments;)Z

    move-result v2

    if-nez v2, :cond_2c

    .line 103
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Action "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is unable to accept arguments: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/urbanairship/Logger;->debug(Ljava/lang/String;)V

    .line 104
    const/4 v2, 0x2

    invoke-static {v2}, Lcom/urbanairship/actions/ActionResult;->newEmptyResultWithStatus(I)Lcom/urbanairship/actions/ActionResult;

    move-result-object v1

    .line 120
    :goto_2b
    return-object v1

    .line 107
    :cond_2c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Running action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " arguments: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/urbanairship/Logger;->info(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p0, p1}, Lcom/urbanairship/actions/Action;->onStart(Lcom/urbanairship/actions/ActionArguments;)V

    .line 109
    invoke-virtual {p0, p1}, Lcom/urbanairship/actions/Action;->perform(Lcom/urbanairship/actions/ActionArguments;)Lcom/urbanairship/actions/ActionResult;

    move-result-object v1

    .line 112
    .local v1, "result":Lcom/urbanairship/actions/ActionResult;
    if-nez v1, :cond_59

    .line 113
    invoke-static {}, Lcom/urbanairship/actions/ActionResult;->newEmptyResult()Lcom/urbanairship/actions/ActionResult;

    move-result-object v1

    .line 116
    :cond_59
    invoke-virtual {p0, p1, v1}, Lcom/urbanairship/actions/Action;->onFinish(Lcom/urbanairship/actions/ActionArguments;Lcom/urbanairship/actions/ActionResult;)V
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5c} :catch_5d

    goto :goto_2b

    .line 118
    .end local v1    # "result":Lcom/urbanairship/actions/ActionResult;
    :catch_5d
    move-exception v0

    .line 119
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to run action "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 120
    invoke-static {v0}, Lcom/urbanairship/actions/ActionResult;->newErrorResult(Ljava/lang/Exception;)Lcom/urbanairship/actions/ActionResult;

    move-result-object v1

    goto :goto_2b
.end method

.method public shouldRunOnMainThread()Z
    .registers 2

    .prologue
    .line 171
    const/4 v0, 0x0

    return v0
.end method
