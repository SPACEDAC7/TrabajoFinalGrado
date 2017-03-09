.class public final enum Lcom/buzzfeed/android/util/WebContentType;
.super Ljava/lang/Enum;
.source "WebContentType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/buzzfeed/android/util/WebContentType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/buzzfeed/android/util/WebContentType;

.field public static final enum FACEBOOK:Lcom/buzzfeed/android/util/WebContentType;

.field public static final enum SOUNDCLOUD:Lcom/buzzfeed/android/util/WebContentType;


# instance fields
.field public final url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 12
    new-instance v0, Lcom/buzzfeed/android/util/WebContentType;

    const-string v1, "FACEBOOK"

    const-string v2, "https://m.facebook.com/plugins/"

    invoke-direct {v0, v1, v3, v2}, Lcom/buzzfeed/android/util/WebContentType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/buzzfeed/android/util/WebContentType;->FACEBOOK:Lcom/buzzfeed/android/util/WebContentType;

    .line 13
    new-instance v0, Lcom/buzzfeed/android/util/WebContentType;

    const-string v1, "SOUNDCLOUD"

    const-string v2, ".soundcloud.com"

    invoke-direct {v0, v1, v4, v2}, Lcom/buzzfeed/android/util/WebContentType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/buzzfeed/android/util/WebContentType;->SOUNDCLOUD:Lcom/buzzfeed/android/util/WebContentType;

    .line 10
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/buzzfeed/android/util/WebContentType;

    sget-object v1, Lcom/buzzfeed/android/util/WebContentType;->FACEBOOK:Lcom/buzzfeed/android/util/WebContentType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/buzzfeed/android/util/WebContentType;->SOUNDCLOUD:Lcom/buzzfeed/android/util/WebContentType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/buzzfeed/android/util/WebContentType;->$VALUES:[Lcom/buzzfeed/android/util/WebContentType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .param p3, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 18
    iput-object p3, p0, Lcom/buzzfeed/android/util/WebContentType;->url:Ljava/lang/String;

    .line 19
    return-void
.end method

.method public static hasSoundCloud(Ljava/lang/String;)Z
    .registers 2
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 22
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 23
    const/4 v0, 0x0

    .line 26
    :goto_7
    return v0

    :cond_8
    sget-object v0, Lcom/buzzfeed/android/util/WebContentType;->SOUNDCLOUD:Lcom/buzzfeed/android/util/WebContentType;

    iget-object v0, v0, Lcom/buzzfeed/android/util/WebContentType;->url:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    goto :goto_7
.end method

.method public static isFacebookPlugin(Ljava/lang/String;)Z
    .registers 2
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 30
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 31
    const/4 v0, 0x0

    .line 34
    :goto_7
    return v0

    :cond_8
    sget-object v0, Lcom/buzzfeed/android/util/WebContentType;->FACEBOOK:Lcom/buzzfeed/android/util/WebContentType;

    iget-object v0, v0, Lcom/buzzfeed/android/util/WebContentType;->url:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    goto :goto_7
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/buzzfeed/android/util/WebContentType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 10
    const-class v0, Lcom/buzzfeed/android/util/WebContentType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/buzzfeed/android/util/WebContentType;

    return-object v0
.end method

.method public static values()[Lcom/buzzfeed/android/util/WebContentType;
    .registers 1

    .prologue
    .line 10
    sget-object v0, Lcom/buzzfeed/android/util/WebContentType;->$VALUES:[Lcom/buzzfeed/android/util/WebContentType;

    invoke-virtual {v0}, [Lcom/buzzfeed/android/util/WebContentType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/buzzfeed/android/util/WebContentType;

    return-object v0
.end method
