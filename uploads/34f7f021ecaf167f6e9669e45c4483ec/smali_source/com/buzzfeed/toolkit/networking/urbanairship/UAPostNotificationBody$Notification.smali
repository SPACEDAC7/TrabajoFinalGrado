.class Lcom/buzzfeed/toolkit/networking/urbanairship/UAPostNotificationBody$Notification;
.super Ljava/lang/Object;
.source "UAPostNotificationBody.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/buzzfeed/toolkit/networking/urbanairship/UAPostNotificationBody;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Notification"
.end annotation


# instance fields
.field public actions:Lcom/buzzfeed/toolkit/networking/urbanairship/UAPostNotificationBody$Actions;

.field public alert:Ljava/lang/String;

.field public android:Lcom/buzzfeed/toolkit/networking/urbanairship/UAPostNotificationBody$AndroidOverride;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
