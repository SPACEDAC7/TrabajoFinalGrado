.class public Lcom/comscore/metrics/Request;
.super Ljava/lang/Object;


# static fields
.field public static final REDIRECTION_SUPPORTED:Z


# instance fields
.field protected a:Ljava/net/URL;

.field protected b:Ljava/net/Proxy;

.field private c:Lcom/comscore/measurement/Measurement;

.field private d:Lcom/comscore/analytics/Core;

.field private e:Lcom/comscore/utils/Storage;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_a

    const/16 v1, 0xd

    if-le v0, v1, :cond_e

    :cond_a
    const/4 v0, 0x1

    :goto_b
    sput-boolean v0, Lcom/comscore/metrics/Request;->REDIRECTION_SUPPORTED:Z

    return-void

    :cond_e
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public constructor <init>(Lcom/comscore/analytics/Core;Lcom/comscore/measurement/Measurement;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/comscore/metrics/Request;->d:Lcom/comscore/analytics/Core;

    invoke-virtual {p1}, Lcom/comscore/analytics/Core;->getStorage()Lcom/comscore/utils/Storage;

    move-result-object v0

    iput-object v0, p0, Lcom/comscore/metrics/Request;->e:Lcom/comscore/utils/Storage;

    iput-object p2, p0, Lcom/comscore/metrics/Request;->c:Lcom/comscore/measurement/Measurement;

    invoke-virtual {p0}, Lcom/comscore/metrics/Request;->process()Ljava/net/URL;

    move-result-object v0

    iput-object v0, p0, Lcom/comscore/metrics/Request;->a:Ljava/net/URL;

    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/net/Proxy;
    .registers 5

    const/16 v0, 0x3a

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_26

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    move-object p0, v1

    :goto_19
    new-instance v1, Ljava/net/Proxy;

    sget-object v2, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    new-instance v3, Ljava/net/InetSocketAddress;

    invoke-direct {v3, p0, v0}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-direct {v1, v2, v3}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    return-object v1

    :cond_26
    const/16 v0, 0x50

    goto :goto_19
.end method

.method private c()Z
    .registers 2

    invoke-direct {p0}, Lcom/comscore/metrics/Request;->d()V

    invoke-virtual {p0}, Lcom/comscore/metrics/Request;->a()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-direct {p0}, Lcom/comscore/metrics/Request;->e()V

    :cond_c
    return v0
.end method

.method private d()V
    .registers 3

    iget-object v0, p0, Lcom/comscore/metrics/Request;->d:Lcom/comscore/analytics/Core;

    invoke-virtual {v0}, Lcom/comscore/analytics/Core;->getOfflineTransmissionMode()Lcom/comscore/utils/TransmissionMode;

    move-result-object v0

    sget-object v1, Lcom/comscore/utils/TransmissionMode;->DEFAULT:Lcom/comscore/utils/TransmissionMode;

    if-eq v0, v1, :cond_1e

    sget-object v1, Lcom/comscore/utils/TransmissionMode;->WIFIONLY:Lcom/comscore/utils/TransmissionMode;

    if-ne v0, v1, :cond_1a

    iget-object v1, p0, Lcom/comscore/metrics/Request;->d:Lcom/comscore/analytics/Core;

    invoke-virtual {v1}, Lcom/comscore/analytics/Core;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/comscore/utils/Connectivity;->isConnectedWiFi(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1e

    :cond_1a
    sget-object v1, Lcom/comscore/utils/TransmissionMode;->PIGGYBACK:Lcom/comscore/utils/TransmissionMode;

    if-ne v0, v1, :cond_27

    :cond_1e
    iget-object v0, p0, Lcom/comscore/metrics/Request;->d:Lcom/comscore/analytics/Core;

    invoke-virtual {v0}, Lcom/comscore/analytics/Core;->getOfflineCache()Lcom/comscore/utils/OfflineMeasurementsCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/comscore/utils/OfflineMeasurementsCache;->flush()Z

    :cond_27
    return-void
.end method

.method private e()V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Measurement was not transmitted: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/comscore/metrics/Request;->c:Lcom/comscore/measurement/Measurement;

    iget-object v2, p0, Lcom/comscore/metrics/Request;->d:Lcom/comscore/analytics/Core;

    invoke-virtual {v2}, Lcom/comscore/analytics/Core;->getMeasurementLabelOrder()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/comscore/measurement/Measurement;->retrieveLabelsAsString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/comscore/utils/CSLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/comscore/metrics/Request;->d:Lcom/comscore/analytics/Core;

    invoke-virtual {v0}, Lcom/comscore/analytics/Core;->getOfflineCache()Lcom/comscore/utils/OfflineMeasurementsCache;

    move-result-object v0

    iget-object v1, p0, Lcom/comscore/metrics/Request;->c:Lcom/comscore/measurement/Measurement;

    invoke-virtual {v0, v1}, Lcom/comscore/utils/OfflineMeasurementsCache;->saveEvent(Lcom/comscore/measurement/Measurement;)V

    return-void
.end method


# virtual methods
.method protected a(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    .registers 5

    iget-object v0, p0, Lcom/comscore/metrics/Request;->b:Ljava/net/Proxy;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/comscore/metrics/Request;->b:Ljava/net/Proxy;

    invoke-virtual {p1, v0}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    :goto_c
    const-string v1, "Connection"

    const-string v2, "Close"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_14
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    goto :goto_c
.end method

.method protected a(Ljava/net/URL;ILjava/lang/String;)Ljava/net/URL;
    .registers 8

    const/4 v0, 0x0

    packed-switch p2, :pswitch_data_62

    :pswitch_4
    move-object p1, v0

    :goto_5
    return-object p1

    :pswitch_6
    if-nez p3, :cond_a

    move-object p1, v0

    goto :goto_5

    :cond_a
    const/16 v1, 0x131

    if-ne p2, v1, :cond_4b

    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_36

    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    :cond_36
    const-string v1, "//"

    invoke-virtual {p3, v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_40

    add-int/lit8 v0, v0, 0x2

    :cond_40
    invoke-virtual {p3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/comscore/metrics/Request;->a(Ljava/lang/String;)Ljava/net/Proxy;

    move-result-object v0

    iput-object v0, p0, Lcom/comscore/metrics/Request;->b:Ljava/net/Proxy;

    goto :goto_5

    :cond_4b
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1, p3}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_60

    move-object p1, v0

    goto :goto_5

    :cond_60
    move-object p1, v1

    goto :goto_5

    :pswitch_data_62
    .packed-switch 0x12c
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_4
        :pswitch_6
    .end packed-switch
.end method

.method protected a()Z
    .registers 8

    const/4 v2, 0x0

    const/4 v1, 0x0

    :try_start_2
    iget-object v0, p0, Lcom/comscore/metrics/Request;->a:Ljava/net/URL;

    invoke-virtual {p0}, Lcom/comscore/metrics/Request;->b()Z

    move-result v3

    if-eqz v3, :cond_5d

    invoke-virtual {p0, v0}, Lcom/comscore/metrics/Request;->a(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_d} :catch_80
    .catchall {:try_start_2 .. :try_end_d} :catchall_a8

    move-result-object v1

    :try_start_e
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    :cond_12
    const-string v3, "Content-Type"

    invoke-virtual {v1, v3}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Content-Length"

    invoke-virtual {v1, v4}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0xc8

    if-ne v0, v5, :cond_3c

    invoke-static {v3}, Lcom/comscore/utils/Utils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3c

    const-string v5, "image/"

    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_3c

    invoke-static {v4}, Lcom/comscore/utils/Utils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3c

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-gtz v3, :cond_4c

    :cond_3c
    const/16 v3, 0xcc

    if-ne v0, v3, :cond_56

    invoke-static {v4}, Lcom/comscore/utils/Utils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_56

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_56

    :cond_4c
    const/4 v2, 0x1

    iget-object v0, p0, Lcom/comscore/metrics/Request;->d:Lcom/comscore/analytics/Core;

    invoke-virtual {v0}, Lcom/comscore/analytics/Core;->getKeepAlive()Lcom/comscore/applications/KeepAlive;

    move-result-object v0

    invoke-virtual {v0}, Lcom/comscore/applications/KeepAlive;->reset()V
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_56} :catch_b2
    .catchall {:try_start_e .. :try_end_56} :catchall_a8

    :cond_56
    move v0, v2

    if-eqz v1, :cond_5c

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_5c
    :goto_5c
    return v0

    :cond_5d
    move v3, v2

    move-object v5, v0

    move v0, v2

    :goto_60
    if-eqz v5, :cond_12

    const/4 v4, 0x5

    if-ge v3, v4, :cond_12

    :try_start_65
    invoke-virtual {p0, v5}, Lcom/comscore/metrics/Request;->a(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v1

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    const-string v0, "Location"

    invoke-virtual {v1, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v5, v4, v0}, Lcom/comscore/metrics/Request;->a(Ljava/net/URL;ILjava/lang/String;)Ljava/net/URL;
    :try_end_7a
    .catch Ljava/lang/Exception; {:try_start_65 .. :try_end_7a} :catch_b2
    .catchall {:try_start_65 .. :try_end_7a} :catchall_a8

    move-result-object v5

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    move v0, v4

    goto :goto_60

    :catch_80
    move-exception v0

    move-object v6, v0

    move v0, v2

    move-object v2, v1

    move-object v1, v6

    :goto_85
    :try_start_85
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception sending measurement:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/comscore/utils/CSLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/comscore/utils/CSLog;->printStackTrace(Ljava/lang/Exception;)V
    :try_end_a2
    .catchall {:try_start_85 .. :try_end_a2} :catchall_af

    if-eqz v2, :cond_5c

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_5c

    :catchall_a8
    move-exception v0

    :goto_a9
    if-eqz v1, :cond_ae

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_ae
    throw v0

    :catchall_af
    move-exception v0

    move-object v1, v2

    goto :goto_a9

    :catch_b2
    move-exception v0

    move-object v6, v0

    move v0, v2

    move-object v2, v1

    move-object v1, v6

    goto :goto_85
.end method

.method public availableConnection()Ljava/lang/Boolean;
    .registers 6

    const/4 v2, 0x0

    :try_start_1
    iget-object v0, p0, Lcom/comscore/metrics/Request;->d:Lcom/comscore/analytics/Core;

    invoke-virtual {v0}, Lcom/comscore/analytics/Core;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {}, Lcom/comscore/utils/Connectivity;->isEmulator()Z

    move-result v3

    if-eqz v3, :cond_1c

    const-string v0, "emu"

    :goto_10
    iget-object v3, p0, Lcom/comscore/metrics/Request;->c:Lcom/comscore/measurement/Measurement;

    const-string v4, "ns_radio"

    invoke-virtual {v3, v4, v0}, Lcom/comscore/measurement/Measurement;->setLabel(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_1b
    return-object v0

    :cond_1c
    invoke-static {v0}, Lcom/comscore/utils/Connectivity;->isConnectedWiFi(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_26

    const-string/jumbo v0, "wifi"

    goto :goto_10

    :cond_26
    invoke-static {v0}, Lcom/comscore/utils/Connectivity;->isConnectedMobile(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_30

    const-string/jumbo v0, "wwan"

    goto :goto_10

    :cond_30
    invoke-static {v0}, Lcom/comscore/utils/Connectivity;->isConnectBluetooth(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_39

    const-string v0, "bth"

    goto :goto_10

    :cond_39
    invoke-static {v0}, Lcom/comscore/utils/Connectivity;->isConnectEthernet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_42

    const-string v0, "eth"

    goto :goto_10

    :cond_42
    const-string/jumbo v0, "unknown"
    :try_end_45
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_45} :catch_47

    move v1, v2

    goto :goto_10

    :catch_47
    move-exception v0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_1b
.end method

.method protected b()Z
    .registers 2

    sget-boolean v0, Lcom/comscore/metrics/Request;->REDIRECTION_SUPPORTED:Z

    return v0
.end method

.method public process()Ljava/net/URL;
    .registers 2

    iget-object v0, p0, Lcom/comscore/metrics/Request;->c:Lcom/comscore/measurement/Measurement;

    invoke-virtual {v0}, Lcom/comscore/measurement/Measurement;->getPixelURL()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/comscore/metrics/Request;->process(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method public process(Ljava/lang/String;)Ljava/net/URL;
    .registers 9

    const/16 v6, 0x1000

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/comscore/metrics/Request;->availableConnection()Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/comscore/metrics/Request;->c:Lcom/comscore/measurement/Measurement;

    iget-object v1, p0, Lcom/comscore/metrics/Request;->d:Lcom/comscore/analytics/Core;

    invoke-virtual {v1}, Lcom/comscore/analytics/Core;->getMeasurementLabelOrder()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/comscore/measurement/Measurement;->retrieveLabelsAsString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v6, :cond_7b

    const-string v0, "&"

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_7b

    const/16 v0, 0xff8

    invoke-virtual {v1, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v2, "&"

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    const-string v0, ""

    add-int/lit8 v0, v2, 0x1

    :try_start_34
    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "UTF-8"

    invoke-static {v0, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "+"

    const-string v4, "%20"

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_45
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_34 .. :try_end_45} :catch_72

    move-result-object v0

    :goto_46
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&ns_cut="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_61
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v6, :cond_79

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :goto_6c
    :try_start_6c
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_71
    .catch Ljava/net/MalformedURLException; {:try_start_6c .. :try_end_71} :catch_76

    :goto_71
    return-object v0

    :catch_72
    move-exception v0

    const-string v0, "0"

    goto :goto_46

    :catch_76
    move-exception v0

    const/4 v0, 0x0

    goto :goto_71

    :cond_79
    move-object v1, v0

    goto :goto_6c

    :cond_7b
    move-object v0, v1

    goto :goto_61
.end method

.method public send()Z
    .registers 9

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/comscore/metrics/Request;->d:Lcom/comscore/analytics/Core;

    invoke-virtual {v1}, Lcom/comscore/analytics/Core;->getAppContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {v1, v2}, Lcom/comscore/utils/Permissions;->check(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iget-object v3, p0, Lcom/comscore/metrics/Request;->d:Lcom/comscore/analytics/Core;

    invoke-virtual {v3}, Lcom/comscore/analytics/Core;->getLiveTransmissionMode()Lcom/comscore/utils/TransmissionMode;

    move-result-object v3

    iget-object v4, p0, Lcom/comscore/metrics/Request;->e:Lcom/comscore/utils/Storage;

    const-string v5, "lastMeasurementProcessedTimestamp"

    invoke-static {}, Lcom/comscore/utils/Date;->unixTime()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/comscore/utils/Storage;->set(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v4, Lcom/comscore/metrics/a;->a:[I

    invoke-virtual {v3}, Lcom/comscore/utils/TransmissionMode;->ordinal()I

    move-result v3

    aget v3, v4, v3

    packed-switch v3, :pswitch_data_8a

    :goto_31
    return v0

    :pswitch_32
    invoke-direct {p0}, Lcom/comscore/metrics/Request;->e()V

    goto :goto_31

    :pswitch_36
    invoke-direct {p0}, Lcom/comscore/metrics/Request;->e()V

    goto :goto_31

    :pswitch_3a
    if-eqz v2, :cond_46

    invoke-virtual {p0}, Lcom/comscore/metrics/Request;->availableConnection()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_4b

    :cond_46
    invoke-direct {p0}, Lcom/comscore/metrics/Request;->c()Z

    move-result v0

    goto :goto_31

    :cond_4b
    invoke-direct {p0}, Lcom/comscore/metrics/Request;->e()V

    goto :goto_31

    :pswitch_4f
    if-eqz v2, :cond_63

    invoke-static {}, Lcom/comscore/utils/Connectivity;->isEmulator()Z

    move-result v2

    if-nez v2, :cond_63

    invoke-static {v1}, Lcom/comscore/utils/Connectivity;->isConnectedWiFi(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_63

    invoke-static {v1}, Lcom/comscore/utils/Connectivity;->isConnectEthernet(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_68

    :cond_63
    invoke-direct {p0}, Lcom/comscore/metrics/Request;->c()Z

    move-result v0

    goto :goto_31

    :cond_68
    invoke-direct {p0}, Lcom/comscore/metrics/Request;->e()V

    goto :goto_31

    :pswitch_6c
    if-eqz v2, :cond_80

    invoke-static {}, Lcom/comscore/utils/Connectivity;->isEmulator()Z

    move-result v2

    if-nez v2, :cond_80

    invoke-static {v1}, Lcom/comscore/utils/Connectivity;->isConnectedWiFi(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_80

    invoke-static {v1}, Lcom/comscore/utils/Connectivity;->isDataConnected(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_85

    :cond_80
    invoke-direct {p0}, Lcom/comscore/metrics/Request;->c()Z

    move-result v0

    goto :goto_31

    :cond_85
    invoke-direct {p0}, Lcom/comscore/metrics/Request;->e()V

    goto :goto_31

    nop

    :pswitch_data_8a
    .packed-switch 0x1
        :pswitch_32
        :pswitch_36
        :pswitch_3a
        :pswitch_4f
        :pswitch_6c
    .end packed-switch
.end method
