.class Lcom/ngb/wpsconnect/PasswordActivity$CallSU$1;
.super Ljava/lang/Object;
.source "PasswordActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ngb/wpsconnect/PasswordActivity$CallSU;->onPostExecute(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ngb/wpsconnect/PasswordActivity$CallSU;


# direct methods
.method constructor <init>(Lcom/ngb/wpsconnect/PasswordActivity$CallSU;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ngb/wpsconnect/PasswordActivity$CallSU$1;->this$1:Lcom/ngb/wpsconnect/PasswordActivity$CallSU;

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 12
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 143
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v3, p0, Lcom/ngb/wpsconnect/PasswordActivity$CallSU$1;->this$1:Lcom/ngb/wpsconnect/PasswordActivity$CallSU;

    # getter for: Lcom/ngb/wpsconnect/PasswordActivity$CallSU;->this$0:Lcom/ngb/wpsconnect/PasswordActivity;
    invoke-static {v3}, Lcom/ngb/wpsconnect/PasswordActivity$CallSU;->access$3(Lcom/ngb/wpsconnect/PasswordActivity$CallSU;)Lcom/ngb/wpsconnect/PasswordActivity;

    move-result-object v3

    iget-object v3, v3, Lcom/ngb/wpsconnect/PasswordActivity;->listpwd:Landroid/widget/ListView;

    invoke-virtual {v3, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ngb/wpsconnect/Password;

    .line 146
    .local v2, "pwd":Lcom/ngb/wpsconnect/Password;
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xc

    if-ge v3, v4, :cond_3f

    .line 147
    iget-object v3, p0, Lcom/ngb/wpsconnect/PasswordActivity$CallSU$1;->this$1:Lcom/ngb/wpsconnect/PasswordActivity$CallSU;

    # getter for: Lcom/ngb/wpsconnect/PasswordActivity$CallSU;->this$0:Lcom/ngb/wpsconnect/PasswordActivity;
    invoke-static {v3}, Lcom/ngb/wpsconnect/PasswordActivity$CallSU;->access$3(Lcom/ngb/wpsconnect/PasswordActivity$CallSU;)Lcom/ngb/wpsconnect/PasswordActivity;

    move-result-object v3

    const-string v4, "clipboard"

    invoke-virtual {v3, v4}, Lcom/ngb/wpsconnect/PasswordActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/text/ClipboardManager;

    .line 148
    .local v1, "clipboard":Landroid/text/ClipboardManager;
    invoke-virtual {v2}, Lcom/ngb/wpsconnect/Password;->getNetPwd()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 154
    .end local v1    # "clipboard":Landroid/text/ClipboardManager;
    :goto_29
    iget-object v3, p0, Lcom/ngb/wpsconnect/PasswordActivity$CallSU$1;->this$1:Lcom/ngb/wpsconnect/PasswordActivity$CallSU;

    # getter for: Lcom/ngb/wpsconnect/PasswordActivity$CallSU;->this$0:Lcom/ngb/wpsconnect/PasswordActivity;
    invoke-static {v3}, Lcom/ngb/wpsconnect/PasswordActivity$CallSU;->access$3(Lcom/ngb/wpsconnect/PasswordActivity$CallSU;)Lcom/ngb/wpsconnect/PasswordActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ngb/wpsconnect/PasswordActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f060011

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 155
    return-void

    .line 150
    :cond_3f
    iget-object v3, p0, Lcom/ngb/wpsconnect/PasswordActivity$CallSU$1;->this$1:Lcom/ngb/wpsconnect/PasswordActivity$CallSU;

    # getter for: Lcom/ngb/wpsconnect/PasswordActivity$CallSU;->this$0:Lcom/ngb/wpsconnect/PasswordActivity;
    invoke-static {v3}, Lcom/ngb/wpsconnect/PasswordActivity$CallSU;->access$3(Lcom/ngb/wpsconnect/PasswordActivity$CallSU;)Lcom/ngb/wpsconnect/PasswordActivity;

    move-result-object v3

    const-string v4, "clipboard"

    invoke-virtual {v3, v4}, Lcom/ngb/wpsconnect/PasswordActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ClipboardManager;

    .line 151
    .local v1, "clipboard":Landroid/content/ClipboardManager;
    const-string v3, "Copied Text"

    invoke-virtual {v2}, Lcom/ngb/wpsconnect/Password;->getNetPwd()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v0

    .line 152
    .local v0, "clip":Landroid/content/ClipData;
    invoke-virtual {v1, v0}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    goto :goto_29
.end method
