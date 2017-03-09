.class Lcom/buzzfeed/toolkit/networking/urbanairship/UAPostNotificationBody$AudienceAndSelector$1;
.super Ljava/util/HashMap;
.source "UAPostNotificationBody.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/buzzfeed/toolkit/networking/urbanairship/UAPostNotificationBody$AudienceAndSelector;->add(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/buzzfeed/toolkit/networking/urbanairship/UAPostNotificationBody$AudienceAndSelector;

.field final synthetic val$key:Ljava/lang/String;

.field final synthetic val$value:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/buzzfeed/toolkit/networking/urbanairship/UAPostNotificationBody$AudienceAndSelector;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "this$0"    # Lcom/buzzfeed/toolkit/networking/urbanairship/UAPostNotificationBody$AudienceAndSelector;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/buzzfeed/toolkit/networking/urbanairship/UAPostNotificationBody$AudienceAndSelector$1;->this$0:Lcom/buzzfeed/toolkit/networking/urbanairship/UAPostNotificationBody$AudienceAndSelector;

    iput-object p2, p0, Lcom/buzzfeed/toolkit/networking/urbanairship/UAPostNotificationBody$AudienceAndSelector$1;->val$key:Ljava/lang/String;

    iput-object p3, p0, Lcom/buzzfeed/toolkit/networking/urbanairship/UAPostNotificationBody$AudienceAndSelector$1;->val$value:Ljava/lang/String;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 48
    iget-object v0, p0, Lcom/buzzfeed/toolkit/networking/urbanairship/UAPostNotificationBody$AudienceAndSelector$1;->val$key:Ljava/lang/String;

    iget-object v1, p0, Lcom/buzzfeed/toolkit/networking/urbanairship/UAPostNotificationBody$AudienceAndSelector$1;->val$value:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/buzzfeed/toolkit/networking/urbanairship/UAPostNotificationBody$AudienceAndSelector$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    return-void
.end method
