.class public Lcom/buzzfeed/android/pushnotifications/ShowSubscriptionNotificationStorage;
.super Ljava/lang/Object;
.source "ShowSubscriptionNotificationStorage.java"


# static fields
.field private static final BULLET_POINT:Ljava/lang/String; = "\u2022"


# instance fields
.field private mMessages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mNotificationId:I


# direct methods
.method public constructor <init>(I)V
    .registers 3
    .param p1, "notificationId"    # I

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput p1, p0, Lcom/buzzfeed/android/pushnotifications/ShowSubscriptionNotificationStorage;->mNotificationId:I

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/buzzfeed/android/pushnotifications/ShowSubscriptionNotificationStorage;->mMessages:Ljava/util/List;

    .line 21
    return-void
.end method


# virtual methods
.method public addNotification(Ljava/lang/String;)V
    .registers 3
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/buzzfeed/android/pushnotifications/ShowSubscriptionNotificationStorage;->mMessages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    return-void
.end method

.method public getAllMessagesCombined()Ljava/lang/String;
    .registers 6

    .prologue
    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget-object v2, p0, Lcom/buzzfeed/android/pushnotifications/ShowSubscriptionNotificationStorage;->mMessages:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_33

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 27
    .local v1, "message":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_22

    .line 28
    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    :cond_22
    const-string/jumbo v3, "\u2022"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b

    .line 35
    .end local v1    # "message":Ljava/lang/String;
    :cond_33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getMessagesCount()I
    .registers 2

    .prologue
    .line 39
    iget-object v0, p0, Lcom/buzzfeed/android/pushnotifications/ShowSubscriptionNotificationStorage;->mMessages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getNotificationId()I
    .registers 2

    .prologue
    .line 47
    iget v0, p0, Lcom/buzzfeed/android/pushnotifications/ShowSubscriptionNotificationStorage;->mNotificationId:I

    return v0
.end method
