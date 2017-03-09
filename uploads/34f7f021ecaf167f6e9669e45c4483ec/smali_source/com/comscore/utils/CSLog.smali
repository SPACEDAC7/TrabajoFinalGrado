.class public Lcom/comscore/utils/CSLog;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/Class;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    sget-boolean v0, Lcom/comscore/utils/Constants;->DEBUG:Z

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    return-void
.end method

.method public static d(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 3

    sget-boolean v0, Lcom/comscore/utils/Constants;->DEBUG:Z

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/comscore/utils/CSLog;->d(Ljava/lang/Class;Ljava/lang/String;)V

    :cond_b
    return-void
.end method

.method public static e(Ljava/lang/Class;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    sget-boolean v0, Lcom/comscore/utils/Constants;->DEBUG:Z

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    return-void
.end method

.method public static e(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 3

    sget-boolean v0, Lcom/comscore/utils/Constants;->DEBUG:Z

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/comscore/utils/CSLog;->e(Ljava/lang/Class;Ljava/lang/String;)V

    :cond_b
    return-void
.end method

.method public static printStackTrace(Ljava/lang/Exception;)V
    .registers 2

    sget-boolean v0, Lcom/comscore/utils/Constants;->DEBUG:Z

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_7
    return-void
.end method

.method public static v(Ljava/lang/Class;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    sget-boolean v0, Lcom/comscore/utils/Constants;->DEBUG:Z

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    return-void
.end method

.method public static v(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 3

    sget-boolean v0, Lcom/comscore/utils/Constants;->DEBUG:Z

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/comscore/utils/CSLog;->v(Ljava/lang/Class;Ljava/lang/String;)V

    :cond_b
    return-void
.end method
