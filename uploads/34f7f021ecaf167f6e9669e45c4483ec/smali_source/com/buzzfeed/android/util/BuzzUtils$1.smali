.class final Lcom/buzzfeed/android/util/BuzzUtils$1;
.super Ljava/lang/Object;
.source "BuzzUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/buzzfeed/android/util/BuzzUtils;->showToastNotification(Landroid/app/Activity;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$duration:I

.field final synthetic val$message:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/lang/String;I)V
    .registers 4

    .prologue
    .line 106
    iput-object p1, p0, Lcom/buzzfeed/android/util/BuzzUtils$1;->val$activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/buzzfeed/android/util/BuzzUtils$1;->val$message:Ljava/lang/String;

    iput p3, p0, Lcom/buzzfeed/android/util/BuzzUtils$1;->val$duration:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 109
    iget-object v2, p0, Lcom/buzzfeed/android/util/BuzzUtils$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 110
    .local v0, "context":Landroid/content/Context;
    iget-object v2, p0, Lcom/buzzfeed/android/util/BuzzUtils$1;->val$message:Ljava/lang/String;

    iget v3, p0, Lcom/buzzfeed/android/util/BuzzUtils$1;->val$duration:I

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 111
    .local v1, "toast":Landroid/widget/Toast;
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 112
    return-void
.end method
