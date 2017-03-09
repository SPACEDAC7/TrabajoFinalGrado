.class public Lcom/buzzfeed/android/pushnotifications/tags/TrendingTag;
.super Ljava/lang/Object;
.source "TrendingTag.java"

# interfaces
.implements Lcom/buzzfeed/android/pushnotifications/tags/PushTag;


# static fields
.field private static final PUSH_NOTIFICATION_KEY_TRENDING:Ljava/lang/String; = "trending"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/buzzfeed/android/pushnotifications/tags/TrendingTag;->mContext:Landroid/content/Context;

    .line 17
    return-void
.end method


# virtual methods
.method public addTag(Ljava/util/Set;)V
    .registers 5
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
    iget-object v1, p0, Lcom/buzzfeed/android/pushnotifications/tags/TrendingTag;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090298

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 23
    .local v0, "prefKey":Ljava/lang/String;
    iget-object v1, p0, Lcom/buzzfeed/android/pushnotifications/tags/TrendingTag;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 24
    const-string/jumbo v1, "trending"

    invoke-interface {p1, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 28
    :goto_20
    return-void

    .line 26
    :cond_21
    const-string/jumbo v1, "trending"

    invoke-interface {p1, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_20
.end method
