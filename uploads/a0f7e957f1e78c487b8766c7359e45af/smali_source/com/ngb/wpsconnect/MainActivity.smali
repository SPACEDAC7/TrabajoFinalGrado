.class public Lcom/ngb/wpsconnect/MainActivity;
.super Landroid/app/Activity;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ngb/wpsconnect/MainActivity$CallSU;,
        Lcom/ngb/wpsconnect/MainActivity$WifiReceiver;
    }
.end annotation


# instance fields
.field protected adapter:Landroid/widget/ArrayAdapter;

.field protected autoScan:Z

.field protected final context:Landroid/content/Context;

.field protected intent:Landroid/content/Intent;

.field protected lastNet:I

.field protected list:Landroid/widget/ListView;

.field protected networkList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ngb/wpsconnect/Network;",
            ">;"
        }
    .end annotation
.end field

.field protected receiverControl:Z

.field protected receiverWifi:Lcom/ngb/wpsconnect/MainActivity$WifiReceiver;

.field protected wifi:Landroid/net/wifi/WifiManager;

.field protected wpa_cli:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 44
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 51
    iput-object p0, p0, Lcom/ngb/wpsconnect/MainActivity;->context:Landroid/content/Context;

    .line 52
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "List_Position"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/ngb/wpsconnect/MainActivity;->intent:Landroid/content/Intent;

    .line 58
    iput v2, p0, Lcom/ngb/wpsconnect/MainActivity;->lastNet:I

    .line 44
    return-void
.end method

.method static synthetic access$0(Lcom/ngb/wpsconnect/MainActivity;)V
    .registers 1

    .prologue
    .line 556
    invoke-direct {p0}, Lcom/ngb/wpsconnect/MainActivity;->showNoRootDeviceDialog()V

    return-void
.end method

.method static synthetic access$1(Lcom/ngb/wpsconnect/MainActivity;)V
    .registers 1

    .prologue
    .line 636
    invoke-direct {p0}, Lcom/ngb/wpsconnect/MainActivity;->showFailDialog()V

    return-void
.end method

.method static synthetic access$2(Lcom/ngb/wpsconnect/MainActivity;)V
    .registers 1

    .prologue
    .line 576
    invoke-direct {p0}, Lcom/ngb/wpsconnect/MainActivity;->showSuccessDialog()V

    return-void
.end method

.method static synthetic access$3(Lcom/ngb/wpsconnect/MainActivity;Lcom/ngb/wpsconnect/Network;)V
    .registers 2

    .prologue
    .line 359
    invoke-direct {p0, p1}, Lcom/ngb/wpsconnect/MainActivity;->showNetworkOptionsDialog(Lcom/ngb/wpsconnect/Network;)V

    return-void
.end method

