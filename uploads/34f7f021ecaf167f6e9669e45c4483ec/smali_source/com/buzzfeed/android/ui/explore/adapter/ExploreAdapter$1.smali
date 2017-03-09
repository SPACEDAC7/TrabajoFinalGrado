.class Lcom/buzzfeed/android/ui/explore/adapter/ExploreAdapter$1;
.super Ljava/lang/Object;
.source "ExploreAdapter.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/buzzfeed/android/ui/explore/adapter/ExploreAdapter;->processContent(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/buzzfeed/android/data/Feed;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/buzzfeed/android/ui/explore/adapter/ExploreAdapter;


# direct methods
.method constructor <init>(Lcom/buzzfeed/android/ui/explore/adapter/ExploreAdapter;)V
    .registers 2
    .param p1, "this$0"    # Lcom/buzzfeed/android/ui/explore/adapter/ExploreAdapter;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/buzzfeed/android/ui/explore/adapter/ExploreAdapter$1;->this$0:Lcom/buzzfeed/android/ui/explore/adapter/ExploreAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/buzzfeed/android/data/Feed;Lcom/buzzfeed/android/data/Feed;)I
    .registers 5
    .param p1, "lhs"    # Lcom/buzzfeed/android/data/Feed;
    .param p2, "rhs"    # Lcom/buzzfeed/android/data/Feed;

    .prologue
    .line 120
    invoke-virtual {p1}, Lcom/buzzfeed/android/data/Feed;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 121
    const/4 v0, 0x1

    .line 126
    :goto_b
    return v0

    .line 122
    :cond_c
    invoke-virtual {p2}, Lcom/buzzfeed/android/data/Feed;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 123
    const/4 v0, -0x1

    goto :goto_b

    .line 126
    :cond_18
    invoke-virtual {p1}, Lcom/buzzfeed/android/data/Feed;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/buzzfeed/android/data/Feed;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_b
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    .prologue
    .line 117
    check-cast p1, Lcom/buzzfeed/android/data/Feed;

    check-cast p2, Lcom/buzzfeed/android/data/Feed;

    invoke-virtual {p0, p1, p2}, Lcom/buzzfeed/android/ui/explore/adapter/ExploreAdapter$1;->compare(Lcom/buzzfeed/android/data/Feed;Lcom/buzzfeed/android/data/Feed;)I

    move-result v0

    return v0
.end method
