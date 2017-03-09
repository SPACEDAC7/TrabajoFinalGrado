.class public abstract Lio/fabric/sdk/android/Kit;
.super Ljava/lang/Object;
.source "Kit.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Result:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lio/fabric/sdk/android/Kit;",
        ">;"
    }
.end annotation


# instance fields
.field context:Landroid/content/Context;

.field final dependsOnAnnotation:Lio/fabric/sdk/android/services/concurrency/DependsOn;

.field fabric:Lio/fabric/sdk/android/Fabric;

.field idManager:Lio/fabric/sdk/android/services/common/IdManager;

.field initializationCallback:Lio/fabric/sdk/android/InitializationCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/fabric/sdk/android/InitializationCallback",
            "<TResult;>;"
        }
    .end annotation
.end field

.field initializationTask:Lio/fabric/sdk/android/InitializationTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/fabric/sdk/android/InitializationTask",
            "<TResult;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 44
    .local p0, "this":Lio/fabric/sdk/android/Kit;, "Lio/fabric/sdk/android/Kit<TResult;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Lio/fabric/sdk/android/InitializationTask;

    invoke-direct {v0, p0}, Lio/fabric/sdk/android/InitializationTask;-><init>(Lio/fabric/sdk/android/Kit;)V

    iput-object v0, p0, Lio/fabric/sdk/android/Kit;->initializationTask:Lio/fabric/sdk/android/InitializationTask;

    .line 46
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lio/fabric/sdk/android/services/concurrency/DependsOn;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lio/fabric/sdk/android/services/concurrency/DependsOn;

    iput-object v0, p0, Lio/fabric/sdk/android/Kit;->dependsOnAnnotation:Lio/fabric/sdk/android/services/concurrency/DependsOn;

    .line 47
    return-void
.end method


