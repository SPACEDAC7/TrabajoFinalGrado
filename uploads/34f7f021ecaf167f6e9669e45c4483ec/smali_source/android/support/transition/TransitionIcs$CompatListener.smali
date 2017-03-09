.class Landroid/support/transition/TransitionIcs$CompatListener;
.super Ljava/lang/Object;
.source "TransitionIcs.java"

# interfaces
.implements Landroid/support/transition/TransitionPort$TransitionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/transition/TransitionIcs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CompatListener"
.end annotation


# instance fields
.field private final mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/transition/TransitionInterfaceListener;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroid/support/transition/TransitionIcs;


# direct methods
.method constructor <init>(Landroid/support/transition/TransitionIcs;)V
    .registers 3

    .prologue
    .line 237
    iput-object p1, p0, Landroid/support/transition/TransitionIcs$CompatListener;->this$0:Landroid/support/transition/TransitionIcs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 235
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/transition/TransitionIcs$CompatListener;->mListeners:Ljava/util/ArrayList;

    .line 238
    return-void
.end method


# virtual methods
.method public addListener(Landroid/support/transition/TransitionInterfaceListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/support/transition/TransitionInterfaceListener;

    .prologue
    .line 241
    iget-object v0, p0, Landroid/support/transition/TransitionIcs$CompatListener;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 242
    return-void
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 249
    iget-object v0, p0, Landroid/support/transition/TransitionIcs$CompatListener;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public onTransitionCancel(Landroid/support/transition/TransitionPort;)V
    .registers 5
    .param p1, "transition"    # Landroid/support/transition/TransitionPort;

    .prologue
    .line 268
    iget-object v1, p0, Landroid/support/transition/TransitionIcs$CompatListener;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/transition/TransitionInterfaceListener;

    .line 269
    .local v0, "listener":Landroid/support/transition/TransitionInterfaceListener;
    iget-object v2, p0, Landroid/support/transition/TransitionIcs$CompatListener;->this$0:Landroid/support/transition/TransitionIcs;

    iget-object v2, v2, Landroid/support/transition/TransitionIcs;->mExternalTransition:Landroid/support/transition/TransitionInterface;

    invoke-interface {v0, v2}, Landroid/support/transition/TransitionInterfaceListener;->onTransitionCancel(Landroid/support/transition/TransitionInterface;)V

    goto :goto_6

    .line 271
    .end local v0    # "listener":Landroid/support/transition/TransitionInterfaceListener;
    :cond_1a
    return-void
.end method

.method public onTransitionEnd(Landroid/support/transition/TransitionPort;)V
    .registers 5
    .param p1, "transition"    # Landroid/support/transition/TransitionPort;

    .prologue
    .line 261
    iget-object v1, p0, Landroid/support/transition/TransitionIcs$CompatListener;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/transition/TransitionInterfaceListener;

    .line 262
    .local v0, "listener":Landroid/support/transition/TransitionInterfaceListener;
    iget-object v2, p0, Landroid/support/transition/TransitionIcs$CompatListener;->this$0:Landroid/support/transition/TransitionIcs;

    iget-object v2, v2, Landroid/support/transition/TransitionIcs;->mExternalTransition:Landroid/support/transition/TransitionInterface;

    invoke-interface {v0, v2}, Landroid/support/transition/TransitionInterfaceListener;->onTransitionEnd(Landroid/support/transition/TransitionInterface;)V

    goto :goto_6

    .line 264
    .end local v0    # "listener":Landroid/support/transition/TransitionInterfaceListener;
    :cond_1a
    return-void
.end method

.method public onTransitionPause(Landroid/support/transition/TransitionPort;)V
    .registers 5
    .param p1, "transition"    # Landroid/support/transition/TransitionPort;

    .prologue
    .line 275
    iget-object v1, p0, Landroid/support/transition/TransitionIcs$CompatListener;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/transition/TransitionInterfaceListener;

    .line 276
    .local v0, "listener":Landroid/support/transition/TransitionInterfaceListener;
    iget-object v2, p0, Landroid/support/transition/TransitionIcs$CompatListener;->this$0:Landroid/support/transition/TransitionIcs;

    iget-object v2, v2, Landroid/support/transition/TransitionIcs;->mExternalTransition:Landroid/support/transition/TransitionInterface;

    invoke-interface {v0, v2}, Landroid/support/transition/TransitionInterfaceListener;->onTransitionPause(Landroid/support/transition/TransitionInterface;)V

    goto :goto_6

    .line 278
    .end local v0    # "listener":Landroid/support/transition/TransitionInterfaceListener;
    :cond_1a
    return-void
.end method

.method public onTransitionResume(Landroid/support/transition/TransitionPort;)V
    .registers 5
    .param p1, "transition"    # Landroid/support/transition/TransitionPort;

    .prologue
    .line 282
    iget-object v1, p0, Landroid/support/transition/TransitionIcs$CompatListener;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/transition/TransitionInterfaceListener;

    .line 283
    .local v0, "listener":Landroid/support/transition/TransitionInterfaceListener;
    iget-object v2, p0, Landroid/support/transition/TransitionIcs$CompatListener;->this$0:Landroid/support/transition/TransitionIcs;

    iget-object v2, v2, Landroid/support/transition/TransitionIcs;->mExternalTransition:Landroid/support/transition/TransitionInterface;

    invoke-interface {v0, v2}, Landroid/support/transition/TransitionInterfaceListener;->onTransitionResume(Landroid/support/transition/TransitionInterface;)V

    goto :goto_6

    .line 285
    .end local v0    # "listener":Landroid/support/transition/TransitionInterfaceListener;
    :cond_1a
    return-void
.end method

.method public onTransitionStart(Landroid/support/transition/TransitionPort;)V
    .registers 5
    .param p1, "transition"    # Landroid/support/transition/TransitionPort;

    .prologue
    .line 254
    iget-object v1, p0, Landroid/support/transition/TransitionIcs$CompatListener;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/transition/TransitionInterfaceListener;

    .line 255
    .local v0, "listener":Landroid/support/transition/TransitionInterfaceListener;
    iget-object v2, p0, Landroid/support/transition/TransitionIcs$CompatListener;->this$0:Landroid/support/transition/TransitionIcs;

    iget-object v2, v2, Landroid/support/transition/TransitionIcs;->mExternalTransition:Landroid/support/transition/TransitionInterface;

    invoke-interface {v0, v2}, Landroid/support/transition/TransitionInterfaceListener;->onTransitionStart(Landroid/support/transition/TransitionInterface;)V

    goto :goto_6

    .line 257
    .end local v0    # "listener":Landroid/support/transition/TransitionInterfaceListener;
    :cond_1a
    return-void
.end method

.method public removeListener(Landroid/support/transition/TransitionInterfaceListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/support/transition/TransitionInterfaceListener;

    .prologue
    .line 245
    iget-object v0, p0, Landroid/support/transition/TransitionIcs$CompatListener;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 246
    return-void
.end method
