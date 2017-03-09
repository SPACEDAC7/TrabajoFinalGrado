.class public Lcom/buzzfeed/toolkit/networking/urbanairship/UAPostNotificationBody$Builder;
.super Ljava/lang/Object;
.source "UAPostNotificationBody.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/buzzfeed/toolkit/networking/urbanairship/UAPostNotificationBody;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mChannelId:Ljava/lang/String;

.field private mExtras:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTag:Ljava/lang/String;

.field private mUAPostNotificationBody:Lcom/buzzfeed/toolkit/networking/urbanairship/UAPostNotificationBody;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "channelId"    # Ljava/lang/String;

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    new-instance v0, Lcom/buzzfeed/toolkit/networking/urbanairship/UAPostNotificationBody;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/buzzfeed/toolkit/networking/urbanairship/UAPostNotificationBody;-><init>(Lcom/buzzfeed/toolkit/networking/urbanairship/UAPostNotificationBody$1;)V

    iput-object v0, p0, Lcom/buzzfeed/toolkit/networking/urbanairship/UAPostNotificationBody$Builder;->mUAPostNotificationBody:Lcom/buzzfeed/toolkit/networking/urbanairship/UAPostNotificationBody;

    .line 91
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 92
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must have a channelId for UrbanAirship"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 94
    :cond_19
    iput-object p1, p0, Lcom/buzzfeed/toolkit/networking/urbanairship/UAPostNotificationBody$Builder;->mChannelId:Ljava/lang/String;

    .line 95
    iget-object v0, p0, Lcom/buzzfeed/toolkit/networking/urbanairship/UAPostNotificationBody$Builder;->mUAPostNotificationBody:Lcom/buzzfeed/toolkit/networking/urbanairship/UAPostNotificationBody;

    new-instance v1, Lcom/buzzfeed/toolkit/networking/urbanairship/UAPostNotificationBody$Notification;

    invoke-direct {v1}, Lcom/buzzfeed/toolkit/networking/urbanairship/UAPostNotificationBody$Notification;-><init>()V

    iput-object v1, v0, Lcom/buzzfeed/toolkit/networking/urbanairship/UAPostNotificationBody;->notification:Lcom/buzzfeed/toolkit/networking/urbanairship/UAPostNotificationBody$Notification;

    .line 96
    return-void
.end method


