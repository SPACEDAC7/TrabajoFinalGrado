.class final Lcom/facebook/FacebookSdk$3;
.super Ljava/lang/Object;
.source "FacebookSdk.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/FacebookSdk;->publishInstallAsync(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$applicationContext:Landroid/content/Context;

.field final synthetic val$applicationId:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 418
    iput-object p1, p0, Lcom/facebook/FacebookSdk$3;->val$applicationContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/facebook/FacebookSdk$3;->val$applicationId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 421
    iget-object v0, p0, Lcom/facebook/FacebookSdk$3;->val$applicationContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/facebook/FacebookSdk$3;->val$applicationId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/facebook/FacebookSdk;->publishInstallAndWaitForResponse(Landroid/content/Context;Ljava/lang/String;)Lcom/facebook/GraphResponse;

    .line 422
    return-void
.end method
