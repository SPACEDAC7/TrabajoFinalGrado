.class public Lcom/comscore/utils/id/IdHelper;
.super Ljava/lang/Object;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# instance fields
.field private a:Lcom/comscore/analytics/Core;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Lcom/comscore/utils/Storage;

.field private e:Landroid/content/Context;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:Ljava/lang/Boolean;

.field private m:Lcom/comscore/utils/id/IdChecker;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/comscore/utils/Storage;Lcom/comscore/analytics/Core;)V
    .registers 6

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/comscore/utils/id/IdHelper;->i:Z

    iput-boolean v0, p0, Lcom/comscore/utils/id/IdHelper;->j:Z

    iput-boolean v0, p0, Lcom/comscore/utils/id/IdHelper;->k:Z

    iput-object p1, p0, Lcom/comscore/utils/id/IdHelper;->e:Landroid/content/Context;

    iput-object p2, p0, Lcom/comscore/utils/id/IdHelper;->d:Lcom/comscore/utils/Storage;

    iput-object p3, p0, Lcom/comscore/utils/id/IdHelper;->a:Lcom/comscore/analytics/Core;

    new-instance v0, Lcom/comscore/utils/id/IdChecker;

    iget-object v1, p0, Lcom/comscore/utils/id/IdHelper;->e:Landroid/content/Context;

    invoke-direct {v0, v1, p2}, Lcom/comscore/utils/id/IdChecker;-><init>(Landroid/content/Context;Lcom/comscore/utils/Storage;)V

    iput-object v0, p0, Lcom/comscore/utils/id/IdHelper;->m:Lcom/comscore/utils/id/IdChecker;

    return-void
.end method