# virtual methods
.method public build()Lcom/buzzfeed/toolkit/networking/urbanairship/UAPostNotificationBody;
    .registers 5

    .prologue
    .line 123
    iget-object v2, p0, Lcom/buzzfeed/toolkit/networking/urbanairship/UAPostNotificationBody$Builder;->mTag:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_36

    .line 124
    new-instance v1, Lcom/buzzfeed/toolkit/networking/urbanairship/UAPostNotificationBody$AudienceAndSelector;

    invoke-direct {v1}, Lcom/buzzfeed/toolkit/networking/urbanairship/UAPostNotificationBody$AudienceAndSelector;-><init>()V

    .line 125
    .local v1, "audience":Lcom/buzzfeed/toolkit/networking/urbanairship/UAPostNotificationBody$AudienceAndSelector;
    const-string v2, "android_channel"

    iget-object v3, p0, Lcom/buzzfeed/toolkit/networking/urbanairship/UAPostNotificationBody$Builder;->mChannelId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/buzzfeed/toolkit/networking/urbanairship/UAPostNotificationBody$AudienceAndSelector;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    const-string/jumbo v2, "tag"

    iget-object v3, p0, Lcom/buzzfeed/toolkit/networking/urbanairship/UAPostNotificationBody$Builder;->mTag:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/buzzfeed/toolkit/networking/urbanairship/UAPostNotificationBody$AudienceAndSelector;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    iget-object v2, p0, Lcom/buzzfeed/toolkit/networking/urbanairship/UAPostNotificationBody$Builder;->mUAPostNotificationBody:Lcom/buzzfeed/toolkit/networking/urbanairship/UAPostNotificationBody;

    iput-object v1, v2, Lcom/buzzfeed/toolkit/networking/urbanairship/UAPostNotificationBody;->audience:Ljava/lang/Object;

    .line 134
    .end local v1    # "audience":Lcom/buzzfeed/toolkit/networking/urbanairship/UAPostNotificationBody$AudienceAndSelector;
    :goto_20
    iget-object v2, p0, Lcom/buzzfeed/toolkit/networking/urbanairship/UAPostNotificationBody$Builder;->mExtras:Ljava/util/HashMap;

    if-eqz v2, :cond_33

    .line 135
    new-instance v0, Lcom/buzzfeed/toolkit/networking/urbanairship/UAPostNotificationBody$AndroidOverride;

    invoke-direct {v0}, Lcom/buzzfeed/toolkit/networking/urbanairship/UAPostNotificationBody$AndroidOverride;-><init>()V

    .line 136
    .local v0, "androidOverride":Lcom/buzzfeed/toolkit/networking/urbanairship/UAPostNotificationBody$AndroidOverride;
    iget-object v2, p0, Lcom/buzzfeed/toolkit/networking/urbanairship/UAPostNotificationBody$Builder;->mExtras:Ljava/util/HashMap;

    iput-object v2, v0, Lcom/buzzfeed/toolkit/networking/urbanairship/UAPostNotificationBody$AndroidOverride;->extra:Ljava/util/HashMap;

    .line 137
    iget-object v2, p0, Lcom/buzzfeed/toolkit/networking/urbanairship/UAPostNotificationBody$Builder;->mUAPostNotificationBody:Lcom/buzzfeed/toolkit/networking/urbanairship/UAPostNotificationBody;

    iget-object v2, v2, Lcom/buzzfeed/toolkit/networking/urbanairship/UAPostNotificationBody;->notification:Lcom/buzzfeed/toolkit/networking/urbanairship/UAPostNotificationBody$Notification;

    iput-object v0, v2, Lcom/buzzfeed/toolkit/networking/urbanairship/UAPostNotificationBody$Notification;->android:Lcom/buzzfeed/toolkit/networking/urbanairship/UAPostNotificationBody$AndroidOverride;

    .line 139
    .end local v0    # "androidOverride":Lcom/buzzfeed/toolkit/networking/urbanairship/UAPostNotificationBody$AndroidOverride;
    :cond_33
    iget-object v2, p0, Lcom/buzzfeed/toolkit/networking/urbanairship/UAPostNotificationBody$Builder;->mUAPostNotificationBody:Lcom/buzzfeed/toolkit/networking/urbanairship/UAPostNotificationBody;

    return-object v2

    .line 129
    :cond_36
    new-instance v1, Lcom/buzzfeed/toolkit/networking/urbanairship/UAPostNotificationBody$Audience;

    invoke-direct {v1}, Lcom/buzzfeed/toolkit/networking/urbanairship/UAPostNotificationBody$Audience;-><init>()V

    .line 130
    .local v1, "audience":Lcom/buzzfeed/toolkit/networking/urbanairship/UAPostNotificationBody$Audience;
    iget-object v2, p0, Lcom/buzzfeed/toolkit/networking/urbanairship/UAPostNotificationBody$Builder;->mChannelId:Ljava/lang/String;

    iput-object v2, v1, Lcom/buzzfeed/toolkit/networking/urbanairship/UAPostNotificationBody$Audience;->android_channel:Ljava/lang/String;

    .line 131
    iget-object v2, p0, Lcom/buzzfeed/toolkit/networking/urbanairship/UAPostNotificationBody$Builder;->mUAPostNotificationBody:Lcom/buzzfeed/toolkit/networking/urbanairship/UAPostNotificationBody;

    iput-object v1, v2, Lcom/buzzfeed/toolkit/networking/urbanairship/UAPostNotificationBody;->audience:Ljava/lang/Object;

    goto :goto_20
.end method

.method public setAlert(Ljava/lang/String;)Lcom/buzzfeed/toolkit/networking/urbanairship/UAPostNotificationBody$Builder;
    .registers 3
    .param p1, "alert"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 99
    iget-object v0, p0, Lcom/buzzfeed/toolkit/networking/urbanairship/UAPostNotificationBody$Builder;->mUAPostNotificationBody:Lcom/buzzfeed/toolkit/networking/urbanairship/UAPostNotificationBody;

    iget-object v0, v0, Lcom/buzzfeed/toolkit/networking/urbanairship/UAPostNotificationBody;->notification:Lcom/buzzfeed/toolkit/networking/urbanairship/UAPostNotificationBody$Notification;

    iput-object p1, v0, Lcom/buzzfeed/toolkit/networking/urbanairship/UAPostNotificationBody$Notification;->alert:Ljava/lang/String;

    .line 100
    return-object p0
