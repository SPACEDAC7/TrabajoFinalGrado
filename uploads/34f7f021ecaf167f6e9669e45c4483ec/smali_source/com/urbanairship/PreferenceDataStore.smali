.class public final Lcom/urbanairship/PreferenceDataStore;
.super Ljava/lang/Object;
.source "PreferenceDataStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/urbanairship/PreferenceDataStore$Preference;,
        Lcom/urbanairship/PreferenceDataStore$PreferenceChangeListener;
    }
.end annotation


# static fields
.field private static final WHERE_CLAUSE_KEY:Ljava/lang/String; = "_id = ?"


# instance fields
.field private final context:Landroid/content/Context;

.field executor:Ljava/util/concurrent/Executor;

.field private final listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/urbanairship/PreferenceDataStore$PreferenceChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private final preferences:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/urbanairship/PreferenceDataStore$Preference;",
            ">;"
        }
    .end annotation
.end field

.field private final resolver:Lcom/urbanairship/UrbanAirshipResolver;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 62
    new-instance v0, Lcom/urbanairship/UrbanAirshipResolver;

    invoke-direct {v0, p1}, Lcom/urbanairship/UrbanAirshipResolver;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, v0}, Lcom/urbanairship/PreferenceDataStore;-><init>(Landroid/content/Context;Lcom/urbanairship/UrbanAirshipResolver;)V

    .line 63
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/urbanairship/UrbanAirshipResolver;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resolver"    # Lcom/urbanairship/UrbanAirshipResolver;

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/urbanairship/PreferenceDataStore;->executor:Ljava/util/concurrent/Executor;

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/urbanairship/PreferenceDataStore;->preferences:Ljava/util/Map;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/urbanairship/PreferenceDataStore;->listeners:Ljava/util/List;

    .line 66
    iput-object p1, p0, Lcom/urbanairship/PreferenceDataStore;->context:Landroid/content/Context;

    .line 67
    iput-object p2, p0, Lcom/urbanairship/PreferenceDataStore;->resolver:Lcom/urbanairship/UrbanAirshipResolver;

    .line 68
    return-void
.end method

