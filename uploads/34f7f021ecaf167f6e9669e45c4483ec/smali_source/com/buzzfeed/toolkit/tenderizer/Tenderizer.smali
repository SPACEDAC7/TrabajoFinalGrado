.class public Lcom/buzzfeed/toolkit/tenderizer/Tenderizer;
.super Ljava/lang/Object;
.source "Tenderizer.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final UTM_TERM:Ljava/lang/String; = "utm_term"


# instance fields
.field private mOptOut:Z

.field private mPound:Lcom/buzzfeed/toolkit/tenderizer/Pound;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 20
    const-class v0, Lcom/buzzfeed/toolkit/tenderizer/Tenderizer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/buzzfeed/toolkit/tenderizer/Tenderizer;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "optOut"    # Z

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Lcom/buzzfeed/toolkit/doorbell/Doorbell;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/buzzfeed/toolkit/doorbell/Doorbell;-><init>(Landroid/content/Context;)V

    .line 28
    .local v0, "doorbell":Lcom/buzzfeed/toolkit/doorbell/Doorbell;
    new-instance v1, Lcom/buzzfeed/toolkit/tenderizer/Pound;

    invoke-virtual {v0}, Lcom/buzzfeed/toolkit/doorbell/Doorbell;->getUserPoundIdentifier()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lcom/buzzfeed/toolkit/tenderizer/Pound;-><init>(J)V

    iput-object v1, p0, Lcom/buzzfeed/toolkit/tenderizer/Tenderizer;->mPound:Lcom/buzzfeed/toolkit/tenderizer/Pound;

    .line 29
    iput-boolean p2, p0, Lcom/buzzfeed/toolkit/tenderizer/Tenderizer;->mOptOut:Z

    .line 30
    return-void
.end method

