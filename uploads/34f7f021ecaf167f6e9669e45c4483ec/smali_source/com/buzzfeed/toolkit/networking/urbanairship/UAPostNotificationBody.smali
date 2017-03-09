.class public Lcom/buzzfeed/toolkit/networking/urbanairship/UAPostNotificationBody;
.super Ljava/lang/Object;
.source "UAPostNotificationBody.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/buzzfeed/toolkit/networking/urbanairship/UAPostNotificationBody$Builder;,
        Lcom/buzzfeed/toolkit/networking/urbanairship/UAPostNotificationBody$OpenAction;,
        Lcom/buzzfeed/toolkit/networking/urbanairship/UAPostNotificationBody$AndroidOverride;,
        Lcom/buzzfeed/toolkit/networking/urbanairship/UAPostNotificationBody$Actions;,
        Lcom/buzzfeed/toolkit/networking/urbanairship/UAPostNotificationBody$Notification;,
        Lcom/buzzfeed/toolkit/networking/urbanairship/UAPostNotificationBody$AudienceAndSelector;,
        Lcom/buzzfeed/toolkit/networking/urbanairship/UAPostNotificationBody$Audience;,
        Lcom/buzzfeed/toolkit/networking/urbanairship/UAPostNotificationBody$ActionType;
    }
.end annotation


# instance fields
.field audience:Ljava/lang/Object;

.field public final device_types:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field notification:Lcom/buzzfeed/toolkit/networking/urbanairship/UAPostNotificationBody$Notification;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Lcom/buzzfeed/toolkit/networking/urbanairship/UAPostNotificationBody$1;

    invoke-direct {v0, p0}, Lcom/buzzfeed/toolkit/networking/urbanairship/UAPostNotificationBody$1;-><init>(Lcom/buzzfeed/toolkit/networking/urbanairship/UAPostNotificationBody;)V

    iput-object v0, p0, Lcom/buzzfeed/toolkit/networking/urbanairship/UAPostNotificationBody;->device_types:Ljava/util/List;

    .line 31
    return-void
.end method

.method synthetic constructor <init>(Lcom/buzzfeed/toolkit/networking/urbanairship/UAPostNotificationBody$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/buzzfeed/toolkit/networking/urbanairship/UAPostNotificationBody$1;

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/buzzfeed/toolkit/networking/urbanairship/UAPostNotificationBody;-><init>()V

    return-void
.end method
