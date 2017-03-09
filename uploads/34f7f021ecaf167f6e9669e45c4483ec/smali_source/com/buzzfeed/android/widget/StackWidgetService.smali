.class public Lcom/buzzfeed/android/widget/StackWidgetService;
.super Landroid/widget/RemoteViewsService;
.source "StackWidgetService.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation


# static fields
.field static final CONNECTION_TIMEOUT_MS:I = 0x3a98


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/widget/RemoteViewsService;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetViewFactory(Landroid/content/Intent;)Landroid/widget/RemoteViewsService$RemoteViewsFactory;
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 34
    new-instance v0, Lcom/buzzfeed/android/widget/StackRemoteViewsFactory;

    invoke-virtual {p0}, Lcom/buzzfeed/android/widget/StackWidgetService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/buzzfeed/android/widget/StackRemoteViewsFactory;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    return-object v0
.end method
