.class Lcom/ngb/wpsconnect/PasswordActivity$CallSU;
.super Landroid/os/AsyncTask;
.source "PasswordActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ngb/wpsconnect/PasswordActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CallSU"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ngb/wpsconnect/PasswordActivity;


# direct methods
.method private constructor <init>(Lcom/ngb/wpsconnect/PasswordActivity;)V
    .registers 2

    .prologue
    .line 94
    iput-object p1, p0, Lcom/ngb/wpsconnect/PasswordActivity$CallSU;->this$0:Lcom/ngb/wpsconnect/PasswordActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ngb/wpsconnect/PasswordActivity;Lcom/ngb/wpsconnect/PasswordActivity$CallSU;)V
    .registers 3

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/ngb/wpsconnect/PasswordActivity$CallSU;-><init>(Lcom/ngb/wpsconnect/PasswordActivity;)V

    return-void
.end method

.method static synthetic access$3(Lcom/ngb/wpsconnect/PasswordActivity$CallSU;)Lcom/ngb/wpsconnect/PasswordActivity;
    .registers 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/ngb/wpsconnect/PasswordActivity$CallSU;->this$0:Lcom/ngb/wpsconnect/PasswordActivity;

    return-object v0
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/ngb/wpsconnect/PasswordActivity$CallSU;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .registers 4
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 100
    const-string v1, "cat /data/misc/wifi/wpa_supplicant.conf | grep -A 1 ssid"

    invoke-static {v1}, Lcom/ngb/wpsconnect/Function;->invokeSU(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 102
    .local v0, "cmd":Ljava/lang/String;
    const-string v1, "not found"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 103
    const-string v1, "cat /data/misc/wifi/wpa_supplicant.conf | /system/bin/busybox grep -A 1 ssid"

    invoke-static {v1}, Lcom/ngb/wpsconnect/Function;->invokeSU(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 105
    :cond_14
    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/ngb/wpsconnect/PasswordActivity$CallSU;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .registers 6
    .param p1, "cmd"    # Ljava/lang/String;

    .prologue
    .line 118
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    const-string v0, "norootdevice"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 120
    :cond_e
    iget-object v0, p0, Lcom/ngb/wpsconnect/PasswordActivity$CallSU;->this$0:Lcom/ngb/wpsconnect/PasswordActivity;

    const v1, 0x7f030004

    invoke-virtual {v0, v1}, Lcom/ngb/wpsconnect/PasswordActivity;->setContentView(I)V

    .line 121
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/ngb/wpsconnect/PasswordActivity;->access$0(Z)V

    .line 157
    :goto_1a
    return-void

    .line 125
    :cond_1b
    iget-object v0, p0, Lcom/ngb/wpsconnect/PasswordActivity$CallSU;->this$0:Lcom/ngb/wpsconnect/PasswordActivity;

    const v1, 0x7f030005

    invoke-virtual {v0, v1}, Lcom/ngb/wpsconnect/PasswordActivity;->setContentView(I)V

    .line 126
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/ngb/wpsconnect/PasswordActivity;->access$0(Z)V

    .line 128
    iget-object v0, p0, Lcom/ngb/wpsconnect/PasswordActivity$CallSU;->this$0:Lcom/ngb/wpsconnect/PasswordActivity;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/ngb/wpsconnect/PasswordActivity;->pwdList:Ljava/util/ArrayList;

    .line 130
    iget-object v1, p0, Lcom/ngb/wpsconnect/PasswordActivity$CallSU;->this$0:Lcom/ngb/wpsconnect/PasswordActivity;

    iget-object v0, p0, Lcom/ngb/wpsconnect/PasswordActivity$CallSU;->this$0:Lcom/ngb/wpsconnect/PasswordActivity;

    const v2, 0x7f09000b

    invoke-virtual {v0, v2}, Lcom/ngb/wpsconnect/PasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, v1, Lcom/ngb/wpsconnect/PasswordActivity;->listpwd:Landroid/widget/ListView;

    .line 132
    iget-object v0, p0, Lcom/ngb/wpsconnect/PasswordActivity$CallSU;->this$0:Lcom/ngb/wpsconnect/PasswordActivity;

    new-instance v1, Lcom/ngb/wpsconnect/PasswordAdapter;

    iget-object v2, p0, Lcom/ngb/wpsconnect/PasswordActivity$CallSU;->this$0:Lcom/ngb/wpsconnect/PasswordActivity;

    iget-object v3, p0, Lcom/ngb/wpsconnect/PasswordActivity$CallSU;->this$0:Lcom/ngb/wpsconnect/PasswordActivity;

    iget-object v3, v3, Lcom/ngb/wpsconnect/PasswordActivity;->pwdList:Ljava/util/ArrayList;

    invoke-direct {v1, v2, v3}, Lcom/ngb/wpsconnect/PasswordAdapter;-><init>(Landroid/app/Activity;Ljava/util/ArrayList;)V

    iput-object v1, v0, Lcom/ngb/wpsconnect/PasswordActivity;->adapter:Landroid/widget/ArrayAdapter;

    .line 134
    iget-object v0, p0, Lcom/ngb/wpsconnect/PasswordActivity$CallSU;->this$0:Lcom/ngb/wpsconnect/PasswordActivity;

    iget-object v0, v0, Lcom/ngb/wpsconnect/PasswordActivity;->listpwd:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/ngb/wpsconnect/PasswordActivity$CallSU;->this$0:Lcom/ngb/wpsconnect/PasswordActivity;

    iget-object v1, v1, Lcom/ngb/wpsconnect/PasswordActivity;->adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 136
    iget-object v0, p0, Lcom/ngb/wpsconnect/PasswordActivity$CallSU;->this$0:Lcom/ngb/wpsconnect/PasswordActivity;

    iget-object v0, v0, Lcom/ngb/wpsconnect/PasswordActivity;->pwdList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/ngb/wpsconnect/PasswordActivity$CallSU;->this$0:Lcom/ngb/wpsconnect/PasswordActivity;

    # invokes: Lcom/ngb/wpsconnect/PasswordActivity;->processInfo(Ljava/lang/String;)Ljava/util/ArrayList;
    invoke-static {v1, p1}, Lcom/ngb/wpsconnect/PasswordActivity;->access$1(Lcom/ngb/wpsconnect/PasswordActivity;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 138
    iget-object v0, p0, Lcom/ngb/wpsconnect/PasswordActivity$CallSU;->this$0:Lcom/ngb/wpsconnect/PasswordActivity;

    iget-object v0, v0, Lcom/ngb/wpsconnect/PasswordActivity;->listpwd:Landroid/widget/ListView;

    new-instance v1, Lcom/ngb/wpsconnect/PasswordActivity$CallSU$1;

    invoke-direct {v1, p0}, Lcom/ngb/wpsconnect/PasswordActivity$CallSU$1;-><init>(Lcom/ngb/wpsconnect/PasswordActivity$CallSU;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_1a
.end method

.method protected onPreExecute()V
    .registers 3

    .prologue
    .line 112
    iget-object v0, p0, Lcom/ngb/wpsconnect/PasswordActivity$CallSU;->this$0:Lcom/ngb/wpsconnect/PasswordActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ngb/wpsconnect/PasswordActivity;->setRequestedOrientation(I)V

    .line 113
    return-void
.end method
