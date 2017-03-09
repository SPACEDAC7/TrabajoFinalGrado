.class public Lcom/buzzfeed/android/pushnotifications/tags/AuthenticationTag;
.super Ljava/lang/Object;
.source "AuthenticationTag.java"

# interfaces
.implements Lcom/buzzfeed/android/pushnotifications/tags/PushTag;


# static fields
.field private static final PUSH_NOTIFICATION_KEY_SIGNEDIN:Ljava/lang/String; = "signedIn"

.field private static final PUSH_NOTIFICATION_KEY_SIGNEDOUT:Ljava/lang/String; = "signedOut"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/buzzfeed/android/pushnotifications/tags/AuthenticationTag;->mContext:Landroid/content/Context;

    .line 18
    return-void
.end method


# virtual methods
.method public addTag(Ljava/util/Set;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 22
    .local p1, "tags":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/buzzfeed/android/pushnotifications/tags/AuthenticationTag;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/buzzfeed/android/data/BuzzUser;->getInstance(Landroid/content/Context;)Lcom/buzzfeed/android/data/BuzzUser;

    move-result-object v0

    .line 23
    .local v0, "buzzUser":Lcom/buzzfeed/android/data/BuzzUser;
    invoke-virtual {v0}, Lcom/buzzfeed/android/data/BuzzUser;->isLogin()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 24
    const-string v1, "signedOut"

    invoke-interface {p1, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 25
    const-string v1, "signedIn"

    invoke-interface {p1, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 30
    :goto_16
    return-void

    .line 27
    :cond_17
    const-string v1, "signedIn"

    invoke-interface {p1, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 28
    const-string v1, "signedOut"

    invoke-interface {p1, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_16
.end method