.method static synthetic access$4(Lcom/ngb/wpsconnect/MainActivity;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 416
    invoke-direct {p0, p1}, Lcom/ngb/wpsconnect/MainActivity;->showCustomPINDialog(Ljava/lang/String;)V

    return-void
.end method

.method private getLock(Ljava/lang/String;)I
    .registers 3
    .param p1, "capabilities"    # Ljava/lang/String;

    .prologue
    .line 245
    const-string v0, "WPA2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 246
    const-string v0, "WPA"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 247
    const-string v0, "WEP"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1c

    :cond_18
    const v0, 0x7f020002

    .line 245
    :goto_1b
    return v0

    .line 247
    :cond_1c
    const v0, 0x7f020003

    goto :goto_1b
.end method

.method private getWiFi(I)I
    .registers 3
    .param p1, "rssi"    # I

    .prologue
    .line 252
    const/4 v0, 0x4

    invoke-static {p1, v0}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result v0

    packed-switch v0, :pswitch_data_1a

    .line 258
    const/4 v0, -0x1

    :goto_9
    return v0

    .line 254
    :pswitch_a
    const v0, 0x7f020004

    goto :goto_9

    .line 255
    :pswitch_e
    const v0, 0x7f020005

    goto :goto_9

    .line 256
    :pswitch_12
    const v0, 0x7f020006

    goto :goto_9

    .line 257
    :pswitch_16
    const v0, 0x7f020007

    goto :goto_9

    .line 252
    :pswitch_data_1a
    .packed-switch 0x0
        :pswitch_a
        :pswitch_e
        :pswitch_12
        :pswitch_16
    .end packed-switch
.end method

.method private showAbout()V
    .registers 6

    .prologue
    .line 333
    new-instance v2, Landroid/text/SpannableString;

    const v3, 0x7f060007

    invoke-virtual {p0, v3}, Lcom/ngb/wpsconnect/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 334
    .local v2, "s":Landroid/text/SpannableString;
    const/16 v3, 0xf

    invoke-static {v2, v3}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;I)Z

    .line 336
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 337
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v3, 0x7f06000c

    new-instance v4, Lcom/ngb/wpsconnect/MainActivity$2;

    invoke-direct {v4, p0}, Lcom/ngb/wpsconnect/MainActivity$2;-><init>(Lcom/ngb/wpsconnect/MainActivity;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 344
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 345
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 347
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 348
    .local v1, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 351
    const v3, 0x102000b

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 352
    return-void
.end method

.method private showCustomPINDialog(Ljava/lang/String;)V
    .registers 8
    .param p1, "BSSID"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 418
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/ngb/wpsconnect/MainActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 420
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    new-instance v1, Landroid/widget/EditText;

    iget-object v2, p0, Lcom/ngb/wpsconnect/MainActivity;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 421
    .local v1, "custompin":Landroid/widget/EditText;
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setInputType(I)V

    .line 422
    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setMaxLines(I)V

    .line 423
    new-array v2, v3, [Landroid/text/InputFilter;

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    const/16 v4, 0x8

    invoke-direct {v3, v4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v2, v5

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 424
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 425
    const v2, 0x7f060010

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 426
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 429
    const v2, 0x7f06000b

    new-instance v3, Lcom/ngb/wpsconnect/MainActivity$7;

    invoke-direct {v3, p0}, Lcom/ngb/wpsconnect/MainActivity$7;-><init>(Lcom/ngb/wpsconnect/MainActivity;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 438
    const v2, 0x7f060008

    new-instance v3, Lcom/ngb/wpsconnect/MainActivity$8;

    invoke-direct {v3, p0, p1, v1}, Lcom/ngb/wpsconnect/MainActivity$8;-><init>(Lcom/ngb/wpsconnect/MainActivity;Ljava/lang/String;Landroid/widget/EditText;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 451
    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 452
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 453
    return-void
.end method

.method private showFailDialog()V
    .registers 4

    .prologue
    .line 638
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 639
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/ngb/wpsconnect/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06001c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 641
    const v1, 0x7f06000b

    new-instance v2, Lcom/ngb/wpsconnect/MainActivity$12;

    invoke-direct {v2, p0}, Lcom/ngb/wpsconnect/MainActivity$12;-><init>(Lcom/ngb/wpsconnect/MainActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 650
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 651
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 652
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 653
    return-void
.end method

.method private showNetworkOptionsDialog(Lcom/ngb/wpsconnect/Network;)V
    .registers 8
    .param p1, "net"    # Lcom/ngb/wpsconnect/Network;

    .prologue
    const/4 v5, 0x0

    .line 361
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/ngb/wpsconnect/MainActivity;->context:Landroid/content/Context;

    invoke-direct {v1, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 364
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    invoke-static {p1}, Lcom/ngb/wpsconnect/Function;->calculePIN(Lcom/ngb/wpsconnect/Network;)[Ljava/lang/String;

    move-result-object v2

    .line 365
    .local v2, "charSeq":[Ljava/lang/String;
    invoke-virtual {p1}, Lcom/ngb/wpsconnect/Network;->getBSSID()Ljava/lang/String;

    move-result-object v0

    .line 367
    .local v0, "BSSID":Ljava/lang/String;
    iget-object v3, p0, Lcom/ngb/wpsconnect/MainActivity;->intent:Landroid/content/Intent;

    const-string v4, "List_Position"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    new-instance v4, Lcom/ngb/wpsconnect/MainActivity$3;

    invoke-direct {v4, p0}, Lcom/ngb/wpsconnect/MainActivity$3;-><init>(Lcom/ngb/wpsconnect/MainActivity;)V

    invoke-virtual {v1, v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 378
    const v3, 0x7f06000b

    new-instance v4, Lcom/ngb/wpsconnect/MainActivity$4;

    invoke-direct {v4, p0}, Lcom/ngb/wpsconnect/MainActivity$4;-><init>(Lcom/ngb/wpsconnect/MainActivity;)V

    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 388
    const v3, 0x7f060009

    new-instance v4, Lcom/ngb/wpsconnect/MainActivity$5;

    invoke-direct {v4, p0, v0}, Lcom/ngb/wpsconnect/MainActivity$5;-><init>(Lcom/ngb/wpsconnect/MainActivity;Ljava/lang/String;)V

    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 398
    const v3, 0x7f060008

    new-instance v4, Lcom/ngb/wpsconnect/MainActivity$6;

    invoke-direct {v4, p0, v0, v2}, Lcom/ngb/wpsconnect/MainActivity$6;-><init>(Lcom/ngb/wpsconnect/MainActivity;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 410
    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 411
    const v3, 0x7f06000d

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 412
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 413
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 414
    return-void
.end method

.method private showNoRootDeviceDialog()V
    .registers 4

    .prologue
    .line 558
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 561
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v1, 0x7f06001d

    invoke-virtual {p0, v1}, Lcom/ngb/wpsconnect/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 563
    const v1, 0x7f06000c

    new-instance v2, Lcom/ngb/wpsconnect/MainActivity$9;

    invoke-direct {v2, p0}, Lcom/ngb/wpsconnect/MainActivity$9;-><init>(Lcom/ngb/wpsconnect/MainActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 571
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 572
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 573
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 574
    return-void
.end method

.method private showSuccessDialog()V
    .registers 12

    .prologue
    const/4 v10, 0x3

    const/4 v7, 0x0

    .line 578
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 579
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/ngb/wpsconnect/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v8, 0x7f060015

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 583
    iget-object v6, p0, Lcom/ngb/wpsconnect/MainActivity;->context:Landroid/content/Context;

    const-string v8, "wifi"

    invoke-virtual {v6, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/WifiManager;

    .line 584
    .local v5, "wifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 587
    .local v1, "info":Landroid/net/wifi/WifiInfo;
    const-string v6, "cat /data/misc/wifi/wpa_supplicant.conf"

    invoke-static {v6}, Lcom/ngb/wpsconnect/Function;->invokeSU(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v8, "network="

    invoke-virtual {v6, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 588
    .local v3, "networks":[Ljava/lang/String;
    iget-object v6, p0, Lcom/ngb/wpsconnect/MainActivity;->intent:Landroid/content/Intent;

    const-string v8, "PSK"

    const-string v9, "."

    invoke-virtual {v6, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 589
    array-length v8, v3

    move v6, v7

    :goto_3a
    if-lt v6, v8, :cond_b9

    .line 600
    :goto_3c
    iget-object v6, p0, Lcom/ngb/wpsconnect/MainActivity;->intent:Landroid/content/Intent;

    const-string v8, "PSK"

    invoke-virtual {v6, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v8, "."

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e3

    const v6, 0x7f06001b

    invoke-virtual {p0, v6}, Lcom/ngb/wpsconnect/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 602
    .local v4, "psk":Ljava/lang/String;
    :goto_53
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "SSID: "

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v8

    const-string v9, "\""

    const-string v10, ""

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "\n"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "BSSID: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "\n"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "PASS: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 604
    const v6, 0x7f06000b

    new-instance v8, Lcom/ngb/wpsconnect/MainActivity$10;

    invoke-direct {v8, p0}, Lcom/ngb/wpsconnect/MainActivity$10;-><init>(Lcom/ngb/wpsconnect/MainActivity;)V

    invoke-virtual {v0, v6, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 612
    const v6, 0x7f060012

    new-instance v8, Lcom/ngb/wpsconnect/MainActivity$11;

    invoke-direct {v8, p0}, Lcom/ngb/wpsconnect/MainActivity$11;-><init>(Lcom/ngb/wpsconnect/MainActivity;)V

    invoke-virtual {v0, v6, v8}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 631
    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 632
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 633
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 634
    return-void

    .line 589
    .end local v4    # "psk":Ljava/lang/String;
    :cond_b9
    aget-object v2, v3, v6

    .line 591
    .local v2, "net":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_df

    .line 593
    const-string v9, "\""

    invoke-virtual {v2, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    array-length v9, v9

    if-le v9, v10, :cond_df

    .line 595
    iget-object v6, p0, Lcom/ngb/wpsconnect/MainActivity;->intent:Landroid/content/Intent;

    const-string v8, "PSK"

    const-string v9, "\""

    invoke-virtual {v2, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    aget-object v9, v9, v10

    invoke-virtual {v6, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_3c

    .line 589
    :cond_df
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_3a

    .line 600
    .end local v2    # "net":Ljava/lang/String;
    :cond_e3
    iget-object v6, p0, Lcom/ngb/wpsconnect/MainActivity;->intent:Landroid/content/Intent;

    const-string v8, "PSK"

    invoke-virtual {v6, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_53
.end method


# virtual methods
.method protected NetInfo(Ljava/util/List;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 202
    .local p1, "results":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    iget-boolean v0, p0, Lcom/ngb/wpsconnect/MainActivity;->autoScan:Z

    if-nez v0, :cond_7

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ngb/wpsconnect/MainActivity;->receiverControl:Z

    .line 205
    :cond_7
    iget-object v0, p0, Lcom/ngb/wpsconnect/MainActivity;->networkList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 207
    :cond_c
    :goto_c
    if-eqz p1, :cond_14

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1f

    .line 236
    :cond_14
    iget-object v0, p0, Lcom/ngb/wpsconnect/MainActivity;->adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 239
    iget-object v0, p0, Lcom/ngb/wpsconnect/MainActivity;->wifi:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->startScan()Z

    .line 240
    return-void

    .line 209
    :cond_1f
    const/16 v9, -0x3e8

    .line 210
    .local v9, "minLevel":I
    const/4 v10, -0x1

    .line 213
    .local v10, "position":I
    const/4 v8, 0x0

    .local v8, "i":S
    :goto_23
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lt v8, v0, :cond_79

    .line 223
    if-ltz v10, :cond_c

    .line 225
    iget-object v11, p0, Lcom/ngb/wpsconnect/MainActivity;->networkList:Ljava/util/ArrayList;

    new-instance v0, Lcom/ngb/wpsconnect/Network;

    invoke-interface {p1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/ScanResult;

    iget-object v1, v1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .line 226
    invoke-interface {p1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/ScanResult;

    iget-object v2, v2, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    .line 227
    invoke-interface {p1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/ScanResult;

    iget-object v3, v3, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    .line 228
    invoke-interface {p1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/ScanResult;

    iget v4, v4, Landroid/net/wifi/ScanResult;->level:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 229
    invoke-interface {p1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/ScanResult;

    iget v5, v5, Landroid/net/wifi/ScanResult;->level:I

    invoke-direct {p0, v5}, Lcom/ngb/wpsconnect/MainActivity;->getWiFi(I)I

    move-result v5

    .line 230
    invoke-interface {p1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/ScanResult;

    iget-object v6, v6, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/ngb/wpsconnect/MainActivity;->getLock(Ljava/lang/String;)I

    move-result v6

    invoke-direct/range {v0 .. v6}, Lcom/ngb/wpsconnect/Network;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 225
    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 232
    invoke-interface {p1, v10}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_c

    .line 215
    :cond_79
    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    iget v7, v0, Landroid/net/wifi/ScanResult;->level:I

    .line 216
    .local v7, "currentLevel":I
    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    invoke-static {v0}, Lcom/ngb/wpsconnect/Function;->hasWPSEnabled(Landroid/net/wifi/ScanResult;)Z

    move-result v0

    if-eqz v0, :cond_95

    .line 218
    if-ge v9, v7, :cond_91

    move v9, v7

    move v10, v8

    .line 213
    :cond_91
    :goto_91
    add-int/lit8 v0, v8, 0x1

    int-to-short v8, v0

    goto :goto_23

    .line 220
    :cond_95
    invoke-interface {p1, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    const/4 v8, -0x1

    goto :goto_91
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 65
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 66
    const v1, 0x7f030001

    invoke-virtual {p0, v1}, Lcom/ngb/wpsconnect/MainActivity;->setContentView(I)V

    .line 69
    invoke-virtual {p0, v4}, Lcom/ngb/wpsconnect/MainActivity;->setRequestedOrientation(I)V

    .line 71
    iget-object v1, p0, Lcom/ngb/wpsconnect/MainActivity;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/ngb/wpsconnect/Function;->loadLib(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ngb/wpsconnect/MainActivity;->wpa_cli:Ljava/lang/String;

    .line 73
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/ngb/wpsconnect/MainActivity;->networkList:Ljava/util/ArrayList;

    .line 75
    new-instance v0, Lcom/ngb/wpsconnect/NetworkAdapter;

    iget-object v1, p0, Lcom/ngb/wpsconnect/MainActivity;->networkList:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1}, Lcom/ngb/wpsconnect/NetworkAdapter;-><init>(Landroid/app/Activity;Ljava/util/ArrayList;)V

    .line 76
    .local v0, "adaptador":Lcom/ngb/wpsconnect/NetworkAdapter;
    iput-object v0, p0, Lcom/ngb/wpsconnect/MainActivity;->adapter:Landroid/widget/ArrayAdapter;

    .line 78
    const v1, 0x7f090001

    invoke-virtual {p0, v1}, Lcom/ngb/wpsconnect/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/ngb/wpsconnect/MainActivity;->list:Landroid/widget/ListView;

    .line 80
    iget-object v1, p0, Lcom/ngb/wpsconnect/MainActivity;->list:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 83
    iget-object v1, p0, Lcom/ngb/wpsconnect/MainActivity;->list:Landroid/widget/ListView;

    new-instance v2, Lcom/ngb/wpsconnect/MainActivity$1;

    invoke-direct {v2, p0}, Lcom/ngb/wpsconnect/MainActivity$1;-><init>(Lcom/ngb/wpsconnect/MainActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 106
    const-string v1, "wifi"

    invoke-virtual {p0, v1}, Lcom/ngb/wpsconnect/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    iput-object v1, p0, Lcom/ngb/wpsconnect/MainActivity;->wifi:Landroid/net/wifi/WifiManager;

    .line 107
    new-instance v1, Lcom/ngb/wpsconnect/MainActivity$WifiReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/ngb/wpsconnect/MainActivity$WifiReceiver;-><init>(Lcom/ngb/wpsconnect/MainActivity;Lcom/ngb/wpsconnect/MainActivity$WifiReceiver;)V

    iput-object v1, p0, Lcom/ngb/wpsconnect/MainActivity;->receiverWifi:Lcom/ngb/wpsconnect/MainActivity$WifiReceiver;

    .line 110
    iget-object v1, p0, Lcom/ngb/wpsconnect/MainActivity;->wifi:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    if-nez v1, :cond_69

    .line 112
    const v1, 0x7f060018

    invoke-static {p0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 113
    iget-object v1, p0, Lcom/ngb/wpsconnect/MainActivity;->wifi:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, v4}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 117
    :cond_69
    iput-boolean v3, p0, Lcom/ngb/wpsconnect/MainActivity;->autoScan:Z

    .line 118
    iput-boolean v3, p0, Lcom/ngb/wpsconnect/MainActivity;->receiverControl:Z

    .line 119
    iget-object v1, p0, Lcom/ngb/wpsconnect/MainActivity;->receiverWifi:Lcom/ngb/wpsconnect/MainActivity$WifiReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.wifi.SCAN_RESULTS"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v2}, Lcom/ngb/wpsconnect/MainActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 124
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 266
    invoke-virtual {p0}, Lcom/ngb/wpsconnect/MainActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const/high16 v1, 0x7f080000

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 267
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 7
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 289
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 290
    .local v0, "id":I
    const v2, 0x7f09000f

    if-ne v0, v2, :cond_13

    .line 292
    invoke-direct {p0}, Lcom/ngb/wpsconnect/MainActivity;->showAbout()V

    .line 320
    :cond_e
    :goto_e
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    return v2

    .line 294
    :cond_13
    const v2, 0x7f09000c

    if-ne v0, v2, :cond_27

    .line 296
    iget-boolean v2, p0, Lcom/ngb/wpsconnect/MainActivity;->autoScan:Z

    if-nez v2, :cond_e

    .line 298
    iget-object v2, p0, Lcom/ngb/wpsconnect/MainActivity;->intent:Landroid/content/Intent;

    const-string v3, "List_Position"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 299
    invoke-virtual {p0}, Lcom/ngb/wpsconnect/MainActivity;->showScan()V

    goto :goto_e

    .line 302
    :cond_27
    const v2, 0x7f09000e

    if-ne v0, v2, :cond_37

    .line 304
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/ngb/wpsconnect/PasswordActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 305
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/ngb/wpsconnect/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_e

    .line 307
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_37
    const v2, 0x7f09000d

    if-ne v0, v2, :cond_e

    .line 310
    iget-object v2, p0, Lcom/ngb/wpsconnect/MainActivity;->wifi:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v2

    if-nez v2, :cond_53

    .line 312
    const v2, 0x7f060018

    invoke-static {p0, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 313
    iget-object v2, p0, Lcom/ngb/wpsconnect/MainActivity;->wifi:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v3}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 316
    :cond_53
    iget-boolean v2, p0, Lcom/ngb/wpsconnect/MainActivity;->autoScan:Z

    if-eqz v2, :cond_5a

    iput-boolean v4, p0, Lcom/ngb/wpsconnect/MainActivity;->autoScan:Z

    goto :goto_e

    .line 317
    :cond_5a
    iput-boolean v3, p0, Lcom/ngb/wpsconnect/MainActivity;->autoScan:Z

    iget-object v2, p0, Lcom/ngb/wpsconnect/MainActivity;->wifi:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->startScan()Z

    goto :goto_e
.end method

.method protected onPause()V
    .registers 2

    .prologue
    .line 656
    iget-object v0, p0, Lcom/ngb/wpsconnect/MainActivity;->receiverWifi:Lcom/ngb/wpsconnect/MainActivity$WifiReceiver;

    invoke-virtual {p0, v0}, Lcom/ngb/wpsconnect/MainActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 657
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 658
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 272
    const v1, 0x7f09000d

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 274
    .local v0, "scanOption":Landroid/view/MenuItem;
    iget-boolean v1, p0, Lcom/ngb/wpsconnect/MainActivity;->autoScan:Z

    if-eqz v1, :cond_16

    .line 275
    const v1, 0x7f060004

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 280
    :goto_11
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1

    .line 277
    :cond_16
    const v1, 0x7f060003

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_11
.end method

.method protected onResume()V
    .registers 4

    .prologue
    .line 661
    iget-object v0, p0, Lcom/ngb/wpsconnect/MainActivity;->receiverWifi:Lcom/ngb/wpsconnect/MainActivity$WifiReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.net.wifi.SCAN_RESULTS"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/ngb/wpsconnect/MainActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 662
    iget-boolean v0, p0, Lcom/ngb/wpsconnect/MainActivity;->autoScan:Z

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/ngb/wpsconnect/MainActivity;->wifi:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->startScan()Z

    .line 663
    :cond_15
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 664
    return-void
.end method

.method protected showScan()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 188
    iget-object v0, p0, Lcom/ngb/wpsconnect/MainActivity;->wifi:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-nez v0, :cond_19

    .line 190
    const v0, 0x7f060018

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 191
    iget-object v0, p0, Lcom/ngb/wpsconnect/MainActivity;->wifi:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 194
    :cond_19
    iput-boolean v2, p0, Lcom/ngb/wpsconnect/MainActivity;->receiverControl:Z

    .line 195
    iget-object v0, p0, Lcom/ngb/wpsconnect/MainActivity;->wifi:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->startScan()Z

    .line 196
    const v0, 0x7f060017

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 197
    return-void
.end method
