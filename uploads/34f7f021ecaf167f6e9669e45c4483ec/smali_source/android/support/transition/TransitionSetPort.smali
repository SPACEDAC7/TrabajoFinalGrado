.class Landroid/support/transition/TransitionSetPort;
.super Landroid/support/transition/TransitionPort;
.source "TransitionSetPort.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/transition/TransitionSetPort$TransitionSetListener;
    }
.end annotation


# static fields
.field public static final ORDERING_SEQUENTIAL:I = 0x1

.field public static final ORDERING_TOGETHER:I


# instance fields
.field mCurrentListeners:I

.field private mPlayTogether:Z

.field mStarted:Z

.field mTransitions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/transition/TransitionPort;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 54
    invoke-direct {p0}, Landroid/support/transition/TransitionPort;-><init>()V

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/transition/TransitionSetPort;->mTransitions:Ljava/util/ArrayList;

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/transition/TransitionSetPort;->mStarted:Z

    .line 52
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/transition/TransitionSetPort;->mPlayTogether:Z

    .line 55
    return-void
.end method

.method private setupStartEndListeners()V
    .registers 5

    .prologue
    .line 158
    new-instance v1, Landroid/support/transition/TransitionSetPort$TransitionSetListener;

    invoke-direct {v1, p0}, Landroid/support/transition/TransitionSetPort$TransitionSetListener;-><init>(Landroid/support/transition/TransitionSetPort;)V

    .line 159
    .local v1, "listener":Landroid/support/transition/TransitionSetPort$TransitionSetListener;
    iget-object v2, p0, Landroid/support/transition/TransitionSetPort;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/transition/TransitionPort;

    .line 160
    .local v0, "childTransition":Landroid/support/transition/TransitionPort;
    invoke-virtual {v0, v1}, Landroid/support/transition/TransitionPort;->addListener(Landroid/support/transition/TransitionPort$TransitionListener;)Landroid/support/transition/TransitionPort;

    goto :goto_b

    .line 162
    .end local v0    # "childTransition":Landroid/support/transition/TransitionPort;
    :cond_1b
    iget-object v2, p0, Landroid/support/transition/TransitionSetPort;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iput v2, p0, Landroid/support/transition/TransitionSetPort;->mCurrentListeners:I

    .line 163
    return-void
.end method


# virtual methods
.method public bridge synthetic addListener(Landroid/support/transition/TransitionPort$TransitionListener;)Landroid/support/transition/TransitionPort;
    .registers 3

    .prologue
    .line 29
    invoke-virtual {p0, p1}, Landroid/support/transition/TransitionSetPort;->addListener(Landroid/support/transition/TransitionPort$TransitionListener;)Landroid/support/transition/TransitionSetPort;

    move-result-object v0

    return-object v0
.end method

.method public addListener(Landroid/support/transition/TransitionPort$TransitionListener;)Landroid/support/transition/TransitionSetPort;
    .registers 3
    .param p1, "listener"    # Landroid/support/transition/TransitionPort$TransitionListener;

    .prologue
    .line 128
    invoke-super {p0, p1}, Landroid/support/transition/TransitionPort;->addListener(Landroid/support/transition/TransitionPort$TransitionListener;)Landroid/support/transition/TransitionPort;

    move-result-object v0

    check-cast v0, Landroid/support/transition/TransitionSetPort;

    return-object v0
.end method

.method public bridge synthetic addTarget(I)Landroid/support/transition/TransitionPort;
    .registers 3

    .prologue
    .line 29
    invoke-virtual {p0, p1}, Landroid/support/transition/TransitionSetPort;->addTarget(I)Landroid/support/transition/TransitionSetPort;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic addTarget(Landroid/view/View;)Landroid/support/transition/TransitionPort;
    .registers 3

    .prologue
    .line 29
    invoke-virtual {p0, p1}, Landroid/support/transition/TransitionSetPort;->addTarget(Landroid/view/View;)Landroid/support/transition/TransitionSetPort;

    move-result-object v0

    return-object v0
.end method

.method public addTarget(I)Landroid/support/transition/TransitionSetPort;
    .registers 3
    .param p1, "targetId"    # I

    .prologue
    .line 123
    invoke-super {p0, p1}, Landroid/support/transition/TransitionPort;->addTarget(I)Landroid/support/transition/TransitionPort;

    move-result-object v0

    check-cast v0, Landroid/support/transition/TransitionSetPort;

    return-object v0
