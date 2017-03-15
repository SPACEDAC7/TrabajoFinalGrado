.class public Lcom/ngb/wpsconnect/PasswordAdapter;
.super Landroid/widget/ArrayAdapter;
.source "PasswordAdapter.java"


# instance fields
.field context:Landroid/app/Activity;

.field pwdList:Ljava/util/ArrayList;
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
.method public constructor <init>(Landroid/app/Activity;Ljava/util/ArrayList;)V
    .registers 4
    .param p1, "context"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ngb/wpsconnect/Password;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 18
    .local p2, "pwdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ngb/wpsconnect/Password;>;"
    const v0, 0x7f030003

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 19
    iput-object p1, p0, Lcom/ngb/wpsconnect/PasswordAdapter;->context:Landroid/app/Activity;

    .line 20
    iput-object p2, p0, Lcom/ngb/wpsconnect/PasswordAdapter;->pwdList:Ljava/util/ArrayList;

    .line 21
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 10
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 24
    iget-object v4, p0, Lcom/ngb/wpsconnect/PasswordAdapter;->context:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 26
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v4, 0x7f030002

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 28
    .local v1, "item":Landroid/view/View;
    const v4, 0x7f090002

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 29
    .local v3, "lblInfo":Landroid/widget/TextView;
    iget-object v4, p0, Lcom/ngb/wpsconnect/PasswordAdapter;->pwdList:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ngb/wpsconnect/Password;

    invoke-virtual {v4}, Lcom/ngb/wpsconnect/Password;->getNetName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 31
    const v4, 0x7f090003

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 32
    .local v2, "lblESSID":Landroid/widget/TextView;
    iget-object v4, p0, Lcom/ngb/wpsconnect/PasswordAdapter;->pwdList:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ngb/wpsconnect/Password;

    invoke-virtual {v4}, Lcom/ngb/wpsconnect/Password;->getNetPwd()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    return-object v1
.end method
