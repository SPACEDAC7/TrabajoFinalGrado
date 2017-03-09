.class public Lcom/urbanairship/messagecenter/MessageCenter;
.super Lcom/urbanairship/AirshipComponent;
.source "MessageCenter.java"


# instance fields
.field private predicate:Lcom/urbanairship/richpush/RichPushInbox$Predicate;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/urbanairship/AirshipComponent;-><init>()V

    return-void
.end method


# virtual methods
.method public getPredicate()Lcom/urbanairship/richpush/RichPushInbox$Predicate;
    .registers 2

    .prologue
    .line 17
    iget-object v0, p0, Lcom/urbanairship/messagecenter/MessageCenter;->predicate:Lcom/urbanairship/richpush/RichPushInbox$Predicate;

    return-object v0
.end method

.method public setPredicate(Lcom/urbanairship/richpush/RichPushInbox$Predicate;)V
    .registers 2
    .param p1, "predicate"    # Lcom/urbanairship/richpush/RichPushInbox$Predicate;

    .prologue
    .line 21
    iput-object p1, p0, Lcom/urbanairship/messagecenter/MessageCenter;->predicate:Lcom/urbanairship/richpush/RichPushInbox$Predicate;

    .line 22
    return-void
.end method