.end method

.method public addTarget(Landroid/view/View;)Landroid/support/transition/TransitionSetPort;
    .registers 3
    .param p1, "target"    # Landroid/view/View;

    .prologue
    .line 118
    invoke-super {p0, p1}, Landroid/support/transition/TransitionPort;->addTarget(Landroid/view/View;)Landroid/support/transition/TransitionPort;

    move-result-object v0

    check-cast v0, Landroid/support/transition/TransitionSetPort;

    return-object v0
.end method

.method public addTransition(Landroid/support/transition/TransitionPort;)Landroid/support/transition/TransitionSetPort;
    .registers 6
    .param p1, "transition"    # Landroid/support/transition/TransitionPort;

    .prologue
    .line 77
    if-eqz p1, :cond_16

    .line 78
    iget-object v0, p0, Landroid/support/transition/TransitionSetPort;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    iput-object p0, p1, Landroid/support/transition/TransitionPort;->mParent:Landroid/support/transition/TransitionSetPort;

    .line 80
    iget-wide v0, p0, Landroid/support/transition/TransitionSetPort;->mDuration:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_16

    .line 81
    iget-wide v0, p0, Landroid/support/transition/TransitionSetPort;->mDuration:J

    invoke-virtual {p1, v0, v1}, Landroid/support/transition/TransitionPort;->setDuration(J)Landroid/support/transition/TransitionPort;

    .line 84
    :cond_16
    return-object p0
.end method

.method protected cancel()V
    .registers 4
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->GROUP_ID:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 264
    invoke-super {p0}, Landroid/support/transition/TransitionPort;->cancel()V

    .line 265
    iget-object v2, p0, Landroid/support/transition/TransitionSetPort;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 266
    .local v1, "numTransitions":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_a
    if-ge v0, v1, :cond_1a

    .line 267
    iget-object v2, p0, Landroid/support/transition/TransitionSetPort;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/transition/TransitionPort;

    invoke-virtual {v2}, Landroid/support/transition/TransitionPort;->cancel()V

    .line 266
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 269
    :cond_1a
    return-void
.end method

.method public captureEndValues(Landroid/support/transition/TransitionValues;)V
    .registers 8
    .param p1, "transitionValues"    # Landroid/support/transition/TransitionValues;

    .prologue
    .line 228
    iget-object v2, p1, Landroid/support/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v1

    .line 229
    .local v1, "targetId":I
    iget-object v2, p1, Landroid/support/transition/TransitionValues;->view:Landroid/view/View;

    int-to-long v4, v1

    invoke-virtual {p0, v2, v4, v5}, Landroid/support/transition/TransitionSetPort;->isValidTarget(Landroid/view/View;J)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 230
    iget-object v2, p0, Landroid/support/transition/TransitionSetPort;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_15
    :goto_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/transition/TransitionPort;

    .line 231
    .local v0, "childTransition":Landroid/support/transition/TransitionPort;
    iget-object v3, p1, Landroid/support/transition/TransitionValues;->view:Landroid/view/View;

    int-to-long v4, v1

    invoke-virtual {v0, v3, v4, v5}, Landroid/support/transition/TransitionPort;->isValidTarget(Landroid/view/View;J)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 232
    invoke-virtual {v0, p1}, Landroid/support/transition/TransitionPort;->captureEndValues(Landroid/support/transition/TransitionValues;)V

    goto :goto_15

    .line 236
    .end local v0    # "childTransition":Landroid/support/transition/TransitionPort;
    :cond_2e
    return-void
.end method

.method public captureStartValues(Landroid/support/transition/TransitionValues;)V
    .registers 8
    .param p1, "transitionValues"    # Landroid/support/transition/TransitionValues;

    .prologue
    .line 216
    iget-object v2, p1, Landroid/support/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v1

    .line 217
    .local v1, "targetId":I
    iget-object v2, p1, Landroid/support/transition/TransitionValues;->view:Landroid/view/View;

    int-to-long v4, v1

    invoke-virtual {p0, v2, v4, v5}, Landroid/support/transition/TransitionSetPort;->isValidTarget(Landroid/view/View;J)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 218
    iget-object v2, p0, Landroid/support/transition/TransitionSetPort;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_15
    :goto_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/transition/TransitionPort;

    .line 219
    .local v0, "childTransition":Landroid/support/transition/TransitionPort;
    iget-object v3, p1, Landroid/support/transition/TransitionValues;->view:Landroid/view/View;

    int-to-long v4, v1

    invoke-virtual {v0, v3, v4, v5}, Landroid/support/transition/TransitionPort;->isValidTarget(Landroid/view/View;J)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 220
    invoke-virtual {v0, p1}, Landroid/support/transition/TransitionPort;->captureStartValues(Landroid/support/transition/TransitionValues;)V

    goto :goto_15

    .line 224
    .end local v0    # "childTransition":Landroid/support/transition/TransitionPort;
    :cond_2e
    return-void
