.class public final Lcom/urbanairship/actions/ActionRegistry;
.super Ljava/lang/Object;
.source "ActionRegistry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/urbanairship/actions/ActionRegistry$Entry;,
        Lcom/urbanairship/actions/ActionRegistry$Predicate;
    }
.end annotation


# static fields
.field private static final LANDING_PAGE_CACHE_OPEN_TIME_LIMIT_MS:J = 0x240c8400L


# instance fields
.field private final actionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/urbanairship/actions/ActionRegistry$Entry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/urbanairship/actions/ActionRegistry;->actionMap:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public getEntries()Ljava/util/Set;
    .registers 4
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/urbanairship/actions/ActionRegistry$Entry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 121
    iget-object v1, p0, Lcom/urbanairship/actions/ActionRegistry;->actionMap:Ljava/util/Map;

    monitor-enter v1

    .line 122
    :try_start_3
    new-instance v0, Ljava/util/HashSet;

    iget-object v2, p0, Lcom/urbanairship/actions/ActionRegistry;->actionMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    monitor-exit v1

    return-object v0

    .line 123
    :catchall_10
    move-exception v0

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v0
.end method

.method public getEntry(Ljava/lang/String;)Lcom/urbanairship/actions/ActionRegistry$Entry;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 105
    invoke-static {p1}, Lcom/urbanairship/util/UAStringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 106
    const/4 v0, 0x0

    .line 110
    :goto_7
    return-object v0

    .line 109
    :cond_8
    iget-object v1, p0, Lcom/urbanairship/actions/ActionRegistry;->actionMap:Ljava/util/Map;

    monitor-enter v1

    .line 110
    :try_start_b
    iget-object v0, p0, Lcom/urbanairship/actions/ActionRegistry;->actionMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/urbanairship/actions/ActionRegistry$Entry;

    monitor-exit v1

    goto :goto_7

    .line 111
    :catchall_15
    move-exception v0

    monitor-exit v1
    :try_end_17
    .catchall {:try_start_b .. :try_end_17} :catchall_15

    throw v0
.end method

