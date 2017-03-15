.class public Lcom/ngb/wpsconnect/NetworkAdapter;
.super Landroid/widget/ArrayAdapter;
.source "NetworkAdapter.java"


# instance fields
.field context:Landroid/app/Activity;

.field networkList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ngb/wpsconnect/Network;",
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
            "Lcom/ngb/wpsconnect/Network;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 21
    .local p2, "networkList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ngb/wpsconnect/Network;>;"
    const v0, 0x7f030003

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 22
    iput-object p1, p0, Lcom/ngb/wpsconnect/NetworkAdapter;->context:Landroid/app/Activity;

    .line 23
    iput-object p2, p0, Lcom/ngb/wpsconnect/NetworkAdapter;->networkList:Ljava/util/ArrayList;

    .line 24
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 14
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 27
    iget-object v8, p0, Lcom/ngb/wpsconnect/NetworkAdapter;->context:Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    .line 29
    .local v2, "inflater":Landroid/view/LayoutInflater;
    const v8, 0x7f030003

    const/4 v9, 0x0

    invoke-virtual {v2, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 31
    .local v3, "item":Landroid/view/View;
    const v8, 0x7f090007

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 32
    .local v6, "lblInfo":Landroid/widget/TextView;
    iget-object v8, p0, Lcom/ngb/wpsconnect/NetworkAdapter;->networkList:Ljava/util/ArrayList;

    invoke-virtual {v8, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/ngb/wpsconnect/Network;

    invoke-virtual {v8}, Lcom/ngb/wpsconnect/Network;->getINFO()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/ngb/wpsconnect/Function;->capabilitiesTypeResume(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    const v8, 0x7f090005

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 35
    .local v5, "lblESSID":Landroid/widget/TextView;
    iget-object v8, p0, Lcom/ngb/wpsconnect/NetworkAdapter;->networkList:Ljava/util/ArrayList;

    invoke-virtual {v8, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/ngb/wpsconnect/Network;

    invoke-virtual {v8}, Lcom/ngb/wpsconnect/Network;->getESSID()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 37
    const v8, 0x7f090008

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 38
    .local v4, "lblBSSID":Landroid/widget/TextView;
    iget-object v8, p0, Lcom/ngb/wpsconnect/NetworkAdapter;->networkList:Ljava/util/ArrayList;

    invoke-virtual {v8, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/ngb/wpsconnect/Network;

    invoke-virtual {v8}, Lcom/ngb/wpsconnect/Network;->getBSSID()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    const v8, 0x7f090009

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 41
    .local v7, "lblSIGNAL":Landroid/widget/TextView;
    iget-object v8, p0, Lcom/ngb/wpsconnect/NetworkAdapter;->networkList:Ljava/util/ArrayList;

    invoke-virtual {v8, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/ngb/wpsconnect/Network;

    invoke-virtual {v8}, Lcom/ngb/wpsconnect/Network;->getSIGNAL()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    const v8, 0x7f090004

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 44
    .local v0, "imgLock":Landroid/widget/ImageView;
    iget-object v8, p0, Lcom/ngb/wpsconnect/NetworkAdapter;->networkList:Ljava/util/ArrayList;

    invoke-virtual {v8, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/ngb/wpsconnect/Network;

    invoke-virtual {v8}, Lcom/ngb/wpsconnect/Network;->getLOCK()I

    move-result v8

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 46
    const v8, 0x7f090006

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 47
    .local v1, "imgWiFi":Landroid/widget/ImageView;
    iget-object v8, p0, Lcom/ngb/wpsconnect/NetworkAdapter;->networkList:Ljava/util/ArrayList;

    invoke-virtual {v8, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/ngb/wpsconnect/Network;

    invoke-virtual {v8}, Lcom/ngb/wpsconnect/Network;->getWiFiSignalIMG()I

    move-result v8

    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 49
    return-object v3
.end method
