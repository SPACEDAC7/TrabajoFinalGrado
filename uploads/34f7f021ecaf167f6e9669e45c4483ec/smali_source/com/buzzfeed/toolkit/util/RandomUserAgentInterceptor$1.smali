.class final Lcom/buzzfeed/toolkit/util/RandomUserAgentInterceptor$1;
.super Ljava/util/ArrayList;
.source "RandomUserAgentInterceptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/buzzfeed/toolkit/util/RandomUserAgentInterceptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 3

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 13
    new-instance v0, Ljava/lang/String;

    const-string v1, "Mozilla/5.0 (Linux; Android 4.4.4; SM-G900V Build/KTU84P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/38.0.2125.102 Mobile Safari/537.36"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/buzzfeed/toolkit/util/RandomUserAgentInterceptor$1;->add(Ljava/lang/Object;)Z

    .line 14
    new-instance v0, Ljava/lang/String;

    const-string v1, "Mozilla/5.0 (Linux; Android 4.4.2; SCH-I545 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/38.0.2125.102 Mobile Safari/537.36"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/buzzfeed/toolkit/util/RandomUserAgentInterceptor$1;->add(Ljava/lang/Object;)Z

    .line 15
    new-instance v0, Ljava/lang/String;

    const-string v1, "Mozilla/5.0 (Linux; Android 4.4.2; en-us; SAMSUNG SCH-I545 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko) Version/1.5 Chrome/28.0.1500.94 Mobile Safari/537.36"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/buzzfeed/toolkit/util/RandomUserAgentInterceptor$1;->add(Ljava/lang/Object;)Z

    .line 16
    new-instance v0, Ljava/lang/String;

    const-string v1, "Mozilla/5.0 (Linux; Android 4.4.4; Nexus 5 Build/KTU84P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/38.0.2125.102 Mobile Safari/537.36"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/buzzfeed/toolkit/util/RandomUserAgentInterceptor$1;->add(Ljava/lang/Object;)Z

    .line 17
    new-instance v0, Ljava/lang/String;

    const-string v1, "Mozilla/5.0 (Linux; U; Android 4.4.2; en-us; SCH-I535 Build/KOT49H) AppleWebKit/534.30 (KHTML, like Gecko) Version/4.0 Mobile Safari/534.30"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/buzzfeed/toolkit/util/RandomUserAgentInterceptor$1;->add(Ljava/lang/Object;)Z

    .line 18
    new-instance v0, Ljava/lang/String;

    const-string v1, "Mozilla/5.0 (Linux; Android 4.4.2; SCH-I545 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/30.0.0.0 Mobile Safari/537.36"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/buzzfeed/toolkit/util/RandomUserAgentInterceptor$1;->add(Ljava/lang/Object;)Z

    .line 19
    new-instance v0, Ljava/lang/String;

    const-string v1, "Mozilla/5.0 (Linux; Android 4.4.4; SM-G900V Build/KTU84P) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/33.0.0.0 Mobile Safari/537.36"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/buzzfeed/toolkit/util/RandomUserAgentInterceptor$1;->add(Ljava/lang/Object;)Z

    .line 20
    new-instance v0, Ljava/lang/String;

    const-string v1, "Mozilla/5.0 (Linux; Android 4.4.2; SAMSUNG-SGH-I337 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/38.0.2125.102 Mobile Safari/537.36"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/buzzfeed/toolkit/util/RandomUserAgentInterceptor$1;->add(Ljava/lang/Object;)Z

    .line 21
    new-instance v0, Ljava/lang/String;

    const-string v1, "Mozilla/5.0 (Linux; Android 4.4.2; GT-I9505 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/38.0.2125.102 Mobile Safari/537.36"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/buzzfeed/toolkit/util/RandomUserAgentInterceptor$1;->add(Ljava/lang/Object;)Z

    .line 22
    new-instance v0, Ljava/lang/String;

    const-string v1, "Mozilla/5.0 (Linux; Android 4.4.2; SAMSUNG-SM-G900A Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/38.0.2125.102 Mobile Safari/537.36"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/buzzfeed/toolkit/util/RandomUserAgentInterceptor$1;->add(Ljava/lang/Object;)Z

    .line 23
    new-instance v0, Ljava/lang/String;

    const-string v1, "Mozilla/5.0 (Android; Mobile; rv:33.0) Gecko/33.0 Firefox/33.0"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/buzzfeed/toolkit/util/RandomUserAgentInterceptor$1;->add(Ljava/lang/Object;)Z

    .line 24
    new-instance v0, Ljava/lang/String;

    const-string v1, "Mozilla/5.0 (Linux; Android 4.4.4; XT1080 Build/SU4.21) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/38.0.2125.102 Mobile Safari/537.36"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/buzzfeed/toolkit/util/RandomUserAgentInterceptor$1;->add(Ljava/lang/Object;)Z

    .line 25
    new-instance v0, Ljava/lang/String;

    const-string v1, "Mozilla/5.0 (Linux; Android 4.4.2; en-us; SAMSUNG-SM-G900A Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko) Version/1.6 Chrome/28.0.1500.94 Mobile Safari/537.36"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/buzzfeed/toolkit/util/RandomUserAgentInterceptor$1;->add(Ljava/lang/Object;)Z

    .line 26
    new-instance v0, Ljava/lang/String;

    const-string v1, "Mozilla/5.0 (Linux; Android 4.4.2; en-us; SAMSUNG-SGH-I337 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko) Version/1.5 Chrome/28.0.1500.94 Mobile Safari/537.36"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/buzzfeed/toolkit/util/RandomUserAgentInterceptor$1;->add(Ljava/lang/Object;)Z

    .line 27
    new-instance v0, Ljava/lang/String;

    const-string v1, "Mozilla/5.0 (Linux; Android 4.4.2; SM-G900T Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/38.0.2125.102 Mobile Safari/537.36"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/buzzfeed/toolkit/util/RandomUserAgentInterceptor$1;->add(Ljava/lang/Object;)Z

    .line 28
    new-instance v0, Ljava/lang/String;

    const-string v1, "Mozilla/5.0 (Linux; Android 4.4.2; SCH-I535 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/30.0.0.0 Mobile Safari/537.36"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/buzzfeed/toolkit/util/RandomUserAgentInterceptor$1;->add(Ljava/lang/Object;)Z

    .line 29
    new-instance v0, Ljava/lang/String;

    const-string v1, "Mozilla/5.0 (Linux; U; Android 4.4.2; en-us; SPH-L710 Build/KOT49H) AppleWebKit/534.30 (KHTML, like Gecko) Version/4.0 Mobile Safari/534.30"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/buzzfeed/toolkit/util/RandomUserAgentInterceptor$1;->add(Ljava/lang/Object;)Z

    .line 30
    new-instance v0, Ljava/lang/String;

    const-string v1, "Mozilla/5.0 (Linux; Android 4.4.2; en-us; SAMSUNG SM-G900T Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko) Version/1.6 Chrome/28.0.1500.94 Mobile Safari/537.36"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/buzzfeed/toolkit/util/RandomUserAgentInterceptor$1;->add(Ljava/lang/Object;)Z

    .line 31
    new-instance v0, Ljava/lang/String;

    const-string v1, "Mozilla/5.0 (Linux; Android 4.4.4; Nexus 4 Build/KTU84P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/38.0.2125.102 Mobile Safari/537.36"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/buzzfeed/toolkit/util/RandomUserAgentInterceptor$1;->add(Ljava/lang/Object;)Z

    .line 32
    new-instance v0, Ljava/lang/String;

    const-string v1, "Mozilla/5.0 (Linux; Android 4.4.2; GT-I9505 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/30.0.0.0 Mobile Safari/537.36"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/buzzfeed/toolkit/util/RandomUserAgentInterceptor$1;->add(Ljava/lang/Object;)Z

    .line 33
    new-instance v0, Ljava/lang/String;

    const-string v1, "Mozilla/5.0 (Linux; Android 4.4.2; SAMSUNG-SGH-I337 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/30.0.0.0 Mobile Safari/537.36"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/buzzfeed/toolkit/util/RandomUserAgentInterceptor$1;->add(Ljava/lang/Object;)Z

    .line 34
    new-instance v0, Ljava/lang/String;

    const-string v1, "Mozilla/5.0 (Linux; Android 4.4.2; SM-G900F Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/38.0.2125.102 Mobile Safari/537.36"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/buzzfeed/toolkit/util/RandomUserAgentInterceptor$1;->add(Ljava/lang/Object;)Z

    .line 35
    new-instance v0, Ljava/lang/String;

    const-string v1, "Mozilla/5.0 (Linux; Android 4.4.2; SPH-L720 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/38.0.2125.102 Mobile Safari/537.36"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/buzzfeed/toolkit/util/RandomUserAgentInterceptor$1;->add(Ljava/lang/Object;)Z

    .line 36
    new-instance v0, Ljava/lang/String;

    const-string v1, "Mozilla/5.0 (Linux; Android 4.4.2; SAMSUNG-SM-G900A Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/30.0.0.0 Mobile Safari/537.36"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/buzzfeed/toolkit/util/RandomUserAgentInterceptor$1;->add(Ljava/lang/Object;)Z

    .line 37
    new-instance v0, Ljava/lang/String;

    const-string v1, "Mozilla/5.0 (Linux; Android 4.4.2; VS980 4G Build/KOT49I.VS98026A) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/38.0.2125.102 Mobile Safari/537.36"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/buzzfeed/toolkit/util/RandomUserAgentInterceptor$1;->add(Ljava/lang/Object;)Z

    .line 38
    new-instance v0, Ljava/lang/String;

    const-string v1, "Mozilla/5.0 (Linux; Android 4.4.2; SM-G900P Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/38.0.2125.102 Mobile Safari/537.36"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/buzzfeed/toolkit/util/RandomUserAgentInterceptor$1;->add(Ljava/lang/Object;)Z

    .line 39
    new-instance v0, Ljava/lang/String;

    const-string v1, "Mozilla/5.0 (Linux; Android 4.4.2; en-us; SAMSUNG SM-G900P Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko) Version/1.6 Chrome/28.0.1500.94 Mobile Safari/537.36"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/buzzfeed/toolkit/util/RandomUserAgentInterceptor$1;->add(Ljava/lang/Object;)Z

    .line 40
    new-instance v0, Ljava/lang/String;

    const-string v1, "Mozilla/5.0 (Linux; Android 4.4.2; en-us; SAMSUNG SPH-L720 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko) Version/1.5 Chrome/28.0.1500.94 Mobile Safari/537.36"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/buzzfeed/toolkit/util/RandomUserAgentInterceptor$1;->add(Ljava/lang/Object;)Z

    .line 41
    new-instance v0, Ljava/lang/String;

    const-string v1, "Mozilla/5.0 (Linux; Android 4.4.2; SM-N9005 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/38.0.2125.102 Mobile Safari/537.36"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/buzzfeed/toolkit/util/RandomUserAgentInterceptor$1;->add(Ljava/lang/Object;)Z

    .line 42
    new-instance v0, Ljava/lang/String;

    const-string v1, "Mozilla/5.0 (Linux; Android 4.4.4; Nexus 7 Build/KTU84P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/38.0.2125.102 Safari/537.36"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/buzzfeed/toolkit/util/RandomUserAgentInterceptor$1;->add(Ljava/lang/Object;)Z

    .line 43
    new-instance v0, Ljava/lang/String;

    const-string v1, "Mozilla/5.0 (Linux; Android 4.4.2; SM-G900T Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/30.0.0.0 Mobile Safari/537.36"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/buzzfeed/toolkit/util/RandomUserAgentInterceptor$1;->add(Ljava/lang/Object;)Z

    .line 44
    new-instance v0, Ljava/lang/String;

    const-string v1, "Mozilla/5.0 (Linux; Android 4.4.4; Nexus 5 Build/KTU84P) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/33.0.0.0 Mobile Safari/537.36"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/buzzfeed/toolkit/util/RandomUserAgentInterceptor$1;->add(Ljava/lang/Object;)Z

    .line 45
    new-instance v0, Ljava/lang/String;

    const-string v1, "Mozilla/5.0 (Linux; Android 4.4.2; SM-G900F Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/30.0.0.0 Mobile Safari/537.36"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/buzzfeed/toolkit/util/RandomUserAgentInterceptor$1;->add(Ljava/lang/Object;)Z

    .line 46
    new-instance v0, Ljava/lang/String;

    const-string v1, "Mozilla/5.0 (Linux; Android 4.4.2; SM-N900V Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/38.0.2125.102 Mobile Safari/537.36"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/buzzfeed/toolkit/util/RandomUserAgentInterceptor$1;->add(Ljava/lang/Object;)Z

    .line 47
    new-instance v0, Ljava/lang/String;

    const-string v1, "Mozilla/5.0 (Linux; Android 4.4.2; en-us; SAMSUNG SM-N900V Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko) Version/1.5 Chrome/28.0.1500.94 Mobile Safari/537.36"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/buzzfeed/toolkit/util/RandomUserAgentInterceptor$1;->add(Ljava/lang/Object;)Z

    .line 48
    new-instance v0, Ljava/lang/String;

    const-string v1, "Mozilla/5.0 (Linux; Android 4.4.2; SPH-L710 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/30.0.0.0 Mobile Safari/537.36"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/buzzfeed/toolkit/util/RandomUserAgentInterceptor$1;->add(Ljava/lang/Object;)Z

    .line 49
    new-instance v0, Ljava/lang/String;

    const-string v1, "Mozilla/5.0 (Linux; Android 4.4.2; SGH-I337M Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/38.0.2125.102 Mobile Safari/537.36"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/buzzfeed/toolkit/util/RandomUserAgentInterceptor$1;->add(Ljava/lang/Object;)Z

    .line 50
    new-instance v0, Ljava/lang/String;

    const-string v1, "Mozilla/5.0 (Linux; Android 4.4.2; en-gb; SAMSUNG GT-I9505 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko) Version/1.5 Chrome/28.0.1500.94 Mobile Safari/537.36"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/buzzfeed/toolkit/util/RandomUserAgentInterceptor$1;->add(Ljava/lang/Object;)Z

    .line 51
    new-instance v0, Ljava/lang/String;

    const-string v1, "Mozilla/5.0 (Linux; Android 4.4.4; XT1032 Build/KXB21.14-L1.40) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/38.0.2125.102 Mobile Safari/537.36"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/buzzfeed/toolkit/util/RandomUserAgentInterceptor$1;->add(Ljava/lang/Object;)Z

    .line 52
    new-instance v0, Ljava/lang/String;

    const-string v1, "Mozilla/5.0 (Linux; Android 4.4.4; Nexus 7 Build/KTU84P) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/33.0.0.0 Safari/537.36"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/buzzfeed/toolkit/util/RandomUserAgentInterceptor$1;->add(Ljava/lang/Object;)Z

    .line 53
    new-instance v0, Ljava/lang/String;

    const-string v1, "Mozilla/5.0 (Linux; Android 4.4.2; SAMSUNG-SM-N900A Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/38.0.2125.102 Mobile Safari/537.36"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/buzzfeed/toolkit/util/RandomUserAgentInterceptor$1;->add(Ljava/lang/Object;)Z

    .line 54
    new-instance v0, Ljava/lang/String;

    const-string v1, "Dalvik/1.6.0 (Linux; U; Android 4.4.2; SCH-I545 Build/KOT49H)"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/buzzfeed/toolkit/util/RandomUserAgentInterceptor$1;->add(Ljava/lang/Object;)Z

    .line 55
    new-instance v0, Ljava/lang/String;

    const-string v1, "Mozilla/5.0 (Linux; U; Android 4.4.2; en-us; SAMSUNG-SGH-I747 Build/KOT49H) AppleWebKit/534.30 (KHTML, like Gecko) Version/4.0 Mobile Safari/534.30"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/buzzfeed/toolkit/util/RandomUserAgentInterceptor$1;->add(Ljava/lang/Object;)Z

    .line 56
    new-instance v0, Ljava/lang/String;

    const-string v1, "Mozilla/5.0 (Linux; Android 4.4.4; XT1058 Build/KXA21.12-L1.26) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/38.0.2125.102 Mobile Safari/537.36"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/buzzfeed/toolkit/util/RandomUserAgentInterceptor$1;->add(Ljava/lang/Object;)Z

    .line 57
    new-instance v0, Ljava/lang/String;

    const-string v1, "Mozilla/5.0 (Linux; Android 4.4.4; XT1060 Build/KXA21.12-L1.26) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/38.0.2125.102 Mobile Safari/537.36"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/buzzfeed/toolkit/util/RandomUserAgentInterceptor$1;->add(Ljava/lang/Object;)Z

    .line 58
    new-instance v0, Ljava/lang/String;

    const-string v1, "Mozilla/5.0 (Linux; Android 4.4.3; HTC One Build/KTU84L) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/38.0.2125.102 Mobile Safari/537.36"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/buzzfeed/toolkit/util/RandomUserAgentInterceptor$1;->add(Ljava/lang/Object;)Z

    .line 59
    new-instance v0, Ljava/lang/String;

    const-string v1, "Mozilla/5.0 (Linux; Android 4.4.4; XT1030 Build/SU4.21) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/38.0.2125.102 Mobile Safari/537.36"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/buzzfeed/toolkit/util/RandomUserAgentInterceptor$1;->add(Ljava/lang/Object;)Z

    .line 60
    new-instance v0, Ljava/lang/String;

    const-string v1, "Mozilla/5.0 (Linux; Android 4.4.3; HTC6525LVW Build/KTU84L) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/38.0.2125.102 Mobile Safari/537.36"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/buzzfeed/toolkit/util/RandomUserAgentInterceptor$1;->add(Ljava/lang/Object;)Z

    .line 61
    new-instance v0, Ljava/lang/String;

    const-string v1, "Dalvik/1.6.0 (Linux; U; Android 4.4.4; Nexus 7 Build/KTU84P)"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/buzzfeed/toolkit/util/RandomUserAgentInterceptor$1;->add(Ljava/lang/Object;)Z

    .line 62
    new-instance v0, Ljava/lang/String;

    const-string v1, "Mozilla/5.0 (Linux; Android 4.4.2; SPH-L720 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/30.0.0.0 Mobile Safari/537.36"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/buzzfeed/toolkit/util/RandomUserAgentInterceptor$1;->add(Ljava/lang/Object;)Z

    .line 63
    return-void
.end method
