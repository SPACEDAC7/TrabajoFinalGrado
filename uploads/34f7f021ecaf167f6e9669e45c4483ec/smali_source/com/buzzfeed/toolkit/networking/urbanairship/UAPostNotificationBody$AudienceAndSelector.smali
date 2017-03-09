.class Lcom/buzzfeed/toolkit/networking/urbanairship/UAPostNotificationBody$AudienceAndSelector;
.super Ljava/lang/Object;
.source "UAPostNotificationBody.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/buzzfeed/toolkit/networking/urbanairship/UAPostNotificationBody;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AudienceAndSelector"
.end annotation


# instance fields
.field AND:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/buzzfeed/toolkit/networking/urbanairship/UAPostNotificationBody$AudienceAndSelector;->AND:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/buzzfeed/toolkit/networking/urbanairship/UAPostNotificationBody$AudienceAndSelector;->AND:Ljava/util/List;

    new-instance v1, Lcom/buzzfeed/toolkit/networking/urbanairship/UAPostNotificationBody$AudienceAndSelector$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/buzzfeed/toolkit/networking/urbanairship/UAPostNotificationBody$AudienceAndSelector$1;-><init>(Lcom/buzzfeed/toolkit/networking/urbanairship/UAPostNotificationBody$AudienceAndSelector;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    return-void
.end method
