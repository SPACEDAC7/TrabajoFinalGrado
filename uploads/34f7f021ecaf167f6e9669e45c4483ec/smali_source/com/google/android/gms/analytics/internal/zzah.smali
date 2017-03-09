.class Lcom/google/android/gms/analytics/internal/zzah;
.super Lcom/google/android/gms/analytics/internal/zzd;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/analytics/internal/zzah$zza;
    }
.end annotation


# static fields
.field private static final fB:[B


# instance fields
.field private final fA:Lcom/google/android/gms/analytics/internal/zzal;

.field private final zzbre:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "\n"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/analytics/internal/zzah;->fB:[B

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/analytics/internal/zzf;)V
    .registers 8

    invoke-direct {p0, p1}, Lcom/google/android/gms/analytics/internal/zzd;-><init>(Lcom/google/android/gms/analytics/internal/zzf;)V

    const-string v0, "GoogleAnalytics"

    sget-object v1, Lcom/google/android/gms/analytics/internal/zze;->VERSION:Ljava/lang/String;

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/analytics/internal/zzao;->zza(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget-object v5, Landroid/os/Build;->ID:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/analytics/internal/zzah;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/analytics/internal/zzah;->zzbre:Ljava/lang/String;

    new-instance v0, Lcom/google/android/gms/analytics/internal/zzal;

    invoke-virtual {p1}, Lcom/google/android/gms/analytics/internal/zzf;->zzabz()Lcom/google/android/gms/common/util/zze;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/analytics/internal/zzal;-><init>(Lcom/google/android/gms/common/util/zze;)V

    iput-object v0, p0, Lcom/google/android/gms/analytics/internal/zzah;->fA:Lcom/google/android/gms/analytics/internal/zzal;

    return-void
.end method

.method private zza(Ljava/net/URL;[B)I
    .registers 8

    const/4 v1, 0x0

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzaa;->zzy(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzaa;->zzy(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "POST bytes, url"

    array-length v2, p2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v0, v2, p1}, Lcom/google/android/gms/analytics/internal/zzah;->zzb(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzah;->zzvo()Z

    move-result v0

    if-eqz v0, :cond_21

    const-string v0, "Post payload\n"

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {p0, v0, v2}, Lcom/google/android/gms/analytics/internal/zzah;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_21
    :try_start_21
    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzah;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/internal/zzah;->zzfe(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/analytics/internal/zzah;->zzc(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_2f} :catch_72
    .catchall {:try_start_21 .. :try_end_2f} :catchall_8f

    move-result-object v2

    const/4 v0, 0x1

    :try_start_31
    invoke-virtual {v2, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    array-length v0, p2

    invoke-virtual {v2, v0}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->connect()V

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/io/OutputStream;->write([B)V

    invoke-direct {p0, v2}, Lcom/google/android/gms/analytics/internal/zzah;->zzb(Ljava/net/HttpURLConnection;)V

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    const/16 v3, 0xc8

    if-ne v0, v3, :cond_54

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzah;->zzzg()Lcom/google/android/gms/analytics/internal/zzb;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/analytics/internal/zzb;->zzabw()V

    :cond_54
    const-string v3, "POST status"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/google/android/gms/analytics/internal/zzah;->zzb(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_5d
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_5d} :catch_a8
    .catchall {:try_start_31 .. :try_end_5d} :catchall_a6

    if-eqz v1, :cond_62

    :try_start_5f
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_62
    .catch Ljava/io/IOException; {:try_start_5f .. :try_end_62} :catch_6b

    :cond_62
    :goto_62
    if-eqz v2, :cond_67

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_67
    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzah;->zztt()V

    :goto_6a
    return v0

    :catch_6b
    move-exception v1

    const-string v3, "Error closing http post connection output stream"

    invoke-virtual {p0, v3, v1}, Lcom/google/android/gms/analytics/internal/zzah;->zze(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_62

    :catch_72
    move-exception v0

    move-object v2, v1

    :goto_74
    :try_start_74
    const-string v3, "Network POST connection error"

    invoke-virtual {p0, v3, v0}, Lcom/google/android/gms/analytics/internal/zzah;->zzd(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_79
    .catchall {:try_start_74 .. :try_end_79} :catchall_a6

    if-eqz v1, :cond_7e

    :try_start_7b
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_7e
    .catch Ljava/io/IOException; {:try_start_7b .. :try_end_7e} :catch_88

    :cond_7e
    :goto_7e
    if-eqz v2, :cond_83

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_83
    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzah;->zztt()V

    const/4 v0, 0x0

    goto :goto_6a

    :catch_88
    move-exception v0

    const-string v1, "Error closing http post connection output stream"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/analytics/internal/zzah;->zze(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_7e

    :catchall_8f
    move-exception v0

    move-object v2, v1

    :goto_91
    if-eqz v1, :cond_96

    :try_start_93
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_96
    .catch Ljava/io/IOException; {:try_start_93 .. :try_end_96} :catch_9f

    :cond_96
    :goto_96
    if-eqz v2, :cond_9b

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_9b
    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzah;->zztt()V

    throw v0

    :catch_9f
    move-exception v1

    const-string v3, "Error closing http post connection output stream"

    invoke-virtual {p0, v3, v1}, Lcom/google/android/gms/analytics/internal/zzah;->zze(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_96

    :catchall_a6
    move-exception v0

    goto :goto_91

    :catch_a8
    move-exception v0

    goto :goto_74
.end method

.method private static zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    const-string v0, "%s/%s (Linux; U; Android %s; %s; %s Build/%s)"

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    aput-object p2, v1, v2

    const/4 v2, 0x3

    aput-object p3, v1, v2

    const/4 v2, 0x4

    aput-object p4, v1, v2

    const/4 v2, 0x5

    aput-object p5, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private zza(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-eqz v0, :cond_b

    const/16 v0, 0x26

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_b
    const-string v0, "UTF-8"

    invoke-static {p2, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x3d

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v0, "UTF-8"

    invoke-static {p3, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private zzagl()Ljava/net/URL;
    .registers 4

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzah;->zzacb()Lcom/google/android/gms/analytics/internal/zzr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzr;->zzaes()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzah;->zzacb()Lcom/google/android/gms/analytics/internal/zzr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzr;->zzaev()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_29

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_22
    :try_start_22
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_27
    .catch Ljava/net/MalformedURLException; {:try_start_22 .. :try_end_27} :catch_2f

    move-object v0, v1

    :goto_28
    return-object v0

    :cond_29
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_22

    :catch_2f
    move-exception v0

    const-string v1, "Error trying to parse the hardcoded host url"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/analytics/internal/zzah;->zze(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x0

    goto :goto_28
.end method

.method static synthetic zzagm()[B
    .registers 1

    sget-object v0, Lcom/google/android/gms/analytics/internal/zzah;->fB:[B

    return-object v0
.end method

.method private zzb(Ljava/net/URL;)I
    .registers 6

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzaa;->zzy(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "GET request"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/analytics/internal/zzah;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v1, 0x0

    :try_start_9
    invoke-virtual {p0, p1}, Lcom/google/android/gms/analytics/internal/zzah;->zzc(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->connect()V

    invoke-direct {p0, v1}, Lcom/google/android/gms/analytics/internal/zzah;->zzb(Ljava/net/HttpURLConnection;)V

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    const/16 v2, 0xc8

    if-ne v0, v2, :cond_22

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzah;->zzzg()Lcom/google/android/gms/analytics/internal/zzb;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/analytics/internal/zzb;->zzabw()V

    :cond_22
    const-string v2, "GET status"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/google/android/gms/analytics/internal/zzah;->zzb(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_2b} :catch_31
    .catchall {:try_start_9 .. :try_end_2b} :catchall_3e

    if-eqz v1, :cond_30

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_30
    :goto_30
    return v0

    :catch_31
    move-exception v0

    :try_start_32
    const-string v2, "Network GET connection error"

    invoke-virtual {p0, v2, v0}, Lcom/google/android/gms/analytics/internal/zzah;->zzd(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_37
    .catchall {:try_start_32 .. :try_end_37} :catchall_3e

    if-eqz v1, :cond_3c

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_3c
    const/4 v0, 0x0

    goto :goto_30

    :catchall_3e
    move-exception v0

    if-eqz v1, :cond_44

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_44
    throw v0
.end method

.method private zzb(Ljava/net/URL;[B)I
    .registers 13

    const/4 v1, 0x0

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzaa;->zzy(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzaa;->zzy(Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_7
    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzah;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/internal/zzah;->zzfe(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/google/android/gms/analytics/internal/zzah;->zzk([B)[B

    move-result-object v4

    const-string v0, "POST compressed size, ratio %, url"

    array-length v2, v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-wide/16 v6, 0x64

    array-length v3, v4

    int-to-long v8, v3

    mul-long/2addr v6, v8

    array-length v3, p2

    int-to-long v8, v3

    div-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p0, v0, v2, v3, p1}, Lcom/google/android/gms/analytics/internal/zzah;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    array-length v0, v4

    array-length v2, p2

    if-le v0, v2, :cond_3f

    const-string v0, "Compressed payload is larger then uncompressed. compressed, uncompressed"

    array-length v2, v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    array-length v3, p2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v0, v2, v3}, Lcom/google/android/gms/analytics/internal/zzah;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3f
    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzah;->zzvo()Z

    move-result v0

    if-eqz v0, :cond_5f

    const-string v2, "Post payload"

    const-string v3, "\n"

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p2}, Ljava/lang/String;-><init>([B)V

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_a3

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_5c
    invoke-virtual {p0, v2, v0}, Lcom/google/android/gms/analytics/internal/zzah;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_5f
    invoke-virtual {p0, p1}, Lcom/google/android/gms/analytics/internal/zzah;->zzc(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    :try_end_62
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_62} :catch_a9
    .catchall {:try_start_7 .. :try_end_62} :catchall_c6

    move-result-object v3

    const/4 v0, 0x1

    :try_start_64
    invoke-virtual {v3, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const-string v0, "Content-Encoding"

    const-string v2, "gzip"

    invoke-virtual {v3, v0, v2}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    array-length v0, v4

    invoke-virtual {v3, v0}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->connect()V

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;
    :try_end_78
    .catch Ljava/io/IOException; {:try_start_64 .. :try_end_78} :catch_e5
    .catchall {:try_start_64 .. :try_end_78} :catchall_dd

    move-result-object v2

    :try_start_79
    invoke-virtual {v2, v4}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_7f
    .catch Ljava/io/IOException; {:try_start_79 .. :try_end_7f} :catch_e8
    .catchall {:try_start_79 .. :try_end_7f} :catchall_df

    :try_start_7f
    invoke-direct {p0, v3}, Lcom/google/android/gms/analytics/internal/zzah;->zzb(Ljava/net/HttpURLConnection;)V

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    const/16 v2, 0xc8

    if-ne v0, v2, :cond_91

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzah;->zzzg()Lcom/google/android/gms/analytics/internal/zzb;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/analytics/internal/zzb;->zzabw()V

    :cond_91
    const-string v2, "POST status"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0, v2, v4}, Lcom/google/android/gms/analytics/internal/zzah;->zzb(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_9a
    .catch Ljava/io/IOException; {:try_start_7f .. :try_end_9a} :catch_e5
    .catchall {:try_start_7f .. :try_end_9a} :catchall_dd

    if-eqz v3, :cond_9f

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_9f
    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzah;->zztt()V

    :goto_a2
    return v0

    :cond_a3
    :try_start_a3
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_a8
    .catch Ljava/io/IOException; {:try_start_a3 .. :try_end_a8} :catch_a9
    .catchall {:try_start_a3 .. :try_end_a8} :catchall_c6

    goto :goto_5c

    :catch_a9
    move-exception v0

    move-object v2, v1

    :goto_ab
    :try_start_ab
    const-string v3, "Network compressed POST connection error"

    invoke-virtual {p0, v3, v0}, Lcom/google/android/gms/analytics/internal/zzah;->zzd(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_b0
    .catchall {:try_start_ab .. :try_end_b0} :catchall_e2

    if-eqz v1, :cond_b5

    :try_start_b2
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_b5
    .catch Ljava/io/IOException; {:try_start_b2 .. :try_end_b5} :catch_bf

    :cond_b5
    :goto_b5
    if-eqz v2, :cond_ba

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_ba
    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzah;->zztt()V

    const/4 v0, 0x0

    goto :goto_a2

    :catch_bf
    move-exception v0

    const-string v1, "Error closing http compressed post connection output stream"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/analytics/internal/zzah;->zze(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_b5

    :catchall_c6
    move-exception v0

    move-object v3, v1

    :goto_c8
    if-eqz v1, :cond_cd

    :try_start_ca
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_cd
    .catch Ljava/io/IOException; {:try_start_ca .. :try_end_cd} :catch_d6

    :cond_cd
    :goto_cd
    if-eqz v3, :cond_d2

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_d2
    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzah;->zztt()V

    throw v0

    :catch_d6
    move-exception v1

    const-string v2, "Error closing http compressed post connection output stream"

    invoke-virtual {p0, v2, v1}, Lcom/google/android/gms/analytics/internal/zzah;->zze(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_cd

    :catchall_dd
    move-exception v0

    goto :goto_c8

    :catchall_df
    move-exception v0

    move-object v1, v2

    goto :goto_c8

    :catchall_e2
    move-exception v0

    move-object v3, v2

    goto :goto_c8

    :catch_e5
    move-exception v0

    move-object v2, v3

    goto :goto_ab

    :catch_e8
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    goto :goto_ab
.end method

.method private zzb(Lcom/google/android/gms/analytics/internal/zzab;Ljava/lang/String;)Ljava/net/URL;
    .registers 8

    invoke-virtual {p1}, Lcom/google/android/gms/analytics/internal/zzab;->zzagc()Z

    move-result v0

    if-eqz v0, :cond_5c

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzah;->zzacb()Lcom/google/android/gms/analytics/internal/zzr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzr;->zzaes()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzah;->zzacb()Lcom/google/android/gms/analytics/internal/zzr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/internal/zzr;->zzaeu()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :goto_56
    :try_start_56
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_5b
    .catch Ljava/net/MalformedURLException; {:try_start_56 .. :try_end_5b} :catch_ad

    :goto_5b
    return-object v0

    :cond_5c
    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzah;->zzacb()Lcom/google/android/gms/analytics/internal/zzr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzr;->zzaet()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzah;->zzacb()Lcom/google/android/gms/analytics/internal/zzr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/internal/zzr;->zzaeu()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_56

    :catch_ad
    move-exception v0

    const-string v1, "Error trying to parse the hardcoded host url"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/analytics/internal/zzah;->zze(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x0

    goto :goto_5b
.end method

.method private zzb(Ljava/net/HttpURLConnection;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    const/16 v0, 0x400

    new-array v0, v0, [B

    :cond_9
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_1c

    move-result v2

    if-gtz v2, :cond_9

    if-eqz v1, :cond_14

    :try_start_11
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_14} :catch_15

    :cond_14
    :goto_14
    return-void

    :catch_15
    move-exception v0

    const-string v1, "Error closing http connection input stream"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/analytics/internal/zzah;->zze(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_14

    :catchall_1c
    move-exception v0

    if-eqz v1, :cond_22

    :try_start_1f
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_22} :catch_23

    :cond_22
    :goto_22
    throw v0

    :catch_23
    move-exception v1

    const-string v2, "Error closing http connection input stream"

    invoke-virtual {p0, v2, v1}, Lcom/google/android/gms/analytics/internal/zzah;->zze(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_22
.end method

.method private zzg(Lcom/google/android/gms/analytics/internal/zzab;)Z
    .registers 8

    const/16 v5, 0xc8

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzaa;->zzy(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/android/gms/analytics/internal/zzab;->zzagc()Z

    move-result v0

    if-nez v0, :cond_1e

    move v0, v1

    :goto_e
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/analytics/internal/zzah;->zza(Lcom/google/android/gms/analytics/internal/zzab;Z)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_20

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzah;->zzaca()Lcom/google/android/gms/analytics/internal/zzaf;

    move-result-object v0

    const-string v2, "Error formatting hit for upload"

    invoke-virtual {v0, p1, v2}, Lcom/google/android/gms/analytics/internal/zzaf;->zza(Lcom/google/android/gms/analytics/internal/zzab;Ljava/lang/String;)V

    :cond_1d
    :goto_1d
    return v1

    :cond_1e
    move v0, v2

    goto :goto_e

    :cond_20
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzah;->zzacb()Lcom/google/android/gms/analytics/internal/zzr;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/analytics/internal/zzr;->zzaeh()I

    move-result v4

    if-gt v3, v4, :cond_43

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/analytics/internal/zzah;->zzb(Lcom/google/android/gms/analytics/internal/zzab;Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    if-nez v0, :cond_3b

    const-string v0, "Failed to build collect GET endpoint url"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/internal/zzah;->zzew(Ljava/lang/String;)V

    move v1, v2

    goto :goto_1d

    :cond_3b
    invoke-direct {p0, v0}, Lcom/google/android/gms/analytics/internal/zzah;->zzb(Ljava/net/URL;)I

    move-result v0

    if-eq v0, v5, :cond_1d

    move v1, v2

    goto :goto_1d

    :cond_43
    invoke-virtual {p0, p1, v2}, Lcom/google/android/gms/analytics/internal/zzah;->zza(Lcom/google/android/gms/analytics/internal/zzab;Z)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_53

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzah;->zzaca()Lcom/google/android/gms/analytics/internal/zzaf;

    move-result-object v0

    const-string v2, "Error formatting hit for POST upload"

    invoke-virtual {v0, p1, v2}, Lcom/google/android/gms/analytics/internal/zzaf;->zza(Lcom/google/android/gms/analytics/internal/zzab;Ljava/lang/String;)V

    goto :goto_1d

    :cond_53
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v3, v0

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzah;->zzacb()Lcom/google/android/gms/analytics/internal/zzr;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/analytics/internal/zzr;->zzaej()I

    move-result v4

    if-le v3, v4, :cond_6c

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzah;->zzaca()Lcom/google/android/gms/analytics/internal/zzaf;

    move-result-object v0

    const-string v2, "Hit payload exceeds size limit"

    invoke-virtual {v0, p1, v2}, Lcom/google/android/gms/analytics/internal/zzaf;->zza(Lcom/google/android/gms/analytics/internal/zzab;Ljava/lang/String;)V

    goto :goto_1d

    :cond_6c
    invoke-direct {p0, p1}, Lcom/google/android/gms/analytics/internal/zzah;->zzh(Lcom/google/android/gms/analytics/internal/zzab;)Ljava/net/URL;

    move-result-object v3

    if-nez v3, :cond_79

    const-string v0, "Failed to build collect POST endpoint url"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/internal/zzah;->zzew(Ljava/lang/String;)V

    move v1, v2

    goto :goto_1d

    :cond_79
    invoke-direct {p0, v3, v0}, Lcom/google/android/gms/analytics/internal/zzah;->zza(Ljava/net/URL;[B)I

    move-result v0

    if-eq v0, v5, :cond_1d

    move v1, v2

    goto :goto_1d
.end method

.method private zzh(Lcom/google/android/gms/analytics/internal/zzab;)Ljava/net/URL;
    .registers 5

    invoke-virtual {p1}, Lcom/google/android/gms/analytics/internal/zzab;->zzagc()Z

    move-result v0

    if-eqz v0, :cond_35

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzah;->zzacb()Lcom/google/android/gms/analytics/internal/zzr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzr;->zzaes()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzah;->zzacb()Lcom/google/android/gms/analytics/internal/zzr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzr;->zzaeu()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_2f

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_28
    move-object v1, v0

    :goto_29
    :try_start_29
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_2e
    .catch Ljava/net/MalformedURLException; {:try_start_29 .. :try_end_2e} :catch_5f

    :goto_2e
    return-object v0

    :cond_2f
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_28

    :cond_35
    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzah;->zzacb()Lcom/google/android/gms/analytics/internal/zzr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzr;->zzaet()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzah;->zzacb()Lcom/google/android/gms/analytics/internal/zzr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzr;->zzaeu()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_59

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_57
    move-object v1, v0

    goto :goto_29

    :cond_59
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_57

    :catch_5f
    move-exception v0

    const-string v1, "Error trying to parse the hardcoded host url"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/analytics/internal/zzah;->zze(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x0

    goto :goto_2e
.end method

.method private zzi(Lcom/google/android/gms/analytics/internal/zzab;)Ljava/lang/String;
    .registers 4

    invoke-virtual {p1}, Lcom/google/android/gms/analytics/internal/zzab;->zzafz()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static zzk([B)[B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v1, v0}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v1, p0}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method zza(Lcom/google/android/gms/analytics/internal/zzab;Z)Ljava/lang/String;
    .registers 9

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzaa;->zzy(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    :try_start_8
    invoke-virtual {p1}, Lcom/google/android/gms/analytics/internal/zzab;->zzmc()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_14
    :goto_14
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_61

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v4, "ht"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_14

    const-string v4, "qt"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_14

    const-string v4, "AppUID"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_14

    const-string/jumbo v4, "z"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_14

    const-string v4, "_gmsv"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_14

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v2, v1, v0}, Lcom/google/android/gms/analytics/internal/zzah;->zza(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_58
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_8 .. :try_end_58} :catch_59

    goto :goto_14

    :catch_59
    move-exception v0

    const-string v1, "Failed to encode name or value"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/analytics/internal/zzah;->zze(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x0

    :goto_60
    return-object v0

    :cond_61
    :try_start_61
    const-string v0, "ht"

    invoke-virtual {p1}, Lcom/google/android/gms/analytics/internal/zzab;->zzaga()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v2, v0, v1}, Lcom/google/android/gms/analytics/internal/zzah;->zza(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzah;->zzabz()Lcom/google/android/gms/common/util/zze;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/zze;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/google/android/gms/analytics/internal/zzab;->zzaga()J

    move-result-wide v4

    sub-long/2addr v0, v4

    const-string v3, "qt"

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, v3, v0}, Lcom/google/android/gms/analytics/internal/zzah;->zza(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzah;->zzacb()Lcom/google/android/gms/analytics/internal/zzr;

    if-eqz p2, :cond_9d

    invoke-virtual {p1}, Lcom/google/android/gms/analytics/internal/zzab;->zzagd()J

    move-result-wide v0

    const-wide/16 v4, 0x0

    cmp-long v3, v0, v4

    if-eqz v3, :cond_a2

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    :goto_97
    const-string/jumbo v1, "z"

    invoke-direct {p0, v2, v1, v0}, Lcom/google/android/gms/analytics/internal/zzah;->zza(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_9d
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_60

    :cond_a2
    invoke-direct {p0, p1}, Lcom/google/android/gms/analytics/internal/zzah;->zzi(Lcom/google/android/gms/analytics/internal/zzab;)Ljava/lang/String;
    :try_end_a5
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_61 .. :try_end_a5} :catch_59

    move-result-object v0

    goto :goto_97
.end method

.method zza(Ljava/util/List;Z)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/analytics/internal/zzab;",
            ">;Z)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_43

    const/4 v0, 0x1

    :goto_7
    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzaa;->zzbt(Z)V

    const-string v0, "Uploading batched hits. compression, count"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/gms/analytics/internal/zzah;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v2, Lcom/google/android/gms/analytics/internal/zzah$zza;

    invoke-direct {v2, p0}, Lcom/google/android/gms/analytics/internal/zzah$zza;-><init>(Lcom/google/android/gms/analytics/internal/zzah;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_29
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/analytics/internal/zzab;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/analytics/internal/zzah$zza;->zzj(Lcom/google/android/gms/analytics/internal/zzab;)Z

    move-result v4

    if-nez v4, :cond_45

    :cond_3b
    invoke-virtual {v2}, Lcom/google/android/gms/analytics/internal/zzah$zza;->zzagn()I

    move-result v0

    if-nez v0, :cond_51

    move-object v0, v1

    :goto_42
    return-object v0

    :cond_43
    const/4 v0, 0x0

    goto :goto_7

    :cond_45
    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzab;->zzafz()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_29

    :cond_51
    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/zzah;->zzagl()Ljava/net/URL;

    move-result-object v0

    if-nez v0, :cond_61

    const-string v0, "Failed to build batching endpoint url"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/internal/zzah;->zzew(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_42

    :cond_61
    if-eqz p2, :cond_7e

    invoke-virtual {v2}, Lcom/google/android/gms/analytics/internal/zzah$zza;->getPayload()[B

    move-result-object v3

    invoke-direct {p0, v0, v3}, Lcom/google/android/gms/analytics/internal/zzah;->zzb(Ljava/net/URL;[B)I

    move-result v0

    :goto_6b
    const/16 v3, 0xc8

    if-ne v3, v0, :cond_87

    const-string v0, "Batched upload completed. Hits batched"

    invoke-virtual {v2}, Lcom/google/android/gms/analytics/internal/zzah$zza;->zzagn()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/google/android/gms/analytics/internal/zzah;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    move-object v0, v1

    goto :goto_42

    :cond_7e
    invoke-virtual {v2}, Lcom/google/android/gms/analytics/internal/zzah$zza;->getPayload()[B

    move-result-object v3

    invoke-direct {p0, v0, v3}, Lcom/google/android/gms/analytics/internal/zzah;->zza(Ljava/net/URL;[B)I

    move-result v0

    goto :goto_6b

    :cond_87
    const-string v1, "Network error uploading hits. status code"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/google/android/gms/analytics/internal/zzah;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzah;->zzacb()Lcom/google/android/gms/analytics/internal/zzr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/internal/zzr;->zzaey()Ljava/util/Set;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ac

    const-string v0, "Server instructed the client to stop batching"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/internal/zzah;->zzev(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzah;->fA:Lcom/google/android/gms/analytics/internal/zzal;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzal;->start()V

    :cond_ac
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_42
.end method

.method public zzagk()Z
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzah;->zzzx()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzah;->zzacj()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzah;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    const/4 v1, 0x0

    :try_start_13
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;
    :try_end_16
    .catch Ljava/lang/SecurityException; {:try_start_13 .. :try_end_16} :catch_26

    move-result-object v0

    :goto_17
    if-eqz v0, :cond_1f

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-nez v0, :cond_29

    :cond_1f
    const-string v0, "No network connectivity"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/internal/zzah;->zzes(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_25
    return v0

    :catch_26
    move-exception v0

    move-object v0, v1

    goto :goto_17

    :cond_29
    const/4 v0, 0x1

    goto :goto_25
.end method

.method zzc(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    instance-of v1, v0, Ljava/net/HttpURLConnection;

    if-nez v1, :cond_11

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Failed to obtain http connection"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    check-cast v0, Ljava/net/HttpURLConnection;

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setDefaultUseCaches(Z)V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzah;->zzacb()Lcom/google/android/gms/analytics/internal/zzr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/internal/zzr;->zzafg()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzah;->zzacb()Lcom/google/android/gms/analytics/internal/zzr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/internal/zzr;->zzafh()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    const-string v1, "User-Agent"

    iget-object v2, p0, Lcom/google/android/gms/analytics/internal/zzah;->zzbre:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    return-object v0
.end method

.method protected zzfe(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public zzt(Ljava/util/List;)Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/analytics/internal/zzab;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzah;->zzzx()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzah;->zzacj()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzaa;->zzy(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzah;->zzacb()Lcom/google/android/gms/analytics/internal/zzr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzr;->zzaey()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2c

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzah;->fA:Lcom/google/android/gms/analytics/internal/zzal;

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzah;->zzacb()Lcom/google/android/gms/analytics/internal/zzr;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/analytics/internal/zzr;->zzaer()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    invoke-virtual {v0, v4, v5}, Lcom/google/android/gms/analytics/internal/zzal;->zzz(J)Z

    move-result v0

    if-nez v0, :cond_35

    :cond_2c
    move v1, v2

    move v0, v2

    :cond_2e
    :goto_2e
    if-eqz v0, :cond_52

    invoke-virtual {p0, p1, v1}, Lcom/google/android/gms/analytics/internal/zzah;->zza(Ljava/util/List;Z)Ljava/util/List;

    move-result-object v0

    :goto_34
    return-object v0

    :cond_35
    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzah;->zzacb()Lcom/google/android/gms/analytics/internal/zzr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzr;->zzaew()Lcom/google/android/gms/analytics/internal/zzm;

    move-result-object v0

    sget-object v3, Lcom/google/android/gms/analytics/internal/zzm;->dN:Lcom/google/android/gms/analytics/internal/zzm;

    if-eq v0, v3, :cond_50

    move v0, v1

    :goto_42
    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzah;->zzacb()Lcom/google/android/gms/analytics/internal/zzr;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/analytics/internal/zzr;->zzaex()Lcom/google/android/gms/analytics/internal/zzo;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/analytics/internal/zzo;->dY:Lcom/google/android/gms/analytics/internal/zzo;

    if-eq v3, v4, :cond_2e

    move v1, v2

    goto :goto_2e

    :cond_50
    move v0, v2

    goto :goto_42

    :cond_52
    invoke-virtual {p0, p1}, Lcom/google/android/gms/analytics/internal/zzah;->zzu(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_34
.end method

.method protected zztt()V
    .registers 1

    return-void
.end method

.method zzu(Ljava/util/List;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/analytics/internal/zzab;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/analytics/internal/zzab;

    invoke-direct {p0, v0}, Lcom/google/android/gms/analytics/internal/zzah;->zzg(Lcom/google/android/gms/analytics/internal/zzab;)Z

    move-result v3

    if-nez v3, :cond_20

    :cond_1f
    :goto_1f
    return-object v1

    :cond_20
    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzab;->zzafz()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzah;->zzacb()Lcom/google/android/gms/analytics/internal/zzr;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/analytics/internal/zzr;->zzaep()I

    move-result v3

    if-lt v0, v3, :cond_d

    goto :goto_1f
.end method

.method protected zzzy()V
    .registers 3

    const-string v0, "Network initialized. User agent"

    iget-object v1, p0, Lcom/google/android/gms/analytics/internal/zzah;->zzbre:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/analytics/internal/zzah;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