.method private addLegacyPound(Landroid/net/Uri;)Landroid/net/Uri;
    .registers 5
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 115
    invoke-static {p1}, Lcom/buzzfeed/toolkit/tenderizer/Tenderizer;->removeUtmTermIfPresent(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p1

    .line 117
    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 118
    .local v0, "builder":Landroid/net/Uri$Builder;
    iget-boolean v2, p0, Lcom/buzzfeed/toolkit/tenderizer/Tenderizer;->mOptOut:Z

    if-eqz v2, :cond_17

    .line 120
    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->encodedFragment(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 127
    :goto_16
    return-object v2

    .line 123
    :cond_17
    iget-object v2, p0, Lcom/buzzfeed/toolkit/tenderizer/Tenderizer;->mPound:Lcom/buzzfeed/toolkit/tenderizer/Pound;

    invoke-virtual {v2}, Lcom/buzzfeed/toolkit/tenderizer/Pound;->getHashedIdentifier()Ljava/lang/String;

    move-result-object v1

    .line 124
    .local v1, "hashedId":Ljava/lang/String;
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->encodedFragment(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 125
    const-string/jumbo v2, "utm_term"

    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 127
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    goto :goto_16
.end method

.method private containsPound(Ljava/lang/String;)Z
    .registers 4
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 78
    if-eqz p1, :cond_25

    .line 79
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 80
    .local v0, "uri":Landroid/net/Uri;
    const-string/jumbo v1, "utm_term"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 81
    invoke-virtual {v0}, Landroid/net/Uri;->getFragment()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 82
    invoke-static {v0}, Lcom/buzzfeed/toolkit/tenderizer/InterpolatedPound;->isInterpolatedPound(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 83
    :cond_23
    const/4 v1, 0x1

    .line 86
    .end local v0    # "uri":Landroid/net/Uri;
    :goto_24
    return v1

    :cond_25
    const/4 v1, 0x0

    goto :goto_24
.end method

.method public static getUserIdFromHashedPoundId(Ljava/lang/String;)J
    .registers 9
    .param p0, "hashedPoundId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/buzzfeed/toolkit/tenderizer/TenderizerParsingException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x3

    .line 164
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2e

    if-ne v3, v4, :cond_34

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v5, :cond_34

    .line 165
    invoke-virtual {p0, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 166
    .local v2, "salt":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p0, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 168
    .local v1, "pound":Ljava/lang/String;
    new-instance v3, Lcom/buzzfeed/toolkit/util/Hashids;

    invoke-direct {v3, v2}, Lcom/buzzfeed/toolkit/util/Hashids;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Lcom/buzzfeed/toolkit/util/Hashids;->decode(Ljava/lang/String;)[J

    move-result-object v0

    .line 169
    .local v0, "decoded":[J
    if-eqz v0, :cond_2b

    array-length v3, v0

    if-ge v3, v7, :cond_31

    .line 170
    :cond_2b
    new-instance v3, Lcom/buzzfeed/toolkit/tenderizer/TenderizerParsingException;

    invoke-direct {v3}, Lcom/buzzfeed/toolkit/tenderizer/TenderizerParsingException;-><init>()V

    throw v3

    .line 173
    :cond_31
    aget-wide v4, v0, v6

    return-wide v4

    .line 176
    .end local v0    # "decoded":[J
    .end local v1    # "pound":Ljava/lang/String;
    .end local v2    # "salt":Ljava/lang/String;
    :cond_34
    new-instance v3, Lcom/buzzfeed/toolkit/tenderizer/TenderizerParsingException;

    invoke-direct {v3}, Lcom/buzzfeed/toolkit/tenderizer/TenderizerParsingException;-><init>()V

    throw v3
.end method

.method private static getUtmTermFromUrl(Landroid/net/Uri;)Ljava/lang/String;
    .registers 2
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 180
    const-string/jumbo v0, "utm_term"

    invoke-virtual {p0, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static removeUtmTermIfPresent(Landroid/net/Uri;)Landroid/net/Uri;
    .registers 8
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 139
    if-eqz p0, :cond_6c

    invoke-virtual {p0}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    move-result-object v4

    const-string/jumbo v5, "utm_term"

    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6c

    .line 140
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 141
    .local v3, "preservedParameters":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1c
    :goto_1c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_39

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 142
    .local v2, "key":Ljava/lang/String;
    const-string/jumbo v5, "utm_term"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1c

    invoke-virtual {p0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1c

    .line 145
    .end local v2    # "key":Ljava/lang/String;
    :cond_39
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 146
    .local v0, "builder":Landroid/net/Uri$Builder;
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->clearQuery()Landroid/net/Uri$Builder;

    .line 147
    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_48
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_68

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 148
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_48

    .line 151
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_68
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    .line 153
    .end local v0    # "builder":Landroid/net/Uri$Builder;
    .end local v3    # "preservedParameters":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_6c
    return-object p0
.end method


# virtual methods
.method public createPoundUri(Landroid/net/Uri;)Landroid/net/Uri;
    .registers 5
    .param p1, "uri"    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 97
    invoke-static {p1}, Lcom/buzzfeed/toolkit/tenderizer/InterpolatedPound;->isInterpolatedPound(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 98
    iget-object v1, p0, Lcom/buzzfeed/toolkit/tenderizer/Tenderizer;->mPound:Lcom/buzzfeed/toolkit/tenderizer/Pound;

    invoke-virtual {v1}, Lcom/buzzfeed/toolkit/tenderizer/Pound;->getHashedIdentifier()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/buzzfeed/toolkit/tenderizer/Tenderizer;->mOptOut:Z

    invoke-static {p1, v1, v2}, Lcom/buzzfeed/toolkit/tenderizer/InterpolatedPound;->addInterpolatedPound(Landroid/net/Uri;Ljava/lang/String;Z)Landroid/net/Uri;

    move-result-object v0

    .line 102
    .local v0, "poundUri":Landroid/net/Uri;
    :goto_12
    return-object v0

    .line 100
    .end local v0    # "poundUri":Landroid/net/Uri;
    :cond_13
    invoke-direct {p0, p1}, Lcom/buzzfeed/toolkit/tenderizer/Tenderizer;->addLegacyPound(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    .restart local v0    # "poundUri":Landroid/net/Uri;
    goto :goto_12
.end method

.method public getFromClientId(Ljava/lang/String;)J
    .registers 10
    .param p1, "url"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 43
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 44
    .local v1, "uri":Landroid/net/Uri;
    const-wide/16 v2, -0x1

    .line 46
    .local v2, "fromClientId":J
    iget-boolean v6, p0, Lcom/buzzfeed/toolkit/tenderizer/Tenderizer;->mOptOut:Z

    if-nez v6, :cond_31

    invoke-direct {p0, p1}, Lcom/buzzfeed/toolkit/tenderizer/Tenderizer;->containsPound(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_31

    .line 50
    const-wide/16 v4, -0x1

    .line 51
    .local v4, "unhashedPoundId":J
    :try_start_12
    invoke-virtual {v1}, Landroid/net/Uri;->getFragment()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_32

    .line 52
    invoke-virtual {v1}, Landroid/net/Uri;->getFragment()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/buzzfeed/toolkit/tenderizer/Tenderizer;->getUserIdFromHashedPoundId(Ljava/lang/String;)J

    move-result-wide v4

    .line 59
    :cond_20
    :goto_20
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-ltz v6, :cond_31

    .line 60
    iget-object v6, p0, Lcom/buzzfeed/toolkit/tenderizer/Tenderizer;->mPound:Lcom/buzzfeed/toolkit/tenderizer/Pound;

    invoke-virtual {v6}, Lcom/buzzfeed/toolkit/tenderizer/Pound;->getIdentifier()J

    move-result-wide v6

    cmp-long v6, v6, v4

    if-eqz v6, :cond_31

    .line 61
    move-wide v2, v4

    .line 68
    .end local v4    # "unhashedPoundId":J
    :cond_31
    :goto_31
    return-wide v2

    .line 53
    .restart local v4    # "unhashedPoundId":J
    :cond_32
    invoke-static {v1}, Lcom/buzzfeed/toolkit/tenderizer/Tenderizer;->getUtmTermFromUrl(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_41

    .line 54
    invoke-static {v1}, Lcom/buzzfeed/toolkit/tenderizer/Tenderizer;->getUtmTermFromUrl(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/buzzfeed/toolkit/tenderizer/Tenderizer;->getUserIdFromHashedPoundId(Ljava/lang/String;)J

    move-result-wide v4

    goto :goto_20

    .line 55
    :cond_41
    invoke-static {v1}, Lcom/buzzfeed/toolkit/tenderizer/InterpolatedPound;->getInterpolatedPoundId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_20

    .line 56
    invoke-static {v1}, Lcom/buzzfeed/toolkit/tenderizer/InterpolatedPound;->getInterpolatedPoundId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/buzzfeed/toolkit/tenderizer/Tenderizer;->getUserIdFromHashedPoundId(Ljava/lang/String;)J
    :try_end_4e
    .catch Lcom/buzzfeed/toolkit/tenderizer/TenderizerParsingException; {:try_start_12 .. :try_end_4e} :catch_50

    move-result-wide v4

    goto :goto_20

    .line 64
    :catch_50
    move-exception v0

    .line 65
    .local v0, "e":Lcom/buzzfeed/toolkit/tenderizer/TenderizerParsingException;
    sget-object v6, Lcom/buzzfeed/toolkit/tenderizer/Tenderizer;->TAG:Ljava/lang/String;

    const-string v7, "Error parsing pound id"

    invoke-static {v6, v7, v0}, Lcom/buzzfeed/toolkit/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_31
.end method