.end method

.method public bridge synthetic clone()Landroid/support/transition/TransitionPort;
    .registers 2

    .prologue
    .line 29
    invoke-virtual {p0}, Landroid/support/transition/TransitionSetPort;->clone()Landroid/support/transition/TransitionSetPort;

    move-result-object v0

    return-object v0
.end method

.method public clone()Landroid/support/transition/TransitionSetPort;
    .registers 5

    .prologue
    .line 301
    invoke-super {p0}, Landroid/support/transition/TransitionPort;->clone()Landroid/support/transition/TransitionPort;

    move-result-object v0

    check-cast v0, Landroid/support/transition/TransitionSetPort;

    .line 302
    .local v0, "clone":Landroid/support/transition/TransitionSetPort;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Landroid/support/transition/TransitionSetPort;->mTransitions:Ljava/util/ArrayList;

    .line 303
    iget-object v3, p0, Landroid/support/transition/TransitionSetPort;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 304
    .local v2, "numTransitions":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_14
    if-ge v1, v2, :cond_28

    .line 305
    iget-object v3, p0, Landroid/support/transition/TransitionSetPort;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/transition/TransitionPort;

    invoke-virtual {v3}, Landroid/support/transition/TransitionPort;->clone()Landroid/support/transition/TransitionPort;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/support/transition/TransitionSetPort;->addTransition(Landroid/support/transition/TransitionPort;)Landroid/support/transition/TransitionSetPort;

    .line 304
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 307
    :cond_28
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 29
    invoke-virtual {p0}, Landroid/support/transition/TransitionSetPort;->clone()Landroid/support/transition/TransitionSetPort;

    move-result-object v0

    return-object v0
.end method

.method protected createAnimators(Landroid/view/ViewGroup;Landroid/support/transition/TransitionValuesMaps;Landroid/support/transition/TransitionValuesMaps;)V
    .registers 7
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "startValues"    # Landroid/support/transition/TransitionValuesMaps;
    .param p3, "endValues"    # Landroid/support/transition/TransitionValuesMaps;
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->GROUP_ID:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 172
    iget-object v1, p0, Landroid/support/transition/TransitionSetPort;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/transition/TransitionPort;

    .line 173
    .local v0, "childTransition":Landroid/support/transition/TransitionPort;
    invoke-virtual {v0, p1, p2, p3}, Landroid/support/transition/TransitionPort;->createAnimators(Landroid/view/ViewGroup;Landroid/support/transition/TransitionValuesMaps;Landroid/support/transition/TransitionValuesMaps;)V

    goto :goto_6

    .line 175
    .end local v0    # "childTransition":Landroid/support/transition/TransitionPort;
    :cond_16
    return-void
.end method

.method public getOrdering()I
    .registers 2

    .prologue
    .line 58
    iget-boolean v0, p0, Landroid/support/transition/TransitionSetPort;->mPlayTogether:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x1

    goto :goto_5
.end method

.method public pause(Landroid/view/View;)V
    .registers 5
    .param p1, "sceneRoot"    # Landroid/view/View;
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->GROUP_ID:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 242
    invoke-super {p0, p1}, Landroid/support/transition/TransitionPort;->pause(Landroid/view/View;)V

    .line 243
    iget-object v2, p0, Landroid/support/transition/TransitionSetPort;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 244
    .local v1, "numTransitions":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_a
    if-ge v0, v1, :cond_1a

    .line 245
    iget-object v2, p0, Landroid/support/transition/TransitionSetPort;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/transition/TransitionPort;

    invoke-virtual {v2, p1}, Landroid/support/transition/TransitionPort;->pause(Landroid/view/View;)V

    .line 244
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 247
    :cond_1a
    return-void
.end method

