.class public Lcom/buzzfeed/toolkit/util/LogUtil;
.super Ljava/lang/Object;
.source "LogUtil.java"


# static fields
.field private static CRASHLYTICS_ACTIVE:Z = false

.field private static final LOG_PREFIX_LENGTH:I = 0x0

.field public static final MAX_LOG_LENGTH:I = 0xfa0

.field private static final MAX_LOG_TAG_LENGTH:I = 0x17

.field private static final TAG:Ljava/lang/String;

.field private static debug:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 18
    const/4 v0, 0x1

    sput-boolean v0, Lcom/buzzfeed/toolkit/util/LogUtil;->debug:Z

    .line 23
    const-class v0, Lcom/buzzfeed/toolkit/util/LogUtil;

    invoke-static {v0}, Lcom/buzzfeed/toolkit/util/LogUtil;->makeLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/buzzfeed/toolkit/util/LogUtil;->TAG:Ljava/lang/String;

    .line 25
    const/4 v0, 0x0

    sput-boolean v0, Lcom/buzzfeed/toolkit/util/LogUtil;->CRASHLYTICS_ACTIVE:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 90
    sget-boolean v1, Lcom/buzzfeed/toolkit/util/LogUtil;->debug:Z

    if-eqz v1, :cond_15

    .line 91
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xfa0

    if-le v1, v2, :cond_1d

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 93
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x3

    invoke-static {p0, v0, v1}, Lcom/buzzfeed/toolkit/util/LogUtil;->separateLongLogMessages(Ljava/lang/String;Ljava/lang/StringBuilder;I)V

    .line 98
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    :cond_15
    :goto_15
    sget-boolean v1, Lcom/buzzfeed/toolkit/util/LogUtil;->CRASHLYTICS_ACTIVE:Z

    if-eqz v1, :cond_1c

    .line 99
    invoke-static {p1}, Lcom/crashlytics/android/Crashlytics;->log(Ljava/lang/String;)V

    .line 101
    :cond_1c
    return-void

    .line 95
    :cond_1d
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15
.end method

.method public static d(Ljava/lang/String;Ljava/lang/StringBuilder;)V
    .registers 4
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    .line 107
    sget-boolean v0, Lcom/buzzfeed/toolkit/util/LogUtil;->debug:Z

    if-eqz v0, :cond_10

    .line 108
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/16 v1, 0xfa0

    if-le v0, v1, :cond_1c

    .line 109
    const/4 v0, 0x3

    invoke-static {p0, p1, v0}, Lcom/buzzfeed/toolkit/util/LogUtil;->separateLongLogMessages(Ljava/lang/String;Ljava/lang/StringBuilder;I)V

    .line 114
    :cond_10
    :goto_10
    sget-boolean v0, Lcom/buzzfeed/toolkit/util/LogUtil;->CRASHLYTICS_ACTIVE:Z

    if-eqz v0, :cond_1b

    .line 115
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/crashlytics/android/Crashlytics;->log(Ljava/lang/String;)V

    .line 117
    :cond_1b
    return-void

    .line 111
    :cond_1c
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 158
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    sget-boolean v0, Lcom/buzzfeed/toolkit/util/LogUtil;->CRASHLYTICS_ACTIVE:Z

    if-eqz v0, :cond_a

    .line 160
    invoke-static {p1}, Lcom/crashlytics/android/Crashlytics;->log(Ljava/lang/String;)V

    .line 162
    :cond_a
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 172
    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 173
    sget-boolean v0, Lcom/buzzfeed/toolkit/util/LogUtil;->CRASHLYTICS_ACTIVE:Z

    if-eqz v0, :cond_d

    .line 174
    invoke-static {p1}, Lcom/crashlytics/android/Crashlytics;->log(Ljava/lang/String;)V

    .line 175
    invoke-static {p2}, Lcom/crashlytics/android/Crashlytics;->logException(Ljava/lang/Throwable;)V

    .line 177
    :cond_d
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 126
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xfa0

    if-le v1, v2, :cond_19

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 128
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x4

    invoke-static {p0, v0, v1}, Lcom/buzzfeed/toolkit/util/LogUtil;->separateLongLogMessages(Ljava/lang/String;Ljava/lang/StringBuilder;I)V

    .line 133
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    :goto_11
    sget-boolean v1, Lcom/buzzfeed/toolkit/util/LogUtil;->CRASHLYTICS_ACTIVE:Z

    if-eqz v1, :cond_18

    .line 134
    invoke-static {p1}, Lcom/crashlytics/android/Crashlytics;->log(Ljava/lang/String;)V

    .line 136
    :cond_18
    return-void

    .line 130
    :cond_19
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11
.end method