# virtual methods
.method public compareTo(Lio/fabric/sdk/android/Kit;)I
    .registers 5
    .param p1, "another"    # Lio/fabric/sdk/android/Kit;

    .prologue
    .local p0, "this":Lio/fabric/sdk/android/Kit;, "Lio/fabric/sdk/android/Kit<TResult;>;"
    const/4 v0, 0x1

    const/4 v1, -0x1

    .line 145
    invoke-virtual {p0, p1}, Lio/fabric/sdk/android/Kit;->containsAnnotatedDependency(Lio/fabric/sdk/android/Kit;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 154
    :cond_8
    :goto_8
    return v0

    .line 147
    :cond_9
    invoke-virtual {p1, p0}, Lio/fabric/sdk/android/Kit;->containsAnnotatedDependency(Lio/fabric/sdk/android/Kit;)Z

    move-result v2

    if-eqz v2, :cond_11

    move v0, v1

    .line 148
    goto :goto_8

    .line 149
    :cond_11
    invoke-virtual {p0}, Lio/fabric/sdk/android/Kit;->hasAnnotatedDependency()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-virtual {p1}, Lio/fabric/sdk/android/Kit;->hasAnnotatedDependency()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 151
    :cond_1d
    invoke-virtual {p0}, Lio/fabric/sdk/android/Kit;->hasAnnotatedDependency()Z

    move-result v0

    if-nez v0, :cond_2b

    invoke-virtual {p1}, Lio/fabric/sdk/android/Kit;->hasAnnotatedDependency()Z

    move-result v0

    if-eqz v0, :cond_2b

    move v0, v1

    .line 152
    goto :goto_8

    .line 154
    :cond_2b
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 33
    .local p0, "this":Lio/fabric/sdk/android/Kit;, "Lio/fabric/sdk/android/Kit<TResult;>;"
    check-cast p1, Lio/fabric/sdk/android/Kit;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lio/fabric/sdk/android/Kit;->compareTo(Lio/fabric/sdk/android/Kit;)I

    move-result v0

    return v0
.end method

.method containsAnnotatedDependency(Lio/fabric/sdk/android/Kit;)Z
    .registers 8
    .param p1, "target"    # Lio/fabric/sdk/android/Kit;

    .prologue
    .line 163
    .local p0, "this":Lio/fabric/sdk/android/Kit;, "Lio/fabric/sdk/android/Kit<TResult;>;"
    invoke-virtual {p0}, Lio/fabric/sdk/android/Kit;->hasAnnotatedDependency()Z

    move-result v5

    if-eqz v5, :cond_22

    .line 164
    iget-object v5, p0, Lio/fabric/sdk/android/Kit;->dependsOnAnnotation:Lio/fabric/sdk/android/services/concurrency/DependsOn;

    invoke-interface {v5}, Lio/fabric/sdk/android/services/concurrency/DependsOn;->value()[Ljava/lang/Class;

    move-result-object v2

    .line 165
    .local v2, "deps":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    move-object v0, v2

    .local v0, "arr$":[Ljava/lang/Class;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_f
    if-ge v3, v4, :cond_22

    aget-object v1, v0, v3

    .line 166
    .local v1, "dep":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_1f

    .line 167
    const/4 v5, 0x1

    .line 171
    .end local v0    # "arr$":[Ljava/lang/Class;
    .end local v1    # "dep":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "deps":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :goto_1e
    return v5

    .line 165
    .restart local v0    # "arr$":[Ljava/lang/Class;
    .restart local v1    # "dep":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v2    # "deps":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .restart local v3    # "i$":I
    .restart local v4    # "len$":I
    :cond_1f
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 171
    .end local v0    # "arr$":[Ljava/lang/Class;
    .end local v1    # "dep":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "deps":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_22
    const/4 v5, 0x0

    goto :goto_1e
.end method

.method protected abstract doInBackground()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResult;"
        }
    .end annotation
.end method

.method public getContext()Landroid/content/Context;
    .registers 2

    .prologue
    .line 116
    .local p0, "this":Lio/fabric/sdk/android/Kit;, "Lio/fabric/sdk/android/Kit<TResult;>;"
    iget-object v0, p0, Lio/fabric/sdk/android/Kit;->context:Landroid/content/Context;

    return-object v0
.end method

.method protected getDependencies()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lio/fabric/sdk/android/services/concurrency/Task;",
            ">;"
        }
    .end annotation

    .prologue
    .line 183
    .local p0, "this":Lio/fabric/sdk/android/Kit;, "Lio/fabric/sdk/android/Kit<TResult;>;"
    iget-object v0, p0, Lio/fabric/sdk/android/Kit;->initializationTask:Lio/fabric/sdk/android/InitializationTask;

    invoke-virtual {v0}, Lio/fabric/sdk/android/InitializationTask;->getDependencies()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getFabric()Lio/fabric/sdk/android/Fabric;
    .registers 2

    .prologue
    .line 123
    .local p0, "this":Lio/fabric/sdk/android/Kit;, "Lio/fabric/sdk/android/Kit<TResult;>;"
    iget-object v0, p0, Lio/fabric/sdk/android/Kit;->fabric:Lio/fabric/sdk/android/Fabric;

    return-object v0
.end method

.method protected getIdManager()Lio/fabric/sdk/android/services/common/IdManager;
    .registers 2

    .prologue
    .line 109
    .local p0, "this":Lio/fabric/sdk/android/Kit;, "Lio/fabric/sdk/android/Kit<TResult;>;"
    iget-object v0, p0, Lio/fabric/sdk/android/Kit;->idManager:Lio/fabric/sdk/android/services/common/IdManager;

    return-object v0
.end method

.method public abstract getIdentifier()Ljava/lang/String;
.end method

.method public getPath()Ljava/lang/String;
    .registers 3

    .prologue
    .line 137
    .local p0, "this":Lio/fabric/sdk/android/Kit;, "Lio/fabric/sdk/android/Kit<TResult;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ".Fabric"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lio/fabric/sdk/android/Kit;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract getVersion()Ljava/lang/String;
.end method

.method hasAnnotatedDependency()Z
    .registers 2

    .prologue
    .line 179
    .local p0, "this":Lio/fabric/sdk/android/Kit;, "Lio/fabric/sdk/android/Kit<TResult;>;"
    iget-object v0, p0, Lio/fabric/sdk/android/Kit;->dependsOnAnnotation:Lio/fabric/sdk/android/services/concurrency/DependsOn;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method final initialize()V
    .registers 6

    .prologue
    .line 69
    .local p0, "this":Lio/fabric/sdk/android/Kit;, "Lio/fabric/sdk/android/Kit<TResult;>;"
    iget-object v1, p0, Lio/fabric/sdk/android/Kit;->initializationTask:Lio/fabric/sdk/android/InitializationTask;

    iget-object v0, p0, Lio/fabric/sdk/android/Kit;->fabric:Lio/fabric/sdk/android/Fabric;

    invoke-virtual {v0}, Lio/fabric/sdk/android/Fabric;->getExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/Void;

    const/4 v4, 0x0

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Void;

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Lio/fabric/sdk/android/InitializationTask;->executeOnExecutor(Ljava/util/concurrent/ExecutorService;[Ljava/lang/Object;)V

    .line 70
    return-void
.end method

.method injectParameters(Landroid/content/Context;Lio/fabric/sdk/android/Fabric;Lio/fabric/sdk/android/InitializationCallback;Lio/fabric/sdk/android/services/common/IdManager;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fabric"    # Lio/fabric/sdk/android/Fabric;
    .param p4, "idManager"    # Lio/fabric/sdk/android/services/common/IdManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lio/fabric/sdk/android/Fabric;",
            "Lio/fabric/sdk/android/InitializationCallback",
            "<TResult;>;",
            "Lio/fabric/sdk/android/services/common/IdManager;",
            ")V"
        }
    .end annotation

    .prologue
    .line 59
    .local p0, "this":Lio/fabric/sdk/android/Kit;, "Lio/fabric/sdk/android/Kit<TResult;>;"
    .local p3, "callback":Lio/fabric/sdk/android/InitializationCallback;, "Lio/fabric/sdk/android/InitializationCallback<TResult;>;"
    iput-object p2, p0, Lio/fabric/sdk/android/Kit;->fabric:Lio/fabric/sdk/android/Fabric;

    .line 60
    new-instance v0, Lio/fabric/sdk/android/FabricContext;

    invoke-virtual {p0}, Lio/fabric/sdk/android/Kit;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lio/fabric/sdk/android/Kit;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p1, v1, v2}, Lio/fabric/sdk/android/FabricContext;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lio/fabric/sdk/android/Kit;->context:Landroid/content/Context;

    .line 61
    iput-object p3, p0, Lio/fabric/sdk/android/Kit;->initializationCallback:Lio/fabric/sdk/android/InitializationCallback;

    .line 62
    iput-object p4, p0, Lio/fabric/sdk/android/Kit;->idManager:Lio/fabric/sdk/android/services/common/IdManager;

    .line 63
    return-void
.end method

.method protected onCancelled(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .prologue
    .line 103
    .local p0, "this":Lio/fabric/sdk/android/Kit;, "Lio/fabric/sdk/android/Kit<TResult;>;"
    .local p1, "result":Ljava/lang/Object;, "TResult;"
    return-void
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .prologue
    .line 96
    .local p0, "this":Lio/fabric/sdk/android/Kit;, "Lio/fabric/sdk/android/Kit<TResult;>;"
    .local p1, "result":Ljava/lang/Object;, "TResult;"
    return-void
.end method

.method protected onPreExecute()Z
    .registers 2

    .prologue
    .line 79
    .local p0, "this":Lio/fabric/sdk/android/Kit;, "Lio/fabric/sdk/android/Kit<TResult;>;"
    const/4 v0, 0x1

    return v0
.end method
