.class Lcom/buzzfeed/toolkit/networking/urbanairship/UAPostNotificationBody$1;
.super Ljava/util/ArrayList;
.source "UAPostNotificationBody.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/buzzfeed/toolkit/networking/urbanairship/UAPostNotificationBody;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/buzzfeed/toolkit/networking/urbanairship/UAPostNotificationBody;


# direct methods
.method constructor <init>(Lcom/buzzfeed/toolkit/networking/urbanairship/UAPostNotificationBody;)V
    .registers 3
    .param p1, "this$0"    # Lcom/buzzfeed/toolkit/networking/urbanairship/UAPostNotificationBody;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/buzzfeed/toolkit/networking/urbanairship/UAPostNotificationBody$1;->this$0:Lcom/buzzfeed/toolkit/networking/urbanairship/UAPostNotificationBody;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 27
    const-string v0, "android"

    invoke-virtual {p0, v0}, Lcom/buzzfeed/toolkit/networking/urbanairship/UAPostNotificationBody$1;->add(Ljava/lang/Object;)Z

    .line 28
    return-void
.end method