.method private static log(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "level"    # I

    .prologue
    .line 257
    invoke-static {p2, p0, p1}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    .line 258
    return-void
.end method

.method public static makeLogTag(Ljava/lang/Class;)Ljava/lang/String;
    .registers 2
    .param p0, "cls"    # Ljava/lang/Class;

    .prologue
    .line 42
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/buzzfeed/toolkit/util/LogUtil;->makeLogTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static makeLogTag(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 29
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x17

    if-le v0, v1, :cond_f

    .line 30
    const/4 v0, 0x0

    const/16 v1, 0x16

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 32
    .end local p0    # "str":Ljava/lang/String;
    :cond_f
    return-object p0
.end method

.method public static printList(Ljava/util/AbstractList;)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/util/AbstractList;",
            ">(TT;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 187
    .local p0, "list":Ljava/util/AbstractList;, "TT;"
    const-string v0, ", "

    invoke-static {p0, v0}, Lcom/buzzfeed/toolkit/util/LogUtil;->printList(Ljava/util/AbstractList;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static printList(Ljava/util/AbstractList;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "separator"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/util/AbstractList;",
            ">(TT;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 200
    .local p0, "list":Ljava/util/AbstractList;, "TT;"
    if-nez p0, :cond_5

    .line 201
    const-string v2, ""

    .line 212
    :goto_4
    return-object v2

    .line 204
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 205
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    invoke-virtual {p0}, Ljava/util/AbstractList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2a

    .line 206
    invoke-virtual {p0, v1}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    invoke-virtual {p0}, Ljava/util/AbstractList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_27

    .line 208
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    :cond_27
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 212
    :cond_2a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_4
.end method

.method public static printMap(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .param p1, "separator"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 224
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p0, :cond_5

    .line 225
    const-string v4, ""

    .line 237
    :goto_4
    return-object v4

    .line 228
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 229
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 230
    .local v2, "i":I
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_13
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_45

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 231
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .local v3, "i":I
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v4

    if-ge v2, v4, :cond_43

    .line 233
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_43
    move v2, v3

    .line 235
    .end local v3    # "i":I
    .restart local v2    # "i":I
    goto :goto_13

    .line 237
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_45
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_4
.end method

.method private static separateLongLogMessages(Ljava/lang/String;Ljava/lang/StringBuilder;I)V
    .registers 8
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "logLevel"    # I

    .prologue
    .line 241
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Message Length "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3, p2}, Lcom/buzzfeed/toolkit/util/LogUtil;->log(Ljava/lang/String;Ljava/lang/String;I)V

    .line 242
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    div-int/lit16 v0, v3, 0xfa0

    .line 245
    .local v0, "chunkCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_21
    if-gt v1, v0, :cond_43

    .line 246
    add-int/lit8 v3, v1, 0x1

    mul-int/lit16 v2, v3, 0xfa0

    .line 248
    .local v2, "max":I
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lt v2, v3, :cond_39

    .line 249
    mul-int/lit16 v3, v1, 0xfa0

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3, p2}, Lcom/buzzfeed/toolkit/util/LogUtil;->log(Ljava/lang/String;Ljava/lang/String;I)V

    .line 245
    :goto_36
    add-int/lit8 v1, v1, 0x1

    goto :goto_21

    .line 251
    :cond_39
    mul-int/lit16 v3, v1, 0xfa0

    invoke-virtual {p1, v3, v2}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3, p2}, Lcom/buzzfeed/toolkit/util/LogUtil;->log(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_36

    .line 254
    .end local v2    # "max":I
    :cond_43
    return-void
.end method

.method public static setCrashlyticsActive(Z)V
    .registers 1
    .param p0, "active"    # Z

    .prologue
    .line 61
    sput-boolean p0, Lcom/buzzfeed/toolkit/util/LogUtil;->CRASHLYTICS_ACTIVE:Z

    .line 62
    return-void
.end method

.method public static setDebug(Z)V
    .registers 1
    .param p0, "debug"    # Z

    .prologue
    .line 51
    sput-boolean p0, Lcom/buzzfeed/toolkit/util/LogUtil;->debug:Z

    .line 52
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 71
    sget-boolean v1, Lcom/buzzfeed/toolkit/util/LogUtil;->debug:Z

    if-eqz v1, :cond_15

    .line 72
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xfa0

    if-le v1, v2, :cond_1d

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 74
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Lcom/buzzfeed/toolkit/util/LogUtil;->separateLongLogMessages(Ljava/lang/String;Ljava/lang/StringBuilder;I)V

    .line 78
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    :cond_15
    :goto_15
    sget-boolean v1, Lcom/buzzfeed/toolkit/util/LogUtil;->CRASHLYTICS_ACTIVE:Z

    if-eqz v1, :cond_1c

    .line 79
    invoke-static {p1}, Lcom/crashlytics/android/Crashlytics;->log(Ljava/lang/String;)V

    .line 81
    :cond_1c
    return-void

    .line 76
    :cond_1d
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 145
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    sget-boolean v0, Lcom/buzzfeed/toolkit/util/LogUtil;->CRASHLYTICS_ACTIVE:Z

    if-eqz v0, :cond_a

    .line 147
    invoke-static {p1}, Lcom/crashlytics/android/Crashlytics;->log(Ljava/lang/String;)V

    .line 149
    :cond_a
    return-void
.end method
