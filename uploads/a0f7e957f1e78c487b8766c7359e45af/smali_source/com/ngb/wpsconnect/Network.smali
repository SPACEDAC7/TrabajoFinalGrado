.class public Lcom/ngb/wpsconnect/Network;
.super Ljava/lang/Object;
.source "Network.java"


# instance fields
.field private final bssid:Ljava/lang/String;

.field private final essid:Ljava/lang/String;

.field private final iSignal:I

.field private final lock:I

.field private final signal:Ljava/lang/String;

.field private final wifi_info:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .registers 7
    .param p1, "bssid"    # Ljava/lang/String;
    .param p2, "essid"    # Ljava/lang/String;
    .param p3, "wifi_info"    # Ljava/lang/String;
    .param p4, "signal"    # Ljava/lang/String;
    .param p5, "iSignal"    # I
    .param p6, "lock"    # I

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/ngb/wpsconnect/Network;->bssid:Ljava/lang/String;

    .line 14
    iput-object p2, p0, Lcom/ngb/wpsconnect/Network;->essid:Ljava/lang/String;

    .line 15
    iput-object p3, p0, Lcom/ngb/wpsconnect/Network;->wifi_info:Ljava/lang/String;

    .line 16
    iput-object p4, p0, Lcom/ngb/wpsconnect/Network;->signal:Ljava/lang/String;

    .line 17
    iput p5, p0, Lcom/ngb/wpsconnect/Network;->iSignal:I

    .line 18
    iput p6, p0, Lcom/ngb/wpsconnect/Network;->lock:I

    .line 19
    return-void
.end method


# virtual methods
.method public getBSSID()Ljava/lang/String;
    .registers 2

    .prologue
    .line 22
    iget-object v0, p0, Lcom/ngb/wpsconnect/Network;->bssid:Ljava/lang/String;

    return-object v0
.end method

.method public getESSID()Ljava/lang/String;
    .registers 2

    .prologue
    .line 26
    iget-object v0, p0, Lcom/ngb/wpsconnect/Network;->essid:Ljava/lang/String;

    return-object v0
.end method

.method public getINFO()Ljava/lang/String;
    .registers 2

    .prologue
    .line 30
    iget-object v0, p0, Lcom/ngb/wpsconnect/Network;->wifi_info:Ljava/lang/String;

    return-object v0
.end method

.method public getLOCK()I
    .registers 2

    .prologue
    .line 39
    iget v0, p0, Lcom/ngb/wpsconnect/Network;->lock:I

    return v0
.end method

.method public getSIGNAL()Ljava/lang/String;
    .registers 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/ngb/wpsconnect/Network;->signal:Ljava/lang/String;

    return-object v0
.end method

.method public getWiFiSignalIMG()I
    .registers 2

    .prologue
    .line 44
    iget v0, p0, Lcom/ngb/wpsconnect/Network;->iSignal:I

    return v0
.end method
