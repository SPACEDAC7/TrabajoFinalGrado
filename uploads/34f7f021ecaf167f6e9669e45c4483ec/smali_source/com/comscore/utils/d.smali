.class Lcom/comscore/utils/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/comscore/utils/Storage;


# direct methods
.method constructor <init>(Lcom/comscore/utils/Storage;)V
    .registers 2

    iput-object p1, p0, Lcom/comscore/utils/d;->a:Lcom/comscore/utils/Storage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/comscore/utils/d;->a:Lcom/comscore/utils/Storage;

    invoke-virtual {v0}, Lcom/comscore/utils/Storage;->b()V

    iget-object v0, p0, Lcom/comscore/utils/d;->a:Lcom/comscore/utils/Storage;

    invoke-virtual {v0}, Lcom/comscore/utils/Storage;->c()V

    return-void
.end method