.method private a()V
    .registers 6

    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/comscore/utils/id/IdHelper;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/comscore/android/id/IdHelperAndroid;->getAdvertisingDeviceId(Landroid/content/Context;)Lcom/comscore/android/id/DeviceId;

    move-result-object v0

    if-nez v0, :cond_11

    iput-boolean v2, p0, Lcom/comscore/utils/id/IdHelper;->i:Z

    invoke-direct {p0, v3, v4}, Lcom/comscore/utils/id/IdHelper;->a(Ljava/lang/String;Z)V

    :goto_10
    return-void

    :cond_11
    invoke-virtual {v0}, Lcom/comscore/android/id/DeviceId;->getCommonness()I

    move-result v1

    if-nez v1, :cond_25

    invoke-virtual {v0}, Lcom/comscore/android/id/DeviceId;->getPersistency()I

    move-result v1

    if-nez v1, :cond_25

    invoke-virtual {v0}, Lcom/comscore/android/id/DeviceId;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lcom/comscore/utils/id/IdHelper;->a(Ljava/lang/String;Z)V

    goto :goto_10

    :cond_25
    iget-object v1, p0, Lcom/comscore/utils/id/IdHelper;->d:Lcom/comscore/utils/Storage;

    const-string v2, "md5RawCrossPublisherId"

    invoke-virtual {v1, v2}, Lcom/comscore/utils/Storage;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/comscore/utils/id/IdHelper;->m:Lcom/comscore/utils/id/IdChecker;

    invoke-virtual {v2, v1}, Lcom/comscore/utils/id/IdChecker;->checkCrossPublisherId(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_47

    iget-object v1, p0, Lcom/comscore/utils/id/IdHelper;->d:Lcom/comscore/utils/Storage;

    const-string v2, "md5RawCrossPublisherId"

    invoke-virtual {v1, v2}, Lcom/comscore/utils/Storage;->remove(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/comscore/utils/id/IdHelper;->d:Lcom/comscore/utils/Storage;

    const-string v2, "crossPublisherId"

    invoke-virtual {v1, v2}, Lcom/comscore/utils/Storage;->remove(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/comscore/utils/id/IdHelper;->b:Ljava/lang/String;

    iput-object v3, p0, Lcom/comscore/utils/id/IdHelper;->h:Ljava/lang/String;

    :cond_47
    invoke-virtual {v0}, Lcom/comscore/android/id/DeviceId;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v4}, Lcom/comscore/utils/id/IdHelper;->a(Ljava/lang/String;Z)V

    goto :goto_10
.end method

.method private a(Ljava/lang/String;Z)V
    .registers 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_5b

    iput-boolean p2, p0, Lcom/comscore/utils/id/IdHelper;->i:Z

    iget-object v0, p0, Lcom/comscore/utils/id/IdHelper;->d:Lcom/comscore/utils/Storage;

    const-string v2, "md5RawCrossPublisherId"

    invoke-virtual {v0, v2}, Lcom/comscore/utils/Storage;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/comscore/utils/id/IdHelper;->h:Ljava/lang/String;

    if-nez v0, :cond_2c

    move v0, v1

    :goto_13
    invoke-static {p1}, Lcom/comscore/utils/Utils;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/comscore/utils/id/IdHelper;->h:Ljava/lang/String;

    iget-object v3, p0, Lcom/comscore/utils/id/IdHelper;->h:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/comscore/utils/id/IdHelper;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2e

    iget-object v0, p0, Lcom/comscore/utils/id/IdHelper;->d:Lcom/comscore/utils/Storage;

    const-string v1, "crossPublisherId"

    invoke-virtual {v0, v1}, Lcom/comscore/utils/Storage;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/comscore/utils/id/IdHelper;->b:Ljava/lang/String;

    :goto_2b
    return-void

    :cond_2c
    const/4 v0, 0x0

    goto :goto_13

    :cond_2e
    iget-boolean v3, p0, Lcom/comscore/utils/id/IdHelper;->i:Z

    if-eqz v3, :cond_42

    if-eqz v2, :cond_42

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_42

    iget-object v3, p0, Lcom/comscore/utils/id/IdHelper;->h:Ljava/lang/String;

    if-eq v2, v3, :cond_42

    iput-boolean v1, p0, Lcom/comscore/utils/id/IdHelper;->j:Z

    iput-boolean v0, p0, Lcom/comscore/utils/id/IdHelper;->k:Z

    :cond_42
    invoke-direct {p0, p1}, Lcom/comscore/utils/id/IdHelper;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/comscore/utils/id/IdHelper;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/comscore/utils/id/IdHelper;->d:Lcom/comscore/utils/Storage;

    const-string v1, "crossPublisherId"

    iget-object v2, p0, Lcom/comscore/utils/id/IdHelper;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/comscore/utils/Storage;->set(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/comscore/utils/id/IdHelper;->d:Lcom/comscore/utils/Storage;

    const-string v1, "md5RawCrossPublisherId"

    iget-object v2, p0, Lcom/comscore/utils/id/IdHelper;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/comscore/utils/Storage;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2b

    :cond_5b
    iput-object v0, p0, Lcom/comscore/utils/id/IdHelper;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/comscore/utils/id/IdHelper;->h:Ljava/lang/String;

    goto :goto_2b
.end method

.method private a(Ljava/lang/String;)Z
    .registers 4

    iget-object v0, p0, Lcom/comscore/utils/id/IdHelper;->d:Lcom/comscore/utils/Storage;

    const-string v1, "md5RawCrossPublisherId"

    invoke-virtual {v0, v1}, Lcom/comscore/utils/Storage;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    if-eqz p1, :cond_d

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_d

    :try_start_9
    invoke-static {p1}, Lcom/comscore/utils/Utils;->encrypt(Ljava/lang/String;)Ljava/lang/String;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_c} :catch_e

    move-result-object v0

    :cond_d
    :goto_d
    return-object v0

    :catch_e
    move-exception v1

    goto :goto_d
.end method

.method private b()V
    .registers 5

    iget-object v0, p0, Lcom/comscore/utils/id/IdHelper;->d:Lcom/comscore/utils/Storage;

    const-string/jumbo v1, "vid"

    invoke-virtual {v0, v1}, Lcom/comscore/utils/Storage;->has(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_48

    iget-object v0, p0, Lcom/comscore/utils/id/IdHelper;->d:Lcom/comscore/utils/Storage;

    const-string/jumbo v1, "vid"

    invoke-virtual {v0, v1}, Lcom/comscore/utils/Storage;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/comscore/utils/id/IdHelper;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/comscore/utils/id/IdHelper;->m:Lcom/comscore/utils/id/IdChecker;

    invoke-virtual {v0}, Lcom/comscore/utils/id/IdChecker;->checkVisitorId()Z

    move-result v0

    if-nez v0, :cond_a3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/comscore/utils/id/IdHelper;->d:Lcom/comscore/utils/Storage;

    const-string/jumbo v2, "vid"

    invoke-virtual {v1, v2}, Lcom/comscore/utils/Storage;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "cs_c12u"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/comscore/utils/id/IdHelper;->a:Lcom/comscore/analytics/Core;

    sget-object v2, Lcom/comscore/applications/EventType;->AGGREGATE:Lcom/comscore/applications/EventType;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Lcom/comscore/analytics/Core;->notify(Lcom/comscore/applications/EventType;Ljava/util/HashMap;Z)V

    iget-object v0, p0, Lcom/comscore/utils/id/IdHelper;->d:Lcom/comscore/utils/Storage;

    const-string/jumbo v1, "vid"

    invoke-virtual {v0, v1}, Lcom/comscore/utils/Storage;->remove(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/comscore/utils/id/IdHelper;->c:Ljava/lang/String;

    :cond_48
    const-string v0, "-cs"

    iget-object v1, p0, Lcom/comscore/utils/id/IdHelper;->e:Landroid/content/Context;

    invoke-static {v1}, Lcom/comscore/android/id/IdHelperAndroid;->getDeviceId(Landroid/content/Context;)Lcom/comscore/android/id/DeviceId;

    move-result-object v1

    invoke-virtual {v1}, Lcom/comscore/android/id/DeviceId;->getId()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Lcom/comscore/android/id/DeviceId;->getSuffix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/comscore/utils/id/IdHelper;->c:Ljava/lang/String;

    if-nez v1, :cond_a3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/comscore/utils/id/IdHelper;->getPublisherSecret()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/comscore/utils/Utils;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/comscore/utils/id/IdHelper;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/comscore/utils/id/IdHelper;->d:Lcom/comscore/utils/Storage;

    const-string/jumbo v1, "vid"

    iget-object v2, p0, Lcom/comscore/utils/id/IdHelper;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/comscore/utils/Storage;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a3
    return-void
.end method

.method private c()Z
    .registers 3

    iget-object v0, p0, Lcom/comscore/utils/id/IdHelper;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/comscore/android/id/IdHelperAndroid;->isAdvertisingIdEnabled(Landroid/content/Context;)Z

    move-result v0

    iget-object v1, p0, Lcom/comscore/utils/id/IdHelper;->l:Ljava/lang/Boolean;

    if-nez v1, :cond_11

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/comscore/utils/id/IdHelper;->l:Ljava/lang/Boolean;

    :cond_10
    :goto_10
    return v0

    :cond_11
    iget-object v1, p0, Lcom/comscore/utils/id/IdHelper;->l:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eq v1, v0, :cond_10

    invoke-direct {p0}, Lcom/comscore/utils/id/IdHelper;->a()V

    goto :goto_10
.end method


# virtual methods
.method public generateIds()V
    .registers 2

    invoke-virtual {p0}, Lcom/comscore/utils/id/IdHelper;->isPublisherSecretEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    :goto_6
    return-void

    :cond_7
    iget-object v0, p0, Lcom/comscore/utils/id/IdHelper;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/comscore/android/id/IdHelperAndroid;->getDeviceId(Landroid/content/Context;)Lcom/comscore/android/id/DeviceId;

    move-result-object v0

    invoke-virtual {v0}, Lcom/comscore/android/id/DeviceId;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/comscore/utils/id/IdHelper;->g:Ljava/lang/String;

    invoke-direct {p0}, Lcom/comscore/utils/id/IdHelper;->b()V

    invoke-direct {p0}, Lcom/comscore/utils/id/IdHelper;->a()V

    goto :goto_6
.end method

.method public getAndroidId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/comscore/utils/id/IdHelper;->g:Ljava/lang/String;

    return-object v0
.end method

.method public getCrossPublisherId()Ljava/lang/String;
    .registers 2

    iget-boolean v0, p0, Lcom/comscore/utils/id/IdHelper;->i:Z

    if-eqz v0, :cond_1e

    invoke-direct {p0}, Lcom/comscore/utils/id/IdHelper;->c()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-direct {p0}, Lcom/comscore/utils/id/IdHelper;->a()V

    iget-boolean v0, p0, Lcom/comscore/utils/id/IdHelper;->j:Z

    if-eqz v0, :cond_18

    iget-boolean v0, p0, Lcom/comscore/utils/id/IdHelper;->k:Z

    if-nez v0, :cond_18

    const-string v0, "none"

    :goto_17
    return-object v0

    :cond_18
    iget-object v0, p0, Lcom/comscore/utils/id/IdHelper;->b:Ljava/lang/String;

    goto :goto_17

    :cond_1b
    const-string v0, "none"

    goto :goto_17

    :cond_1e
    iget-object v0, p0, Lcom/comscore/utils/id/IdHelper;->b:Ljava/lang/String;

    goto :goto_17
.end method

.method public getMD5AdvertisingId()Ljava/lang/String;
    .registers 2

    iget-boolean v0, p0, Lcom/comscore/utils/id/IdHelper;->i:Z

    if-eqz v0, :cond_d

    invoke-direct {p0}, Lcom/comscore/utils/id/IdHelper;->c()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/comscore/utils/id/IdHelper;->h:Ljava/lang/String;

    :goto_c
    return-object v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public getPublisherSecret()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/comscore/utils/id/IdHelper;->f:Ljava/lang/String;

    if-nez v0, :cond_8

    const-string v0, ""

    iput-object v0, p0, Lcom/comscore/utils/id/IdHelper;->f:Ljava/lang/String;

    :cond_8
    iget-object v0, p0, Lcom/comscore/utils/id/IdHelper;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getVisitorId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/comscore/utils/id/IdHelper;->c:Ljava/lang/String;

    return-object v0
.end method

.method public isIdChanged()Z
    .registers 2

    iget-boolean v0, p0, Lcom/comscore/utils/id/IdHelper;->j:Z

    return v0
.end method

.method public isPublisherSecretEmpty()Z
    .registers 2

    iget-object v0, p0, Lcom/comscore/utils/id/IdHelper;->f:Ljava/lang/String;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/comscore/utils/id/IdHelper;->f:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public resetVisitorId()V
    .registers 3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/comscore/utils/id/IdHelper;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/comscore/utils/id/IdHelper;->d:Lcom/comscore/utils/Storage;

    const-string/jumbo v1, "vid"

    invoke-virtual {v0, v1}, Lcom/comscore/utils/Storage;->has(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_13

    :goto_12
    return-void

    :cond_13
    iget-object v0, p0, Lcom/comscore/utils/id/IdHelper;->d:Lcom/comscore/utils/Storage;

    const-string/jumbo v1, "vid"

    invoke-virtual {v0, v1}, Lcom/comscore/utils/Storage;->remove(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/comscore/utils/id/IdHelper;->generateIds()V

    goto :goto_12
.end method

.method public setPublisherSecret(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/comscore/utils/id/IdHelper;->f:Ljava/lang/String;

    return-void
.end method