.method public bridge synthetic removeListener(Landroid/support/transition/TransitionPort$TransitionListener;)Landroid/support/transition/TransitionPort;
    .registers 3

    .prologue
    .line 29
    invoke-virtual {p0, p1}, Landroid/support/transition/TransitionSetPort;->removeListener(Landroid/support/transition/TransitionPort$TransitionListener;)Landroid/support/transition/TransitionSetPort;

    move-result-object v0

    return-object v0
.end method

.method public removeListener(Landroid/support/transition/TransitionPort$TransitionListener;)Landroid/support/transition/TransitionSetPort;
    .registers 3
    .param p1, "listener"    # Landroid/support/transition/TransitionPort$TransitionListener;

    .prologue
    .line 143
    invoke-super {p0, p1}, Landroid/support/transition/TransitionPort;->removeListener(Landroid/support/transition/TransitionPort$TransitionListener;)Landroid/support/transition/TransitionPort;

    move-result-object v0

    check-cast v0, Landroid/support/transition/TransitionSetPort;

    return-object v0
.end method

.method public bridge synthetic removeTarget(I)Landroid/support/transition/TransitionPort;
    .registers 3

    .prologue
    .line 29
    invoke-virtual {p0, p1}, Landroid/support/transition/TransitionSetPort;->removeTarget(I)Landroid/support/transition/TransitionSetPort;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic removeTarget(Landroid/view/View;)Landroid/support/transition/TransitionPort;
    .registers 3

    .prologue
    .line 29
    invoke-virtual {p0, p1}, Landroid/support/transition/TransitionSetPort;->removeTarget(Landroid/view/View;)Landroid/support/transition/TransitionSetPort;

    move-result-object v0

    return-object v0
.end method

.method public removeTarget(I)Landroid/support/transition/TransitionSetPort;
    .registers 3
    .param p1, "targetId"    # I

    .prologue
    .line 133
    invoke-super {p0, p1}, Landroid/support/transition/TransitionPort;->removeTarget(I)Landroid/support/transition/TransitionPort;

    move-result-object v0

    check-cast v0, Landroid/support/transition/TransitionSetPort;

    return-object v0
.end method

.method public removeTarget(Landroid/view/View;)Landroid/support/transition/TransitionSetPort;
    .registers 3
    .param p1, "target"    # Landroid/view/View;

    .prologue
    .line 138
    invoke-super {p0, p1}, Landroid/support/transition/TransitionPort;->removeTarget(Landroid/view/View;)Landroid/support/transition/TransitionPort;

    move-result-object v0

    check-cast v0, Landroid/support/transition/TransitionSetPort;

    return-object v0
.end method

.method public removeTransition(Landroid/support/transition/TransitionPort;)Landroid/support/transition/TransitionSetPort;
    .registers 3
    .param p1, "transition"    # Landroid/support/transition/TransitionPort;

    .prologue
    .line 147
    iget-object v0, p0, Landroid/support/transition/TransitionSetPort;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 148
    const/4 v0, 0x0

    iput-object v0, p1, Landroid/support/transition/TransitionPort;->mParent:Landroid/support/transition/TransitionSetPort;

    .line 149
    return-object p0
.end method

.method public resume(Landroid/view/View;)V
    .registers 5
    .param p1, "sceneRoot"    # Landroid/view/View;
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->GROUP_ID:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 253
    invoke-super {p0, p1}, Landroid/support/transition/TransitionPort;->resume(Landroid/view/View;)V

    .line 254
    iget-object v2, p0, Landroid/support/transition/TransitionSetPort;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 255
    .local v1, "numTransitions":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_a
    if-ge v0, v1, :cond_1a

    .line 256
    iget-object v2, p0, Landroid/support/transition/TransitionSetPort;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/transition/TransitionPort;

    invoke-virtual {v2, p1}, Landroid/support/transition/TransitionPort;->resume(Landroid/view/View;)V

    .line 255
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 258
    :cond_1a
    return-void
.end method

