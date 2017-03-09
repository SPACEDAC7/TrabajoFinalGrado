.class final Lcom/buzzfeed/toolkit/util/UIUtil$1;
.super Ljava/lang/Object;
.source "UIUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/buzzfeed/toolkit/util/UIUtil;->fadeInViewsFor(JJ[Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$duration:J

.field final synthetic val$fadeInDuration:J

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(JJLandroid/view/View;)V
    .registers 7

    .prologue
    .line 345
    iput-wide p1, p0, Lcom/buzzfeed/toolkit/util/UIUtil$1;->val$fadeInDuration:J

    iput-wide p3, p0, Lcom/buzzfeed/toolkit/util/UIUtil$1;->val$duration:J

    iput-object p5, p0, Lcom/buzzfeed/toolkit/util/UIUtil$1;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    .line 348
    iget-wide v0, p0, Lcom/buzzfeed/toolkit/util/UIUtil$1;->val$fadeInDuration:J

    iget-wide v2, p0, Lcom/buzzfeed/toolkit/util/UIUtil$1;->val$duration:J

    const/4 v4, 0x1

    new-array v4, v4, [Landroid/view/View;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/buzzfeed/toolkit/util/UIUtil$1;->val$view:Landroid/view/View;

    aput-object v6, v4, v5

    invoke-static {v0, v1, v2, v3, v4}, Lcom/buzzfeed/toolkit/util/UIUtil;->fadeOutViewsWithDelay(JJ[Landroid/view/View;)V

    .line 349
    return-void
.end method
