.class Lcom/comscore/analytics/m;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/comscore/analytics/Core;


# direct methods
.method constructor <init>(Lcom/comscore/analytics/Core;Z)V
    .registers 3

    iput-object p1, p0, Lcom/comscore/analytics/m;->b:Lcom/comscore/analytics/Core;

    iput-boolean p2, p0, Lcom/comscore/analytics/m;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-boolean v0, p0, Lcom/comscore/analytics/m;->a:Z

    sput-boolean v0, Lcom/comscore/utils/Constants;->DEBUG:Z

    return-void
.end method
