.class final Lcom/urbanairship/UAirship$2;
.super Ljava/lang/Object;
.source "UAirship.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/urbanairship/UAirship;->takeOff(Landroid/app/Application;Lcom/urbanairship/AirshipConfigOptions;Lcom/urbanairship/UAirship$OnReadyCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$application:Landroid/app/Application;

.field final synthetic val$options:Lcom/urbanairship/AirshipConfigOptions;

.field final synthetic val$readyCallback:Lcom/urbanairship/UAirship$OnReadyCallback;


# direct methods
.method constructor <init>(Landroid/app/Application;Lcom/urbanairship/AirshipConfigOptions;Lcom/urbanairship/UAirship$OnReadyCallback;)V
    .registers 4

    .prologue
    .line 314
    iput-object p1, p0, Lcom/urbanairship/UAirship$2;->val$application:Landroid/app/Application;

    iput-object p2, p0, Lcom/urbanairship/UAirship$2;->val$options:Lcom/urbanairship/AirshipConfigOptions;

    iput-object p3, p0, Lcom/urbanairship/UAirship$2;->val$readyCallback:Lcom/urbanairship/UAirship$OnReadyCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 317
    iget-object v0, p0, Lcom/urbanairship/UAirship$2;->val$application:Landroid/app/Application;

    iget-object v1, p0, Lcom/urbanairship/UAirship$2;->val$options:Lcom/urbanairship/AirshipConfigOptions;

    iget-object v2, p0, Lcom/urbanairship/UAirship$2;->val$readyCallback:Lcom/urbanairship/UAirship$OnReadyCallback;

    # invokes: Lcom/urbanairship/UAirship;->executeTakeOff(Landroid/app/Application;Lcom/urbanairship/AirshipConfigOptions;Lcom/urbanairship/UAirship$OnReadyCallback;)V
    invoke-static {v0, v1, v2}, Lcom/urbanairship/UAirship;->access$000(Landroid/app/Application;Lcom/urbanairship/AirshipConfigOptions;Lcom/urbanairship/UAirship$OnReadyCallback;)V

    .line 318
    return-void
.end method
