.class public Lcom/urbanairship/job/Job;
.super Ljava/lang/Object;
.source "Job.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/urbanairship/job/Job$Builder;,
        Lcom/urbanairship/job/Job$JobResult;
    }
.end annotation


# static fields
.field public static final JOB_FINISHED:I = 0x0

.field public static final JOB_RETRY:I = 0x1


# instance fields
.field private final action:Ljava/lang/String;

.field private final airshipComponentName:Ljava/lang/String;

.field private final extras:Landroid/os/Bundle;


# direct methods
.method private constructor <init>(Lcom/urbanairship/job/Job$Builder;)V
    .registers 4
    .param p1, "builder"    # Lcom/urbanairship/job/Job$Builder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    # getter for: Lcom/urbanairship/job/Job$Builder;->action:Ljava/lang/String;
    invoke-static {p1}, Lcom/urbanairship/job/Job$Builder;->access$000(Lcom/urbanairship/job/Job$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/urbanairship/job/Job;->action:Ljava/lang/String;

    .line 41
    # getter for: Lcom/urbanairship/job/Job$Builder;->airshipComponentName:Ljava/lang/String;
    invoke-static {p1}, Lcom/urbanairship/job/Job$Builder;->access$100(Lcom/urbanairship/job/Job$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/urbanairship/job/Job;->airshipComponentName:Ljava/lang/String;

    .line 42
    # getter for: Lcom/urbanairship/job/Job$Builder;->extras:Landroid/os/Bundle;
    invoke-static {p1}, Lcom/urbanairship/job/Job$Builder;->access$200(Lcom/urbanairship/job/Job$Builder;)Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_1d

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :goto_1a
    iput-object v0, p0, Lcom/urbanairship/job/Job;->extras:Landroid/os/Bundle;

    .line 43
    return-void

    .line 42
    :cond_1d
    new-instance v0, Landroid/os/Bundle;

    # getter for: Lcom/urbanairship/job/Job$Builder;->extras:Landroid/os/Bundle;
    invoke-static {p1}, Lcom/urbanairship/job/Job$Builder;->access$200(Lcom/urbanairship/job/Job$Builder;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    goto :goto_1a
.end method

.method synthetic constructor <init>(Lcom/urbanairship/job/Job$Builder;Lcom/urbanairship/job/Job$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/urbanairship/job/Job$Builder;
    .param p2, "x1"    # Lcom/urbanairship/job/Job$1;

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/urbanairship/job/Job;-><init>(Lcom/urbanairship/job/Job$Builder;)V

    return-void
.end method

.method public static newBuilder(Ljava/lang/String;)Lcom/urbanairship/job/Job$Builder;
    .registers 3
    .param p0, "action"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 83
    new-instance v0, Lcom/urbanairship/job/Job$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/urbanairship/job/Job$Builder;-><init>(Ljava/lang/String;Lcom/urbanairship/job/Job$1;)V

    return-object v0
.end method


# virtual methods
.method public getAction()Ljava/lang/String;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 52
    iget-object v0, p0, Lcom/urbanairship/job/Job;->action:Ljava/lang/String;

    return-object v0
.end method

.method public getAirshipComponentName()Ljava/lang/String;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 72
    iget-object v0, p0, Lcom/urbanairship/job/Job;->airshipComponentName:Ljava/lang/String;

    return-object v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 62
    iget-object v0, p0, Lcom/urbanairship/job/Job;->extras:Landroid/os/Bundle;

    return-object v0
.end method