.method protected runAnimators()V
    .registers 8
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->GROUP_ID:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 183
    iget-object v5, p0, Landroid/support/transition/TransitionSetPort;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_f

    .line 184
    invoke-virtual {p0}, Landroid/support/transition/TransitionSetPort;->start()V

    .line 185
    invoke-virtual {p0}, Landroid/support/transition/TransitionSetPort;->end()V

    .line 212
    :cond_e
    :goto_e
    return-void

    .line 188
    :cond_f
    invoke-direct {p0}, Landroid/support/transition/TransitionSetPort;->setupStartEndListeners()V

    .line 189
    iget-boolean v5, p0, Landroid/support/transition/TransitionSetPort;->mPlayTogether:Z

    if-nez v5, :cond_4b

    .line 192
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_17
    iget-object v5, p0, Landroid/support/transition/TransitionSetPort;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_3c

    .line 193
    iget-object v5, p0, Landroid/support/transition/TransitionSetPort;->mTransitions:Ljava/util/ArrayList;

    add-int/lit8 v6, v2, -0x1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/transition/TransitionPort;

    .line 194
    .local v4, "previousTransition":Landroid/support/transition/TransitionPort;
    iget-object v5, p0, Landroid/support/transition/TransitionSetPort;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/transition/TransitionPort;

    .line 195
    .local v3, "nextTransition":Landroid/support/transition/TransitionPort;
    new-instance v5, Landroid/support/transition/TransitionSetPort$1;

    invoke-direct {v5, p0, v3}, Landroid/support/transition/TransitionSetPort$1;-><init>(Landroid/support/transition/TransitionSetPort;Landroid/support/transition/TransitionPort;)V

    invoke-virtual {v4, v5}, Landroid/support/transition/TransitionPort;->addListener(Landroid/support/transition/TransitionPort$TransitionListener;)Landroid/support/transition/TransitionPort;

    .line 192
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 203
    .end local v3    # "nextTransition":Landroid/support/transition/TransitionPort;
    .end local v4    # "previousTransition":Landroid/support/transition/TransitionPort;
    :cond_3c
    iget-object v5, p0, Landroid/support/transition/TransitionSetPort;->mTransitions:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/transition/TransitionPort;

    .line 204
    .local v1, "firstTransition":Landroid/support/transition/TransitionPort;
    if-eqz v1, :cond_e

    .line 205
    invoke-virtual {v1}, Landroid/support/transition/TransitionPort;->runAnimators()V

    goto :goto_e

    .line 208
    .end local v1    # "firstTransition":Landroid/support/transition/TransitionPort;
    .end local v2    # "i":I
    :cond_4b
    iget-object v5, p0, Landroid/support/transition/TransitionSetPort;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_51
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_e

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/transition/TransitionPort;

    .line 209
    .local v0, "childTransition":Landroid/support/transition/TransitionPort;
    invoke-virtual {v0}, Landroid/support/transition/TransitionPort;->runAnimators()V

    goto :goto_51
.end method

.method setCanRemoveViews(Z)V
    .registers 5
    .param p1, "canRemoveViews"    # Z

    .prologue
    .line 283
    invoke-super {p0, p1}, Landroid/support/transition/TransitionPort;->setCanRemoveViews(Z)V

    .line 284
    iget-object v2, p0, Landroid/support/transition/TransitionSetPort;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 285
    .local v1, "numTransitions":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_a
    if-ge v0, v1, :cond_1a

    .line 286
    iget-object v2, p0, Landroid/support/transition/TransitionSetPort;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/transition/TransitionPort;

    invoke-virtual {v2, p1}, Landroid/support/transition/TransitionPort;->setCanRemoveViews(Z)V

    .line 285
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 288
    :cond_1a
    return-void
.end method

.method public bridge synthetic setDuration(J)Landroid/support/transition/TransitionPort;
    .registers 4

    .prologue
    .line 29
    invoke-virtual {p0, p1, p2}, Landroid/support/transition/TransitionSetPort;->setDuration(J)Landroid/support/transition/TransitionSetPort;

    move-result-object v0

    return-object v0
.end method

.method public setDuration(J)Landroid/support/transition/TransitionSetPort;
    .registers 10
    .param p1, "duration"    # J

    .prologue
    .line 96
    invoke-super {p0, p1, p2}, Landroid/support/transition/TransitionPort;->setDuration(J)Landroid/support/transition/TransitionPort;

    .line 97
    iget-wide v2, p0, Landroid/support/transition/TransitionSetPort;->mDuration:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_22

    .line 98
    iget-object v2, p0, Landroid/support/transition/TransitionSetPort;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 99
    .local v1, "numTransitions":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_12
    if-ge v0, v1, :cond_22

    .line 100
    iget-object v2, p0, Landroid/support/transition/TransitionSetPort;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/transition/TransitionPort;

    invoke-virtual {v2, p1, p2}, Landroid/support/transition/TransitionPort;->setDuration(J)Landroid/support/transition/TransitionPort;

    .line 99
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 103
    .end local v0    # "i":I
    .end local v1    # "numTransitions":I
    :cond_22
    return-object p0
