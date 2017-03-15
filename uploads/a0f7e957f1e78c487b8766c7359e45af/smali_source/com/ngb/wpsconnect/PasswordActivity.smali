.class public Lcom/ngb/wpsconnect/PasswordActivity;
.super Landroid/app/Activity;
.source "PasswordActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ngb/wpsconnect/PasswordActivity$CallSU;
    }
.end annotation


# static fields
.field private static backupPassword:Z


# instance fields
.field protected adapter:Landroid/widget/ArrayAdapter;

.field protected listpwd:Landroid/widget/ListView;

.field protected pwdList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ngb/wpsconnect/Password;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Z)V
    .registers 1

    .prologue
    .line 27
    sput-boolean p0, Lcom/ngb/wpsconnect/PasswordActivity;->backupPassword:Z

    return-void
.end method

.method static synthetic access$1(Lcom/ngb/wpsconnect/PasswordActivity;Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 3

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/ngb/wpsconnect/PasswordActivity;->processInfo(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method private processInfo(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 10
    .param p1, "info"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ngb/wpsconnect/Password;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x3

    .line 74
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 77
    .local v1, "lst":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ngb/wpsconnect/Password;>;"
    const-string v4, "--"

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 79
    .local v3, "network":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":S
    :goto_d
    array-length v4, v3

    if-lt v0, v4, :cond_11

    .line 88
    return-object v1

    .line 82
    :cond_11
    aget-object v4, v3, v0

    const-string v5, "psk"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1f

    .line 79
    :cond_1b
    :goto_1b
    add-int/lit8 v4, v0, 0x1

    int-to-short v0, v4

    goto :goto_d

    .line 83
    :cond_1f
    aget-object v4, v3, v0

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 84
    .local v2, "net":[Ljava/lang/String;
    array-length v4, v2

    if-le v4, v7, :cond_1b

    .line 85
    new-instance v4, Lcom/ngb/wpsconnect/Password;

    const/4 v5, 0x1

    aget-object v5, v2, v5

    aget-object v6, v2, v7

    invoke-direct {v4, v5, v6}, Lcom/ngb/wpsconnect/Password;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1b
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 30
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    new-instance v0, Lcom/ngb/wpsconnect/PasswordActivity$CallSU;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/ngb/wpsconnect/PasswordActivity$CallSU;-><init>(Lcom/ngb/wpsconnect/PasswordActivity;Lcom/ngb/wpsconnect/PasswordActivity$CallSU;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/ngb/wpsconnect/PasswordActivity$CallSU;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 37
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 6
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v3, 0x1

    .line 42
    invoke-virtual {p0}, Lcom/ngb/wpsconnect/PasswordActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    const v2, 0x7f080001

    invoke-virtual {v1, v2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 43
    invoke-virtual {p0}, Lcom/ngb/wpsconnect/PasswordActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 44
    .local v0, "actionBar":Landroid/app/ActionBar;
    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 45
    return v3
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 5
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x0

    .line 51
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_3a

    .line 68
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :cond_c
    :goto_c
    return v0

    .line 54
    :sswitch_d
    invoke-virtual {p0}, Lcom/ngb/wpsconnect/PasswordActivity;->onBackPressed()V

    .line 55
    const/4 v0, 0x1

    goto :goto_c

    .line 59
    :sswitch_12
    sget-boolean v1, Lcom/ngb/wpsconnect/PasswordActivity;->backupPassword:Z

    if-eqz v1, :cond_c

    .line 61
    const v1, 0x7f06001a

    invoke-virtual {p0, v1}, Lcom/ngb/wpsconnect/PasswordActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 62
    iget-object v0, p0, Lcom/ngb/wpsconnect/PasswordActivity;->pwdList:Ljava/util/ArrayList;

    const v1, 0x7f06000e

    invoke-virtual {p0, v1}, Lcom/ngb/wpsconnect/PasswordActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f06000f

    invoke-virtual {p0, v2}, Lcom/ngb/wpsconnect/PasswordActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/ngb/wpsconnect/Function;->doBackup(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_c

    .line 51
    nop

    :sswitch_data_3a
    .sparse-switch
        0x102002c -> :sswitch_d
        0x7f090010 -> :sswitch_12
    .end sparse-switch
.end method