.method public varargs registerAction(Lcom/urbanairship/actions/Action;[Ljava/lang/String;)Lcom/urbanairship/actions/ActionRegistry$Entry;
    .registers 10
    .param p1, "action"    # Lcom/urbanairship/actions/Action;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "names"    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x0

    .line 59
    if-nez p1, :cond_b

    .line 60
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Unable to an register a null action"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 64
    :cond_b
    if-eqz p2, :cond_10

    array-length v4, p2

    if-nez v4, :cond_18

    .line 65
    :cond_10
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Unable to an action without a name."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 69
    :cond_18
    array-length v5, p2

    move v4, v3

    :goto_1a
    if-ge v4, v5, :cond_2f

    aget-object v2, p2, v4

    .line 70
    .local v2, "name":Ljava/lang/String;
    invoke-static {v2}, Lcom/urbanairship/util/UAStringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2c

    .line 71
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Unable to register action because one or more of the names was null or empty."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 69
    :cond_2c
    add-int/lit8 v4, v4, 0x1

    goto :goto_1a

    .line 75
    .end local v2    # "name":Ljava/lang/String;
    :cond_2f
    iget-object v4, p0, Lcom/urbanairship/actions/ActionRegistry;->actionMap:Ljava/util/Map;

    monitor-enter v4

    .line 77
    :try_start_32
    new-instance v0, Lcom/urbanairship/actions/ActionRegistry$Entry;

    const/4 v5, 0x0

    invoke-direct {v0, p1, p2, v5}, Lcom/urbanairship/actions/ActionRegistry$Entry;-><init>(Lcom/urbanairship/actions/Action;[Ljava/lang/String;Lcom/urbanairship/actions/ActionRegistry$1;)V

    .line 79
    .local v0, "entry":Lcom/urbanairship/actions/ActionRegistry$Entry;
    array-length v5, p2

    :goto_39
    if-ge v3, v5, :cond_5c

    aget-object v2, p2, v3

    .line 81
    .restart local v2    # "name":Ljava/lang/String;
    invoke-static {v2}, Lcom/urbanairship/util/UAStringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_46

    .line 79
    :goto_43
    add-int/lit8 v3, v3, 0x1

    goto :goto_39

    .line 85
    :cond_46
    iget-object v6, p0, Lcom/urbanairship/actions/ActionRegistry;->actionMap:Ljava/util/Map;

    invoke-interface {v6, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/urbanairship/actions/ActionRegistry$Entry;

    .line 86
    .local v1, "existingEntry":Lcom/urbanairship/actions/ActionRegistry$Entry;
    if-eqz v1, :cond_53

    .line 87
    invoke-static {v1, v2}, Lcom/urbanairship/actions/ActionRegistry$Entry;->access$100(Lcom/urbanairship/actions/ActionRegistry$Entry;Ljava/lang/String;)V

    .line 90
    :cond_53
    iget-object v6, p0, Lcom/urbanairship/actions/ActionRegistry;->actionMap:Ljava/util/Map;

    invoke-interface {v6, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_43

    .line 94
    .end local v0    # "entry":Lcom/urbanairship/actions/ActionRegistry$Entry;
    .end local v1    # "existingEntry":Lcom/urbanairship/actions/ActionRegistry$Entry;
    .end local v2    # "name":Ljava/lang/String;
    :catchall_59
    move-exception v3

    monitor-exit v4
    :try_end_5b
    .catchall {:try_start_32 .. :try_end_5b} :catchall_59

    throw v3

    .line 93
    .restart local v0    # "entry":Lcom/urbanairship/actions/ActionRegistry$Entry;
    :cond_5c
    :try_start_5c
    monitor-exit v4
    :try_end_5d
    .catchall {:try_start_5c .. :try_end_5d} :catchall_59

    return-object v0
.end method

.method public registerDefaultActions()V
    .registers 13

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 152
    new-instance v6, Lcom/urbanairship/actions/ShareAction;

    invoke-direct {v6}, Lcom/urbanairship/actions/ShareAction;-><init>()V

    new-array v7, v11, [Ljava/lang/String;

    const-string v8, "share_action"

    aput-object v8, v7, v9

    const-string v8, "^s"

    aput-object v8, v7, v10

    invoke-virtual {p0, v6, v7}, Lcom/urbanairship/actions/ActionRegistry;->registerAction(Lcom/urbanairship/actions/Action;[Ljava/lang/String;)Lcom/urbanairship/actions/ActionRegistry$Entry;

    .line 156
    new-instance v6, Lcom/urbanairship/actions/OpenExternalUrlAction;

    invoke-direct {v6}, Lcom/urbanairship/actions/OpenExternalUrlAction;-><init>()V

    new-array v7, v11, [Ljava/lang/String;

    const-string v8, "open_external_url_action"

    aput-object v8, v7, v9

    const-string v8, "^u"

    aput-object v8, v7, v10

    invoke-virtual {p0, v6, v7}, Lcom/urbanairship/actions/ActionRegistry;->registerAction(Lcom/urbanairship/actions/Action;[Ljava/lang/String;)Lcom/urbanairship/actions/ActionRegistry$Entry;

    .line 160
    new-instance v6, Lcom/urbanairship/actions/DeepLinkAction;

    invoke-direct {v6}, Lcom/urbanairship/actions/DeepLinkAction;-><init>()V

    new-array v7, v11, [Ljava/lang/String;

    const-string v8, "deep_link_action"

    aput-object v8, v7, v9

    const-string v8, "^d"

    aput-object v8, v7, v10

    invoke-virtual {p0, v6, v7}, Lcom/urbanairship/actions/ActionRegistry;->registerAction(Lcom/urbanairship/actions/Action;[Ljava/lang/String;)Lcom/urbanairship/actions/ActionRegistry$Entry;

    .line 164
    new-instance v6, Lcom/urbanairship/actions/WalletAction;

    invoke-direct {v6}, Lcom/urbanairship/actions/WalletAction;-><init>()V

    new-array v7, v11, [Ljava/lang/String;

    const-string/jumbo v8, "wallet_action"

    aput-object v8, v7, v9

    const-string v8, "^w"

    aput-object v8, v7, v10

    invoke-virtual {p0, v6, v7}, Lcom/urbanairship/actions/ActionRegistry;->registerAction(Lcom/urbanairship/actions/Action;[Ljava/lang/String;)Lcom/urbanairship/actions/ActionRegistry$Entry;

    .line 168
    new-instance v6, Lcom/urbanairship/actions/LandingPageAction;

    invoke-direct {v6}, Lcom/urbanairship/actions/LandingPageAction;-><init>()V

    new-array v7, v11, [Ljava/lang/String;

    const-string v8, "landing_page_action"

    aput-object v8, v7, v9

    const-string v8, "^p"

    aput-object v8, v7, v10

    invoke-virtual {p0, v6, v7}, Lcom/urbanairship/actions/ActionRegistry;->registerAction(Lcom/urbanairship/actions/Action;[Ljava/lang/String;)Lcom/urbanairship/actions/ActionRegistry$Entry;

    move-result-object v3

    .line 172
    .local v3, "landingPageEntry":Lcom/urbanairship/actions/ActionRegistry$Entry;
    new-instance v6, Lcom/urbanairship/actions/ActionRegistry$1;

    invoke-direct {v6, p0}, Lcom/urbanairship/actions/ActionRegistry$1;-><init>(Lcom/urbanairship/actions/ActionRegistry;)V

    invoke-virtual {v3, v6}, Lcom/urbanairship/actions/ActionRegistry$Entry;->setPredicate(Lcom/urbanairship/actions/ActionRegistry$Predicate;)V

    .line 183
    new-instance v4, Lcom/urbanairship/actions/ActionRegistry$2;

    invoke-direct {v4, p0}, Lcom/urbanairship/actions/ActionRegistry$2;-><init>(Lcom/urbanairship/actions/ActionRegistry;)V

    .line 190
    .local v4, "rejectPushReceivedPredicate":Lcom/urbanairship/actions/ActionRegistry$Predicate;
    new-instance v6, Lcom/urbanairship/actions/tags/AddTagsAction;

    invoke-direct {v6}, Lcom/urbanairship/actions/tags/AddTagsAction;-><init>()V

    new-array v7, v11, [Ljava/lang/String;

    const-string v8, "add_tags_action"

    aput-object v8, v7, v9

    const-string v8, "^+t"

    aput-object v8, v7, v10

    invoke-virtual {p0, v6, v7}, Lcom/urbanairship/actions/ActionRegistry;->registerAction(Lcom/urbanairship/actions/Action;[Ljava/lang/String;)Lcom/urbanairship/actions/ActionRegistry$Entry;

    move-result-object v1

    .line 194
    .local v1, "addTagsEntry":Lcom/urbanairship/actions/ActionRegistry$Entry;
    invoke-virtual {v1, v4}, Lcom/urbanairship/actions/ActionRegistry$Entry;->setPredicate(Lcom/urbanairship/actions/ActionRegistry$Predicate;)V

    .line 196
    new-instance v6, Lcom/urbanairship/actions/tags/RemoveTagsAction;

    invoke-direct {v6}, Lcom/urbanairship/actions/tags/RemoveTagsAction;-><init>()V

    new-array v7, v11, [Ljava/lang/String;

    const-string v8, "remove_tags_action"

    aput-object v8, v7, v9

    const-string v8, "^-t"

    aput-object v8, v7, v10

    invoke-virtual {p0, v6, v7}, Lcom/urbanairship/actions/ActionRegistry;->registerAction(Lcom/urbanairship/actions/Action;[Ljava/lang/String;)Lcom/urbanairship/actions/ActionRegistry$Entry;

    move-result-object v5

    .line 200
    .local v5, "removeTagsEntry":Lcom/urbanairship/actions/ActionRegistry$Entry;
    invoke-virtual {v5, v4}, Lcom/urbanairship/actions/ActionRegistry$Entry;->setPredicate(Lcom/urbanairship/actions/ActionRegistry$Predicate;)V

    .line 202
    new-instance v6, Lcom/urbanairship/actions/AddCustomEventAction;

    invoke-direct {v6}, Lcom/urbanairship/actions/AddCustomEventAction;-><init>()V

    new-array v7, v10, [Ljava/lang/String;

    const-string v8, "add_custom_event_action"

    aput-object v8, v7, v9

    invoke-virtual {p0, v6, v7}, Lcom/urbanairship/actions/ActionRegistry;->registerAction(Lcom/urbanairship/actions/Action;[Ljava/lang/String;)Lcom/urbanairship/actions/ActionRegistry$Entry;

    move-result-object v0

    .line 205
    .local v0, "addCustomEventEntry":Lcom/urbanairship/actions/ActionRegistry$Entry;
    invoke-virtual {v0, v4}, Lcom/urbanairship/actions/ActionRegistry$Entry;->setPredicate(Lcom/urbanairship/actions/ActionRegistry$Predicate;)V

    .line 207
    new-instance v6, Lcom/urbanairship/actions/OpenRichPushInboxAction;

    invoke-direct {v6}, Lcom/urbanairship/actions/OpenRichPushInboxAction;-><init>()V

    new-array v7, v11, [Ljava/lang/String;

    const-string v8, "open_mc_action"

    aput-object v8, v7, v9

    const-string v8, "^mc"

    aput-object v8, v7, v10

    invoke-virtual {p0, v6, v7}, Lcom/urbanairship/actions/ActionRegistry;->registerAction(Lcom/urbanairship/actions/Action;[Ljava/lang/String;)Lcom/urbanairship/actions/ActionRegistry$Entry;

    .line 211
    new-instance v6, Lcom/urbanairship/actions/OverlayRichPushMessageAction;

    invoke-direct {v6}, Lcom/urbanairship/actions/OverlayRichPushMessageAction;-><init>()V

    new-array v7, v11, [Ljava/lang/String;

    const-string v8, "open_mc_overlay_action"

    aput-object v8, v7, v9

    const-string v8, "^mco"

    aput-object v8, v7, v10

    invoke-virtual {p0, v6, v7}, Lcom/urbanairship/actions/ActionRegistry;->registerAction(Lcom/urbanairship/actions/Action;[Ljava/lang/String;)Lcom/urbanairship/actions/ActionRegistry$Entry;

    .line 215
    new-instance v6, Lcom/urbanairship/actions/ClipboardAction;

    invoke-direct {v6}, Lcom/urbanairship/actions/ClipboardAction;-><init>()V

    new-array v7, v11, [Ljava/lang/String;

    const-string v8, "clipboard_action"

    aput-object v8, v7, v9

    const-string v8, "^c"

    aput-object v8, v7, v10

    invoke-virtual {p0, v6, v7}, Lcom/urbanairship/actions/ActionRegistry;->registerAction(Lcom/urbanairship/actions/Action;[Ljava/lang/String;)Lcom/urbanairship/actions/ActionRegistry$Entry;

    .line 219
    new-instance v6, Lcom/urbanairship/actions/ToastAction;

    invoke-direct {v6}, Lcom/urbanairship/actions/ToastAction;-><init>()V

    new-array v7, v10, [Ljava/lang/String;

    const-string/jumbo v8, "toast_action"

    aput-object v8, v7, v9

    invoke-virtual {p0, v6, v7}, Lcom/urbanairship/actions/ActionRegistry;->registerAction(Lcom/urbanairship/actions/Action;[Ljava/lang/String;)Lcom/urbanairship/actions/ActionRegistry$Entry;

    .line 222
    new-instance v6, Lcom/urbanairship/actions/CancelSchedulesAction;

    invoke-direct {v6}, Lcom/urbanairship/actions/CancelSchedulesAction;-><init>()V

    new-array v7, v11, [Ljava/lang/String;

    const-string v8, "cancel_scheduled_actions"

    aput-object v8, v7, v9

    const-string v8, "^csa"

    aput-object v8, v7, v10

    invoke-virtual {p0, v6, v7}, Lcom/urbanairship/actions/ActionRegistry;->registerAction(Lcom/urbanairship/actions/Action;[Ljava/lang/String;)Lcom/urbanairship/actions/ActionRegistry$Entry;

    .line 226
    new-instance v6, Lcom/urbanairship/actions/ScheduleAction;

    invoke-direct {v6}, Lcom/urbanairship/actions/ScheduleAction;-><init>()V

    new-array v7, v11, [Ljava/lang/String;

    const-string v8, "schedule_actions"

    aput-object v8, v7, v9

    const-string v8, "^sa"

    aput-object v8, v7, v10

    invoke-virtual {p0, v6, v7}, Lcom/urbanairship/actions/ActionRegistry;->registerAction(Lcom/urbanairship/actions/Action;[Ljava/lang/String;)Lcom/urbanairship/actions/ActionRegistry$Entry;

    .line 230
    new-instance v6, Lcom/urbanairship/actions/FetchDeviceInfoAction;

    invoke-direct {v6}, Lcom/urbanairship/actions/FetchDeviceInfoAction;-><init>()V

    new-array v7, v11, [Ljava/lang/String;

    const-string v8, "fetch_device_info"

    aput-object v8, v7, v9

    const-string v8, "^fdi"

    aput-object v8, v7, v10

    invoke-virtual {p0, v6, v7}, Lcom/urbanairship/actions/ActionRegistry;->registerAction(Lcom/urbanairship/actions/Action;[Ljava/lang/String;)Lcom/urbanairship/actions/ActionRegistry$Entry;

    move-result-object v2

    .line 234
    .local v2, "fetchDeviceInfoEntry":Lcom/urbanairship/actions/ActionRegistry$Entry;
    new-instance v6, Lcom/urbanairship/actions/ActionRegistry$3;

    invoke-direct {v6, p0}, Lcom/urbanairship/actions/ActionRegistry$3;-><init>(Lcom/urbanairship/actions/ActionRegistry;)V

    invoke-virtual {v2, v6}, Lcom/urbanairship/actions/ActionRegistry$Entry;->setPredicate(Lcom/urbanairship/actions/ActionRegistry$Predicate;)V

    .line 241
    return-void
.end method

.method public unregisterAction(Ljava/lang/String;)V
    .registers 7
    .param p1, "name"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 132
    invoke-static {p1}, Lcom/urbanairship/util/UAStringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 146
    :goto_6
    return-void

    .line 136
    :cond_7
    iget-object v3, p0, Lcom/urbanairship/actions/ActionRegistry;->actionMap:Ljava/util/Map;

    monitor-enter v3

    .line 137
    :try_start_a
    invoke-virtual {p0, p1}, Lcom/urbanairship/actions/ActionRegistry;->getEntry(Ljava/lang/String;)Lcom/urbanairship/actions/ActionRegistry$Entry;

    move-result-object v0

    .line 138
    .local v0, "entry":Lcom/urbanairship/actions/ActionRegistry$Entry;
    if-nez v0, :cond_15

    .line 139
    monitor-exit v3

    goto :goto_6

    .line 145
    .end local v0    # "entry":Lcom/urbanairship/actions/ActionRegistry$Entry;
    :catchall_12
    move-exception v2

    monitor-exit v3
    :try_end_14
    .catchall {:try_start_a .. :try_end_14} :catchall_12

    throw v2

    .line 142
    .restart local v0    # "entry":Lcom/urbanairship/actions/ActionRegistry$Entry;
    :cond_15
    :try_start_15
    invoke-virtual {v0}, Lcom/urbanairship/actions/ActionRegistry$Entry;->getNames()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 143
    .local v1, "entryName":Ljava/lang/String;
    iget-object v4, p0, Lcom/urbanairship/actions/ActionRegistry;->actionMap:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1d

    .line 145
    .end local v1    # "entryName":Ljava/lang/String;
    :cond_2f
    monitor-exit v3
    :try_end_30
    .catchall {:try_start_15 .. :try_end_30} :catchall_12

    goto :goto_6
.end method
