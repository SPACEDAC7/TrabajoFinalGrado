.class public Lcom/urbanairship/push/NamedUser;
.super Lcom/urbanairship/AirshipComponent;
.source "NamedUser.java"


# static fields
.field private static final CHANGE_TOKEN_KEY:Ljava/lang/String; = "com.urbanairship.nameduser.CHANGE_TOKEN_KEY"

.field private static final MAX_NAMED_USER_ID_LENGTH:I = 0x80

.field private static final NAMED_USER_ID_KEY:Ljava/lang/String; = "com.urbanairship.nameduser.NAMED_USER_ID_KEY"


# instance fields
.field private final context:Landroid/content/Context;

.field private final jobDispatcher:Lcom/urbanairship/job/JobDispatcher;

.field private final lock:Ljava/lang/Object;

.field private namedUserJobHandler:Lcom/urbanairship/push/NamedUserJobHandler;

.field private final preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/urbanairship/PreferenceDataStore;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "preferenceDataStore"    # Lcom/urbanairship/PreferenceDataStore;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 55
    invoke-static {p1}, Lcom/urbanairship/job/JobDispatcher;->shared(Landroid/content/Context;)Lcom/urbanairship/job/JobDispatcher;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/urbanairship/push/NamedUser;-><init>(Landroid/content/Context;Lcom/urbanairship/PreferenceDataStore;Lcom/urbanairship/job/JobDispatcher;)V

    .line 56
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/urbanairship/PreferenceDataStore;Lcom/urbanairship/job/JobDispatcher;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "preferenceDataStore"    # Lcom/urbanairship/PreferenceDataStore;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "dispatcher"    # Lcom/urbanairship/job/JobDispatcher;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/urbanairship/AirshipComponent;-><init>()V

    .line 44
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/urbanairship/push/NamedUser;->lock:Ljava/lang/Object;

    .line 60
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/urbanairship/push/NamedUser;->context:Landroid/content/Context;

    .line 61
    iput-object p2, p0, Lcom/urbanairship/push/NamedUser;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    .line 62
    iput-object p3, p0, Lcom/urbanairship/push/NamedUser;->jobDispatcher:Lcom/urbanairship/job/JobDispatcher;

    .line 63
    return-void
.end method

.method private updateChangeToken()V
    .registers 4

    .prologue
    .line 166
    iget-object v0, p0, Lcom/urbanairship/push/NamedUser;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    const-string v1, "com.urbanairship.nameduser.CHANGE_TOKEN_KEY"

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/urbanairship/PreferenceDataStore;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    return-void
.end method


# virtual methods
.method declared-synchronized disassociateNamedUserIfNull()V
    .registers 3

    .prologue
    .line 173
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/urbanairship/push/NamedUser;->getId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/urbanairship/util/UAStringUtil;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 174
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/urbanairship/push/NamedUser;->setId(Ljava/lang/String;)V
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    .line 176
    :cond_10
    monitor-exit p0

    return-void

    .line 173
    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method dispatchClearTagsJob()V
    .registers 4

    .prologue
    .line 193
    const-string v1, "com.urbanairship.nameduser.ACTION_CLEAR_PENDING_NAMED_USER_TAGS"

    invoke-static {v1}, Lcom/urbanairship/job/Job;->newBuilder(Ljava/lang/String;)Lcom/urbanairship/job/Job$Builder;

    move-result-object v1

    const-class v2, Lcom/urbanairship/push/NamedUser;

    .line 194
    invoke-virtual {v1, v2}, Lcom/urbanairship/job/Job$Builder;->setAirshipComponent(Ljava/lang/Class;)Lcom/urbanairship/job/Job$Builder;

    move-result-object v1

    .line 195
    invoke-virtual {v1}, Lcom/urbanairship/job/Job$Builder;->build()Lcom/urbanairship/job/Job;

    move-result-object v0

    .line 197
    .local v0, "job":Lcom/urbanairship/job/Job;
    iget-object v1, p0, Lcom/urbanairship/push/NamedUser;->jobDispatcher:Lcom/urbanairship/job/JobDispatcher;

    invoke-virtual {v1, v0}, Lcom/urbanairship/job/JobDispatcher;->dispatch(Lcom/urbanairship/job/Job;)V

    .line 198
    return-void
.end method