.end method

.method public setExtras(Ljava/util/HashMap;)Lcom/buzzfeed/toolkit/networking/urbanairship/UAPostNotificationBody$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/buzzfeed/toolkit/networking/urbanairship/UAPostNotificationBody$Builder;"
        }
    .end annotation

    .prologue
    .line 113
    .local p1, "extras":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/buzzfeed/toolkit/networking/urbanairship/UAPostNotificationBody$Builder;->mExtras:Ljava/util/HashMap;

    .line 114
    return-object p0
.end method

.method public setOpenAction(Ljava/lang/String;Ljava/lang/String;)Lcom/buzzfeed/toolkit/networking/urbanairship/UAPostNotificationBody$Builder;
    .registers 5
    .param p1, "type"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation

        .annotation build Lcom/buzzfeed/toolkit/networking/urbanairship/UAPostNotificationBody$ActionType;
        .end annotation
    .end param
    .param p2, "content"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 104
    new-instance v0, Lcom/buzzfeed/toolkit/networking/urbanairship/UAPostNotificationBody$Actions;

    invoke-direct {v0}, Lcom/buzzfeed/toolkit/networking/urbanairship/UAPostNotificationBody$Actions;-><init>()V

    .line 105
    .local v0, "actions":Lcom/buzzfeed/toolkit/networking/urbanairship/UAPostNotificationBody$Actions;
    new-instance v1, Lcom/buzzfeed/toolkit/networking/urbanairship/UAPostNotificationBody$OpenAction;

    invoke-direct {v1}, Lcom/buzzfeed/toolkit/networking/urbanairship/UAPostNotificationBody$OpenAction;-><init>()V

    iput-object v1, v0, Lcom/buzzfeed/toolkit/networking/urbanairship/UAPostNotificationBody$Actions;->open:Lcom/buzzfeed/toolkit/networking/urbanairship/UAPostNotificationBody$OpenAction;

    .line 106
    iget-object v1, v0, Lcom/buzzfeed/toolkit/networking/urbanairship/UAPostNotificationBody$Actions;->open:Lcom/buzzfeed/toolkit/networking/urbanairship/UAPostNotificationBody$OpenAction;

    iput-object p1, v1, Lcom/buzzfeed/toolkit/networking/urbanairship/UAPostNotificationBody$OpenAction;->type:Ljava/lang/String;

    .line 107
    iget-object v1, v0, Lcom/buzzfeed/toolkit/networking/urbanairship/UAPostNotificationBody$Actions;->open:Lcom/buzzfeed/toolkit/networking/urbanairship/UAPostNotificationBody$OpenAction;

    iput-object p2, v1, Lcom/buzzfeed/toolkit/networking/urbanairship/UAPostNotificationBody$OpenAction;->content:Ljava/lang/String;

    .line 108
    iget-object v1, p0, Lcom/buzzfeed/toolkit/networking/urbanairship/UAPostNotificationBody$Builder;->mUAPostNotificationBody:Lcom/buzzfeed/toolkit/networking/urbanairship/UAPostNotificationBody;

    iget-object v1, v1, Lcom/buzzfeed/toolkit/networking/urbanairship/UAPostNotificationBody;->notification:Lcom/buzzfeed/toolkit/networking/urbanairship/UAPostNotificationBody$Notification;

    iput-object v0, v1, Lcom/buzzfeed/toolkit/networking/urbanairship/UAPostNotificationBody$Notification;->actions:Lcom/buzzfeed/toolkit/networking/urbanairship/UAPostNotificationBody$Actions;

    .line 109
    return-object p0
.end method

.method public setTag(Ljava/lang/String;)Lcom/buzzfeed/toolkit/networking/urbanairship/UAPostNotificationBody$Builder;
    .registers 2
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 118
    iput-object p1, p0, Lcom/buzzfeed/toolkit/networking/urbanairship/UAPostNotificationBody$Builder;->mTag:Ljava/lang/String;

    .line 119
    return-object p0
.end method