.end method

.method public bridge synthetic setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/support/transition/TransitionPort;
    .registers 3

    .prologue
    .line 29
    invoke-virtual {p0, p1}, Landroid/support/transition/TransitionSetPort;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/support/transition/TransitionSetPort;

    move-result-object v0

    return-object v0
.end method

.method public setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/support/transition/TransitionSetPort;
    .registers 3
    .param p1, "interpolator"    # Landroid/animation/TimeInterpolator;

    .prologue
    .line 113
    invoke-super {p0, p1}, Landroid/support/transition/TransitionPort;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/support/transition/TransitionPort;

    move-result-object v0

    check-cast v0, Landroid/support/transition/TransitionSetPort;

    return-object v0
.end method

.method public setOrdering(I)Landroid/support/transition/TransitionSetPort;
    .registers 5
    .param p1, "ordering"    # I

    .prologue
    .line 62
    packed-switch p1, :pswitch_data_24

    .line 70
    new-instance v0, Landroid/util/AndroidRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid parameter for TransitionSet ordering: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :pswitch_1c
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/transition/TransitionSetPort;->mPlayTogether:Z

    .line 73
    :goto_1f
    return-object p0

    .line 67
    :pswitch_20
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/transition/TransitionSetPort;->mPlayTogether:Z

    goto :goto_1f

    .line 62
    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_20
        :pswitch_1c
    .end packed-switch
.end method

.method bridge synthetic setSceneRoot(Landroid/view/ViewGroup;)Landroid/support/transition/TransitionPort;
    .registers 3

    .prologue
    .line 29
    invoke-virtual {p0, p1}, Landroid/support/transition/TransitionSetPort;->setSceneRoot(Landroid/view/ViewGroup;)Landroid/support/transition/TransitionSetPort;

    move-result-object v0

    return-object v0
.end method

.method setSceneRoot(Landroid/view/ViewGroup;)Landroid/support/transition/TransitionSetPort;
    .registers 5
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;

    .prologue
    .line 273
    invoke-super {p0, p1}, Landroid/support/transition/TransitionPort;->setSceneRoot(Landroid/view/ViewGroup;)Landroid/support/transition/TransitionPort;

    .line 274
    iget-object v2, p0, Landroid/support/transition/TransitionSetPort;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 275
    .local v1, "numTransitions":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_a
    if-ge v0, v1, :cond_1a

    .line 276
    iget-object v2, p0, Landroid/support/transition/TransitionSetPort;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/transition/TransitionPort;

    invoke-virtual {v2, p1}, Landroid/support/transition/TransitionPort;->setSceneRoot(Landroid/view/ViewGroup;)Landroid/support/transition/TransitionPort;

    .line 275
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 278
    :cond_1a
    return-object p0
.end method

.method public bridge synthetic setStartDelay(J)Landroid/support/transition/TransitionPort;
    .registers 4

    .prologue
    .line 29
    invoke-virtual {p0, p1, p2}, Landroid/support/transition/TransitionSetPort;->setStartDelay(J)Landroid/support/transition/TransitionSetPort;

    move-result-object v0

    return-object v0
.end method

.method public setStartDelay(J)Landroid/support/transition/TransitionSetPort;
    .registers 4
    .param p1, "startDelay"    # J

    .prologue
    .line 108
    invoke-super {p0, p1, p2}, Landroid/support/transition/TransitionPort;->setStartDelay(J)Landroid/support/transition/TransitionPort;

    move-result-object v0

    check-cast v0, Landroid/support/transition/TransitionSetPort;

    return-object v0
.end method

.method toString(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p1, "indent"    # Ljava/lang/String;

    .prologue
    .line 292
    invoke-super {p0, p1}, Landroid/support/transition/TransitionPort;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 293
    .local v1, "result":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5
    iget-object v2, p0, Landroid/support/transition/TransitionSetPort;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_46

    .line 294
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v2, p0, Landroid/support/transition/TransitionSetPort;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/transition/TransitionPort;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/support/transition/TransitionPort;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 293
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 296
    :cond_46
    return-object v1
.end method
