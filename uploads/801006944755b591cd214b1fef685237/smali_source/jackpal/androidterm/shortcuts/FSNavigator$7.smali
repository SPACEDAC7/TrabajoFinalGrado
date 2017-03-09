.class Ljackpal/androidterm/shortcuts/FSNavigator$7;
.super Ljava/lang/Object;
.source "FSNavigator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljackpal/androidterm/shortcuts/FSNavigator;->toast(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljackpal/androidterm/shortcuts/FSNavigator;

.field final synthetic val$duration:I

.field final synthetic val$message:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljackpal/androidterm/shortcuts/FSNavigator;Ljava/lang/String;I)V
    .registers 4

    .prologue
    .line 530
    iput-object p1, p0, Ljackpal/androidterm/shortcuts/FSNavigator$7;->this$0:Ljackpal/androidterm/shortcuts/FSNavigator;

    iput-object p2, p0, Ljackpal/androidterm/shortcuts/FSNavigator$7;->val$message:Ljava/lang/String;

    iput p3, p0, Ljackpal/androidterm/shortcuts/FSNavigator$7;->val$duration:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 533
    iget-object v0, p0, Ljackpal/androidterm/shortcuts/FSNavigator$7;->this$0:Ljackpal/androidterm/shortcuts/FSNavigator;

    # getter for: Ljackpal/androidterm/shortcuts/FSNavigator;->context:Landroid/content/Context;
    invoke-static {v0}, Ljackpal/androidterm/shortcuts/FSNavigator;->access$300(Ljackpal/androidterm/shortcuts/FSNavigator;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Ljackpal/androidterm/shortcuts/FSNavigator$7;->val$message:Ljava/lang/String;

    iget v0, p0, Ljackpal/androidterm/shortcuts/FSNavigator$7;->val$duration:I

    if-nez v0, :cond_15

    const/4 v0, 0x0

    :goto_d
    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 534
    return-void

    .line 533
    :cond_15
    const/4 v0, 0x1

    goto :goto_d
.end method
