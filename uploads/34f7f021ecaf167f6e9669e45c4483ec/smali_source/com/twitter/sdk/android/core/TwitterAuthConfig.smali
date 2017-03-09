.class public Lcom/twitter/sdk/android/core/TwitterAuthConfig;
.super Ljava/lang/Object;
.source "TwitterAuthConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/twitter/sdk/android/core/TwitterAuthConfig;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_AUTH_REQUEST_CODE:I = 0x8c


# instance fields
.field private final consumerKey:Ljava/lang/String;

.field private final consumerSecret:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 39
    new-instance v0, Lcom/twitter/sdk/android/core/TwitterAuthConfig$1;

    invoke-direct {v0}, Lcom/twitter/sdk/android/core/TwitterAuthConfig$1;-><init>()V

    sput-object v0, Lcom/twitter/sdk/android/core/TwitterAuthConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/sdk/android/core/TwitterAuthConfig;->consumerKey:Ljava/lang/String;

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/sdk/android/core/TwitterAuthConfig;->consumerSecret:Ljava/lang/String;

    .line 71
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/twitter/sdk/android/core/TwitterAuthConfig$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/twitter/sdk/android/core/TwitterAuthConfig$1;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/twitter/sdk/android/core/TwitterAuthConfig;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "consumerKey"    # Ljava/lang/String;
    .param p2, "consumerSecret"    # Ljava/lang/String;

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    if-eqz p1, :cond_7

    if-nez p2, :cond_f

    .line 61
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "TwitterAuthConfig must not be created with null consumer key or secret."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :cond_f
    invoke-static {p1}, Lcom/twitter/sdk/android/core/TwitterAuthConfig;->sanitizeAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/sdk/android/core/TwitterAuthConfig;->consumerKey:Ljava/lang/String;

    .line 65
    invoke-static {p2}, Lcom/twitter/sdk/android/core/TwitterAuthConfig;->sanitizeAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/sdk/android/core/TwitterAuthConfig;->consumerSecret:Ljava/lang/String;

    .line 66
    return-void
.end method

.method static sanitizeAttribute(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "input"    # Ljava/lang/String;

    .prologue
    .line 119
    if-eqz p0, :cond_7

    .line 120
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 122
    :goto_6
    return-object v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 128
    const/4 v0, 0x0

    return v0
.end method

.method public getConsumerKey()Ljava/lang/String;
    .registers 2

    .prologue
    .line 99
    iget-object v0, p0, Lcom/twitter/sdk/android/core/TwitterAuthConfig;->consumerKey:Ljava/lang/String;

    return-object v0
.end method

.method public getConsumerSecret()Ljava/lang/String;
    .registers 2

    .prologue
    .line 106
    iget-object v0, p0, Lcom/twitter/sdk/android/core/TwitterAuthConfig;->consumerSecret:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestCode()I
    .registers 2

    .prologue
    .line 115
    const/16 v0, 0x8c

    return v0
.end method

.method public signRequest(Lcom/twitter/sdk/android/core/TwitterAuthToken;Ljava/net/HttpURLConnection;)V
    .registers 4
    .param p1, "accessToken"    # Lcom/twitter/sdk/android/core/TwitterAuthToken;
    .param p2, "request"    # Ljava/net/HttpURLConnection;

    .prologue
    .line 80
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/twitter/sdk/android/core/internal/oauth/OAuth1aService;->signRequest(Lcom/twitter/sdk/android/core/TwitterAuthConfig;Lcom/twitter/sdk/android/core/TwitterAuthToken;Ljava/net/HttpURLConnection;Ljava/util/Map;)V

    .line 81
    return-void
.end method

.method public signRequest(Lcom/twitter/sdk/android/core/TwitterAuthToken;Ljava/net/HttpURLConnection;Ljava/util/Map;)V
    .registers 4
    .param p1, "accessToken"    # Lcom/twitter/sdk/android/core/TwitterAuthToken;
    .param p2, "request"    # Ljava/net/HttpURLConnection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/sdk/android/core/TwitterAuthToken;",
            "Ljava/net/HttpURLConnection;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 92
    .local p3, "postParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p0, p1, p2, p3}, Lcom/twitter/sdk/android/core/internal/oauth/OAuth1aService;->signRequest(Lcom/twitter/sdk/android/core/TwitterAuthConfig;Lcom/twitter/sdk/android/core/TwitterAuthToken;Ljava/net/HttpURLConnection;Ljava/util/Map;)V

    .line 93
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 133
    iget-object v0, p0, Lcom/twitter/sdk/android/core/TwitterAuthConfig;->consumerKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 134
    iget-object v0, p0, Lcom/twitter/sdk/android/core/TwitterAuthConfig;->consumerSecret:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 135
    return-void
.end method