.method dispatchNamedUserUpdateJob()V
    .registers 4

    .prologue
    .line 182
    const-string v1, "com.urbanairship.push.ACTION_UPDATE_NAMED_USER"

    invoke-static {v1}, Lcom/urbanairship/job/Job;->newBuilder(Ljava/lang/String;)Lcom/urbanairship/job/Job$Builder;

    move-result-object v1

    const-class v2, Lcom/urbanairship/push/NamedUser;

    .line 183
    invoke-virtual {v1, v2}, Lcom/urbanairship/job/Job$Builder;->setAirshipComponent(Ljava/lang/Class;)Lcom/urbanairship/job/Job$Builder;

    move-result-object v1

    .line 184
    invoke-virtual {v1}, Lcom/urbanairship/job/Job$Builder;->build()Lcom/urbanairship/job/Job;

    move-result-object v0

    .line 186
    .local v0, "job":Lcom/urbanairship/job/Job;
    iget-object v1, p0, Lcom/urbanairship/push/NamedUser;->jobDispatcher:Lcom/urbanairship/job/JobDispatcher;

    invoke-virtual {v1, v0}, Lcom/urbanairship/job/JobDispatcher;->dispatch(Lcom/urbanairship/job/Job;)V

    .line 187
    return-void
.end method

.method dispatchUpdateTagGroupsJob()V
    .registers 4

    .prologue
    .line 204
    const-string v1, "com.urbanairship.nameduser.ACTION_UPDATE_TAG_GROUPS"

    invoke-static {v1}, Lcom/urbanairship/job/Job;->newBuilder(Ljava/lang/String;)Lcom/urbanairship/job/Job$Builder;

    move-result-object v1

    const-class v2, Lcom/urbanairship/push/NamedUser;

    .line 205
    invoke-virtual {v1, v2}, Lcom/urbanairship/job/Job$Builder;->setAirshipComponent(Ljava/lang/Class;)Lcom/urbanairship/job/Job$Builder;

    move-result-object v1

    .line 206
    invoke-virtual {v1}, Lcom/urbanairship/job/Job$Builder;->build()Lcom/urbanairship/job/Job;

    move-result-object v0

    .line 208
    .local v0, "job":Lcom/urbanairship/job/Job;
    iget-object v1, p0, Lcom/urbanairship/push/NamedUser;->jobDispatcher:Lcom/urbanairship/job/JobDispatcher;

    invoke-virtual {v1, v0}, Lcom/urbanairship/job/JobDispatcher;->dispatch(Lcom/urbanairship/job/Job;)V

    .line 209
    return-void
.end method

.method public editTagGroups()Lcom/urbanairship/push/TagGroupsEditor;
    .registers 5

    .prologue
    .line 149
    new-instance v0, Lcom/urbanairship/push/TagGroupsEditor;

    const-string v1, "com.urbanairship.nameduser.ACTION_APPLY_TAG_GROUP_CHANGES"

    const-class v2, Lcom/urbanairship/push/NamedUser;

    iget-object v3, p0, Lcom/urbanairship/push/NamedUser;->jobDispatcher:Lcom/urbanairship/job/JobDispatcher;

    invoke-direct {v0, v1, v2, v3}, Lcom/urbanairship/push/TagGroupsEditor;-><init>(Ljava/lang/String;Ljava/lang/Class;Lcom/urbanairship/job/JobDispatcher;)V

    return-object v0
.end method

.method public forceUpdate()V
    .registers 2

    .prologue
    .line 98
    const-string v0, "NamedUser - force named user update."

    invoke-static {v0}, Lcom/urbanairship/Logger;->debug(Ljava/lang/String;)V

    .line 99
    invoke-direct {p0}, Lcom/urbanairship/push/NamedUser;->updateChangeToken()V

    .line 100
    invoke-virtual {p0}, Lcom/urbanairship/push/NamedUser;->dispatchNamedUserUpdateJob()V

    .line 101
    return-void
.end method

.method getChangeToken()Ljava/lang/String;
    .registers 4
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 159
    iget-object v0, p0, Lcom/urbanairship/push/NamedUser;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    const-string v1, "com.urbanairship.nameduser.CHANGE_TOKEN_KEY"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/urbanairship/PreferenceDataStore;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 91
    iget-object v0, p0, Lcom/urbanairship/push/NamedUser;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    const-string v1, "com.urbanairship.nameduser.NAMED_USER_ID_KEY"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/urbanairship/PreferenceDataStore;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected init()V
    .registers 2

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/urbanairship/push/NamedUser;->dispatchNamedUserUpdateJob()V

    .line 71
    invoke-virtual {p0}, Lcom/urbanairship/push/NamedUser;->getId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 72
    invoke-virtual {p0}, Lcom/urbanairship/push/NamedUser;->dispatchUpdateTagGroupsJob()V

    .line 74
    :cond_c
    return-void