.method static synthetic access$100(Lcom/urbanairship/PreferenceDataStore;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/urbanairship/PreferenceDataStore;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/urbanairship/PreferenceDataStore;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/urbanairship/PreferenceDataStore;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/urbanairship/PreferenceDataStore;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/urbanairship/PreferenceDataStore;->onPreferenceChanged(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/urbanairship/PreferenceDataStore;)Lcom/urbanairship/UrbanAirshipResolver;
    .registers 2
    .param p0, "x0"    # Lcom/urbanairship/PreferenceDataStore;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/urbanairship/PreferenceDataStore;->resolver:Lcom/urbanairship/UrbanAirshipResolver;

    return-object v0
.end method

.method private getPreference(Ljava/lang/String;)Lcom/urbanairship/PreferenceDataStore$Preference;
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 330
    iget-object v2, p0, Lcom/urbanairship/PreferenceDataStore;->preferences:Ljava/util/Map;

    monitor-enter v2

    .line 331
    :try_start_3
    iget-object v1, p0, Lcom/urbanairship/PreferenceDataStore;->preferences:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 332
    iget-object v1, p0, Lcom/urbanairship/PreferenceDataStore;->preferences:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/urbanairship/PreferenceDataStore$Preference;

    .line 339
    .local v0, "preference":Lcom/urbanairship/PreferenceDataStore$Preference;
    :goto_13
    monitor-exit v2

    .line 341
    return-object v0

    .line 334
    .end local v0    # "preference":Lcom/urbanairship/PreferenceDataStore$Preference;
    :cond_15
    new-instance v0, Lcom/urbanairship/PreferenceDataStore$Preference;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/urbanairship/PreferenceDataStore$Preference;-><init>(Lcom/urbanairship/PreferenceDataStore;Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    .restart local v0    # "preference":Lcom/urbanairship/PreferenceDataStore$Preference;
    invoke-virtual {v0}, Lcom/urbanairship/PreferenceDataStore$Preference;->registerObserver()V

    .line 337
    iget-object v1, p0, Lcom/urbanairship/PreferenceDataStore;->preferences:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_13

    .line 339
    .end local v0    # "preference":Lcom/urbanairship/PreferenceDataStore$Preference;
    :catchall_24
    move-exception v1

    monitor-exit v2
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_24

    throw v1
.end method

.method private onPreferenceChanged(Ljava/lang/String;)V
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 314
    iget-object v2, p0, Lcom/urbanairship/PreferenceDataStore;->listeners:Ljava/util/List;

    monitor-enter v2

    .line 315
    :try_start_3
    iget-object v1, p0, Lcom/urbanairship/PreferenceDataStore;->listeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/urbanairship/PreferenceDataStore$PreferenceChangeListener;

    .line 316
    .local v0, "listener":Lcom/urbanairship/PreferenceDataStore$PreferenceChangeListener;
    invoke-interface {v0, p1}, Lcom/urbanairship/PreferenceDataStore$PreferenceChangeListener;->onPreferenceChange(Ljava/lang/String;)V

    goto :goto_9

    .line 318
    .end local v0    # "listener":Lcom/urbanairship/PreferenceDataStore$PreferenceChangeListener;
    :catchall_19
    move-exception v1

    monitor-exit v2
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v1

    :cond_1c
    :try_start_1c
    monitor-exit v2
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_19

    .line 319
    return-void
.end method


# virtual methods
.method public addListener(Lcom/urbanairship/PreferenceDataStore$PreferenceChangeListener;)V
    .registers 4
    .param p1, "listener"    # Lcom/urbanairship/PreferenceDataStore$PreferenceChangeListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 76
    iget-object v1, p0, Lcom/urbanairship/PreferenceDataStore;->listeners:Ljava/util/List;

    monitor-enter v1

    .line 77
    :try_start_3
    iget-object v0, p0, Lcom/urbanairship/PreferenceDataStore;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    monitor-exit v1

    .line 79
    return-void

    .line 78
    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "defaultValue"    # Z

    .prologue
    .line 133
    invoke-direct {p0, p1}, Lcom/urbanairship/PreferenceDataStore;->getPreference(Ljava/lang/String;)Lcom/urbanairship/PreferenceDataStore$Preference;

    move-result-object v1

    invoke-virtual {v1}, Lcom/urbanairship/PreferenceDataStore$Preference;->get()Ljava/lang/String;

    move-result-object v0

    .line 134
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_b

    .end local p2    # "defaultValue":Z
    :goto_a
    return p2

    .restart local p2    # "defaultValue":Z
    :cond_b
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    goto :goto_a
.end method

.method public getInt(Ljava/lang/String;I)I
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "defaultValue"    # I

    .prologue
    .line 180
    invoke-direct {p0, p1}, Lcom/urbanairship/PreferenceDataStore;->getPreference(Ljava/lang/String;)Lcom/urbanairship/PreferenceDataStore$Preference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/urbanairship/PreferenceDataStore$Preference;->get()Ljava/lang/String;

    move-result-object v1

    .line 181
    .local v1, "value":Ljava/lang/String;
    if-nez v1, :cond_b

    .line 188
    .end local p2    # "defaultValue":I
    :goto_a
    return p2

    .line 186
    .restart local p2    # "defaultValue":I
    :cond_b
    :try_start_b
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_e
    .catch Ljava/lang/NumberFormatException; {:try_start_b .. :try_end_e} :catch_10

    move-result p2

    goto :goto_a

    .line 187
    :catch_10
    move-exception v0

    .line 188
    .local v0, "e":Ljava/lang/NumberFormatException;
    goto :goto_a
.end method

.method public getJsonValue(Ljava/lang/String;)Lcom/urbanairship/json/JsonValue;
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 200
    :try_start_0
    invoke-direct {p0, p1}, Lcom/urbanairship/PreferenceDataStore;->getPreference(Ljava/lang/String;)Lcom/urbanairship/PreferenceDataStore$Preference;

    move-result-object v1

    invoke-virtual {v1}, Lcom/urbanairship/PreferenceDataStore$Preference;->get()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/urbanairship/json/JsonValue;->parseString(Ljava/lang/String;)Lcom/urbanairship/json/JsonValue;
    :try_end_b
    .catch Lcom/urbanairship/json/JsonException; {:try_start_0 .. :try_end_b} :catch_d

    move-result-object v1

    .line 204
    :goto_c
    return-object v1

    .line 201
    :catch_d
    move-exception v0

    .line 203
    .local v0, "e":Lcom/urbanairship/json/JsonException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to parse preference value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/urbanairship/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 204
    sget-object v1, Lcom/urbanairship/json/JsonValue;->NULL:Lcom/urbanairship/json/JsonValue;

    goto :goto_c
.end method

.method public getLong(Ljava/lang/String;J)J
    .registers 8
    .param p1, "key"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "defaultValue"    # J

    .prologue
    .line 159
    invoke-direct {p0, p1}, Lcom/urbanairship/PreferenceDataStore;->getPreference(Ljava/lang/String;)Lcom/urbanairship/PreferenceDataStore$Preference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/urbanairship/PreferenceDataStore$Preference;->get()Ljava/lang/String;

    move-result-object v1

    .line 160
    .local v1, "value":Ljava/lang/String;
    if-nez v1, :cond_b

    .line 167
    .end local p2    # "defaultValue":J
    :goto_a
    return-wide p2

    .line 165
    .restart local p2    # "defaultValue":J
    :cond_b
    :try_start_b
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_e
    .catch Ljava/lang/NumberFormatException; {:try_start_b .. :try_end_e} :catch_10

    move-result-wide p2

    goto :goto_a

    .line 166
    :catch_10
    move-exception v0

    .line 167
    .local v0, "e":Ljava/lang/NumberFormatException;
    goto :goto_a
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 145
    invoke-direct {p0, p1}, Lcom/urbanairship/PreferenceDataStore;->getPreference(Ljava/lang/String;)Lcom/urbanairship/PreferenceDataStore$Preference;

    move-result-object v1

    invoke-virtual {v1}, Lcom/urbanairship/PreferenceDataStore$Preference;->get()Ljava/lang/String;

    move-result-object v0

    .line 146
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_b

    .end local p2    # "defaultValue":Ljava/lang/String;
    :goto_a
    return-object p2

    .restart local p2    # "defaultValue":Ljava/lang/String;
    :cond_b
    move-object p2, v0

    goto :goto_a
.end method

.method protected init()V
    .registers 13

    .prologue
    const/4 v2, 0x0

    .line 96
    iget-object v0, p0, Lcom/urbanairship/PreferenceDataStore;->resolver:Lcom/urbanairship/UrbanAirshipResolver;

    iget-object v1, p0, Lcom/urbanairship/PreferenceDataStore;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/urbanairship/UrbanAirshipProvider;->getPreferencesContentUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/urbanairship/UrbanAirshipResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 97
    .local v6, "cursor":Landroid/database/Cursor;
    if-nez v6, :cond_13

    .line 114
    :goto_12
    return-void

    .line 101
    :cond_13
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 102
    .local v8, "keyIndex":I
    const-string/jumbo v0, "value"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 104
    .local v11, "valueIndex":I
    :goto_20
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 105
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 106
    .local v7, "key":Ljava/lang/String;
    invoke-interface {v6, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 107
    .local v10, "value":Ljava/lang/String;
    new-instance v9, Lcom/urbanairship/PreferenceDataStore$Preference;

    invoke-direct {v9, p0, v7, v10}, Lcom/urbanairship/PreferenceDataStore$Preference;-><init>(Lcom/urbanairship/PreferenceDataStore;Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    .local v9, "preference":Lcom/urbanairship/PreferenceDataStore$Preference;
    invoke-virtual {v9}, Lcom/urbanairship/PreferenceDataStore$Preference;->registerObserver()V

    .line 110
    iget-object v0, p0, Lcom/urbanairship/PreferenceDataStore;->preferences:Ljava/util/Map;

    invoke-interface {v0, v7, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_20

    .line 113
    .end local v7    # "key":Ljava/lang/String;
    .end local v9    # "preference":Lcom/urbanairship/PreferenceDataStore$Preference;
    .end local v10    # "value":Ljava/lang/String;
    :cond_3c
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_12
.end method

.method public put(Ljava/lang/String;I)V
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "value"    # I

    .prologue
    .line 253
    invoke-direct {p0, p1}, Lcom/urbanairship/PreferenceDataStore;->getPreference(Ljava/lang/String;)Lcom/urbanairship/PreferenceDataStore$Preference;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/urbanairship/PreferenceDataStore$Preference;->put(Ljava/lang/String;)V

    .line 254
    return-void
.end method

.method public put(Ljava/lang/String;J)V
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "value"    # J

    .prologue
    .line 243
    invoke-direct {p0, p1}, Lcom/urbanairship/PreferenceDataStore;->getPreference(Ljava/lang/String;)Lcom/urbanairship/PreferenceDataStore$Preference;

    move-result-object v0

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/urbanairship/PreferenceDataStore$Preference;->put(Ljava/lang/String;)V

    .line 244
    return-void
.end method

.method public put(Ljava/lang/String;Lcom/urbanairship/json/JsonSerializable;)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "value"    # Lcom/urbanairship/json/JsonSerializable;

    .prologue
    .line 287
    if-nez p2, :cond_6

    .line 288
    invoke-virtual {p0, p1}, Lcom/urbanairship/PreferenceDataStore;->remove(Ljava/lang/String;)V

    .line 292
    :goto_5
    return-void

    .line 290
    :cond_6
    invoke-interface {p2}, Lcom/urbanairship/json/JsonSerializable;->toJsonValue()Lcom/urbanairship/json/JsonValue;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/urbanairship/PreferenceDataStore;->put(Ljava/lang/String;Lcom/urbanairship/json/JsonValue;)V

    goto :goto_5
.end method

.method public put(Ljava/lang/String;Lcom/urbanairship/json/JsonValue;)V
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "value"    # Lcom/urbanairship/json/JsonValue;

    .prologue
    .line 273
    if-nez p2, :cond_6

    .line 274
    invoke-virtual {p0, p1}, Lcom/urbanairship/PreferenceDataStore;->remove(Ljava/lang/String;)V

    .line 278
    :goto_5
    return-void

    .line 276
    :cond_6
    invoke-direct {p0, p1}, Lcom/urbanairship/PreferenceDataStore;->getPreference(Ljava/lang/String;)Lcom/urbanairship/PreferenceDataStore$Preference;

    move-result-object v0

    invoke-virtual {p2}, Lcom/urbanairship/json/JsonValue;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/urbanairship/PreferenceDataStore$Preference;->put(Ljava/lang/String;)V

    goto :goto_5
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 233
    invoke-direct {p0, p1}, Lcom/urbanairship/PreferenceDataStore;->getPreference(Ljava/lang/String;)Lcom/urbanairship/PreferenceDataStore$Preference;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/urbanairship/PreferenceDataStore$Preference;->put(Ljava/lang/String;)V

    .line 234
    return-void
.end method

.method public put(Ljava/lang/String;Z)V
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "value"    # Z

    .prologue
    .line 263
    invoke-direct {p0, p1}, Lcom/urbanairship/PreferenceDataStore;->getPreference(Ljava/lang/String;)Lcom/urbanairship/PreferenceDataStore$Preference;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/urbanairship/PreferenceDataStore$Preference;->put(Ljava/lang/String;)V

    .line 264
    return-void
.end method

.method public putSync(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 304
    if-nez p2, :cond_c

    const/4 v0, 0x0

    .line 305
    .local v0, "stringValue":Ljava/lang/String;
    :goto_3
    invoke-direct {p0, p1}, Lcom/urbanairship/PreferenceDataStore;->getPreference(Ljava/lang/String;)Lcom/urbanairship/PreferenceDataStore$Preference;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/urbanairship/PreferenceDataStore$Preference;->putSync(Ljava/lang/String;)Z

    move-result v1

    return v1

    .line 304
    .end local v0    # "stringValue":Ljava/lang/String;
    :cond_c
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method

.method public remove(Ljava/lang/String;)V
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 214
    const/4 v1, 0x0

    .line 215
    .local v1, "preference":Lcom/urbanairship/PreferenceDataStore$Preference;
    iget-object v3, p0, Lcom/urbanairship/PreferenceDataStore;->preferences:Ljava/util/Map;

    monitor-enter v3

    .line 216
    :try_start_4
    iget-object v2, p0, Lcom/urbanairship/PreferenceDataStore;->preferences:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 217
    iget-object v2, p0, Lcom/urbanairship/PreferenceDataStore;->preferences:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/urbanairship/PreferenceDataStore$Preference;

    move-object v1, v0

    .line 219
    :cond_16
    monitor-exit v3
    :try_end_17
    .catchall {:try_start_4 .. :try_end_17} :catchall_1e

    .line 221
    if-eqz v1, :cond_1d

    .line 222
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/urbanairship/PreferenceDataStore$Preference;->put(Ljava/lang/String;)V

    .line 224
    :cond_1d
    return-void

    .line 219
    :catchall_1e
    move-exception v2

    :try_start_1f
    monitor-exit v3
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    throw v2
.end method

.method public removeListener(Lcom/urbanairship/PreferenceDataStore$PreferenceChangeListener;)V
    .registers 4
    .param p1, "listener"    # Lcom/urbanairship/PreferenceDataStore$PreferenceChangeListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 87
    iget-object v1, p0, Lcom/urbanairship/PreferenceDataStore;->listeners:Ljava/util/List;

    monitor-enter v1

    .line 88
    :try_start_3
    iget-object v0, p0, Lcom/urbanairship/PreferenceDataStore;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 89
    monitor-exit v1

    .line 90
    return-void

    .line 89
    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method protected tearDown()V
    .registers 4

    .prologue
    .line 120
    iget-object v1, p0, Lcom/urbanairship/PreferenceDataStore;->preferences:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/urbanairship/PreferenceDataStore$Preference;

    .line 121
    .local v0, "preference":Lcom/urbanairship/PreferenceDataStore$Preference;
    invoke-virtual {v0}, Lcom/urbanairship/PreferenceDataStore$Preference;->unregisterObserver()V

    goto :goto_a

    .line 123
    .end local v0    # "preference":Lcom/urbanairship/PreferenceDataStore$Preference;
    :cond_1a
    return-void
.end method
