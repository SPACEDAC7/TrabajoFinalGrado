.class public Lcom/urbanairship/js/Whitelist;
.super Ljava/lang/Object;
.source "Whitelist.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/urbanairship/js/Whitelist$UriPattern;
    }
.end annotation


# static fields
.field private static final HOST_REGEX:Ljava/lang/String; = "((\\*)|(\\*\\.[^/\\*]+)|([^/\\*]+))"

.field private static final PATH_REGEX:Ljava/lang/String; = "(/.*)"

.field private static final PATTERN_REGEX:Ljava/lang/String;

.field private static final REGEX_SPECIAL_CHARACTERS:Ljava/lang/String; = "\\.[]{}()^$?+|*"

.field private static final SCHEME_REGEX:Ljava/lang/String; = "((\\*)|(http)|(https))"

.field private static final VALID_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field private final uriPatterns:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/urbanairship/js/Whitelist$UriPattern;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x2

    .line 45
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "^((\\*)|((%s://%s%s)|(%s://%s)|(file://%s)))"

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "((\\*)|(http)|(https))"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "((\\*)|(\\*\\.[^/\\*]+)|([^/\\*]+))"

    aput-object v4, v2, v3

    const-string v3, "(/.*)"

    aput-object v3, v2, v5

    const/4 v3, 0x3

    const-string v4, "((\\*)|(http)|(https))"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "((\\*)|(\\*\\.[^/\\*]+)|([^/\\*]+))"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "(/.*)"

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/urbanairship/js/Whitelist;->PATTERN_REGEX:Ljava/lang/String;

    .line 56
    sget-object v0, Lcom/urbanairship/js/Whitelist;->PATTERN_REGEX:Ljava/lang/String;

    invoke-static {v0, v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/urbanairship/js/Whitelist;->VALID_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/urbanairship/js/Whitelist;->uriPatterns:Ljava/util/List;

    return-void
.end method

.method public static createDefaultWhitelist(Lcom/urbanairship/AirshipConfigOptions;)Lcom/urbanairship/js/Whitelist;
    .registers 6
    .param p0, "airshipConfigOptions"    # Lcom/urbanairship/AirshipConfigOptions;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 195
    new-instance v1, Lcom/urbanairship/js/Whitelist;

    invoke-direct {v1}, Lcom/urbanairship/js/Whitelist;-><init>()V

    .line 196
    .local v1, "whitelist":Lcom/urbanairship/js/Whitelist;
    const-string v2, "https://*.urbanairship.com"

    invoke-virtual {v1, v2}, Lcom/urbanairship/js/Whitelist;->addEntry(Ljava/lang/String;)Z

    .line 197
    iget-object v2, p0, Lcom/urbanairship/AirshipConfigOptions;->whitelist:[Ljava/lang/String;

    if-eqz v2, :cond_1c

    .line 198
    iget-object v3, p0, Lcom/urbanairship/AirshipConfigOptions;->whitelist:[Ljava/lang/String;

    array-length v4, v3

    const/4 v2, 0x0

    :goto_12
    if-ge v2, v4, :cond_1c

    aget-object v0, v3, v2

    .line 199
    .local v0, "entry":Ljava/lang/String;
    invoke-virtual {v1, v0}, Lcom/urbanairship/js/Whitelist;->addEntry(Ljava/lang/String;)Z

    .line 198
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 203
    .end local v0    # "entry":Ljava/lang/String;
    :cond_1c
    return-object v1
.end method

.method private escapeRegEx(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 10
    .param p1, "input"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "escapeWildCards"    # Z

    .prologue
    .line 168
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 170
    .local v2, "escapedInput":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    array-length v5, v4

    const/4 v3, 0x0

    :goto_b
    if-ge v3, v5, :cond_3e

    aget-char v0, v4, v3

    .line 171
    .local v0, "c":C
    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    .line 173
    .local v1, "character":Ljava/lang/String;
    if-nez p2, :cond_30

    const-string v6, "*"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_30

    .line 174
    const-string v6, "*"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2a

    .line 175
    const-string v6, "."

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    :cond_2a
    :goto_2a
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 177
    :cond_30
    const-string v6, "\\.[]{}()^$?+|*"

    invoke-virtual {v6, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2a

    .line 178
    const-string v6, "\\"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2a

    .line 184
    .end local v0    # "c":C
    .end local v1    # "character":Ljava/lang/String;
    :cond_3e
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method public addEntry(Ljava/lang/String;)Z
    .registers 15
    .param p1, "pattern"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v8, 0x0

    const/4 v12, 0x0

    const/4 v7, 0x1

    .line 91
    if-eqz p1, :cond_11

    sget-object v9, Lcom/urbanairship/js/Whitelist;->VALID_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v9, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/regex/Matcher;->matches()Z

    move-result v9

    if-nez v9, :cond_29

    .line 92
    :cond_11
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Invalid whitelist pattern "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/urbanairship/Logger;->warn(Ljava/lang/String;)V

    move v7, v8

    .line 133
    :goto_28
    return v7

    .line 98
    :cond_29
    const-string v9, "*"

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_58

    .line 99
    iget-object v8, p0, Lcom/urbanairship/js/Whitelist;->uriPatterns:Ljava/util/List;

    new-instance v9, Lcom/urbanairship/js/Whitelist$UriPattern;

    const-string v10, "(http)|(https)"

    invoke-static {v10}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v10

    invoke-direct {v9, p0, v10, v12, v12}, Lcom/urbanairship/js/Whitelist$UriPattern;-><init>(Lcom/urbanairship/js/Whitelist;Ljava/util/regex/Pattern;Ljava/util/regex/Pattern;Ljava/util/regex/Pattern;)V

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    iget-object v8, p0, Lcom/urbanairship/js/Whitelist;->uriPatterns:Ljava/util/List;

    new-instance v9, Lcom/urbanairship/js/Whitelist$UriPattern;

    const-string v10, "file"

    invoke-static {v10}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v10

    const-string v11, "/.*"

    invoke-static {v11}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v11

    invoke-direct {v9, p0, v10, v12, v11}, Lcom/urbanairship/js/Whitelist$UriPattern;-><init>(Lcom/urbanairship/js/Whitelist;Ljava/util/regex/Pattern;Ljava/util/regex/Pattern;Ljava/util/regex/Pattern;)V

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_28

    .line 104
    :cond_58
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 105
    .local v6, "uri":Landroid/net/Uri;
    invoke-virtual {v6}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    .line 106
    .local v4, "scheme":Ljava/lang/String;
    invoke-virtual {v6}, Landroid/net/Uri;->getEncodedAuthority()Ljava/lang/String;

    move-result-object v0

    .line 107
    .local v0, "host":Ljava/lang/String;
    invoke-virtual {v6}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 110
    .local v2, "path":Ljava/lang/String;
    invoke-static {v4}, Lcom/urbanairship/util/UAStringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_76

    const-string v9, "*"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9d

    .line 111
    :cond_76
    const-string v9, "(http)|(https)"

    invoke-static {v9}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    .line 117
    .local v5, "schemePattern":Ljava/util/regex/Pattern;
    :goto_7c
    invoke-static {v0}, Lcom/urbanairship/util/UAStringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_8a

    const-string v9, "*"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a2

    .line 118
    :cond_8a
    const/4 v1, 0x0

    .line 126
    .local v1, "hostPattern":Ljava/util/regex/Pattern;
    :goto_8b
    invoke-static {v2}, Lcom/urbanairship/util/UAStringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_d4

    .line 127
    const/4 v3, 0x0

    .line 132
    .local v3, "pathPattern":Ljava/util/regex/Pattern;
    :goto_92
    iget-object v8, p0, Lcom/urbanairship/js/Whitelist;->uriPatterns:Ljava/util/List;

    new-instance v9, Lcom/urbanairship/js/Whitelist$UriPattern;

    invoke-direct {v9, p0, v5, v1, v3}, Lcom/urbanairship/js/Whitelist$UriPattern;-><init>(Lcom/urbanairship/js/Whitelist;Ljava/util/regex/Pattern;Ljava/util/regex/Pattern;Ljava/util/regex/Pattern;)V

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_28

    .line 113
    .end local v1    # "hostPattern":Ljava/util/regex/Pattern;
    .end local v3    # "pathPattern":Ljava/util/regex/Pattern;
    .end local v5    # "schemePattern":Ljava/util/regex/Pattern;
    :cond_9d
    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    .restart local v5    # "schemePattern":Ljava/util/regex/Pattern;
    goto :goto_7c

    .line 119
    :cond_a2
    const-string v9, "*."

    invoke-virtual {v0, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_cb

    .line 120
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "(.*\\.)?"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x2

    invoke-virtual {v0, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10, v7}, Lcom/urbanairship/js/Whitelist;->escapeRegEx(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .restart local v1    # "hostPattern":Ljava/util/regex/Pattern;
    goto :goto_8b

    .line 122
    .end local v1    # "hostPattern":Ljava/util/regex/Pattern;
    :cond_cb
    invoke-direct {p0, v0, v7}, Lcom/urbanairship/js/Whitelist;->escapeRegEx(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .restart local v1    # "hostPattern":Ljava/util/regex/Pattern;
    goto :goto_8b

    .line 129
    :cond_d4
    invoke-direct {p0, v2, v8}, Lcom/urbanairship/js/Whitelist;->escapeRegEx(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    .restart local v3    # "pathPattern":Ljava/util/regex/Pattern;
    goto :goto_92
.end method

.method public isWhitelisted(Ljava/lang/String;)Z
    .registers 7
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 144
    if-nez p1, :cond_4

    .line 156
    :cond_3
    :goto_3
    return v2

    .line 148
    :cond_4
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 150
    .local v1, "uri":Landroid/net/Uri;
    iget-object v3, p0, Lcom/urbanairship/js/Whitelist;->uriPatterns:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/urbanairship/js/Whitelist$UriPattern;

    .line 151
    .local v0, "pattern":Lcom/urbanairship/js/Whitelist$UriPattern;
    invoke-virtual {v0, v1}, Lcom/urbanairship/js/Whitelist$UriPattern;->matches(Landroid/net/Uri;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 152
    const/4 v2, 0x1

    goto :goto_3
.end method