.end method

.method protected onPerformJob(Lcom/urbanairship/UAirship;Lcom/urbanairship/job/Job;)I
    .registers 6
    .param p1, "airship"    # Lcom/urbanairship/UAirship;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "job"    # Lcom/urbanairship/job/Job;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/urbanairship/push/NamedUser;->namedUserJobHandler:Lcom/urbanairship/push/NamedUserJobHandler;

    if-nez v0, :cond_f

    .line 79
    new-instance v0, Lcom/urbanairship/push/NamedUserJobHandler;

    iget-object v1, p0, Lcom/urbanairship/push/NamedUser;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/urbanairship/push/NamedUser;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    invoke-direct {v0, v1, p1, v2}, Lcom/urbanairship/push/NamedUserJobHandler;-><init>(Landroid/content/Context;Lcom/urbanairship/UAirship;Lcom/urbanairship/PreferenceDataStore;)V

    iput-object v0, p0, Lcom/urbanairship/push/NamedUser;->namedUserJobHandler:Lcom/urbanairship/push/NamedUserJobHandler;

    .line 82
    :cond_f
    iget-object v0, p0, Lcom/urbanairship/push/NamedUser;->namedUserJobHandler:Lcom/urbanairship/push/NamedUserJobHandler;

    invoke-virtual {v0, p2}, Lcom/urbanairship/push/NamedUserJobHandler;->performJob(Lcom/urbanairship/job/Job;)I

    move-result v0

    return v0
.end method

.method public setId(Ljava/lang/String;)V
    .registers 7
    .param p1, "namedUserId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 112
    const/4 v0, 0x0

    .line 113
    .local v0, "id":Ljava/lang/String;
    if-eqz p1, :cond_1b

    .line 114
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 115
    invoke-static {v0}, Lcom/urbanairship/util/UAStringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_15

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x80

    if-le v2, v3, :cond_1b

    .line 116
    :cond_15
    const-string v2, "Failed to set named user ID. The named user ID must be greater than 0 and less than 129 characters."

    invoke-static {v2}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    .line 141
    :goto_1a
    return-void

    .line 122
    :cond_1b
    iget-object v3, p0, Lcom/urbanairship/push/NamedUser;->lock:Ljava/lang/Object;

    monitor-enter v3

    .line 124
    :try_start_1e
    invoke-virtual {p0}, Lcom/urbanairship/push/NamedUser;->getId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_4c

    if-nez v0, :cond_4a

    const/4 v1, 0x1

    .line 127
    .local v1, "isEqual":Z
    :goto_27
    if-eqz v1, :cond_35

    invoke-virtual {p0}, Lcom/urbanairship/push/NamedUser;->getId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_55

    invoke-virtual {p0}, Lcom/urbanairship/push/NamedUser;->getChangeToken()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_55

    .line 128
    :cond_35
    iget-object v2, p0, Lcom/urbanairship/push/NamedUser;->preferenceDataStore:Lcom/urbanairship/PreferenceDataStore;

    const-string v4, "com.urbanairship.nameduser.NAMED_USER_ID_KEY"

    invoke-virtual {v2, v4, v0}, Lcom/urbanairship/PreferenceDataStore;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    invoke-direct {p0}, Lcom/urbanairship/push/NamedUser;->updateChangeToken()V

    .line 134
    invoke-virtual {p0}, Lcom/urbanairship/push/NamedUser;->dispatchClearTagsJob()V

    .line 136
    invoke-virtual {p0}, Lcom/urbanairship/push/NamedUser;->dispatchNamedUserUpdateJob()V

    .line 140
    :goto_45
    monitor-exit v3

    goto :goto_1a

    .end local v1    # "isEqual":Z
    :catchall_47
    move-exception v2

    monitor-exit v3
    :try_end_49
    .catchall {:try_start_1e .. :try_end_49} :catchall_47

    throw v2

    .line 124
    :cond_4a
    const/4 v1, 0x0

    goto :goto_27

    :cond_4c
    :try_start_4c
    invoke-virtual {p0}, Lcom/urbanairship/push/NamedUser;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_27

    .line 138
    .restart local v1    # "isEqual":Z
    :cond_55
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NamedUser - Skipping update. Named user ID trimmed already matches existing named user: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/urbanairship/push/NamedUser;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/urbanairship/Logger;->debug(Ljava/lang/String;)V
    :try_end_6f
    .catchall {:try_start_4c .. :try_end_6f} :catchall_47

    goto :goto_45
.end method
